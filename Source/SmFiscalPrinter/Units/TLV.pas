unit TLV;

interface

Uses
  // VCL
  Classes,
  // This
  TLVTags;

type
  TTLV = class;

  { TTLVList }

  TTLVList = class
  private
    FList: TList;
    function GetCount: Integer;
    function GetItem(Index: Integer): TTLV;
    procedure InsertItem(AItem: TTLV);
    procedure RemoveItem(AItem: TTLV);
  public
    constructor Create;
    destructor Destroy; override;
    function Add(ATag: Word): TTLV;
    function AddInt(ATag: Word; Value: Integer): TTLV;
    function AddIntFixed(ATag: Word; Value: Int64; Len: Integer): TTLV;
    function AddByte(ATag: Word; Value: Byte): TTLV;
    function AddDateTime(ATag: Word; Value: TDateTime): TTLV;
    function AddInt64(ATag: Word; Value: UInt64): TTLV;
    function AddCurrency(ATag: Word; Value: Currency): TTLV;
    function GetRawData: string;
    function AddStr(ATag: Word; Value: string; Len: Integer): TTLV;
    function AddBytes(ATag: Word; Value: string; Len: Integer): TTLV;

    procedure Clear;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TTLV read GetItem; default;
  end;

  { TTLV }

  TTLV = class
  private
    FOwner: TTLVList;
    FData: string;
    FItems: TTLVList;
    FLen: Word;
    FTag: Word;
    procedure SetOwner(AOwner: TTLVList);
    function GetRawData: string;
  public
    constructor Create(AOwner: TTLVList);
    destructor Destroy; override;
    property Items: TTLVList read FItems write FItems;
    property Data: string read FData write FData;
    property RawData: string read GetRawData;
    property Tag: Word read FTag write FTag;
    property Len: Word read FLen write FLen;
  end;

function TagToStr(TagID: Integer; const Data: string): string;

implementation

function TagToStr(TagID: Integer; const Data: string): string;
var
  Tag: TTLVTag;
  Tags: TTLVTags;
  Values: TTLVList;
begin
  Tags := TTLVTags.Create;
  Values := TTLVList.Create;
  try
    Tag := Tags.Find(TagID);
    if Tag = nil then
    begin
      Values.AddStr(TagID, Data, 0);
      Result := Values.GetRawData;
    end else
    begin
      Result := Tag.ValueToBin(Data);
    end;
  finally
    Tags.Free;
    Values.Free;
  end;
end;


function IntToBin(Value, Count: Int64): string;
begin
  Result := '';
  if Count in [1..8] then
  begin
    SetLength(Result, Count);
    Move(Value, Result[1], Count);
  end;
end;

{ TTLVList }

constructor TTLVList.Create;
begin
  inherited Create;
  FList := TList.Create;
end;

destructor TTLVList.Destroy;
begin
  Clear;
  FList.Free;
  inherited Destroy;
end;

procedure TTLVList.Clear;
begin
  while Count > 0 do Items[0].Free;
end;

function TTLVList.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TTLVList.GetItem(Index: Integer): TTLV;
begin
  Result := FList[Index];
end;

procedure TTLVList.InsertItem(AItem: TTLV);
begin
  FList.Add(AItem);
  AItem.FOwner := Self;
end;

procedure TTLVList.RemoveItem(AItem: TTLV);
begin
  AItem.FOwner := nil;
  FList.Remove(AItem);
end;

function TTLVList.Add(ATag: Word): TTLV;
begin
  Result := TTLV.Create(Self);
  Result.Tag := ATag;
end;

function TTLVList.GetRawData: string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to Count - 1 do
  begin
    Result := Result + Items[i].GetRawData;
  end;
end;

function TTLVList.AddByte(ATag: Word; Value: Byte): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.Int2ValueTLV(Value, 1);
end;

function TTLVList.AddDateTime(ATag: Word; Value: TDateTime): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.UnixTime2ValueTLV(Value);
end;

function TTLVList.AddInt(ATag: Word; Value: Integer): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.Int2ValueTLV(Value, 4);
end;

function TTLVList.AddIntFixed(ATag: Word; Value: Int64; Len: Integer): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.Int2Bytes(Value, Len);
end;

function TTLVList.AddStr(ATag: Word; Value: string; Len: Integer): TTLV;
var
  S: string;
begin
  Result := Add(ATag);
  S := TTLVTag.ASCII2ValueTLV(Value);
  if Len <> 0 then
  begin
    S := Copy(S, 1, Len);
    S := S + StringOfChar(' ', Len-Length(S));
  end;
  Result.Data := S;
end;

function TTLVList.AddBytes(ATag: Word; Value: string; Len: Integer): TTLV;
var
  S: string;
begin
  Result := Add(ATag);

  S := TTLVTag.ASCII2ValueTLV(Value);
  if Len <> 0 then
  begin
    S := Copy(S, 1, Len);
    S := StringOfChar(#0, Len-Length(S)) + S;
  end;
  Result.Data := S;
end;

function TTLVList.AddCurrency(ATag: Word; Value: Currency): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.FVLN2ValueTLV(Value);
end;

function TTLVList.AddInt64(ATag: Word; Value: UInt64): TTLV;
begin
  Result := Add(ATag);
  Result.Data := TTLVTag.VLN2ValueTLV(Value);
end;

{ TTLV }

constructor TTLV.Create(AOwner: TTLVList);
begin
  inherited Create;
  SetOwner(AOwner);
  FItems := TTLVList.Create;
end;

destructor TTLV.Destroy;
begin
  FItems.Free;
  SetOwner(nil);
  inherited Destroy;
end;

function TTLV.GetRawData: string;
begin
  if FData = '' then
  begin
    Result := FItems.GetRawData;
    FLen := Length(Result);
    Result := TTLVTag.Int2ValueTLV(Tag, 2) + TTLVTag.Int2ValueTLV(Len, 2) + Result;
  end
  else
  begin
    FLen := Length(Data);
    Result := TTLVTag.Int2ValueTLV(Tag, 2) + TTLVTag.Int2ValueTLV(Len, 2) + Data;
  end;
end;

procedure TTLV.SetOwner(AOwner: TTLVList);
begin
  if AOwner <> FOwner then
  begin
    if FOwner <> nil then FOwner.RemoveItem(Self);
    if AOwner <> nil then AOwner.InsertItem(Self);
  end;
end;

end.

