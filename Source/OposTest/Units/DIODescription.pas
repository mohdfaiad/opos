unit DIODescription;

interface

uses

  // VCL
  SysUtils,
  // This
  DirectIOAPI;

type
  TDirectIODescription = record
    Command: Integer;
    Description: WideString;
    DescriptionEx: WideString;
  end;

const
  CRLF = #13#10;
  DIO_CUSTOM_COMMAND = $FFFF;

  DIODescriptions: array[1..43] of TDirectIODescription = (
    (Command: DIO_COMMAND_PRINTER_XML;
     Description: 'XML command';
     DescriptionEx:  'Data: Printer command code' + #13#10 +
                     'String: XML parameters list. Example:' + #13#10 +
                     '<?xml version="1.0" encoding="windows-1251"?>' + #13#10 +
                     '<Params>' + #13#10 +
                     '  <Param>' + #13#10 +
                     '    <Name>Password</Name>' + #13#10 +
                     '    <Value>30</Value>' + #13#10 +
                     '  </Param>' + #13#10 +
                     '</Params>';),

    (Command: DIO_COMMAND_PRINTER_HEX;
      Description: 'HEX command';
      DescriptionEx: 'Data is not used;' + #13#10 +
                     'String: Printer command bytes in HEX format separated with space';),

    (Command: DIO_CHECK_END_DAY;
     Description: 'Check end day';
     DescriptionEx: 'Data and String parameters are not used' + #13#10 +
                    'Result: Data = 1 (Day is over) or Data = 0 (Day is not over)';),

    (Command: DIO_LOAD_LOGO;
     Description: 'Load logo';
     DescriptionEx: 'Data is not used; ' + #13#10 +
                    'String: Image file name'),

    (Command: DIO_PRINT_LOGO;
     Description: 'Print logo';
     DescriptionEx: 'Data and String parameters are not used';),

    (Command: DIO_LOGO_DLG;
      Description: 'Show logo dialog';
      DescriptionEx: 'Data and String parameters are not used';),

    (Command: DIO_PRINT_BARCODE;
     Description: 'Print barcode';
     DescriptionEx: 'Data: Barcode type:(0 - EAN 13; 1 - CODE 128A; 2 - CODE 128B; 3 - CODE 128C)' + #13#10 +
                    'String: Barcode data'),

    (Command: DIO_COMMAND_PRINTER_STR;
     Description: 'String command';
     DescriptionEx: 'Data: Printer command code' + #13#10 +
                    'String: Printer command parameters separated with ";"' ;),

    (Command: DIO_PRINT_TEXT;
     Description: 'Print text';
     DescriptionEx: 'Data: Font number' + #13#10 + 'String: text string';),

    (Command: DIO_WRITE_TAX_NAME;
     Description: 'Write tax name';
     DescriptionEx: 'Data: Tax number';),

    (Command: DIO_READ_TAX_NAME;
     Description: 'Read tax name';
     DescriptionEx: 'Data: Tax number';),

    (Command: DIO_WRITE_PAYMENT_NAME;
     Description: 'Write payment name';
     DescriptionEx: 'Data: Payment number';),

    (Command: DIO_READ_PAYMENT_NAME;
     Description: 'Read payment name';
     DescriptionEx: 'Data: Payment number';),

    (Command: DIO_WRITE_TABLE;
     Description: 'Write table';
     DescriptionEx: 'Data is not used;' + #13#10 +
                    'String: [Table number; Row number; Field number; Field value]';),

    (Command: DIO_READ_TABLE;
     Description: 'Read table';
     DescriptionEx: 'Data is not used;' + #13#10 +
                    'String: [Table number;Row number;Field number]';),

    (Command: DIO_GET_DEPARTMENT;
     Description: 'Get department';
     DescriptionEx: 'Data returns department value;'),

    (Command: DIO_SET_DEPARTMENT;
     Description: 'Set department';
     DescriptionEx: 'Data is department value;'),

    (Command: DIO_READ_CASH_REG;
     Description: 'Read cash register';
     DescriptionEx: 'Data is register number;' + CRLF +
                    'String: register value'),

    (Command: DIO_READ_OPER_REG;
     Description: 'Read operating register';
     DescriptionEx: 'Data is register number;' + CRLF +
                    'String: register value'),

    (Command: DIO_CUSTOM_COMMAND;
     Description: 'Custom command';
     DescriptionEx: '';),

    (Command: DIO_GET_LAST_ERROR;
     Description: 'Read last error code';
     DescriptionEx: 'Data: error code;' + CRLF +
                    'String: error text';),

    (Command: DIO_GET_DRIVER_PARAMETER;
     Description: 'Read driver parameter';
     DescriptionEx:
      'Data: parameter ID;' + CRLF +
      'DriverParameterStorage                  = 0' + CRLF +
      'DriverParameterBaudRate                 = 1' + CRLF +
      'DriverParameterPortNumber               = 2' + CRLF +
      'DriverParameterFontNumber               = 3' + CRLF +
      'DriverParameterSysPassword              = 4' + CRLF +
      'DriverParameterUsrPassword              = 5' + CRLF +
      'DriverParameterByteTimeout              = 6' + CRLF +
      'DriverParameterStatusInterval           = 7' + CRLF +
      'DriverParameterSubtotalText             = 8' + CRLF +
      'DriverParameterCloseRecText             = 9' + CRLF +
      'DriverParameterVoidRecText              = 10' + CRLF +
      'DriverParameterPollInterval             = 11' + CRLF +
      'DriverParameterMaxRetryCount            = 12' + CRLF +
      'DriverParameterDeviceByteTimeout        = 13' + CRLF +
      'DriverParameterSearchByPortEnabled      = 14' + CRLF +
      'DriverParameterSearchByBaudRateEnabled  = 15' + CRLF +
      'DriverParameterPropertyUpdateMode       = 16' + CRLF +
      'DriverParameterCutType                  = 17' + CRLF +
      'DriverParameterLogMaxCount              = 18' + CRLF +
      'DriverParameterPayTypes                 = 19' + CRLF +
      'DriverParameterEncoding                 = 20' + CRLF +
      'DriverParameterRemoteHost               = 21' + CRLF +
      'DriverParameterRemotePort               = 22' + CRLF +
      'DriverParameterHeaderType               = 23' + CRLF +
      'DriverParameterHeaderFont               = 24' + CRLF +
      'DriverParameterTrailerFont              = 25' + CRLF +
      'DriverParameterTrainModeText            = 26' + CRLF +
      'DriverParameterLogoPosition             = 27' + CRLF +
      'DriverParameterTrainSaleText            = 28' + CRLF +
      'DriverParameterTrainPay2Text            = 29' + CRLF +
      'DriverParameterTrainPay3Text            = 30' + CRLF +
      'DriverParameterTrainPay4Text            = 31' + CRLF +
      'DriverParameterStatusCommand            = 32' + CRLF +
      'DriverParameterTrainTotalText           = 33' + CRLF +
      'DriverParameterConnectionType           = 34' + CRLF +
      'DriverParameterLogFileEnabled           = 35' + CRLF +
      'DriverParameterNumHeaderLines           = 36' + CRLF +
      'DriverParameterTrainChangeText          = 37' + CRLF +
      'DriverParameterTrainStornoText          = 38' + CRLF +
      'DriverParameterTrainCashInText          = 39' + CRLF +
      'DriverParameterNumTrailerLines          = 40' + CRLF +
      'DriverParameterTrainCashOutText         = 41' + CRLF +
      'DriverParameterTrainVoidRecText         = 42' + CRLF +
      'DriverParameterTrainCashPayText         = 43' + CRLF +
      'DriverParameterBarLinePrintDelay        = 44' + CRLF +
      'DriverParameterCompatLevel              = 45' + CRLF +
      'DriverParameterHeader                   = 46' + CRLF +
      'DriverParameterTrailer                  = 47' + CRLF +
      'DriverParameterLogoSize                 = 48' + CRLF +
      'DriverParameterLogoCenter               = 49' + CRLF +
      'DriverParameterDepartment               = 50' + CRLF +
      'DriverParameterLogoEnabled              = 51' + CRLF +
      'DriverParameterHeaderPrinted            = 52' + CRLF +
      'DriverParameterReceiptType              = 53' + CRLF +
      'DriverParameterZeroReceiptType          = 54' + CRLF +
      'DriverParameterZeroReceiptNumber        = 55' + CRLF +
      'DriverParameterCCOType                  = 56' + CRLF +
      'DriverParameterTableEditEnabled         = 57' + CRLF +
      'DriverParameterXmlZReportEnabled        = 58' + CRLF +
      'DriverParameterCsvZReportEnabled        = 59' + CRLF +
      'DriverParameterXmlZReportFileName       = 60' + CRLF +
      'DriverParameterCsvZReportFileName       = 61' + CRLF +
      'DriverParameterVoidReceiptOnMaxItems    = 62' + CRLF +
      'DriverParameterMaxReceiptItems          = 63' + CRLF +
      'DriverParameterJournalPrintHeader       = 64' + CRLF +
      'DriverParameterJournalPrintTrailer      = 65' + CRLF +
      'DriverParameterCacheReceiptNumber       = 66' + CRLF +
      'DriverParameterBarLineByteMode          = 67' + CRLF +
      'DriverParameterLogFilePath              = 68' + CRLF +
      'DriverParameterParam1                   = 70' + CRLF +
      'DriverParameterParam2                   = 71' + CRLF +
      'DriverParameterParam3                   = 72' + CRLF +
      'DriverParameterParam4                   = 73' + CRLF +
      'DriverParameterParam5                   = 74' + CRLF +
      'DriverParameterParam6                   = 75' + CRLF +
      'DriverParameterParam7                   = 76' + CRLF +
      'DriverParameterParam8                   = 77' + CRLF +
      'DriverParameterParam9                   = 78' + CRLF +
      'DriverParameterParam10                  = 79' + CRLF +
      'DriverParameterBarcode                  = 80' + CRLF +
      'DriverParameterMarkType                 = 81' + CRLF +
      'DriverParameterCorrectionType           = 82' + CRLF +
      'DriverParameterCalculationSign          = 83' + CRLF +
      'DriverParameterAmount2                  = 84' + CRLF +
      'DriverParameterAmount3                  = 85' + CRLF +
      'DriverParameterAmount4                  = 86' + CRLF +
      'DriverParameterAmount5                  = 87' + CRLF +
      'DriverParameterAmount6                  = 88' + CRLF +
      'DriverParameterAmount7                  = 89' + CRLF +
      'DriverParameterAmount8                  = 90' + CRLF +
      'DriverParameterAmount9                  = 91' + CRLF +
      'DriverParameterAmount10                 = 92' + CRLF +
      'DriverParameterAmount11                 = 93' + CRLF +
      'DriverParameterAmount12                 = 94' + CRLF +
      'DriverParameterTaxType                  = 95' + CRLF +
      'DriverParameterMessage                  = 96' + CRLF +
      'DriverParameterErrorMessage             = 97' + CRLF +
      'String: parameter value';),

    (Command: DIO_SET_DRIVER_PARAMETER;
     Description: 'Read driver parameter';
     DescriptionEx:
      'Data: parameter ID;' + CRLF +
      'DriverParameterStorage                  = 0' + CRLF +
      'DriverParameterBaudRate                 = 1' + CRLF +
      'DriverParameterPortNumber               = 2' + CRLF +
      'DriverParameterFontNumber               = 3' + CRLF +
      'DriverParameterSysPassword              = 4' + CRLF +
      'DriverParameterUsrPassword              = 5' + CRLF +
      'DriverParameterByteTimeout              = 6' + CRLF +
      'DriverParameterStatusInterval           = 7' + CRLF +
      'DriverParameterSubtotalText             = 8' + CRLF +
      'DriverParameterCloseRecText             = 9' + CRLF +
      'DriverParameterVoidRecText              = 10' + CRLF +
      'DriverParameterPollInterval             = 11' + CRLF +
      'DriverParameterMaxRetryCount            = 12' + CRLF +
      'DriverParameterDeviceByteTimeout        = 13' + CRLF +
      'DriverParameterSearchByPortEnabled      = 14' + CRLF +
      'DriverParameterSearchByBaudRateEnabled  = 15' + CRLF +
      'DriverParameterPropertyUpdateMode       = 16' + CRLF +
      'DriverParameterCutType                  = 17' + CRLF +
      'DriverParameterLogMaxCount              = 18' + CRLF +
      'DriverParameterPayTypes                 = 19' + CRLF +
      'DriverParameterEncoding                 = 20' + CRLF +
      'DriverParameterRemoteHost               = 21' + CRLF +
      'DriverParameterRemotePort               = 22' + CRLF +
      'DriverParameterHeaderType               = 23' + CRLF +
      'DriverParameterHeaderFont               = 24' + CRLF +
      'DriverParameterTrailerFont              = 25' + CRLF +
      'DriverParameterTrainModeText            = 26' + CRLF +
      'DriverParameterLogoPosition             = 27' + CRLF +
      'DriverParameterTrainSaleText            = 28' + CRLF +
      'DriverParameterTrainPay2Text            = 29' + CRLF +
      'DriverParameterTrainPay3Text            = 30' + CRLF +
      'DriverParameterTrainPay4Text            = 31' + CRLF +
      'DriverParameterStatusCommand            = 32' + CRLF +
      'DriverParameterTrainTotalText           = 33' + CRLF +
      'DriverParameterConnectionType           = 34' + CRLF +
      'DriverParameterLogFileEnabled           = 35' + CRLF +
      'DriverParameterNumHeaderLines           = 36' + CRLF +
      'DriverParameterTrainChangeText          = 37' + CRLF +
      'DriverParameterTrainStornoText          = 38' + CRLF +
      'DriverParameterTrainCashInText          = 39' + CRLF +
      'DriverParameterNumTrailerLines          = 40' + CRLF +
      'DriverParameterTrainCashOutText         = 41' + CRLF +
      'DriverParameterTrainVoidRecText         = 42' + CRLF +
      'DriverParameterTrainCashPayText         = 43' + CRLF +
      'DriverParameterBarLinePrintDelay        = 44' + CRLF +
      'DriverParameterCompatLevel              = 45' + CRLF +
      'DriverParameterHeader                   = 46' + CRLF +
      'DriverParameterTrailer                  = 47' + CRLF +
      'DriverParameterLogoSize                 = 48' + CRLF +
      'DriverParameterLogoCenter               = 49' + CRLF +
      'DriverParameterDepartment               = 50' + CRLF +
      'DriverParameterLogoEnabled              = 51' + CRLF +
      'DriverParameterHeaderPrinted            = 52' + CRLF +
      'DriverParameterReceiptType              = 53' + CRLF +
      'DriverParameterZeroReceiptType          = 54' + CRLF +
      'DriverParameterZeroReceiptNumber        = 55' + CRLF +
      'DriverParameterCCOType                  = 56' + CRLF +
      'DriverParameterTableEditEnabled         = 57' + CRLF +
      'DriverParameterXmlZReportEnabled        = 58' + CRLF +
      'DriverParameterCsvZReportEnabled        = 59' + CRLF +
      'DriverParameterXmlZReportFileName       = 60' + CRLF +
      'DriverParameterCsvZReportFileName       = 61' + CRLF +
      'DriverParameterVoidReceiptOnMaxItems    = 62' + CRLF +
      'DriverParameterMaxReceiptItems          = 63' + CRLF +
      'DriverParameterJournalPrintHeader       = 64' + CRLF +
      'DriverParameterJournalPrintTrailer      = 65' + CRLF +
      'DriverParameterCacheReceiptNumber       = 66' + CRLF +
      'DriverParameterBarLineByteMode          = 67' + CRLF +
      'DriverParameterLogFilePath              = 68' + CRLF +
      'DriverParameterParam1                   = 70' + CRLF +
      'DriverParameterParam2                   = 71' + CRLF +
      'DriverParameterParam3                   = 72' + CRLF +
      'DriverParameterParam4                   = 73' + CRLF +
      'DriverParameterParam5                   = 74' + CRLF +
      'DriverParameterParam6                   = 75' + CRLF +
      'DriverParameterParam7                   = 76' + CRLF +
      'DriverParameterParam8                   = 77' + CRLF +
      'DriverParameterParam9                   = 78' + CRLF +
      'DriverParameterParam10                  = 79' + CRLF +
      'DriverParameterBarcode                  = 80' + CRLF +
      'DriverParameterMarkType                 = 81' + CRLF +
      'DriverParameterCorrectionType           = 82' + CRLF +
      'DriverParameterCalculationSign          = 83' + CRLF +
      'DriverParameterAmount2                  = 84' + CRLF +
      'DriverParameterAmount3                  = 85' + CRLF +
      'DriverParameterAmount4                  = 86' + CRLF +
      'DriverParameterAmount5                  = 87' + CRLF +
      'DriverParameterAmount6                  = 88' + CRLF +
      'DriverParameterAmount7                  = 89' + CRLF +
      'DriverParameterAmount8                  = 90' + CRLF +
      'DriverParameterAmount9                  = 91' + CRLF +
      'DriverParameterAmount10                 = 92' + CRLF +
      'DriverParameterAmount11                 = 93' + CRLF +
      'DriverParameterAmount12                 = 94' + CRLF +
      'DriverParameterTaxType                  = 95' + CRLF +
      'DriverParameterMessage                  = 96' + CRLF +
      'DriverParameterErrorMessage             = 97' + CRLF +
      'String: parameter value';),



    (Command: DIO_READ_FM_TOTALS;
     Description: 'Read fiscal memory totals';
     DescriptionEx: 'Data: flags (0- all records, 1- since last fiscalization);' + CRLF +
                    'String: 4 registers values';),

    (Command: DIO_READ_GRAND_TOTALS;
     Description: 'Read GRAND totals';
     DescriptionEx: 'Data: not used;' + CRLF +
                    'String: 4 integer values for 4 receipt types';),

    (Command: DIO_PRINT_IMAGE;
     Description: 'Print image';
     DescriptionEx: 'Data: not used;' + CRLF +
                    'String: image file name';),

    (Command: DIO_PRINT_IMAGE_SCALE;
     Description: 'Print image with scale';
     DescriptionEx: 'Data: image scale;' + CRLF +
                    'String: image file name';),

    (Command: DIO_WRITE_FS_STRING_TAG;
     Description: 'Write tag to opened receipt';
     DescriptionEx: 'Data: tag number' + CRLF +
     '[in] String: tag value';),

    (Command: DIO_READ_FS_PARAMETER;
     Description: 'Read fiscal storage parameter';
     DescriptionEx: 'Data: parameter identifier;' + CRLF +
      'DIO_FS_PARAMETER_SERIAL         = 0' + CRLF +
      'DIO_FS_PARAMETER_LAST_DOC_NUM   = 1' + CRLF +
      'DIO_FS_PARAMETER_LAST_DOC_MAC   = 2' + CRLF +
      'DIO_FS_PARAMETER_QUEUE_SIZE     = 3' + CRLF +
      'DIO_FS_PARAMETER_FIRST_DOC_NUM  = 4' + CRLF +
      'DIO_FS_PARAMETER_FIRST_DOC_DATE = 5' + CRLF +
      'DIO_FS_PARAMETER_FISCAL_DATE    = 6' + CRLF +
      'DIO_FS_PARAMETER_EXPIRE_DATE    = 7' + CRLF +
      'DIO_FS_PARAMETER_OFD_ONLINE     = 8' + CRLF +
      'DIO_FS_PARAMETER_TICKET_HEX     = 9' + CRLF +
      'DIO_FS_PARAMETER_TICKET_STR     = 10' + CRLF +
      'String: returns parameter value';),

    (Command: DIO_READ_FPTR_PARAMETER;
     Description: 'Read fiscal printer parameter';
     DescriptionEx: 'Data: parameter identifier;' + CRLF +
     'DIO_FPTR_PARAMETER_QRCODE_ENABLED = 0' + CRLF +
     'DIO_FPTR_PARAMETER_OFD_ADDRESS    = 1' + CRLF +
     'DIO_FPTR_PARAMETER_OFD_PORT       = 2' + CRLF +
     'DIO_FPTR_PARAMETER_OFD_TIMEOUT    = 3' + CRLF +
     'DIO_FPTR_PARAMETER_RNM            = 4' + CRLF +
                    'String: returns parameter value';),

    (Command: DIO_WRITE_TABLE_FILE;
     Description: 'Write tables file';
     DescriptionEx: 'Data: not used;' + CRLF +
                    'String: tables file path';),

    (Command: DIO_FS_READ_DOCUMENT;
     Description: 'FS: Read fiscal document';
     DescriptionEx: 'Data: fiscal document number;' + CRLF +
     'String: DocType;Ticket;DocData;' + CRLF +
     '  DocType - document type' + CRLF +
     '  TicketReceived - Ticket received flag, 0 or 1' + CRLF +
     '  DocMAC - Document message authentication code' + CRLF +
     '  TicketDate - Ticket date and time' + CRLF +
     '  TicketMAC - Ticket message authentication code' + CRLF +
     '  DocumentNum - Document number' + CRLF +
     '  TicketData - Ticket data in hex format'
     ;),

    (Command: DIO_FS_PRINT_CALC_REPORT;
     Description: 'FS: Print calculation report';
     DescriptionEx: 'Data: not used' + CRLF +
     'String: not used';),

    (Command: DIO_OPEN_CASH_DRAWER;
     Description: 'Open cash drawer';
     DescriptionEx: 'Data: drawer number (usually 0)' + CRLF +
     'String: not used';),

    (Command: DIO_READ_CASH_DRAWER_STATE;
     Description: 'Read cash drawer state';
     DescriptionEx: 'Data: return state (0 - closed, 1 - opened)' + CRLF +
     'String: not used';),

    (Command: DIO_FS_FISCALIZE;
     Description: 'FS fiscalization';
     DescriptionEx: 'Data: not used' + CRLF +
     '[in] String: ' + CRLF +
     'taxID - string 12 chars' + CRLF +
     'regID - string 20 chars' + CRLF +
     'TaxCode - byte' + CRLF +
     'WorkMode - byte' + CRLF +
     '[out] String: ' + CRLF +
     'DocNumber - document number' + CRLF +
     'DocMac - document authentication code';),

    (Command: DIO_FS_REFISCALIZE;
     Description: 'FS refiscalization';
     DescriptionEx: 'Data: not used' + CRLF +
     '[in] String: ' + CRLF +
     'taxID - string 12 chars' + CRLF +
     'regID - string 20 chars' + CRLF +
     'TaxCode - byte' + CRLF +
     'WorkMode - byte' + CRLF +
     'code - refiscalization code' + CRLF +
     '[out] String: ' + CRLF +
     'DocNumber - document number' + CRLF +
     'DocMac - document authentication code';),

    (Command: DIO_GET_PRINT_WIDTH;
     Description: 'Get print width';
     DescriptionEx: 'Data: font number 1..7' + CRLF +
     '[out] String: print width';),

    (Command: DIO_PRINT_CORRECTION;
     Description: 'Print correction receipt';
     DescriptionEx: 'Data: not used' + CRLF +
     '[in] String: ' + CRLF +
     'ReceiptType - byte, receipt type' + CRLF +
     'ReceiptTotal - int64, receipt total' + CRLF +
     '[out] String: ' + CRLF +
     'ResultCode - result code' + CRLF +
     'RecNumber - receipt number' + CRLF +
     'DocNumber - document number' + CRLF +
     'DocMac - document authentication code';),

    (Command: DIO_PRINT_CORRECTION2;
     Description: 'Print correction receipt 2';
     DescriptionEx: 'Data: not used' + CRLF +
     '[in] String: ' + CRLF +
     'CorrectionType - byte, correction type' + CRLF +
     'CalculationSign - byte, calculation sign' + CRLF +
     'Amount1 - int64, total amount' + CRLF +
     'Amount2 - int64, cash amount' + CRLF +
     'Amount3 - int64, electronic amount' + CRLF +
     'Amount4 - int64, prepaid amount' + CRLF +
     'Amount5 - int64, postpaid amount' + CRLF +
     'Amount6 - int64, backpaid amount' + CRLF +
     'Amount7 - int64, tax 18% amount' + CRLF +
     'Amount8 - int64, tax 10% amount' + CRLF +
     'Amount9 - int64, tax 0% amount' + CRLF +
     'Amount10 - int64, no tax amount' + CRLF +
     'Amount11 - int64, tax 18/118% amount' + CRLF +
     'Amount12 - int64, tax 10/110% amount' + CRLF +
     'taxSystem - byte, tax system code' + CRLF +
     '[out] String: ' + CRLF +
     'ResultCode - result code' + CRLF +
     'RecNumber - receipt number' + CRLF +
     'DocNumber - document number' + CRLF +
     'DocMac - document authentication code';),

    (Command: DIO_START_OPEN_DAY;
     Description: 'Start open fiscal day';
     DescriptionEx:
       'Data: not used' + CRLF +
       'String: not used';),

    (Command: DIO_OPEN_DAY;
     Description: 'Open fiscal day';
     DescriptionEx:
       'Data: not used' + CRLF +
       'String: not used';),

    (Command: DIO_START_CORRECTION;
     Description: 'Start correction receipt';
     DescriptionEx:
       'Data: not used' + CRLF +
       'String: not used';)
  );

function GetDIODescription(ADIOCommand: Integer): TDirectIODescription;

implementation

function GetDIODescription(ADIOCommand: Integer): TDirectIODescription;
var
  i : Integer;
begin
  for i := Low(DIODescriptions) to High(DIODescriptions) do
  begin
    if DIODescriptions[i].Command = ADIOCommand then
    begin
      Result := DIODescriptions[i];
      Exit;
    end;
  end;
  raise Exception.Create('Invalid DirectIO command parameter');
end;

end.
