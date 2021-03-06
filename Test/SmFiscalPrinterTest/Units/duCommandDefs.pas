unit duCommandDefs;

interface

uses
  // VCL
  Windows, SysUtils, Classes,
  // DUnit
  TestFramework,
  // This
  CommandDef, LogFile;

type
  { TCommandDefsTest }

  TCommandDefsTest = class(TTestCase)
  published
    procedure CheckSaveToXml;
  end;

implementation


{ TCommandDefsTest }

procedure TCommandDefsTest.CheckSaveToXml;
var
  Logger: ILogFile;
  Item: TCommandDefs;
begin
  Logger := TLogFile.Create;
  Item := TCommandDefs.Create(Logger);
  try
    Item.SaveToFile('CommandDefs.xml');
  finally
    Item.Free;
    Logger := nil;
  end;
end;

initialization
  RegisterTest('', TCommandDefsTest.Suite);

end.
