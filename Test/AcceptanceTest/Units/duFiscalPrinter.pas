unit duFiscalPrinter;

interface

uses
  // VCL
  Windows, SysUtils, Classes, ActiveX, ComObj,
  // JVCL
  JvInterpreter,
  // DUnit
  TestFramework,
  // Tnt
  TntClasses, TntSysUtils,
  // This
  Opos, OposFptrUtils, OposFiscalPrinter_1_11_Lib_TLB, DirectIOAPI,
  SMFiscalPrinter, FileUtils, SmFiscalPrinterLib_TLB;

type
  { TFiscalPrinterTest }

  TFiscalPrinterTest = class(TTestCase)
  private
    FDeviceName: string;
    FDriver: TSMFiscalPrinter;

    procedure DeleteLogFiles;
    procedure RunScript(const Text: string);
    procedure ExecuteScript(const FileName: WideString);
    procedure ExecuteLogFile(const FileName: WideString);
    procedure ReadLogCommands(const FileName: WideString; Commands: TTntStrings);

    function GetLogFileName: string;
  protected
    procedure Setup; override;
    procedure TearDown; override;
    property Driver: TSMFiscalPrinter read FDriver;
  published
    procedure ExecuteLogFiles;
  end;

implementation

{ TFiscalPrinterTest }

procedure TFiscalPrinterTest.Setup;
begin
  FDriver := TSMFiscalPrinter.Create;
end;

procedure TFiscalPrinterTest.TearDown;
begin
  FDriver.Free;
end;

procedure TFiscalPrinterTest.ExecuteLogFiles;
var
  i: Integer;
  FileMask: WideString;
  FileNames: TTntStrings;
begin
  DeleteLogFiles;
  FileNames := TTntStringList.Create;
  try
    FileMask := GetModulePath + 'Logs\*.Log';
    GetFileNames(FileMask, FileNames);
    for i := 0 to FileNames.Count-1 do
    begin
      ExecuteLogFile(FileNames[i]);
    end;
  finally
    FileNames.Free;
  end;
end;

procedure TFiscalPrinterTest.DeleteLogFiles;
var
  FileMask: WideString;
begin
  FileMask := WideIncludeTrailingPathDelimiter(ExtractFilePath(
    CLSIDToFileName(CLASS_FiscalPrinter))) + 'Logs\*.log';
  DeleteFiles(FileMask);
end;

procedure TFiscalPrinterTest.ReadLogCommands(const FileName: WideString;
  Commands: TTntStrings);

  function GetCommand(const Line: WideString): WideString;
  var
    P: Integer;
  const
    TxTag = '->';
  begin
    Result := '';
    P := Pos(TxTag, Line);
    if P <> 0 then
    begin
      Result := Trim(Copy(Line, P + Length(TxTag), Length(Line)));
      if (Result = '05')or(Result = '06')or(Copy(Result, 1, 8) = '02 05 11') or (Copy(Result, 1, 8) = '02 05 10')then
      begin
        Result := '';
        Exit;
      end;
      Result := TxTag + ' ' + Result;
    end;
  end;

var
  i: Integer;
  Line: WideString;
  Command: WideString;
  Lines: TTntStrings;
begin
  Lines := TTntStringList.Create;
  try
    Lines.LoadFromFile(FileName);
    for i := 0 to Lines.Count-1 do
    begin
      Line := Lines[i];
      Command := GetCommand(Line);
      if Command <> '' then
      begin
        Commands.Add(Command);
      end;
    end;
  finally
    Lines.Free;
  end;
end;

(*
procedure TFiscalPrinterTest.RunScript(const Text: string);
var
  Script: TPSScript;
begin
  Script := TPSScript.Create(nil);
  try
    Script.Script.Text := Text;

    if not Script.Compile then
      raise Exception.Create(Script.ExecErrorToString);

    if not Script.Execute then
      raise Exception.Create(Script.ExecErrorToString);

  finally
    Script.Free;
  end;
end;
*)

procedure TFiscalPrinterTest.RunScript(const Text: string);
var
  Script: TJvInterpreterProgram;
begin
  Script := TJvInterpreterProgram.Create(nil);
  try
    Script.Pas.Text := Text;

    Script.Compile;
    Script.Run;

  finally
    Script.Free;
  end;
end;

procedure TFiscalPrinterTest.ExecuteScript(const FileName: WideString);

  function GetCommand(const Line: WideString): WideString;
  var
    P: Integer;
  const
    CommandTag = 'ToleFiscalPrinter.';
  begin
    Result := '';
    P := Pos(CommandTag, Line);
    if (P <> 0)and((Pos('=', Line) = 0)or(Pos('OpenService', Line) <> 0))and
      (Pos(': OK', Line) = 0) then
    begin
      Result := 'Driver.' + Copy(Line, P + Length(CommandTag), Length(Line)) + ';';
    end;
    if (Copy(Result, Length(Result)-2, 3) = '=0;') then
      Result := StringReplace(Result, '=0', '', []);

    P := Pos('OpenService', Result);
    if P <> 0 then
    begin
      FDeviceName := Copy(Result, P + 30, Length(Result));
      FDeviceName := Copy(FDeviceName, 1, Length(FDeviceName)-3);
    end;

    Result := StringReplace(Result, '#$0D#$0A', ' + CRLF +', []);
    Result := StringReplace(Result, 'OpenService', 'Open', []);
    Result := StringReplace(Result, '''FiscalPrinter'', ', '', []);
    if Pos('GetPropertyNumber', Result) <> 0 then
    begin
      Result := StringReplace(Result, 'GetPropertyNumber(''PIDX_', '', []);
      Result := StringReplace(Result, 'GetPropertyNumber(''PIDXFptr_', '', []);
      Result := StringReplace(Result, ''')', '', []);
      Result := 'Value := ' + Result;
    end;
    if Pos('GetPropertyString', Result) <> 0 then
    begin
      Result := StringReplace(Result, 'GetPropertyString(''PIDX_', '', []);
      Result := StringReplace(Result, 'GetPropertyString(''PIDXFptr_', '', []);
      Result := StringReplace(Result, ''')', '', []);
      Result := 'Value := ' + Result;
    end;
    if Pos('SetPropertyNumber', Result) <> 0 then
    begin
      Result := StringReplace(Result, 'SetPropertyNumber(''PIDX_', '', []);
      Result := StringReplace(Result, 'SetPropertyNumber(''PIDXFptr_', '', []);
      Result := StringReplace(Result, ''', ', ' := ', []);
      Result := StringReplace(Result, ')', '', []);
    end;
    if Pos('SetPropertyString', Result) <> 0 then
    begin
      Result := StringReplace(Result, 'SetPropertyString(''PIDX_', '', []);
      Result := StringReplace(Result, 'SetPropertyString(''PIDXFptr_', '', []);
      Result := StringReplace(Result, ''', ', ' := ', []);
      Result := StringReplace(Result, ')', '', []);
    end;
    if Result <> '' then
      Result := '  ' + Result;
  end;

var
  i: Integer;
  Line: WideString;
  Command: WideString;
  Lines: TTntStrings;
  Commands: TTntStrings;
begin
  Lines := TTntStringList.Create;
  Commands := TTntStringList.Create;
  try
    Lines.LoadFromFile(FileName);
    for i := 0 to Lines.Count-1 do
    begin
      Line := Lines[i];
      Command := GetCommand(Line);
      if Command <> '' then
      begin
        Commands.Add(Command);
      end;
    end;
    Commands.SaveToFile(ChangeFileExt(FileName, '.cmd'));


    Lines.Clear;
    Lines.Add('unit Acceptance;');
    Lines.Add('interface');
    Lines.Add('procedure Main;');
    Lines.Add('implementation');
    Lines.Add('procedure Main;');
    Lines.Add('const');
    Lines.Add('  CRLF = #13#10;');
    Lines.Add('var');
    Lines.Add('  Value: Variant;');
    Lines.Add('  Driver: OleVariant;');
    Lines.Add('begin');
    Lines.Add('  Driver := CreateOleObject(''OPOS.FiscalPrinter'');');
    Lines.AddStrings(Commands);
    Lines.Add('  Driver.Close();');
    Lines.Add('  Driver := nil;');
    Lines.Add('end;');
    Lines.Add('end.');

    Lines.SaveToFile(ChangeFileExt(FileName, '.scr'));

    RunScript(Lines.Text);
  finally
    Lines.Free;
    Commands.Free;
  end;
end;

function TFiscalPrinterTest.GetLogFileName: string;
var
  pData: Integer;
  pString: WideString;
  Driver: TOPOSFiscalPrinter;
begin
  Driver := TOPOSFiscalPrinter.Create(nil);
  try
    Driver.Open(FDeviceName);
    pData := DriverParameterLogFileName;
    Driver.DirectIO(DIO_GET_DRIVER_PARAMETER, pData, pString);
    Driver.Close;
    Result := pString;
  finally
    Driver.Free;
  end;
end;

procedure TFiscalPrinterTest.ExecuteLogFile(const FileName: WideString);
var
  Commands1: TTntStrings;
  Commands2: TTntStrings;
begin
  Commands1 := TTntStringList.Create;
  Commands2 := TTntStringList.Create;
  try
    ReadLogCommands(FileName, Commands1);
    ExecuteScript(FileName);

    ReadLogCommands(GetLogFileName, Commands2);
    WriteFileData(ChangeFileExt(FileName, '.tx1'), Commands1.Text);
    WriteFileData(ChangeFileExt(FileName, '.tx2'), Commands2.Text);
    CheckEquals(Commands1.Text, Commands2.Text, 'Commands1.Text <> Commands2.Text')
  finally
    Commands1.Free;
    Commands2.Free;
  end;
end;

initialization
  RegisterTest('', TFiscalPrinterTest.Suite);

end.
