unit BinStream;

interface

uses
  // VCL
  Windows, Classes,
  // This
  PrinterTypes;

type
  { TBinStream }

  TBinStream = class(TMemoryStream)
  private
    function GetData: AnsiString;
    procedure SetData(const Value: AnsiString);
  public
    function ReadByte: Byte;
    function ReadWord: Word;
    function ReadDWord: DWORD;
    function ReadChar: Char;
    function ReadDate: TPrinterDate;
    function ReadTime: TPrinterTime;
    procedure WriteByte(Value: Byte);
    procedure WriteWORD(Value: WORD);
    procedure WriteDWORD(Value: DWORD);
    function ReadString: AnsiString; overload;
    function ReadString(Size: Integer): AnsiString; overload;
    function ReadInt(Size: Integer): Int64; overload;
    procedure WriteInt(Value: Int64; Size: Integer); overload;
    procedure WriteString(const Data: AnsiString); overload;
    procedure WriteDate(const Data: TPrinterDate);
    procedure WriteTime(const Data: TPrinterTime);

    property Data: AnsiString read GetData write SetData;
  end;

implementation

{ TBinStream }

function TBinStream.GetData: AnsiString;
begin
  Result := '';
  Position := 0;
  if Size > 0 then
  begin
    SetLength(Result, Size);
    Read(Result[1], Size);
  end;
end;

procedure TBinStream.SetData(const Value: AnsiString);
begin
  Clear;
  if Length(Value) > 0 then
  begin
    Write(Value[1], Length(Value));
    Position := 0;
  end;
end;

function TBinStream.ReadInt(Size: Integer): Int64;
begin
  Result := 0;
  Read(Result, Size);
end;

function TBinStream.ReadByte: Byte;
begin
  Read(Result, 1);
end;

function TBinStream.ReadWord: Word;
begin
  Read(Result, 2);
end;

function TBinStream.ReadDWord: DWORD;
begin
  Read(Result, 4);
end;

function TBinStream.ReadChar: Char;
begin
  Read(Result, 1);
end;

function TBinStream.ReadDate: TPrinterDate;
begin
  Read(Result, Sizeof(Result));
end;

function TBinStream.ReadTime: TPrinterTime;
begin
  Read(Result, Sizeof(Result));
end;

procedure TBinStream.WriteByte(Value: Byte);
begin
  Write(Value, 1);
end;

procedure TBinStream.WriteDWORD(Value: DWORD);
begin
  Write(Value, 4);
end;

procedure TBinStream.WriteWORD(Value: WORD);
begin
  Write(Value, 2);
end;

procedure TBinStream.WriteInt(Value: Int64; Size: Integer);
begin
  Write(Value, Size);
end;

procedure TBinStream.WriteString(const Data: AnsiString);
begin
  if Length(Data) > 0 then
    Write(Data[1], Length(Data));
end;

function TBinStream.ReadString(Size: Integer): AnsiString;
begin
  Result := '';
  if Size > 0 then
  begin
    SetLength(Result, Size);
    Read(Result[1], Size);
  end;
end;

function TBinStream.ReadString: AnsiString;
var
  Len: Integer;
begin
  Result := '';
  Len := Size - Position;
  if Len > 0 then
  begin
    SetLength(Result, Len);
    Read(Result[1], Len);
  end;
end;

(*

procedure TBinStream.WriteString(const Data: AnsiString; Size: Integer);
var
  S: AnsiString;
  i: Integer;
begin
  if Size > 0 then
  begin
    S := Copy(Data, 1, Size);
    for i := Length(S) to Size-1 do
    begin
      S := S + #0;
    end;
    Write(S[1], Size);
  end;
end;


*)

procedure TBinStream.WriteDate(const Data: TPrinterDate);
begin
  Write(Data, Sizeof(Data));
end;

procedure TBinStream.WriteTime(const Data: TPrinterTime);
begin
  Write(Data, Sizeof(Data));
end;

end.
