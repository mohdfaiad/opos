program OposConfig;

uses
  Forms,
  SysUtils,
  gnugettext,
  LangUtils in '..\Shared\LangUtils.pas',
  fmuMain in 'Fmu\fmuMain.pas' {fmMain},
  fmuScaleGeneral in 'Fmu\fmuScaleGeneral.pas' {fmScaleGeneral},
  fmuDevice in 'Fmu\fmuDevice.pas' {fmDevice},
  untUtil in 'Units\untUtil.pas',
  Oposhi in '..\Opos\Oposhi.pas',
  DirectIOAPI in '..\SmFiscalPrinter\Units\DirectIOAPI.pas',
  OposUtils in '..\Opos\OposUtils.pas',
  Opos in '..\Opos\Opos.pas',
  OposEvents in '..\Opos\OposEvents.pas',
  OPOSException in '..\Opos\OposException.pas',
  OposFptr in '..\Opos\OposFptr.pas',
  OposFptrhi in '..\Opos\OposFptrhi.pas',
  SmFiscalPrinterLib_TLB in '..\SmFiscalPrinter\SmFiscalPrinterLib_TLB.pas',
  CashDrawerParameters in '..\SmFiscalPrinter\Units\CashDrawerParameters.pas',
  PrinterTypes in '..\SmFiscalPrinter\Units\PrinterTypes.pas',
  fmuPages in 'Fmu\fmuPages.pas' {fmPages},
  OposFptrUtils in '..\Opos\OposFptrUtils.pas',
  OposDevice in '..\Opos\OposDevice.pas',
  DriverError in '..\Shared\DriverError.pas',
  VersionInfo in '..\Shared\VersionInfo.pas',
  PayType in '..\SmFiscalPrinter\Units\PayType.pas',
  DebugUtils in '..\Shared\DebugUtils.pas',
  OposFiscalPrinter_1_12_Lib_TLB in '..\Opos\OposFiscalPrinter_1_12_Lib_TLB.pas',
  BaseForm in '..\Shared\BaseForm.pas',
  untPages in 'Units\untPages.pas',
  FptrTypes in 'Units\FptrTypes.pas',
  fmuFptrBarcode in 'Fmu\fmuFptrBarcode.pas' {fmFptrBarcode},
  fmuFptrReceipt in 'Fmu\fmuFptrReceipt.pas' {fmFptrReceipt},
  fmuFptrJournal in 'Fmu\fmuFptrJournal.pas' {fmFptrJournal},
  fmuFptrLogo in 'Fmu\fmuFptrLogo.pas' {fmFptrLogo},
  fmuFptrVatCode in 'Fmu\fmuFptrVatCode.pas' {fmFptrVatCode},
  fmuFptrTrailer in 'Fmu\fmuFptrTrailer.pas' {fmFptrTrailer},
  FileUtils in '..\Shared\FileUtils.pas',
  PrinterParameters in '..\SmFiscalPrinter\Units\PrinterParameters.pas',
  PrinterParametersIni in '..\SmFiscalPrinter\Units\PrinterParametersIni.pas',
  SmIniFile in '..\SmFiscalPrinter\Units\SmIniFile.pas',
  fmuReceiptFormat in '..\OposTest\Fmu\fmuReceiptFormat.pas' {fmReceiptFormat},
  PrinterParametersRegIBT in '..\SmFiscalPrinter\Units\PrinterParametersRegIBT.pas',
  PrinterParametersX in '..\SmFiscalPrinter\Units\PrinterParametersX.pas',
  fmuXReport in 'Fmu\fmuXReport.pas' {fmXReport},
  fmuScaleLog in 'Fmu\fmuScaleLog.pas' {fmScaleLog},
  LogFile in '..\Shared\LogFile.pas',
  PrinterParametersReg in '..\SmFiscalPrinter\Units\PrinterParametersReg.pas',
  ScaleParameters in '..\SmScale\Units\ScaleParameters.pas',
  StringUtils in '..\Shared\StringUtils.pas',
  fmuCashDrawer in 'Fmu\fmuCashDrawer.pas' {fmCashDrawer},
  ScaleTypes in '..\SmScale\Units\ScaleTypes.pas',
  FiscalPrinterDevice in 'Units\FiscalPrinterDevice.pas',
  CashDrawerDevice in 'Units\CashDrawerDevice.pas',
  ScaleDevice in 'Units\ScaleDevice.pas',
  fmuFptrLog in 'Fmu\fmuFptrLog.pas' {fmFptrLog},
  fmuFptrText in 'Fmu\fmuFptrText.pas' {fmFptrText},
  MalinaReceipt in 'Units\MalinaReceipt.pas',
  fmuCashInProcessing in 'Fmu\fmuCashInProcessing.pas' {fmCashInProcessing},
  fmuFptrFuel in 'Fmu\fmuFptrFuel.pas' {fmFptrFuel},
  fmuFptrRetalix in 'Fmu\fmuFptrRetalix.pas' {fmFptrRetalix},
  fmuRosneftDiscountCard in 'Fmu\fmuRosneftDiscountCard.pas' {fmRosneftDiscountCard},
  fmuFptrReplace in 'Fmu\fmuFptrReplace.pas' {fmFptrReplace},
  MalinaParams in '..\SmFiscalPrinter\Units\MalinaParams.pas',
  TextMap in '..\SmFiscalPrinter\Units\TextMap.pas',
  RegUtils in '..\SmFiscalPrinter\Units\RegUtils.pas',
  fmuFptrUnipos in 'Fmu\fmuFptrUnipos.pas' {fmFptrUnipos},
  SettingsParams in '..\SmFiscalPrinter\Units\SettingsParams.pas',
  fmuFptrHeader in 'Fmu\fmuFptrHeader.pas' {fmFptrHeader},
  fmuFptrPawnTicket in 'Fmu\fmuFptrPawnTicket.pas' {fmFptrPawnTicket},
  fmuFiscalStorage in 'Fmu\fmuFiscalStorage.pas' {fmFiscalStorage},
  RegExpr in '..\SmFiscalPrinter\Units\RegExpr.pas',
  fmuRosneftAddText in 'Fmu\fmuRosneftAddText.pas' {fmRosneftAddText},
  fmuZReport in 'Fmu\fmuZReport.pas' {fmZReport},
  fmuFptrMalina in 'Fmu\fmuFptrMalina.pas' {fmFptrMalina},
  fmuFptrTables in 'Fmu\fmuFptrTables.pas' {fmFptrTables},
  fmuMiscParams in 'Fmu\fmuMiscParams.pas' {fmMiscParams},
  fmuFptrPayType in 'Fmu\fmuFptrPayType.pas' {fmFptrPayType},
  VatCode in '..\SmFiscalPrinter\Units\VatCode.pas',
  DriverContext in '..\SmFiscalPrinter\Units\DriverContext.pas',
  fmuFptrConnection in 'Fmu\fmuFptrConnection.pas' {fmFptrConnection},
  fmuMarkChecker in 'Fmu\fmuMarkChecker.pas' {fmMarkChecker},
  WException in '..\Shared\WException.pas',
  TntIniFiles in '..\Shared\TntIniFiles.pas';

{$R *.RES}
{$R WindowsXP.RES}

begin
  bindtextdomain('OposTst', IncludeTrailingPathDelimiter(ExtractFilePath(GetDllFileName)) + 'locale');
  textdomain('OposTst');
  UseLanguage(GetLanguage);

  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.



