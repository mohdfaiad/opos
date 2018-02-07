unit CustomReceipt;

interface

uses
  // This
  ReceiptPrinter, OposException, PrinterParameters, Opos, OposFptr,
  FiscalPrinterDevice, FiscalPrinterTypes, FiscalPrinterState,
  PrinterTypes, EscFilter, TextItem, LogFile, MalinaParams;

type
  { TReceiptContext }

  TReceiptContext = record
    RecType: Integer;
    Filter: TEscFilter;
    Printer: IReceiptPrinter;
    State: TFiscalPrinterState;
    FiscalReceiptStation: Integer;
  end;

  { TCustomReceipt }

  TCustomReceipt = class
  private
    FRecType: Integer;
    FFilter: TEscFilter;
    FRecMessages: TTextItems;
    FPrinter: IReceiptPrinter;
    FState: TFiscalPrinterState;
    FFiscalReceiptStation: Integer;
    FAdditionalText: string;

    function GetLogger: ILogFile;
    function GetDevice: IFiscalPrinterDevice;
    function GetParameters: TPrinterParameters;
  protected
    FPrintEnabled: Boolean;
    property State: TFiscalPrinterState read FState;
    property Printer: IReceiptPrinter read FPrinter;
    property Device: IFiscalPrinterDevice read GetDevice;
    property FiscalReceiptStation: Integer read FFiscalReceiptStation;
  public
    constructor Create(AContext: TReceiptContext); virtual;
    destructor Destroy; override;

    class procedure CheckPrice(Value: Currency);
    class procedure CheckPercents(Value: Currency);
    class procedure CheckQuantity(Quantity: Integer);
    class procedure CheckAmount(Amount: Currency);

    procedure OpenReceipt(ARecType: Integer); virtual;
    procedure BeginFiscalReceipt(PrintHeader: Boolean); virtual;
    procedure AddRecMessage(const Message: string; Station: Integer; ID: Integer);

    procedure PrintPreLine;
    procedure PrintPostLine;
    procedure ClearRecMessages;
    procedure EndFiscalReceipt; virtual;
    procedure EndFiscalReceipt2; virtual;
    procedure AfterEndFiscalReceipt; virtual;
    procedure PrintRecMessages; overload;
    procedure PrintRecMessages(ID: Integer); overload;
    procedure PrintRecCash(Amount: Currency); virtual;
    procedure PrintRecItem(const Description: string; Price: Currency;
      Quantity: Integer; VatInfo: Integer; UnitPrice: Currency;
      const UnitName: string); virtual;
    procedure PrintRecItemAdjustment(AdjustmentType: Integer;
      const Description: string; Amount: Currency;
      VatInfo: Integer); virtual;
    procedure PrintRecMessage(const Message: string); virtual;
    procedure PrintRecNotPaid(const Description: string;
      Amount: Currency); virtual;
    procedure PrintRecRefund(const Description: string; Amount: Currency;
      VatInfo: Integer); virtual;
    procedure PrintRecSubtotal(Amount: Currency); virtual;

    procedure PrintRecSubtotalAdjustment(AdjustmentType: Integer;
      const Description: string; Amount: Currency); virtual;

    procedure PrintRecTotal(Total: Currency; Payment: Currency;
      const Description: string); virtual;

    procedure PrintRecVoid(const Description: string); virtual;

    procedure PrintRecVoidItem(const Description: string; Amount: Currency;
      Quantity: Integer; AdjustmentType: Integer; Adjustment: Currency;
      VatInfo: Integer); virtual;

    procedure PrintRecItemFuel(const Description: string; Price: Currency;
      Quantity, VatInfo: Integer; UnitPrice: Currency; const UnitName: string;
      SpecialTax: Currency; const SpecialTaxName: string); virtual;

    procedure PrintRecItemFuelVoid(const Description: string;
      Price: Currency; VatInfo: Integer; SpecialTax: Currency); virtual;

    procedure PrintRecPackageAdjustment(AdjustmentType: Integer;
      const Description, VatAdjustment: string); virtual;

    procedure PrintRecPackageAdjustVoid(AdjustmentType: Integer;
      const VatAdjustment: string); virtual;

    procedure PrintRecRefundVoid(const Description: string;
      Amount: Currency; VatInfo: Integer); virtual;

    procedure PrintRecSubtotalAdjustVoid(AdjustmentType: Integer;
      Amount: Currency); virtual;

    procedure PrintRecTaxID(const TaxID: string); virtual;

    procedure PrintRecItemAdjustmentVoid(AdjustmentType: Integer;
      const Description: string; Amount: Currency;
      VatInfo: Integer); virtual;

    procedure PrintRecItemVoid(const Description: string;
      Price: Currency; Quantity, VatInfo: Integer; UnitPrice: Currency;
      const UnitName: string); virtual;

    procedure PrintRecItemRefund(
      const ADescription: string;
      Amount: Currency; Quantity: Integer;
      VatInfo: Integer; UnitAmount: Currency;
      const AUnitName: string); virtual;

    procedure PrintRecItemRefundVoid(
      const ADescription: string;
      Amount: Currency; Quantity: Integer;
      VatInfo: Integer; UnitAmount: Currency;
      const AUnitName: string); virtual;

    procedure PrintNormal(const Text: string; Station: Integer); virtual;

    function GetTotal: Int64; virtual;
    function GetPaymentTotal: Int64; virtual;
    procedure PaymentAdjustment(Amount: Int64); virtual;
    class procedure CheckDescription(const Description: string);
    procedure SetAdjustmentAmount(Amount: Integer); virtual;
    procedure PrintText(const Data: TTextRec); virtual;
    procedure PrintBarcode(const Barcode: TBarcodeRec); virtual;
    procedure FSWriteTLV(const TLVData: string); virtual;
    function GetMalinaParams: TMalinaParams;
    procedure WriteFPParameter(ParamId: Integer; const Value: string); virtual;
    procedure PrintAdditionalHeader(const AdditionalHeader: string); virtual;

    property RecType: Integer read FRecType;
    property Logger: ILogFile read GetLogger;
    property PrintEnabled: Boolean read FPrintEnabled;
    property RecMessages: TTextItems read FRecMessages;
    property MalinaParams: TMalinaParams read GetMalinaParams;
    property Parameters: TPrinterParameters read GetParameters;
    property AdditionalText: string read FAdditionalText write FAdditionalText;
  end;

  TCustomReceiptClass = class of TCustomReceipt;

implementation

resourcestring
  MsgReceiptMethodNotSupported = 'Receipt method is not supported';
  MsgNegativePrice = 'Negative price';
  MsgInvalidPercentsValue = 'Invalid percents value';
  MsgNegativeQuantity = 'Negative quantity';
  MsgNegativeAmount = 'Negative amount';

procedure RaiseIllegalError;
begin
  RaiseOposException(OPOS_E_ILLEGAL, MsgReceiptMethodNotSupported);
end;

{ TCustomReceipt }

constructor TCustomReceipt.Create(AContext: TReceiptContext);
begin
  inherited Create;
  FRecType := AContext.RecType;
  FState := AContext.State;
  FFilter := AContext.Filter;
  FPrinter := AContext.Printer;
  FFiscalReceiptStation := AContext.FiscalReceiptStation;
  FRecMessages := TTextItems.Create;
  FPrintEnabled := True;
end;

destructor TCustomReceipt.Destroy;
begin
  FRecMessages.Free;
  inherited Destroy;
end;

procedure TCustomReceipt.OpenReceipt(ARecType: Integer);
begin

end;

procedure TCustomReceipt.BeginFiscalReceipt(PrintHeader: Boolean);
begin
  Printer.PrintMode;
  FRecMessages.Clear;
  FAdditionalText := '';
  FPrintEnabled := True;
end;

procedure TCustomReceipt.EndFiscalReceipt;
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItem(const Description: string;
  Price: Currency; Quantity, VatInfo: Integer; UnitPrice: Currency;
  const UnitName: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemAdjustment(AdjustmentType: Integer;
  const Description: string; Amount: Currency; VatInfo: Integer);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.ClearRecMessages;
begin
  FRecMessages.Clear;
end;

procedure TCustomReceipt.PrintRecMessages;
var
  i: Integer;
  Data: TTextRec;
begin
  for i := 0 to FRecMessages.Count-1 do
  begin
    Data := FRecMessages[i].Data;
    Printer.PrintText(Data);
  end;
  FRecMessages.Clear;
end;

procedure TCustomReceipt.PrintRecMessages(ID: Integer);
var
  i: Integer;
  Data: TTextRec;
begin
  for i := 0 to FRecMessages.Count-1 do
  begin
    Data := FRecMessages[i].Data;
    if Data.ID = ID then
      Printer.PrintText(Data);
  end;
  for i := FRecMessages.Count-1 downto 0 do
  begin
    Data := FRecMessages[i].Data;
    if Data.ID = ID then
      FRecMessages[i].Free;
  end;
end;

procedure TCustomReceipt.PrintRecNotPaid(const Description: string;
  Amount: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecRefund(const Description: string;
  Amount: Currency; VatInfo: Integer);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecSubtotal(Amount: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecSubtotalAdjustment(
  AdjustmentType: Integer; const Description: string; Amount: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecTotal(Total, Payment: Currency;
  const Description: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecVoid(const Description: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecCash(Amount: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemFuel(const Description: string;
  Price: Currency; Quantity, VatInfo: Integer; UnitPrice: Currency;
  const UnitName: string; SpecialTax: Currency;
  const SpecialTaxName: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemFuelVoid(const Description: string;
  Price: Currency; VatInfo: Integer; SpecialTax: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecPackageAdjustment(AdjustmentType: Integer;
  const Description, VatAdjustment: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecPackageAdjustVoid(AdjustmentType: Integer;
  const VatAdjustment: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecRefundVoid(const Description: string;
  Amount: Currency; VatInfo: Integer);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecSubtotalAdjustVoid(
  AdjustmentType: Integer; Amount: Currency);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecTaxID(const TaxID: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemAdjustmentVoid(
  AdjustmentType: Integer; const Description: string; Amount: Currency;
  VatInfo: Integer);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecVoidItem(
  const Description: string;
  Amount: Currency;
  Quantity, AdjustmentType: Integer;
  Adjustment: Currency; VatInfo: Integer);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemVoid(
  const Description: string;
  Price: Currency;
  Quantity, VatInfo: Integer;
  UnitPrice: Currency;
  const UnitName: string);
begin
  RaiseIllegalError;
end;

class procedure TCustomReceipt.CheckPrice(Value: Currency);
begin
  if Value < 0 then
    raiseExtendedError(OPOS_EFPTR_BAD_PRICE, MsgNegativePrice);
end;

class procedure TCustomReceipt.CheckPercents(Value: Currency);
begin
  if (Value < 0)or(Value > 9999) then
    raiseExtendedError(OPOS_EFPTR_BAD_ITEM_AMOUNT, MsgInvalidPercentsValue);
end;

class procedure TCustomReceipt.CheckQuantity(Quantity: Integer);
begin
  if Quantity < 0 then
    raiseExtendedError(OPOS_EFPTR_BAD_ITEM_QUANTITY, MsgNegativeQuantity);
end;

class procedure TCustomReceipt.CheckAmount(Amount: Currency);
begin
  if Amount < 0 then
    raiseExtendedError(OPOS_EFPTR_BAD_ITEM_AMOUNT, MsgNegativeAmount);
end;

procedure TCustomReceipt.PrintRecItemRefund(const ADescription: string;
  Amount: Currency; Quantity, VatInfo: Integer; UnitAmount: Currency;
  const AUnitName: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintRecItemRefundVoid(const ADescription: string;
  Amount: Currency; Quantity, VatInfo: Integer; UnitAmount: Currency;
  const AUnitName: string);
begin
  RaiseIllegalError;
end;

procedure TCustomReceipt.PrintNormal(const Text: string; Station: Integer);
begin
  if State.State = FPTR_PS_FISCAL_RECEIPT_ENDING then
  begin
    AddRecMessage(Text, Station, 0);
  end else
  begin
    Printer.Printer.Device.PrintText(Station, Text);
  end;
end;

procedure TCustomReceipt.PrintRecMessage(const Message: string);
begin
  PrintNormal(Message, PRINTER_STATION_REC);
end;

procedure TCustomReceipt.AfterEndFiscalReceipt;
begin

end;

procedure TCustomReceipt.PrintPostLine;
begin
  Printer.PrintPostLine;
end;

procedure TCustomReceipt.PrintPreLine;
begin
  Printer.PrintPreLine;
end;

function TCustomReceipt.GetPaymentTotal: Int64;
begin
  Result := 0;
end;

procedure TCustomReceipt.PaymentAdjustment(Amount: Int64);
begin

end;

class procedure TCustomReceipt.CheckDescription(const Description: string);
begin
end;

function TCustomReceipt.GetDevice: IFiscalPrinterDevice;
begin
  Result := Printer.Printer.Device;
end;

procedure TCustomReceipt.AddRecMessage(const Message: string; Station: Integer;
  ID: Integer);
var
  TextItem: TTextRec;
begin
  TextItem.ID := ID;
  TextItem.Text := Message;
  TextItem.Wrap := Parameters.WrapText;
  TextItem.Font := Parameters.FontNumber;
  TextItem.Station := Station;
  TextItem.Alignment := taLeft;
  FRecMessages.Add(TextItem);
end;

procedure TCustomReceipt.SetAdjustmentAmount(Amount: Integer);
begin

end;

function TCustomReceipt.GetTotal: Int64;
begin
  Result := 0;
  if Device.IsRecOpened then
    Result := Device.GetSubtotal;
end;

procedure TCustomReceipt.PrintText(const Data: TTextRec);
begin
  Device.PrintText(Data);
end;

procedure TCustomReceipt.PrintBarcode(const Barcode: TBarcodeRec);
begin
  Device.PrintBarcode2(Barcode);
end;

procedure TCustomReceipt.FSWriteTLV(const TLVData: string);
begin
  Device.Check(Device.FSWriteTLV(TLVData));
end;


function TCustomReceipt.GetParameters: TPrinterParameters;
begin
  Result := Printer.Printer.Parameters;
end;

function TCustomReceipt.GetLogger: ILogFile;
begin
  Result := Device.Parameters.Logger;
end;

function TCustomReceipt.GetMalinaParams: TMalinaParams;
begin
  Result := Device.Context.MalinaParams;
end;

procedure TCustomReceipt.WriteFPParameter(ParamId: Integer;
  const Value: string);
begin
  Device.WriteFPParameter(ParamId, Value);
end;

procedure TCustomReceipt.PrintAdditionalHeader(
  const AdditionalHeader: string);
begin
  Device.PrintText(PRINTER_STATION_REC, AdditionalHeader);
end;

procedure TCustomReceipt.EndFiscalReceipt2;
begin

end;

end.
