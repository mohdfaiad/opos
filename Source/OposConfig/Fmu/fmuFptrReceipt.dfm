object fmFptrReceipt: TfmFptrReceipt
  Left = 313
  Top = 184
  Width = 512
  Height = 498
  Caption = 'Receipt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gbParams: TGroupBox
    Left = 8
    Top = 8
    Width = 225
    Height = 345
    TabOrder = 0
    DesignSize = (
      225
      345)
    object lblDefaultDepartment: TLabel
      Left = 8
      Top = 16
      Width = 79
      Height = 13
      Caption = 'Def. department:'
    end
    object lblCutType: TLabel
      Left = 8
      Top = 40
      Width = 42
      Height = 13
      Caption = 'Cut type:'
    end
    object lblEncoding: TLabel
      Left = 8
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Encoding:'
    end
    object lblStatusCommand: TLabel
      Left = 8
      Top = 88
      Width = 82
      Height = 13
      Caption = 'Status command:'
    end
    object lblHeaderType: TLabel
      Left = 8
      Top = 112
      Width = 61
      Height = 13
      Caption = 'Header type:'
    end
    object lblZeroReceipt: TLabel
      Left = 8
      Top = 184
      Width = 60
      Height = 13
      Caption = 'Zero receipt:'
    end
    object lblCompatLevel: TLabel
      Left = 8
      Top = 136
      Width = 61
      Height = 13
      Caption = 'Compatibility:'
    end
    object lblReceiptType: TLabel
      Left = 8
      Top = 160
      Width = 63
      Height = 13
      Caption = 'Receipt type:'
    end
    object lblZeroReceiptNumber: TLabel
      Left = 8
      Top = 208
      Width = 98
      Height = 13
      Caption = 'Zero receipt number:'
    end
    object lblQuantityLength: TLabel
      Left = 8
      Top = 232
      Width = 74
      Height = 13
      Caption = 'Quantity length:'
    end
    object cbCutType: TComboBox
      Left = 96
      Top = 40
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Full cut'
        'Partial cut'
        'No cut')
    end
    object cbEncoding: TComboBox
      Left = 96
      Top = 64
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Windows'
        'CP866')
    end
    object cbStatusCommand: TComboBox
      Left = 96
      Top = 88
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Driver selection'
        'Short status, 10h'
        'Long status, 11h')
    end
    object cbHeaderType: TComboBox
      Left = 96
      Top = 112
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Printer header'
        'Driver header'
        'None')
    end
    object cbZeroReceipt: TComboBox
      Left = 96
      Top = 184
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 7
      Items.Strings = (
        'Normal'
        'Nonfiscal')
    end
    object cbCompatLevel: TComboBox
      Left = 96
      Top = 136
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'None'
        'Level 1'
        'Level 2')
    end
    object cbReceiptType: TComboBox
      Left = 96
      Top = 160
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Normal receipt'
        'Single position'
        'GLOBUS receipt'
        'GLOBUS text receipt')
    end
    object chbCacheReceiptNumber: TCheckBox
      Left = 8
      Top = 256
      Width = 201
      Height = 17
      Caption = 'Cache receipt number'
      TabOrder = 10
    end
    object seDepartment: TSpinEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object seZeroReceiptNumber: TSpinEdit
      Left = 120
      Top = 208
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Value = 0
    end
    object chbZReceiptBeforeZReport: TCheckBox
      Left = 8
      Top = 280
      Width = 214
      Height = 17
      Caption = 'Zero receipt before Z report (day closed)'
      TabOrder = 11
    end
    object chbOpenReceiptEnabled: TCheckBox
      Left = 8
      Top = 304
      Width = 214
      Height = 17
      Caption = 'Open receipt in beginFiscalReceipt'
      TabOrder = 12
    end
    object cbQuantityLength: TComboBox
      Left = 96
      Top = 232
      Width = 121
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        '3 digits'
        '6 digits')
    end
  end
  object gbReceipt: TGroupBox
    Left = 240
    Top = 8
    Width = 249
    Height = 345
    TabOrder = 1
  end
end