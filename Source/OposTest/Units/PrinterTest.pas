unit PrinterTest;

interface

uses
  // VCL
  Windows, Forms, Classes, SysUtils, Math,
  // This
  DriverTest, Opos, OposUtils, OposFiscalPrinter, OPOSDate, OposFptr,
  StringUtils, DirectIOAPI, FileUtils, PrinterParameters, SMFiscalPrinter;

const
  AdditionalTrailer =
    '**** AdditionalTrailer Line1 ****' + #13#10 +
    '**** AdditionalTrailer Line2 ****';

  AdditionalHeader =
    '****  AdditionalHeader Line 1  ****' + #13#10 +
    '****  AdditionalHeader Line 2  ****';

type
  { TDayOpenedTest }

  TDayOpenedTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSetPOSIDTest }

  TSetPOSIDTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TAdditionalHeaderTest }

  TAdditionalHeaderTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTenderNameTest }

  TTenderNameTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TZReportTest }

  TZReportTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TChangeTest }

  TChangeTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { THeaderTrailerTest }

  THeaderTrailerTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TFrameLengthTest }

  TFrameLengthTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TCashInTest }

  TCashInTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TCashOutTest }

  TCashOutTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDirectIOTest1 }

  TDirectIOTest1 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDirectIOTest2 }

  TDirectIOTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDateTest }

  TDateTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TX5Test }

  TX5Test = class(TDriverTest)
  private
    procedure SetHeaderText(const Text: string);
    procedure SetTrailerText(const Text: string);
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TX5Test2 }

  TX5Test2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TNonFiscalReceiptTest }

  TNonFiscalReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TGenericReceiptTest }

  TGenericReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest }

  TSalesReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest2 }

  TSalesReceiptTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest3 }

  TSalesReceiptTest3 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest4 }

  TSalesReceiptTest4 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest5 }

  TSalesReceiptTest5 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest6 }

  TSalesReceiptTest6 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest7 }

  TSalesReceiptTest7 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest8 }

  TSalesReceiptTest8 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest9 }

  TSalesReceiptTest9 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest10 }

  TSalesReceiptTest10 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest11 }

  TSalesReceiptTest11 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TSalesReceiptTest12 }

  TSalesReceiptTest12 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRefundReceiptTest }

  TRefundReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRefundReceiptTest2 }

  TRefundReceiptTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TEmptySalesReceipt }

  TEmptySalesReceipt = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TEmptySalesReceipt2 }

  TEmptySalesReceipt2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TEmptyRefundReceipt }

  TEmptyRefundReceipt = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TEmptyRefundReceipt2 }

  TEmptyRefundReceipt2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReceipt2 }

  TReceipt2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TZeroReceipt }

  TZeroReceipt = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRoundTest }

  TRoundTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReceiptDiscountTest }

  TReceiptDiscountTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReceiptDiscountTest2 }

  TReceiptDiscountTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TGlobusReceiptTest }

  TGlobusReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TCancelReceiptTest }

  TCancelReceiptTest = class(TDriverTest)
  private
    procedure PrintSeparator;
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TStornoReceiptTest }

  TStornoReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReadEJACtivationResultTest }

  TReadEJACtivationResultTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReadEJACtivationResultTest2 }

  TReadEJACtivationResultTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReadEJACtivationResultTest3 }

  TReadEJACtivationResultTest3 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TReadEJACtivationResultTest4 }

  TReadEJACtivationResultTest4 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TBoldTextTest }

  TBoldTextTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TPrint10Test }

  TPrint10Test = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TPrint20Test }

  TPrint20Test = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TPrintNormalTest }

  TPrintNormalTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRecNearEndTest }

  TRecNearEndTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountCardTest }

  TDiscountCardTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountCardTest2 }

  TDiscountCardTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TQRCodeTest }

  TQRCodeTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt2 }

  TTestReceipt2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt3 }

  TTestReceipt3 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt4 }

  TTestReceipt4 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt5 }

  TTestReceipt5 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt6 }

  TTestReceipt6 = class(TDriverTest)
  private
    procedure PrintReceipt;
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt7 }

  TTestReceipt7 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt8 }

  TTestReceipt8 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt9 }

  TTestReceipt9 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt10 }

  TTestReceipt10 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestReceipt11 }

  TTestReceipt11 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTestDiscountReceipt }

  TTestDiscountReceipt = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt2 }

  TDiscountReceipt2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt3 }

  TDiscountReceipt3 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt4 }

  TDiscountReceipt4 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt5 }

  TDiscountReceipt5 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt6 }

  TDiscountReceipt6 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt7 }

  TDiscountReceipt7 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TDiscountReceipt8 }

  TDiscountReceipt8 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRetalixReceipt }

  TRetalixReceipt = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { THangReceiptTest }

  THangReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TRosneftReceiptTest }

  TRosneftReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TAdjustmentReceiptTest }

  TAdjustmentReceiptTest = class(TDriverTest)
  private
    procedure PrintQRCode;
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TCorrectionReceiptTest }

  TCorrectionReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TTLVReceiptTest }

  TTLVReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TPreLineReceiptTest }

  TPreLineReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TZeroReceiptTest }

  TZeroReceiptTest = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

  { TZeroReceiptTest2 }

  TZeroReceiptTest2 = class(TDriverTest)
  public
    procedure Execute; override;
    function GetDisplayText: string; override;
  end;

implementation

const
  Separator = '--------------------------';

procedure CheckBool(Value: Boolean);
begin
  if not Value then
    raise Exception.Create('Test failed');
end;

{ TDayOpenedTest }

procedure TDayOpenedTest.Execute;
begin
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;

  AddLine(Separator);
  AddLine('DayOpened = ' + BoolToStr(FiscalPrinter.DayOpened));
  AddLine(Separator);
  if not FiscalPrinter.DayOpened then
  begin
    PrintTestReceipt;
    // Check DayOpened property
    AddLine(Separator);
    AddLine('DayOpened = ' + BoolToStr(FiscalPrinter.DayOpened));
    AddLine(Separator);

    if not FiscalPrinter.DayOpened then
    begin
      AddLine('Day not opened after receipt printed. Error!!!');
      Exit;
    end;
  end;
  // PrintZReport
  AddLine('PrintZReport');
  Check(FiscalPrinter.PrintZReport);
  AddLine(Separator);
  AddLine('DayOpened = ' + BoolToStr(FiscalPrinter.DayOpened));
  AddLine(Separator);
  // Check DayOpened property
  if FiscalPrinter.DayOpened then
  begin
    AddLine('Day opened after ZReport printed. Error!!!');
    Abort;
  end;
  AddLine('Test successfully completed!');
end;

function TDayOpenedTest.GetDisplayText: string;
begin
  Result := 'Day opened test';
end;

{ TSetPOSIDTest }

function TSetPOSIDTest.GetDisplayText: string;
begin
  Result := 'Set POSID test';
end;

procedure TSetPOSIDTest.Execute;
begin
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;

  AddLine('CapSetPOSID = ' + BoolToStr(FiscalPrinter.CapSetPOSID));
  if not FiscalPrinter.CapSetPOSID then
  begin
    AddLine('CapSetPOSID = FALSE, Error!');
    Exit;
  end;
  // Cashier1
  AddLine(Separator);
  AddLine('SetPOSID('''', ''Cashier1'')');
  Check(FiscalPrinter.SetPOSID('�����: 7', '������: ������� �.�.'));
  AddLine('Print test receipt');
  PrintTestReceipt;
  // Cashier2
  AddLine(Separator);
  AddLine('SetPOSID('''', ''Cashier2'')');
  Check(FiscalPrinter.SetPOSID('�����: 7', '������: ������ �. �.'));
  AddLine('Print test receipt');
  PrintTestReceipt;
  // Some text
  AddLine(Separator);
  AddLine('Test successfully completed');
  AddLine('Check the receipts !');
end;

{ TAdditionalHeaderTest }

function TAdditionalHeaderTest.GetDisplayText: string;
begin
  Result := 'Additional header test';
end;

procedure TAdditionalHeaderTest.Execute;
begin
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;

  AddLine(Separator);
  AddLine('CapAdditionalHeader = ' +
    BoolToStr(FiscalPrinter.CapAdditionalHeader));

  AddLine(Separator);
  if not FiscalPrinter.CapAdditionalHeader then
  begin
    AddLine('CapAdditionalHeader = FALSE, Error!');
    Exit;
  end;

  FiscalPrinter.AdditionalHeader :=
    'Additional Header, line 1' + #13#10+
    'Additional Header, line 2';

  PrintTestReceipt;
end;

{ TTenderNameTest }

function TTenderNameTest.GetDisplayText: string;
begin
  Result := 'Tender name test';
end;

procedure TTenderNameTest.Execute;
var
  i: Integer;
  TenderIndex: Integer;
  TenderName: WideString;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  // Set tender names
  AddLine(Separator);
  // Tender name for tender 0 cannot be changed
  // Fiscal printer will return error
  for i := 1 to 3 do
  begin
    TenderIndex := i;
    TenderName := Format('Tender %d', [i]);
    AddLine(Format('DirectIO(0x4A, %d, %s)', [i, TenderName]));
    Check(FiscalPrinter.DirectIO($4a, TenderIndex, TenderName));
  end;
  AddLine(Separator);
  // Print test receipt with all tenders
  PrintTenderReceipt;
  // Set different tender names
  AddLine(Separator);
  // Tender name for tender 0 cannot be changed
  // Fiscal printer will return error
  for i := 1 to 3 do
  begin
    TenderIndex := i;
    TenderName := Format('Tender name %d', [i]);
    AddLine(Format('DirectIO(0x4A, %d, %s)', [i, TenderName]));
    Check(FiscalPrinter.DirectIO($4a, TenderIndex, TenderName));
  end;
  AddLine(Separator);
  // Print test receipt with all tenders
  PrintTenderReceipt;
  //
  AddLine(Separator);
  AddLine('Test completed !');
  AddLine('Check tender names on the receipts');
end;

{ TZReportTest }

function TZReportTest.GetDisplayText: string;
begin
  Result := 'ZReport test';
end;

procedure TZReportTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // Print test receipt
  PrintTestReceipt;
  // Print Z report
  AddLine('PrintZReport');
  Check(FiscalPrinter.printZReport);
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ TChangeTest }

function TChangeTest.GetDisplayText: string;
begin
  Result := 'Change test';
end;

procedure TChangeTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;

  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecItem
  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Item 1', 100, 1000, 0, 100, ''));
  // PrintRecTotal - cash
  AddLine('PrintRecTotal - cash');
  FiscalPrinter.PreLine := StringOfChar('-', Integer(FiscalPrinter.MessageLength));
  FiscalPrinter.ChangeDue := 'Change due text';
  Check(FiscalPrinter.PrintRecTotal(90, 90, '0'));
  // PrintRecTotal - payment card
  AddLine('PrintRecTotal - payment card');
  FiscalPrinter.PostLine := StringOfChar('-', Integer(FiscalPrinter.MessageLength));
  FiscalPrinter.ChangeDue := 'Change due text';
  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '3'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ THeaderTrailerTest }

function THeaderTrailerTest.GetDisplayText: string;
begin
  Result := 'Header trailer test';
end;

procedure THeaderTrailerTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // Set header lines
  SetHeaderLines;
  // Set trailer lines
  SetTrailerLines;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecItem
  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Item 1', 100, 1000, 0, 100, ''));
  // PrintRecTotal - cash
  AddLine('PrintRecTotal - cash');
  FiscalPrinter.PreLine := StringOfChar('-', Integer(FiscalPrinter.MessageLength));
  FiscalPrinter.ChangeDue := 'Change due text';
  Check(FiscalPrinter.PrintRecTotal(90, 90, '0'));
  // PrintRecTotal - payment card
  AddLine('PrintRecTotal - payment card');
  FiscalPrinter.PostLine := StringOfChar('-', Integer(FiscalPrinter.MessageLength));
  FiscalPrinter.ChangeDue := 'Change due text';
  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '3'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ TFrameLengthTest }

function TFrameLengthTest.GetDisplayText: string;
begin
  Result := 'Frame length test';
end;

procedure TFrameLengthTest.Execute;
var
  i: Integer;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginNonFiscal
  AddLine('BeginNonFiscal');
  Check(FiscalPrinter.BeginNonFiscal);
  // PrintNormal
  for i := 0 to 10 do
    Check(FiscalPrinter.PrintNormal(2, StringOfChar('*', 100)));
  // EndNonFiscal
  AddLine('EndNonFiscal');
  Check(FiscalPrinter.EndNonFiscal);
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ TCashInTest }

function TCashInTest.GetDisplayText: string;
begin
  Result := 'Cash in test';
end;

procedure TCashInTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CASH_IN;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecCash
  AddLine('PrintRecCash(1.23)');
  Check(FiscalPrinter.PrintRecCash(1.23));
  // PrintRecCash
  AddLine('PrintRecCash(2.34)');
  Check(FiscalPrinter.PrintRecCash(2.34));
  // PrintRecTotal
  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  // PrintNormal
  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(2, 'PrintNormal'));
  // PrintRecMessage
  AddLine('PrintRecMessage');
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:       8199'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ TCashOutTest }

function TCashOutTest.GetDisplayText: string;
begin
  Result := 'Cash out test';
end;

procedure TCashOutTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CASH_OUT;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecCash
  AddLine('PrintRecCash(1.23)');
  Check(FiscalPrinter.PrintRecCash(1.23));
  // PrintRecCash
  AddLine('PrintRecCash(2.34)');
  Check(FiscalPrinter.PrintRecCash(2.34));
  // PrintRecTotal
  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  // PrintNormal
  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(2, 'PrintNormal'));
  // PrintRecMessage
  AddLine('PrintRecMessage');
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // Test completed
  AddLine(Separator);
  AddLine('OK. Test completed');
end;

{ TDirectIOTest1 }

function TDirectIOTest1.GetDisplayText: string;
begin
  Result := 'DirectIO test 1';
end;

procedure TDirectIOTest1.Execute;
var
  pData: Integer;
  pString: WideString;
begin
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // DirectIO
  AddLine('DirectIO');
  pData := 0;
  pString := FloatToStr(10.2) + ';1234;0;Item �1000          ';
  Check(FiscalPrinter.DirectIO(1, pData, pString));
  // PrintRecTotal
  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(10000, 10000, '0'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TDirectIOTest2 }

procedure TDirectIOTest2.Execute;
var
  pData: Integer;
  pString: WideString;
begin
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  // 1. Empty string
  pData := 0;
  pString := '';
  CheckBool(FiscalPrinter.DirectIO(1, pData, pString) = OPOS_E_ILLEGAL);
  // 2. Incorrect parameters
  pData := 0;
  pString := ';';
  CheckBool(FiscalPrinter.DirectIO(1, pData, pString) = OPOS_E_ILLEGAL);
  // 3. Incorrect parameters
  pData := 0;
  pString := 'a;a;a;a;a';
  CheckBool(FiscalPrinter.DirectIO(1, pData, pString) = OPOS_E_ILLEGAL);
  // 4. Incorrect parameters
  pData := 0;
  pString := '1;a;a;a;a';
  CheckBool(FiscalPrinter.DirectIO(1, pData, pString) = OPOS_E_ILLEGAL);
  // 5. Incorrect parameters
  pData := 0;
  pString := FloatToStr(1.20) + ';2;a;a;a';
  CheckBool(FiscalPrinter.DirectIO(1, pData, pString) = OPOS_E_ILLEGAL);
end;

function TDirectIOTest2.GetDisplayText: string;
begin
  Result := 'DirectIO test 2';
end;

{ TDateTest }

procedure TDateTest.Execute;
var
  DeviceDate: TOPOSDate;
  sDeviceDate: WideString;
begin
  DeviceDate := TOPOSDate.Create;
  try
    // Get fiscal printer date
    AddLine('Get fiscal printer date');
    Check(FiscalPrinter.GetDate(sDeviceDate));
    AddLine('Fiscal printer date: ' + sDeviceDate);
    DeviceDate.AsDate := Now;
    if DeviceDate.AsString <> sDeviceDate then
    begin
      Check(FiscalPrinter.SetDate(DeviceDate.AsString));
    end;
  finally
    DeviceDate.Free;
  end;
end;

function TDateTest.GetDisplayText: string;
begin
  Result := 'Check date test';
end;

{ TX5Test }

function TX5Test.GetDisplayText: string;
begin
  Result := 'X5 test';
end;

procedure TX5Test.SetHeaderText(const Text: string);
var
  i: Integer;
  Line: string;
  Count: Integer;
  Lines: TStrings;
begin
  Lines := TStringList.Create;
  try
    Lines.Text := Text;
    Count := FiscalPrinter.NumHeaderLines;
    for i := 0 to Count-1 do
    begin
      Line := '';
      if i < Lines.Count then Line := Lines[i];
      Check(FiscalPrinter.SetHeaderLine(i+1, Line, False));
    end;
  finally
    Lines.Free;
  end;
end;

procedure TX5Test.SetTrailerText(const Text: string);
var
  i: Integer;
  Line: string;
  Count: Integer;
  Lines: TStrings;
begin
  Lines := TStringList.Create;
  try
    Lines.Text := Text;
    Count := FiscalPrinter.NumTrailerLines;
    for i := 0 to Count-1 do
    begin
      Line := '';
      if i < Lines.Count then Line := Lines[i];
      Check(FiscalPrinter.SetTrailerLine(i+1, Line, False));
    end;
  finally
    Lines.Free;
  end;
end;

procedure TX5Test.Execute;
const
  CRLF = #13#10;
  Header =
    CRLF +
    CRLF +
    CRLF +
    CRLF +
    '**************************************************' + CRLF +
    '*           WELCOME TO OUR STORE                 *' + CRLF +
    '*               INN 7728029110                   *' + CRLF +
    '*             STORE PERVOMAYSKY                  *' + CRLF +
    '*         Moscow, 9th Parkovaya, b.62            *' + CRLF +
    '**************************************************';

  Trailer =
    '--------------------------------------------------' + CRLF +
    '                Thank you!                        ' + CRLF +
    '          You are always welcome.                 ';

var
  i: Integer;
  Line: string;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // Header
  SetHeaderText(Header);
  SetTrailerText(Trailer);

  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecItem
  for i := 1 to 10 do
  begin
    AddLine('PrintRecItem');
    Line := Format('%d: 76319 PEPSI-Light', [i]);
    Check(FiscalPrinter.PrintRecItem(Line, 24.59, 1000, 0, 24.59, ''));
  end;
  // PrintRecTotal
  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(245.9, 500, '0'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  //
  AddLine(Separator);
  AddLine('Test completed !');
  AddLine('Check tender names on the receipts');
end;

{ TX5Test2 }

function TX5Test2.GetDisplayText: string;
begin
  Result := 'X5 test';
end;

procedure TX5Test2.Execute;
var
  i: Integer;
  Line: string;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;
  // BeginFiscalReceipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // PrintRecItem
  for i := 1 to 10 do
  begin
    AddLine('PrintRecItem');
    Line := Format('%d: 76319 PEPSI-LIGHT', [i]);
    Check(FiscalPrinter.PrintRecItem(Line, 24.59, 1000, 0, 24.59, ''));
  end;
  // PrintRecTotal
  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(245.9, 500, '0'));
  // EndFiscalReceipt
  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
  //
  AddLine(Separator);
  AddLine('Test completed !');
  AddLine('Check tender names on the receipts');
end;

{ TNonFiscalReceiptTest }

procedure TNonFiscalReceiptTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  Check(FiscalPrinter.BeginNonFiscal);
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 1'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 2'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 3'));
  Check(FiscalPrinter.PrintText('Nonfiscal receipt line 4', 5));
  Check(FiscalPrinter.PrintText('Nonfiscal receipt line 5', 5));
  Check(FiscalPrinter.PrintText('Nonfiscal receipt line 6', 5));

  Check(FiscalPrinter.EndNonFiscal);
  //
  AddLine(Separator);
  AddLine('Test completed !');
end;

function TNonFiscalReceiptTest.GetDisplayText: string;
begin
  Result := 'Non fiscal receipt';
end;

{ TGenericReceiptTest }

procedure TGenericReceiptTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_GENERIC;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, '************************************'));

  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Generic receipt line 1'));

  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Generic receipt line 2'));

  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Generic receipt line 3'));

  AddLine('PrintNormal');
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, '************************************'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TGenericReceiptTest.GetDisplayText: string;
begin
  Result := 'Generic receipt';
end;

{ TSalesReceiptTest }

procedure TSalesReceiptTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 1, 0, ''));
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 2, 0, ''));
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 3, 0, ''));
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 4, 0, ''));
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TSalesReceiptTest.GetDisplayText: string;
begin
  Result := 'Sales receipt test';
end;

{ TRefundReceiptTest }

procedure TRefundReceiptTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItemRefund');
  FiscalPrinter.PreLine := 'PreLine';
  Check(FiscalPrinter.PrintRecItemRefund('Item 1', 15.18, 123, 0, 123.45, ''));

  AddLine('PrintRecItemRefundVoid');
  Check(FiscalPrinter.PrintRecItemRefundVoid('Item 1', 15.18, 123, 0, 123.45, ''));

  AddLine('PrintRecItemRefund');
  Check(FiscalPrinter.PrintRecItemRefund('Item 2', 15.18, 123, 0, 123.45, ''));

  AddLine('PrintRecItemVoid');
  Check(FiscalPrinter.PrintRecItemVoid('Item 2', 15.18, 123, 0, 123.45, ''));

  AddLine('PrintRecItemRefund');
  Check(FiscalPrinter.PrintRecItemRefund('Item 3', 15.18, 123, 0, 123.45, ''));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TRefundReceiptTest.GetDisplayText: string;
begin
  Result := 'Refund receipt test';
end;

{ TRefundReceiptTest2 }

procedure TRefundReceiptTest2.Execute;
var
  RecTotal: Currency;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  RecTotal := 999;
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_REFUND;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '������ 14.50', 14.50, 0));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE, '�������� 20.50', 20.50, 0));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('����� ������� � ������', 123.45, 123, 0, 0, ''));

  AddLine('PrintRecItemVoid');
  Check(FiscalPrinter.PrintRecItemVoid('��������� �������', 123.45, 123, 0, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('���� � �������', 123.45, 123, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '������ 12.34', 12.34, 0));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE, '�������� 23.45', 23.45, 0));

  AddLine('PrintRecSubtotalAdjustment');
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '������ 10%', 10.00));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(RecTotal, RecTotal, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TRefundReceiptTest2.GetDisplayText: string;
begin
  Result := 'Refund receipt test 2';
end;

{ TEmptySalesReceipt }

function TEmptySalesReceipt.GetDisplayText: string;
begin
  Result := 'Empty sales receipt';
end;

procedure TEmptySalesReceipt.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TEmptySalesReceipt2 }

function TEmptySalesReceipt2.GetDisplayText: string;
begin
  Result := 'Empty sales receipt 2';
end;

procedure TEmptySalesReceipt2.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Epty item', 0, 0, 0, 0, ''));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TEmptyRefundReceipt }

function TEmptyRefundReceipt.GetDisplayText: string;
begin
  Result := 'Empty refund receipt';
end;

procedure TEmptyRefundReceipt.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_REFUND;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TEmptyRefundReceipt2 }

function TEmptyRefundReceipt2.GetDisplayText: string;
begin
  Result := 'Empty refund receipt 2';
end;

procedure TEmptyRefundReceipt2.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_REFUND;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecRefund');
  Check(FiscalPrinter.PrintRecRefund('Empty item', 0, 0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TReceipt2 }

function TReceipt2.GetDisplayText: string;
begin
  Result := 'Sales receipt 2';
end;

procedure TReceipt2.Execute;
var
  RecTotal: Currency;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  RecTotal := 999;
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('2--44863 Fried chikens   ',
    350.51, 354, 0,350.51,'0'));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('2--44863 Fried chikens   ',
    350.51, 354, 0,350.51,'0'));

  AddLine('PrintRecItemVoid');
  Check(FiscalPrinter.PrintRecItemVoid('2--44863 Fried chikens   ',
    350.51, 354, 0,350.51, '0'));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(RecTotal, RecTotal, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TSalesReceiptTest }

procedure TSalesReceiptTest2.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('������               2000013553010',799,0,1,0,''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('������               2000013553010',799,0,1,0,''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('�����                2000013552693',139,0,1,0,''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'',14.50,0));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('�����                2000013552693',139,0,1,0,''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'',14.50,0));

  AddLine('PrintRecSubtotal');
  Check(FiscalPrinter.PrintRecSubtotal(0));

  AddLine('PrintRecSubtotalAdjustment');
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1,'Empl Discount',554.10));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(1000000, 1000000, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TSalesReceiptTest2.GetDisplayText: string;
begin
  Result := 'Sales receipt test 2';
end;

{ TSalesReceiptTest3 }

procedure TSalesReceiptTest3.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Spade', 100, 0, 1, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Shovel', 200, 0, 2, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Bricket', 300, 0, 3, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Super Bricket', 400, 0, 4, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Antenna', 500, 0, 0, 0, ''));

  AddLine('PrintRecSubtotal');
  Check(FiscalPrinter.PrintRecSubtotal(0));

  AddLine('PrintRecSubtotalAdjustment');
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, 'Empl Discount', 700));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(1000000, 1000000, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TSalesReceiptTest3.GetDisplayText: string;
begin
  Result := 'Sales receipt test 3';
end;

{ TSalesReceiptTest4 }

procedure TSalesReceiptTest4.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  AddLine('Receipt #1');
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Spade', 270, 0, 1, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Shovel', 268.65, 0, 2, 0, ''));

  AddLine('PrintRecSubtotal');
  Check(FiscalPrinter.PrintRecSubtotal(0));

  AddLine('PrintRecSubtotalAdjustment');
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, 'Empl Discount', 100));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(538.65, 538.65, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);

  AddLine('Receipt #2');
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Spade', 270, 0, 1, 0, ''));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Shovel', 268.33, 0, 2, 0, ''));

  AddLine('PrintRecSubtotal');
  Check(FiscalPrinter.PrintRecSubtotal(0));

  AddLine('PrintRecSubtotalAdjustment');
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, 'Empl Discount', 100));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(538.33, 538.33, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);

  AddLine('Test completed !');
end;

function TSalesReceiptTest4.GetDisplayText: string;
begin
  Result := 'Sales receipt test 4';
end;

{ TSalesReceiptTest5 }

function TSalesReceiptTest5.GetDisplayText: string;
begin
  Result := 'Sales receipt test 5';
end;

procedure TSalesReceiptTest5.Execute;
var
  i: Integer;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItem', [i]));
    Check(FiscalPrinter.PrintRecItem('Item 1', 100, 5000, i, 100, ''));
  end;

  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemVoid', [i]));
    Check(FiscalPrinter.PrintRecItemVoid('Item 1', 100, 1000, i, 100, ''));
  end;
  // Amount discount
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
      '������ ������ 100 ���', 100, i));
  end;
  // Amount charge
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
      '�������� ������ 100', 100, i));
  end;
  // Percent discount
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_DISCOUNT,
      '���������� ������ 10%', 10, i));
  end;
  // Percent charge
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_SURCHARGE,
      '���������� �������� 10%', 10, i));
  end;

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  for i := 1 to 4 do
  begin
    AddLine('PrintRecTotal');
    Check(FiscalPrinter.PrintRecTotal(500, 500, IntToStr(i)));
  end;

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TSalesReceiptTest6 }

function TSalesReceiptTest6.GetDisplayText: string;
begin
  Result := 'Sales receipt test 6';
end;

procedure TSalesReceiptTest6.Execute;
var
  i: Integer;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemRefund', [i]));
    Check(FiscalPrinter.PrintRecItemRefund('Item 1', 100, 5000, i, 100, ''));
  end;

  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemRefundVoid', [i]));
    Check(FiscalPrinter.PrintRecItemRefundVoid('Item 1', 100, 1000, i, 100, ''));
  end;
  // Amount discount
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
      '������ ������ 100 ���', 100, i));
  end;
  // Amount charge
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
      '�������� ������ 100', 100, i));
  end;
  // Percent discount
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_DISCOUNT,
      '���������� ������ 10%', 10, i));
  end;
  // Percent charge
  for i := 0 to 4 do
  begin
    AddLine(Format('%d. PrintRecItemAdjustment', [i]));
    Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_SURCHARGE,
      '���������� �������� 10%', 10, i));
  end;

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  for i := 1 to 4 do
  begin
    AddLine('PrintRecTotal');
    Check(FiscalPrinter.PrintRecTotal(500, 500, IntToStr(i)));
  end;

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TSalesReceiptTest7 }

function TSalesReceiptTest7.GetDisplayText: string;
begin
  Result := 'Sales receipt test 7';
end;

procedure TSalesReceiptTest7.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('Item1', 141.40, 1000, 1, 141.40, '��'));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, 'Discount1', 42.42));
  Check(FiscalPrinter.PrintRecItem('Item2', 141.40, 1000, 1, 141.40, '��'));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, 'Discount2', 42.42));
  Check(FiscalPrinter.PrintRecItem('Item3', 146.60, 1000, 1, 146.60, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, 'Discount3', 36.65, 1));
  Check(FiscalPrinter.PrintRecItem('Item4', 146.60, 1000, 1, 146.60, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, 'Discount4', 36.65, 1));
  Check(FiscalPrinter.PrintRecItem('Item5', 22.20, 1000, 2, 22.20, '��'));
  Check(FiscalPrinter.PrintRecItem('Item6', 106.20, 1000, 1, 106.20, '��'));
  Check(FiscalPrinter.PrintRecItem('Item7', 11.10, 1000, 2, 11.10, '��'));
  Check(FiscalPrinter.PrintRecItem('Item8', 32.26, 770, 1, 41.9, ''));
  Check(FiscalPrinter.PrintRecTotal(589.62, 600, '1'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TSalesReceiptTest8 }

function TSalesReceiptTest8.GetDisplayText: string;
begin
  Result := 'Sales receipt test 8';
end;

procedure TSalesReceiptTest8.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('Item1', 141.40, 1000, 1, 141.40, '2'));
  Check(FiscalPrinter.PrintRecItem('Item1', 141.40, 1000, 2, 141.40, '2'));
  Check(FiscalPrinter.PrintRecItem('Item1', 141.40, 1000, 3, 141.40, '2'));

  // PrintRecSubtotalAdjustment
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
    'Amount discount 10.00', 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
    'Amount surcharge 10.00', 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_PERCENTAGE_DISCOUNT,
    'Percentage discount 10%', 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_PERCENTAGE_SURCHARGE,
    'Percentage surcharge 10%', 10));

  // PrintRecSubtotalAdjustVoid
  Check(FiscalPrinter.PrintRecSubtotalAdjustVoid(FPTR_AT_AMOUNT_DISCOUNT, 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustVoid(FPTR_AT_AMOUNT_SURCHARGE, 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustVoid(FPTR_AT_PERCENTAGE_DISCOUNT, 10));
  Check(FiscalPrinter.PrintRecSubtotalAdjustVoid(FPTR_AT_PERCENTAGE_SURCHARGE, 10));

  // PrintRecItemAdjustment
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
    'Amount discount 10.00', 10, 1));
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
    'Amount surcharge 10.00', 10, 1));
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_DISCOUNT,
    'Percentage discount 10%', 10, 1));
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_PERCENTAGE_SURCHARGE,
    'Percentage surcharge 10%', 10, 1));

  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '1'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TSalesReceiptTest9 }

function TSalesReceiptTest9.GetDisplayText: string;
begin
  Result := 'Sales receipt test 9';
end;

procedure TSalesReceiptTest9.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('Item1', 141.40, 1000, 1, 141.40, '2'));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
    'Amount discount 141.40', 141.40));

  Check(FiscalPrinter.PrintRecTotal(141.40, 141.40, '1'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TSalesReceiptTest10 }

function TSalesReceiptTest10.GetDisplayText: string;
begin
  Result := 'Sales receipt test 10';
end;

procedure TSalesReceiptTest10.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('�������� �����������', 212.91, 852, 2, 249.9, '��'));
  Check(FiscalPrinter.PrintRecVoidItem('�������� �����������', 249.9, 476, 0, 0, 2));

  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '1'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TSalesReceiptTest11 }

function TSalesReceiptTest11.GetDisplayText: string;
begin
  Result := 'Sales receipt test 11';
end;

procedure TSalesReceiptTest11.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('��������� �������', 71.6, 1075, 1, 66.6, '� '));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �����', 7.16, 1));
  Check(FiscalPrinter.PrintRecItem('�����?� �/� �/�', 184.93, 740, 2, 249.9, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �����', 36.99, 2));
  Check(FiscalPrinter.PrintRecItem('����� ������ 40% 0.5', 147, 1000, 1, 147, '��'));
  Check(FiscalPrinter.PrintRecSubtotal(359.38));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '����� ������ 40% 0.5', 44.1));
  Check(FiscalPrinter.PrintRecItem('������ � ������� ���', 53.2, 1000, 2, 53.2, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �����', 13.3, 2));
  Check(FiscalPrinter.PrintRecTotal(355.18, 355.18, '1'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 1'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 2'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 3'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TSalesReceiptTest12 }

function TSalesReceiptTest12.GetDisplayText: string;
begin
  Result := 'Department test';
end;

procedure TSalesReceiptTest12.Execute;
var
  pData: Integer;
  pString: WideString;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  pData := 2;
  pString := '';
  Check(FiscalPrinter.DirectIO(DIO_SET_DEPARTMENT, pData, pString));
  Check(FiscalPrinter.PrintRecItem('��������� �������', 71.6, 1075, 1, 66.6, '� '));

  pData := 3;
  pString := '';
  Check(FiscalPrinter.DirectIO(DIO_SET_DEPARTMENT, pData, pString));
  Check(FiscalPrinter.PrintRecItem('��������� �������', 71.6, 1075, 1, 66.6, '� '));

  Check(FiscalPrinter.PrintRecTotal(355.18, 355.18, '1'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 1'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 2'));
  Check(FiscalPrinter.PrintRecMessage('PrintRecMessage 3'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TZeroReceipt }

function TZeroReceipt.GetDisplayText: string;
begin
  Result := 'Zero receipt';
end;

procedure TZeroReceipt.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(999, 999, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TRoundTest }

function TRoundTest.GetDisplayText: string;
begin
  Result := 'Round test';
end;

procedure TRoundTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('���� ������ ����� 4', 69.10, 1000, 1, 69.10, '��'));
  Check(FiscalPrinter.PrintRecItem('����� ������� �/� ��', 36.93, 740, 2, 49.90, '��'));
  Check(FiscalPrinter.PrintRecItem('������ ����. 4% 1/45', 25.30, 1000, 2, 25.30, '��'));
  Check(FiscalPrinter.PrintRecItem('��������� �������', 41.93, 700, 1, 59.90, '� '));
  Check(FiscalPrinter.PrintRecItem('����� ������ ���� 1/', 19.90, 1000, 2, 19.90, '��'));
  Check(FiscalPrinter.PrintRecItem('������� ��������� �', 22.50, 1000, 2, 22.50, '��'));
  Check(FiscalPrinter.PrintRecItem('������', 12.03, 325, 1, 37, '� '));
  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TReceiptDiscountTest }

function TReceiptDiscountTest.GetDisplayText: string;
begin
  Result := 'Receipt discount test';
end;

procedure TReceiptDiscountTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Item1', 10, 1000, 1, 10, '��'));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '', 10));
  Check(FiscalPrinter.PrintRecTotal(0,0,'PrintRecTotal'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TReceiptDiscountTest2 }

function TReceiptDiscountTest2.GetDisplayText: string;
begin
  Result := 'Receipt discount test 2';
end;

procedure TReceiptDiscountTest2.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('���������', 98.34, 1775, 1, 55.4, '� '));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �����', 9.83, 1));
  Check(FiscalPrinter.PrintRecItem('������', 52.43, 750, 2, 69.9, '� '));
  Check(FiscalPrinter.PrintRecItem('����� ���������', 209.52, 900, 2, 232.8,'��'));
  Check(FiscalPrinter.PrintRecItem('����� ���������', 33.96, 238, 1, 142.7,'��'));
  Check(FiscalPrinter.PrintRecSubtotal(384.42));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '����� ���������', 10.19));
  Check(FiscalPrinter.PrintRecItem('��� �������� �������', 69.9, 1000, 2, 69.9, '��'));
  Check(FiscalPrinter.PrintRecItem('��� ������������� 1/', 42.4, 1000, 2, 42.4, '��'));
  Check(FiscalPrinter.PrintRecSubtotal(486.53));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '������ 7 %', 26.2));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '�����', 460.33));
  Check(FiscalPrinter.PrintRecTotal(0, 0, '20'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TGlobusReceiptTest }

function TGlobusReceiptTest.GetDisplayText: string;
begin
  Result := 'GLOBUS receipt test';
end;

procedure TGlobusReceiptTest.Execute;

  function getImageCommand(const fileName: string): string;
  begin
    Result := #$1B#$62 + fileName + #$0A;
  end;

begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Set header
  Check(FiscalPrinter.SetHeaderLine(1, getImageCommand('Logo.bmp') + '��� "�����������"', False));
  Check(FiscalPrinter.SetHeaderLine(2, '�.��a����� ����a������ �������� 28', False));
  Check(FiscalPrinter.SetHeaderLine(3, '�(4922)37-68-66', False));
  Check(FiscalPrinter.SetHeaderLine(4, 'www.globus.ru', False));
  // Begin fiscal receipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  FiscalPrinter.PreLine := '4607085440095';
  Check(FiscalPrinter.printRecItem('������� ������� 120�', 108.90, 1000, 1, 108.90, ''));
  Check(FiscalPrinter.printRecItem('Receipt item 2', 0.10, 1000, 1, 0.10, ''));
  Check(FiscalPrinter.printRecSubtotal(10890));
  Check(FiscalPrinter.printRecTotal(108.90, 40.00, '39'));
  Check(FiscalPrinter.printRecTotal(108.90, 20000.00, '1'));
  Check(FiscalPrinter.printRecMessage(getImageCommand('Logo.bmp')));
  Check(FiscalPrinter.printRecMessage('*****     ��a���� �a �������!      *****'));
  Check(FiscalPrinter.printRecMessage('****************************************'));
  Check(FiscalPrinter.printRecMessage('"������" �.�������� ���������� �� ������'));
  Check(FiscalPrinter.printRecMessage(' ��������-������(�������)); �����;'));
  Check(FiscalPrinter.printRecMessage(' �������� ������(��������));'));
  Check(FiscalPrinter.printRecMessage(' ��������-�����������(�����)); ��������'));
  Check(FiscalPrinter.printRecMessage(' ����������; ��������(����� ������)'));
  Check(FiscalPrinter.printRecMessage('          ���. (4922) 37-68-54'));
  Check(FiscalPrinter.printRecMessage('        ����� ������ ��� �������!'));
  Check(FiscalPrinter.endFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

{ TCancelReceiptTest }

function TCancelReceiptTest.GetDisplayText: string;
begin
  Result := 'Cancel receipt test';
end;

procedure TCancelReceiptTest.PrintSeparator;
begin
  Check(FiscalPrinter.PrintSeparator(1, DIO_SEPARATOR_WHITE));
  Check(FiscalPrinter.PrintSeparator(3, DIO_SEPARATOR_BLACK));
  Check(FiscalPrinter.PrintSeparator(1, DIO_SEPARATOR_WHITE));
end;

procedure TCancelReceiptTest.Execute;
begin
  // Begin fiscal receipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // Item 1
  FiscalPrinter.FontNumber := 3;
  Check(FiscalPrinter.PrintNormal(2, '  4605246004278'));
  FiscalPrinter.FontNumber := 1;
  Check(FiscalPrinter.PrintRecItem('��� ���. ������. 2*25�', 10002.90, 1, 0, 0, ''));
  // Print separator line
  PrintSeparator;
  // Subtotal
  Check(FiscalPrinter.PrintRecSubtotal(10700));
  Check(FiscalPrinter.PrintRecTotal(107, 107, ''));
  Check(FiscalPrinter.PrintRecVoid('0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;


{ TStornoReceiptTest }

function TStornoReceiptTest.GetDisplayText: string;
begin
  Result := 'Storno receipt test';
end;

procedure TStornoReceiptTest.Execute;
begin
  // Begin fiscal receipt
  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  // Item 1
  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Receipt item 1', 123, 1, 1, 0, ''));
  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
      '������ ������ 10 ���', 10, 1));
  // Item 2
  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Receipt item 2', 178.98, 1, 2, 0, ''));
  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT,
      '������ ������ 20 ���', 20, 2));
  // Storno item 1
  AddLine('PrintRecItemVoid');
  Check(FiscalPrinter.PrintRecItemVoid('Receipt item 1', 123, 1, 1, 0, ''));
  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
      '������ ������ ������ 10 ���', 10, 1));
  // Storno item 2
  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItemVoid('Receipt item 2', 178.98, 1, 2, 0, ''));
  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_SURCHARGE,
      '������ ������ 20 ���', 20, 2));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(100, 100, ''));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TReadEJACtivationResultTest }

function TReadEJACtivationResultTest.GetDisplayText: string;
begin
  Result := 'Read EJ activation';
end;

procedure TReadEJACtivationResultTest.Execute;
var
  Count: Integer;
  IsFiscal: Boolean;
  OutParams: WideString;
begin
  Memo.Lines.Clear;
  Check(FiscalPrinter.ResetPrinter);
  // Read full status, 11h
  Check(FiscalPrinter.CommandStr2($11, '30', OutParams));
  IsFiscal := GetInteger(OutParams, 20, [';']) <> 0;
  if not IsFiscal then
  begin
    AddLine('Fiscal printer is not fiscalized');
    Exit;
  end;
  Check(FiscalPrinter.CommandStr($BB, '30', OutParams));
  AddLine(OutParams);
  Count := 0;
  while FiscalPrinter.CommandStr($B3, '30', OutParams) = 0 do
  begin
    AddLine(OutParams);
    Inc(Count);
    if Count = 20 then Break;
  end;
end;

{ TReadEJACtivationResultTest2 }

function TReadEJACtivationResultTest2.GetDisplayText: string;
begin
  Result := 'Read EJ activation 2';
end;

procedure TReadEJACtivationResultTest2.Execute;
var
  Count: Integer;
  IsFiscal: Boolean;
  OutParams: WideString;
begin
  Memo.Lines.Clear;
  Check(FiscalPrinter.ResetPrinter);
  // Read full status, 11h
  Check(FiscalPrinter.CommandStr2($11, '30', OutParams));
  IsFiscal := GetInteger(OutParams, 20, [';']) <> 0;
  if not IsFiscal then
  begin
    AddLine('Fiscal printer is not fiscalized');
    Exit;
  end;

  Check(FiscalPrinter.CommandStr2($BB, '30', OutParams));
  AddLine(OutParams);
  Count := 0;
  while FiscalPrinter.CommandStr2($B3, '30', OutParams) = 0 do
  begin
    AddLine(OutParams);
    Inc(Count);
    if Count = 20 then Break;
  end;
end;

{ TReadEJACtivationResultTest3 }

function TReadEJACtivationResultTest3.GetDisplayText: string;
begin
  Result := 'Read EJ activation 3';
end;

procedure TReadEJACtivationResultTest3.Execute;
var
  pData: Integer;
  Params: WideString;
begin
  Memo.Lines.Clear;
  Check(FiscalPrinter.ResetPrinter);
  pData := ParamReadEJActivationAll;
  Check(FiscalPrinter.DirectIO(DIO_READ_EJ_ACTIVATION, pData, Params));
  AddLine('��������          : ' + GetString(Params, 1, [';']));
  AddLine('����� ���         : ' + GetString(Params, 2, [';']));
  AddLine('����� ���         : ' + GetString(Params, 3, [';']));
  AddLine('����� ����        : ' + GetString(Params, 4, [';']));
  AddLine('���� �����������  : ' + GetString(Params, 5, [';']));
  AddLine('����� ����������� : ' + GetString(Params, 6, [';']));
  AddLine('����� �����       : ' + GetString(Params, 7, [';']));
  AddLine('��������������� � : ' + GetString(Params, 8, [';']));
  AddLine('����� ���         : ' + GetString(Params, 9, [';']));
  AddLine('�������� ���      : ' + GetString(Params, 10, [';']));
end;

{ TReadEJACtivationResultTest4 }

function TReadEJACtivationResultTest4.GetDisplayText: string;
begin
  Result := 'Read EJ activation 4';
end;

procedure TReadEJACtivationResultTest4.Execute;
var
  pData: Integer;
  Params: WideString;
begin
  Memo.Lines.Clear;
  Check(FiscalPrinter.ResetPrinter);
  pData := ParamReadEJActivationDate;
  Check(FiscalPrinter.DirectIO(DIO_READ_EJ_ACTIVATION, pData, Params));
  AddLine('���� ����������� ����: ' + Params);
end;

{ TBoldTextTest }

function TBoldTextTest.GetDisplayText: string;
begin
  Result := 'Bold text test';
end;

procedure TBoldTextTest.Execute;
begin
  Memo.Lines.Clear;
  Check(FiscalPrinter.ResetPrinter);
  // BeginNonFiscal
  AddLine('BeginNonFiscal');
  Check(FiscalPrinter.BeginNonFiscal);
  // PrintNormal
  FiscalPrinter.Set_FontNumber(1);
  Check(FiscalPrinter.PrintNormal(2, 'Font 1 line'));
  FiscalPrinter.Set_FontNumber(2);
  Check(FiscalPrinter.PrintNormal(2, 'Font 2 line'));
  FiscalPrinter.Set_FontNumber(3);
  Check(FiscalPrinter.PrintNormal(2, 'Font 3 line'));
  FiscalPrinter.Set_FontNumber(4);
  Check(FiscalPrinter.PrintNormal(2, 'Font 4 line'));
  FiscalPrinter.Set_FontNumber(5);
  Check(FiscalPrinter.PrintNormal(2, 'Font 5 line'));
  FiscalPrinter.Set_FontNumber(6);
  Check(FiscalPrinter.PrintNormal(2, 'Font 6 line'));
  // EndNonFiscal
  AddLine('EndNonFiscal');
  Check(FiscalPrinter.EndNonFiscal);
end;

{ TPrint10Test }

procedure TPrint10Test.Execute;
var
  i: Integer;
  TickCount: Integer;
begin
  Memo.Lines.Clear;
  TickCount := GetTickCount;
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  for i := 1 to 10 do
  begin
    Check(FiscalPrinter.PrintRecItem('������� ' + IntToStr(i), 1, 1000, 0, 0, ''));
  end;
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  TickCount := Integer(GetTickCount) - TickCount;
  AddLine('����� ����������: ' + IntToStr(TickCount));
end;

function TPrint10Test.GetDisplayText: string;
begin
  Result := 'Print 10 items receipts';
end;

{ TPrint20Test }

procedure TPrint20Test.Execute;
var
  i: Integer;
  TickCount: Integer;
begin
  Memo.Lines.Clear;
  TickCount := GetTickCount;
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  for i := 1 to 20 do
  begin
    Check(FiscalPrinter.PrintRecItem('������� ' + IntToStr(i), 0, 1000, 0, 0, ''));
  end;
  Check(FiscalPrinter.PrintRecTotal(0, 0, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  TickCount := Integer(GetTickCount) - TickCount;
  AddLine('����� ����������: ' + IntToStr(TickCount));
end;

function TPrint20Test.GetDisplayText: string;
begin
  Result := 'Print 20 items receipts';
end;

{ TPrintNormalTest }

procedure TPrintNormalTest.Execute;
var
  i: Integer;
  TickCount: Integer;
begin
  Memo.Lines.Clear;
  TickCount := GetTickCount;
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.AdditionalHeader := '';
  FiscalPrinter.AdditionalTrailer := '';
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  for i := 1 to 3 do
  begin
    Check(FiscalPrinter.PrintNormal(2, Format('PrintNormal %d', [i])));
    Check(FiscalPrinter.PrintRecItem(Format('������� %d', [i]), 0, 1000, 0, 0, ''));
  end;
  Check(FiscalPrinter.PrintNormal(2, 'PrintNormal before PrintRecTotal'));
  Check(FiscalPrinter.PrintRecTotal(0, 0, '0'));
  Check(FiscalPrinter.PrintNormal(2, 'PrintNormal after PrintRecTotal'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  TickCount := Integer(GetTickCount) - TickCount;
  AddLine('����� ����������: ' + IntToStr(TickCount));
end;

function TPrintNormalTest.GetDisplayText: string;
begin
  Result := 'PrintNormal before receipt items';
end;

{ TRecNearEndTest }

procedure TRecNearEndTest.Execute;
begin
  Check(FiscalPrinter.Open('SHTRIH-M-OPOS-1'));
  FiscalPrinter.ServiceObjectVersion;
  Check(FiscalPrinter.ClaimDevice(10));
  FiscalPrinter.Get_ServiceObjectDescription;
  FiscalPrinter.Get_ServiceObjectVersion;
  FiscalPrinter.Get_DeviceDescription;
  FiscalPrinter.Get_DeviceName;
  FiscalPrinter.Set_PowerNotify(1);
  FiscalPrinter.Set_DeviceEnabled(True);
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_DescriptionLength;
  FiscalPrinter.Get_CapPredefinedPaymentLines;
  FiscalPrinter.Get_PredefinedPaymentLines;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Set_AsyncMode(False);
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_CapPowerReporting;
  FiscalPrinter.Get_PowerState;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Set_DeviceEnabled(True);
  FiscalPrinter.CheckHealth(1);
  FiscalPrinter.Set_DeviceEnabled(True);
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_State;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_DeviceEnabled;
  FiscalPrinter.Get_CapPowerReporting;
  FiscalPrinter.Get_PowerState;
  FiscalPrinter.Get_Claimed;
  FiscalPrinter.Set_DeviceEnabled(True);
  FiscalPrinter.CapRecNearEndSensor;
  FiscalPrinter.RecNearEnd;
end;

function TRecNearEndTest.GetDisplayText: string;
begin
  Result := 'RecNearEnd test';
end;

{ TDiscountCardTest }

(*

�� "��-������"
MJ019 �����������
��, �. ����������, ���. ��������,
69 �� ���������� �., ���.1
�
�
��� 00013801              ��� ???????????? #6998
18.02.16 14:13
�������                                    �3930
Coca-cola ��.���. 1�
01                                        ?95.00
3% Loyalty 000302992000000040
������                                     ?2.85
��������/�����-����
01                                        ?37.90
3% Loyalty 000302992000000040
������                                     ?1.14

������ � ����������
01                                        ?49.90

3% Loyalty 000302992000000040
������                                     ?1.50

��� 4:��-95-�5                              ���0
01                                       ?199.82
   5,430    *36,80
3% Loyalty 000302992000000040
������                                     ?5.98
�������                                  ?371.15
����                ?371.15
 ���������                               ?371.15
�
��������: ts ID:          7714
����������� ����!
������� ����� "�� ��������"
8-800-200-10-70

*)

procedure TDiscountCardTest.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Coca-cola ��.���. 1�', 95.00, 1000, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'3% Loyalty 000302992000000040', 2.85, 0));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('��������/�����-����', 37.90, 1000, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'3% Loyalty 000302992000000040', 1.14, 0));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('������ � ����������', 49.90, 1000, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'3% Loyalty 000302992000000040', 1.50, 0));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('��� 4:��-95-�5', 199.82, 5430, 0, 36.80, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'3% Loyalty 000302992000000040', 5.98, 0));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(10000, 10000, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TDiscountCardTest.GetDisplayText: string;
begin
  Result := 'Discount card test';
end;

{ TDiscountCardTest2 }

procedure TDiscountCardTest2.Execute;
begin
  // Clear memo
  Memo.Lines.Clear;
  Memo.Update;
  Application.ProcessMessages;
  // ResetPrinter
  AddLine('ResetPrinter');
  Check(FiscalPrinter.ResetPrinter);
  // Read receipt number
  ReadRecNumber;

  AddLine('BeginFiscalReceipt');
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.AdditionalHeader := AdditionalHeader;
  FiscalPrinter.AdditionalTrailer := AdditionalTrailer;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  AddLine('PrintRecItem');
  Check(FiscalPrinter.PrintRecItem('Coca-cola ��.���. 1�', 95.00, 1000, 0, 0, ''));

  AddLine('PrintRecItemAdjustment');
  Check(FiscalPrinter.PrintRecItemAdjustment(1,'3% Loyalty 000302992000000040', 10, 0));

  AddLine('PrintRecSubTotal');
  Check(FiscalPrinter.PrintRecSubTotal(0));

  AddLine('PrintRecTotal');
  Check(FiscalPrinter.PrintRecTotal(85.00, 85.00, '0'));

  AddLine('EndFiscalReceipt');
  Check(FiscalPrinter.EndFiscalReceipt(True));

  AddLine(Separator);
  AddLine('Test completed !');
end;

function TDiscountCardTest2.GetDisplayText: string;
begin
  Result := 'Discount card test 2';
end;

{ TQRCodeTest }

procedure TQRCodeTest.Execute;
var
  i: Integer;
  pData: Integer;
  pString: WideString;
  BarcodeData: string;
begin
  Check(FiscalPrinter.ResetPrinter);

  Check(FiscalPrinter.BeginNonFiscal);
  // PrintNormal
  for i := 1 to 5 do
  begin
    Check(FiscalPrinter.PrintNormal(2, 'LIne ' + IntToStr(i)));
  end;

  pData := 44;
  pString := 'http://check.egais.ru?id=38d02af6-bfd2-409f-8041-b011d8160700&dt=2311161430&cn=030000290346;***;4;4;0';
  Check(FiscalPrinter.DirectIO(7, pData, pString));

  for i := 6 to 10 do
  begin
    Check(FiscalPrinter.PrintNormal(2, 'LIne ' + IntToStr(i)));
  end;

  BarcodeData := '#*~*#http://check.egais.ru?id=38d02af6-bfd2-409f-8041-b011d8160700&dt=2311161430&cn=030000290346';
  Check(FiscalPrinter.PrintNormal(2, BarcodeData));


  Check(FiscalPrinter.EndNonFiscal);
end;

function TQRCodeTest.GetDisplayText: string;
begin
  Result := 'QR Code Test';
end;

{ TTestReceipt2 }

function TTestReceipt2.GetDisplayText: string;
begin
  Result := 'Discount receipt';
end;

procedure TTestReceipt2.Execute;
begin
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Item 1', 99, 1000, 0, 99, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '100% Loyalty 005202991000000307', 98.99, 0));
  Check(FiscalPrinter.PrintRecTotal(0.01, 0.01, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TTestReceipt3 }

function TTestReceipt3.GetDisplayText: string;
begin
  Result := 'Discount receipt 2';
end;

procedure TTestReceipt3.Execute;
begin
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('****  4627087921934 ��������� ������ LU', 44.9, 1000, 1, 44.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2334257000000 ����� ������� � ����', 66.74, 284, 2, 235, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4607016245485 ����� ����. ������ 1', 77, 1000, 2, 77, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4627116240333 ���������� � �������', 149, 1000, 2, 149, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4690228004575 ������ ���. ��� ����', 71, 1000, 2, 71, '��'));
  Check(FiscalPrinter.PrintRecItem('**02  4607012937421 ������ ���� �������', 79.9, 1000, 2, 79.9, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, ' ckugka', 19.98, 2));
  Check(FiscalPrinter.PrintRecItem('****            322 ������', 66.45, 970, 1, 68.5, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4605246006289 ���� ������ ����� 1/', 249.9, 1000, 1, 249.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4650001683571 ������ ������� 100��', 18.9, 1000, 1, 18.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4650001683571 ������ ������� 100��', 18.9, 1000, 1, 18.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2413343000008 ���� ����������� 1/5', 27, 1000, 2, 27, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2411271000008 ���� ����������� � �', 194, 1000, 2, 194, '��'));
  Check(FiscalPrinter.PrintRecItem('****             82 �������� �����', 277.86, 753, 1, 369, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4601713006240 �������� ������ � ��', 27.4, 1000, 1, 27.4, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4601713006240 �������� ������ � ��', 27.4, 1000, 1, 27.4, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4607068628410 ������ ���� AURA ���', 50, 1000, 1, 50, '��'));
  Check(FiscalPrinter.PrintRecItem('****  7622210459299 ������� ��������� ��', 38.5, 1000, 1, 38.5, '��'));
  Check(FiscalPrinter.PrintRecItem('****  7622210453853 ������� ���������  �', 38.5, 1000, 1, 38.5, '��'));
  Check(FiscalPrinter.PrintRecSubtotal(1503.37));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '�����', 1503.37));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TTestReceipt4 }

function TTestReceipt4.GetDisplayText: string;
begin
  Result := 'Discount receipt 3';
end;

procedure TTestReceipt4.Execute;
begin
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('������', 71.6, 180, 1, 399.2, '��'));
  Check(FiscalPrinter.PrintRecTotal(71.6, 71.6, '1'));
  Check(FiscalPrinter.PrintRecMessage(''));
  Check(FiscalPrinter.PrintRecMessage('                                                '));
  Check(FiscalPrinter.PrintRecMessage(' ****************************************       '));
  Check(FiscalPrinter.PrintRecMessage('           ��������� ����������!                '));
  Check(FiscalPrinter.PrintRecMessage('      �� ������, ����������� � �����,           '));
  Check(FiscalPrinter.PrintRecMessage('          ������ �� ����� �������               '));
  Check(FiscalPrinter.PrintRecMessage('           �� ����������������!                 '));
  Check(FiscalPrinter.PrintRecMessage('     ****** ������� �� ������� ******           '));
  Check(FiscalPrinter.PrintRecMessage('*2451 0209/002/007          06.06.16 10:01 AC-00'));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TTestReceipt5 }

function TTestReceipt5.GetDisplayText: string;
begin
  Result := 'Barcode test receipt';
end;

procedure TTestReceipt5.Execute;
var
  pData: Integer;
  pString: WideString;
begin
  pData := 0;
  pString := '299935000000';
  Check(FiscalPrinter.DirectIO(7, pData, pString));

  pData := 1;
  pString := #$0D#$0A'������ ������ 15% �� ��� ��������� ������������� � 23 ���� �� 29 ����';
  Check(FiscalPrinter.DirectIO(9, pData, pString));
end;

{ TTestReceipt6 }

procedure TTestReceipt6.Execute;
var
  i: Integer;
begin
  for i := 1 to 100 do
  begin
    PrintReceipt;
  end;
end;

procedure TTestReceipt6.PrintReceipt;
var
  pData: Integer;
  pString: WideString;
begin
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('1: 3299852 ������� ���������� ������� 50', 0, 1000, 0, 45.99, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '', 0.08, 0));
  Check(FiscalPrinter.PrintRecItem('2: 3020921 ������ ������������� 1��     ', 0, 1226, 0, 75.5, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '', 0.17, 0));
  Check(FiscalPrinter.PrintRecItem('3: 3255319 ������� ��������� 1��        ', 0, 1272, 0, 127.36, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '', 0.3, 0));

  pData := 0;
  pString := '299935000000';
  Check(FiscalPrinter.DirectIO(7, pData, pString));

  pData := 1;
  pString := #$0D#$0A'������ ������ 15% �� ��� ��������� ������������� � 23 ���� �� 29 ����';
  Check(FiscalPrinter.DirectIO(9, pData, pString));

  Check(FiscalPrinter.PrintRecVoid('CancelReceipt'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TTestReceipt6.GetDisplayText: string;
begin
  Result := 'Barcode test receipt 2';
end;

{ TTestReceipt7 }

procedure TTestReceipt7.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecItem('****  4627087921934 ��������� ������ LU', 44.9, 1000, 1, 44.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2334257000000 ����� ������� � ����', 66.74, 284, 2, 235, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4607016245485 ����� ����. ������ 1', 77, 1000, 2, 77, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4627116240333 ���������� � �������', 149, 1000, 2, 149, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4690228004575 ������ ���. ��� ����', 71, 1000, 2, 71, '��'));
  Check(FiscalPrinter.PrintRecItem('**02  4607012937421 ������ ���� �������', 79.9, 1000, 2, 79.9, '��'));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, ' ckugka', 19.98, 2));
  Check(FiscalPrinter.PrintRecItem('****            322 ������', 66.45, 970, 1, 68.5, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4605246006289 ���� ������ ����� 1/', 249.9, 1000, 1, 249.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4650001683571 ������ ������� 100��', 18.9, 1000, 1, 18.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4650001683571 ������ ������� 100��', 18.9, 1000, 1, 18.9, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2413343000008 ���� ����������� 1/5', 27, 1000, 2, 27, '��'));
  Check(FiscalPrinter.PrintRecItem('****  2411271000008 ���� ����������� � �', 194, 1000, 2, 194, '��'));
  Check(FiscalPrinter.PrintRecItem('****             82 �������� �����', 277.86, 753, 1, 369, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4601713006240 �������� ������ � ��', 27.4, 1000, 1, 27.4, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4601713006240 �������� ������ � ��', 27.4, 1000, 1, 27.4, '��'));
  Check(FiscalPrinter.PrintRecItem('****  4607068628410 ������ ���� AURA ���', 50, 1000, 1, 50, '��'));
  Check(FiscalPrinter.PrintRecItem('****  7622210459299 ������� ��������� ��', 38.5, 1000, 1, 38.5, '��'));
  Check(FiscalPrinter.PrintRecItem('****  7622210453853 ������� ���������  �', 38.5, 1000, 1, 38.5, '��'));
  Check(FiscalPrinter.PrintRecSubtotal(1503.37));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '�����', 1503.37));
  Check(FiscalPrinter.PrintRecTotal(0, 0, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TTestReceipt7.GetDisplayText: string;
begin
  Result := 'Discount receipt test';
end;

{ TTestReceipt8 }

function TTestReceipt8.GetDisplayText: string;
begin
  Result := 'Discount receipt test 2';
end;

procedure TTestReceipt8.Execute;
begin
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('������ � ����� ����', 49.9, 1000, 0, 49.9, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �� ������� ���������', 29.94, 0));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �� ������� ���������', 10, 0));
  Check(FiscalPrinter.PrintRecItem('Donut ������ ������', 49.9, 1000, 0, 49.9, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '������ �� ������� ���������', 29.94, 0));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(39.92, 39.92, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TTestReceipt9 }

procedure TTestReceipt9.Execute;
begin
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('������� ������ �����', 57, 1000, 1, 57, '��'));
  Check(FiscalPrinter.PrintRecItem('������ 12% 200�', 79.8, 2000, 2, 39.9, '��'));
  Check(FiscalPrinter.PrintRecSubtotal(136.8));
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(1, '������.�����', 0.3));
  Check(FiscalPrinter.PrintRecTotal(200, 200, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TTestReceipt9.GetDisplayText: string;
begin
  Result := 'Discount receipt test 3';
end;

{ TTestReceipt10 }

procedure TTestReceipt10.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  FiscalPrinter.PreLine := '                                    5,88 X 34,00';
  Check(FiscalPrinter.PrintRecRefund('��� 1:��-92-�4              ���23652', 199.2, 0));
  FiscalPrinter.PreLine := '                                    2,00 X 49,90';
  Check(FiscalPrinter.PrintRecRefund('�������� ������ ����', 99.80, 0));
  FiscalPrinter.PreLine := '                                    4,00 X 39,90';
  Check(FiscalPrinter.PrintRecRefund('���.����� ���.���.55', 159.60, 0));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(459.32, 459.32, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:       8200'));
  Check(FiscalPrinter.PrintRecMessage('ID �������: 8199 (459,32 ���)'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TTestReceipt10.GetDisplayText: string;
begin
  Result := 'Refund receipt 10';
end;

{ TTestReceipt11 }

procedure TTestReceipt11.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  FiscalPrinter.PreLine := '                                    5,88 X 34,00';
  Check(FiscalPrinter.PrintRecItem('��� 1:��-92-�4              ���23652', 199.2, 0, 0, 0, ''));
  FiscalPrinter.PreLine := '                                    2,00 X 49,90';
  Check(FiscalPrinter.PrintRecItem('�������� ������ ����', 99.80, 0, 0, 0, ''));
  FiscalPrinter.PreLine := '                                    4,00 X 39,90';
  Check(FiscalPrinter.PrintRecItem('���.����� ���.���.55', 159.60, 0, 0, 0, ''));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(459.32, 459.32, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:       8200'));
  Check(FiscalPrinter.PrintRecMessage('ID �������: 8199 (459,32 ���)'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TTestReceipt11.GetDisplayText: string;
begin
  Result := 'Sales receipt 11';
end;

{ TTestDiscountReceipt }

function TTestDiscountReceipt.GetDisplayText: string;
begin
  Result := 'Test discount receipt';
end;

procedure TTestDiscountReceipt.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('1. Item1', 100, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecItem('2. Item2', 200, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecItem('3. Item3', 300, 1000, 0, 0, ''));

  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '������ 1', 0.99));

  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TDiscountReceipt2 }

function TDiscountReceipt2.GetDisplayText: string;
begin
  Result := 'Discount receipt 2';
end;

procedure TDiscountReceipt2.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Coca-cola ��.���. 1�', 99, 1000, 0, 99, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '10.1% Loyalty 005202991002739241', 10, 0));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(89, 89, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:    3946640'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TDiscountReceipt3 }

function TDiscountReceipt3.GetDisplayText: string;
begin
  Result := 'Discount receipt 3';
end;

procedure TDiscountReceipt3.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  FiscalPrinter.PostLine := '  13.580    *36.80';
  FiscalPrinter.PreLine := '';
  Check(FiscalPrinter.PrintRecRefund('��� 3:��-95-�5               ���1390', 499.74, 0));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(499.74, 499.74, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:    3944628'));
  Check(FiscalPrinter.PrintRecMessage('ID �������: 3944627 (499.74 ���)'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TDiscountReceipt4 }

function TDiscountReceipt4.GetDisplayText: string;
begin
  Result := 'Discount receipt 4';
end;

procedure TDiscountReceipt4.Execute;
begin
  Check(FiscalPrinter.ResetPrinter);
  Check(FiscalPrinter.BeginNonFiscal);
  Check(FiscalPrinter.PrintNormal(2, '��������� ���������'));
  Check(FiscalPrinter.PrintNormal(2, '���  4   : ��-95-�5           '));
  Check(FiscalPrinter.PrintNormal(2, '�������� : 23.5 liter x 36.80�. = 864.80�.'));
  Check(FiscalPrinter.PrintNormal(2, '11.10.16 13:18:46       '));
  Check(FiscalPrinter.PrintNormal(2, ''));
  Check(FiscalPrinter.EndNonFiscal);
end;

{ TRetalixReceipt }

function TRetalixReceipt.GetDisplayText: string;
begin
  Result := 'Retalix test receipt';
end;

procedure TRetalixReceipt.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));

  Check(FiscalPrinter.PrintRecMessage('Before receipt 1'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Before receipt 2'));

  Check(FiscalPrinter.PrintRecItem('���������� ���������', 100, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecItem('��� ������ 5��', 100, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecItem('����� ������� 5 ��', 200, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecItem('��� 120 �� �������', 300, 1000, 0, 0, ''));
  Check(FiscalPrinter.PrintRecMessage('��������: �������� ��. ID: 273657254'));

  FiscalPrinter.PostLine := '����.�����        N#XXXXXX4058                                                =55.00';
  FiscalPrinter.PrintRecSubtotal(700);
  Check(FiscalPrinter.PrintRecTotal(700, 1000, '0'));

  Check(FiscalPrinter.PrintRecMessage('After receipt 1'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'After receipt 2'));

  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ THangReceiptTest }

procedure THangReceiptTest.Execute;
begin
  Check(FiscalPrinter.BeginNonFiscal);
  Check(FiscalPrinter.PrintNormal(2, '17.10.16 16:16:35'));
  Check(FiscalPrinter.PrintNormal(2, '����� �����: 1'));
  Check(FiscalPrinter.PrintNormal(2, '��������:ts'));
  Check(FiscalPrinter.PrintNormal(2, '����� ����������:     22377'));
  Check(FiscalPrinter.PrintNormal(2, '------------------------------------'));
  Check(FiscalPrinter.PrintNormal(2, '������ ����������'));
  Check(FiscalPrinter.PrintNormal(2, '��������:  ts'));
  Check(FiscalPrinter.PrintNormal(2, '�������:  H����������� ���'));
  Check(FiscalPrinter.PrintNormal(2, ''));
  Check(FiscalPrinter.PrintNormal(2, '���-�� �������� ����  ��������'));
  Check(FiscalPrinter.PrintNormal(2, ''));
  Check(FiscalPrinter.PrintNormal(2, '1 ������������� ������ ������� ��-92-5       0.000    ������'));
  Check(FiscalPrinter.PrintNormal(2, '����.�����        N#XXXXXX4058                                                =55.00'));
  Check(FiscalPrinter.EndNonFiscal);
end;

function THangReceiptTest.GetDisplayText: string;
begin
  Result := 'THangReceiptTest';
end;

{ TRosneftReceiptTest }

procedure TRosneftReceiptTest.Execute;
begin
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  FiscalPrinter.PostLine := '  40.000    *36.80';
  FiscalPrinter.PreLine := '                                   40.00 X 36.80';
  Check(FiscalPrinter.PrintRecRefund('��� 3:��-92', 1472, 0));
  Check(FiscalPrinter.PrintRecSubtotal(1472));
  Check(FiscalPrinter.PrintRecTotal(1472, 1472, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:    3945836'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TRosneftReceiptTest.GetDisplayText: string;
begin
  Result := 'Rosneft receipt test';
end;

{ TDiscountReceipt5 }

procedure TDiscountReceipt5.Execute;
begin
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Coca-cola ��.���. 1�', 297, 3000, 0, 99, ''));
  FiscalPrinter.PostLine := '  17.480    *36.80';
  Check(FiscalPrinter.PrintRecItem('��� 4:��-95-�5               ���1818', 643.26, 1000, 0, 643.26, ''));
  FiscalPrinter.PostLine := '����.�����        N#XXXXXX4058             =640.26';
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(940.26, 640.26, '1'));
  Check(FiscalPrinter.PrintRecTotal(940.26, 300, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:    3946653'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TDiscountReceipt5.GetDisplayText: string;
begin
  Result := 'Discount receipt 5';
end;

{ TDiscountReceipt6 }

procedure TDiscountReceipt6.Execute;
begin
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Coca-cola ��. 0.5�', 75, 1000, 0, 75, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '13.3% Loyalty 005202991002739241', 10, 0));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(65, 65, '0'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts ID:    3946670'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TDiscountReceipt6.GetDisplayText: string;
begin
  Result := 'Discount receipt 6';
end;


{ TDiscountReceipt7 }

function TDiscountReceipt7.GetDisplayText: string;
begin
  Result := 'Discount receipt 7';
end;

procedure TDiscountReceipt7.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('������� ���������� �', 95, 1000, 0, 95, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '5% Loyalty  000302000400292392', 4.75, 0));
  FiscalPrinter.PostLine := '����.�����        N#XXXXXX0489      ';
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(90.25, 90.25, '1'));
  Check(FiscalPrinter.PrintRecMessage('��������: ���������� ID:     295117'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TDiscountReceipt8 }

procedure TDiscountReceipt8.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecItem('Item1', 4, 1000, 0, 3.99, ''));
  Check(FiscalPrinter.PrintRecTotal(4, 4, '1'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TDiscountReceipt8.GetDisplayText: string;
begin
  Result := 'Test receipt 8';
end;

{ TAdjustmentReceiptTest }

procedure TAdjustmentReceiptTest.PrintQRCode;
var
  pData: Integer;
  pString: WideString;
begin
  pData := 44;
  pString := 'http://check.egais.ru?id=38d02af6-bfd2-409f-8041-b011d8160700&dt=2311161430&cn=030000290346;***;4;4;0';
  Check(FiscalPrinter.DirectIO(7, pData, pString));
end;

procedure TAdjustmentReceiptTest.Execute;
var
  i: Integer;
  N: Integer;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  N := 0;
  for i := 1 to 30 do
  begin
    Inc(N);
    Check(FiscalPrinter.PrintRecItem(Format('%d. Receipt item', [N]) +
      StringOfChar('*', i), 0, 1234, 0, 23.45, ''));
  end;

  printQRCode;
  Check(FiscalPrinter.PrintRecSubtotalAdjustment(FPTR_AT_AMOUNT_DISCOUNT, '������ 0.99', 0.99));
  Check(FiscalPrinter.PrintRecTotal(1000, 1000, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(False));
  // Nonfiscal 1
  FiscalPrinter.DisableNextHeader;
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  Check(FiscalPrinter.BeginNonFiscal);
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 1'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 2'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 3'));
  Check(FiscalPrinter.EndNonFiscal);
  // Nonfiscal 2
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  Check(FiscalPrinter.BeginNonFiscal);
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 1'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 2'));
  Check(FiscalPrinter.PrintNormal(FPTR_S_RECEIPT, 'Nonfiscal receipt line 3'));
  Check(FiscalPrinter.EndNonFiscal);
end;

function TAdjustmentReceiptTest.GetDisplayText: string;
begin
  Result := 'Adjustment receipt test';
end;

{ TCorrectionReceiptTest }

procedure TCorrectionReceiptTest.Execute;
begin
  // Sale
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CORRECTION_SALE;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecCash(100));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // RetSale
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CORRECTION_RETSALE;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecCash(100));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // Buy
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CORRECTION_BUY;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecCash(100));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
  // RetBuy
  FiscalPrinter.FiscalReceiptStation := FPTR_RS_RECEIPT;
  FiscalPrinter.FiscalReceiptType := FPTR_RT_CORRECTION_RETBUY;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  Check(FiscalPrinter.PrintRecCash(100));
  Check(FiscalPrinter.PrintRecTotal(100, 100, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

function TCorrectionReceiptTest.GetDisplayText: string;
begin
  Result := 'Correction receipt test';
end;

{ TTLVReceiptTest }

function TTLVReceiptTest.GetDisplayText: string;
begin
  Result := 'TLV receipt test';
end;

procedure TTLVReceiptTest.Execute;
begin
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(False));
  FiscalPrinter.WriteCustomerAddress('+79168191324');
  Check(FiscalPrinter.PrintRecItem('������� ���������� �', 95, 1000, 0, 95, ''));
  Check(FiscalPrinter.PrintRecItemAdjustment(1, '5% Loyalty  000302000400292392', 4.75, 0));
  FiscalPrinter.PostLine := '����.�����        N#XXXXXX0489      ';
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(90.25, 90.25, '1'));
  Check(FiscalPrinter.PrintRecMessage('��������: ���������� ID:     295117'));
  FiscalPrinter.WriteCustomerAddress('vitalykravtsov@mail.ru');
  Check(FiscalPrinter.EndFiscalReceipt(True));
end;

{ TPreLineReceiptTest }

function TPreLineReceiptTest.GetDisplayText: string;
begin
  Result := 'Pre Line Receipt Test';
end;

(*
procedure TPreLineReceiptTest.Execute;
begin
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(True));
  FiscalPrinter.PreLine := '��� 3:                       ��� 0                ';
  Check(FiscalPrinter.PrintRecItem('��-92-3in', 50.11, 2610, 4, 19.2, ''));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(50.11, 50.11, '0'));
  Check(FiscalPrinter.PrintRecMessage('��� 18%                                       7.64'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts'));
  Check(FiscalPrinter.PrintRecMessage('�����.:      32114 '));
  Check(FiscalPrinter.EndFiscalReceipt(False));
end;
*)

procedure TPreLineReceiptTest.Execute;
begin
  FiscalPrinter.Close;
  Check(FiscalPrinter.Open('SHTRIH-M-OPOS-1'));
  FiscalPrinter.ServiceObjectVersion;
  Check(FiscalPrinter.ClaimDevice(0));
  FiscalPrinter.ServiceObjectDescription;
  FiscalPrinter.ServiceObjectVersion;
  FiscalPrinter.DeviceDescription;
  FiscalPrinter.DeviceName;
  FiscalPrinter.PowerNotify := 1;
  FiscalPrinter.DeviceEnabled := True;
  FiscalPrinter.DeviceEnabled;
  FiscalPrinter.DescriptionLength;
  FiscalPrinter.CapPredefinedPaymentLines;
  FiscalPrinter.PredefinedPaymentLines;
  FiscalPrinter.DeviceName;
  FiscalPrinter.Claimed;
  FiscalPrinter.AsyncMode := False;
  FiscalPrinter.CheckHealth(1);

  Check(FiscalPrinter.BeginFiscalReceipt(True));
  FiscalPrinter.PreLine := '��� 3:                       ��� 0                ';
  Check(FiscalPrinter.PrintRecItem('��-92-3in', 0, 10000, 4, 0, ''));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(50.11, 50.11, '0'));
  Check(FiscalPrinter.PrintRecMessage('��� 18%                                       7.64'));
  Check(FiscalPrinter.PrintRecMessage('��������: ts'));
  Check(FiscalPrinter.PrintRecMessage('�����.:      32114 '));
  Check(FiscalPrinter.EndFiscalReceipt(False));
end;

{ TZeroReceiptTest }

procedure TZeroReceiptTest.Execute;
begin
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(True));
  Check(FiscalPrinter.PrintRecItem('��-92-3in', 0, 2610, 4, 0, ''));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(0, 0, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(False));
end;

function TZeroReceiptTest.GetDisplayText: string;
begin
  Result := 'Zero receipt test';
end;

{ TZeroReceiptTest2 }

procedure TZeroReceiptTest2.Execute;
begin
  Check(FiscalPrinter.ResetPrinter);
  FiscalPrinter.FiscalReceiptType := FPTR_RT_SALES;
  Check(FiscalPrinter.BeginFiscalReceipt(True));
  Check(FiscalPrinter.PrintRecItemRefund('��-92-3in', 0, 2610, 4, 0, ''));
  Check(FiscalPrinter.PrintRecSubtotal(0));
  Check(FiscalPrinter.PrintRecTotal(0, 0, '0'));
  Check(FiscalPrinter.EndFiscalReceipt(False));
end;

function TZeroReceiptTest2.GetDisplayText: string;
begin
  Result := 'Zero refund receipt test';
end;

end.
