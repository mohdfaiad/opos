object fmMain: TfmMain
  Left = 399
  Top = 168
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'OPOS print server'
  ClientHeight = 302
  ClientWidth = 445
  Color = clBtnFace
  Constraints.MinHeight = 329
  Constraints.MinWidth = 453
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    445
    302)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TTntButton
    Left = 208
    Top = 272
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TTntButton
    Left = 288
    Top = 272
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 433
    Height = 257
    ActivePage = tsCommon
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsCommon: TTabSheet
      Caption = 'Parameters'
      object lblTimeout: TTntLabel
        Left = 96
        Top = 124
        Width = 160
        Height = 13
        Caption = 'Serial port claim timeout, seconds:'
      end
      object Label1: TTntLabel
        Left = 16
        Top = 18
        Width = 54
        Height = 13
        Caption = 'Connection'
      end
      object lblTCPPort: TTntLabel
        Left = 256
        Top = 44
        Width = 60
        Height = 13
        Caption = 'Port number:'
      end
      object lblComPort: TTntLabel
        Left = 16
        Top = 88
        Width = 47
        Height = 13
        Caption = 'Serial port'
      end
      object Bevel2: TBevel
        Left = 96
        Top = 96
        Width = 321
        Height = 17
        Shape = bsTopLine
      end
      object edtTimeout: TTntEdit
        Left = 320
        Top = 120
        Width = 65
        Height = 21
        MaxLength = 5
        TabOrder = 2
        Text = '0'
        OnChange = ModifiedClick
        OnKeyDown = edtTimeoutKeyDown
        OnKeyPress = edtTimeoutKeyPress
      end
      object udTimeout: TUpDown
        Left = 385
        Top = 120
        Width = 15
        Height = 21
        Associate = edtTimeout
        Max = 32767
        TabOrder = 3
        OnClick = udTimeoutClick
      end
      object chbAutoCancel: TTntCheckBox
        Left = 96
        Top = 176
        Width = 305
        Height = 17
        Alignment = taLeftJustify
        BiDiMode = bdRightToLeft
        Caption = 'Cancel receipt on timeout'
        ParentBiDiMode = False
        TabOrder = 5
        OnClick = ModifiedClick
      end
      object chbAutoUnlock: TTntCheckBox
        Left = 96
        Top = 152
        Width = 305
        Height = 17
        Alignment = taLeftJustify
        BiDiMode = bdRightToLeft
        Caption = 'Release port on timeout'
        ParentBiDiMode = False
        TabOrder = 4
        OnClick = ModifiedClick
      end
      object chbTCPEnabled: TTntCheckBox
        Left = 96
        Top = 42
        Width = 153
        Height = 17
        Caption = 'Enable TCP connection'
        TabOrder = 0
        OnClick = chbTCPEnabledClick
      end
      object edtTCPPort: TTntEdit
        Left = 328
        Top = 40
        Width = 73
        Height = 21
        TabOrder = 1
        Text = '2002'
        OnChange = ModifiedClick
      end
    end
    object tsPorts: TTabSheet
      Caption = 'Ports'
      ImageIndex = 1
      DesignSize = (
        425
        229)
      object lvPorts: TListView
        Left = 8
        Top = 8
        Width = 409
        Height = 185
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'Port'
          end
          item
            Caption = 'Status'
            Width = 70
          end
          item
            Caption = 'Computer'
            Width = 90
          end
          item
            Caption = 'PID'
            Width = 40
          end
          item
            AutoSize = True
            Caption = 'Application'
          end>
        ColumnClick = False
        FlatScrollBars = True
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lvPortsChange
      end
      object btnReleasePort: TTntButton
        Left = 312
        Top = 200
        Width = 107
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Release port'
        TabOrder = 1
        OnClick = btnReleasePortClick
      end
    end
    object tsClients: TTabSheet
      Caption = 'Connections'
      ImageIndex = 2
      DesignSize = (
        425
        229)
      object lblClientCount: TTntLabel
        Left = 8
        Top = 208
        Width = 95
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Connection number:'
      end
      object lvClients: TListView
        Left = 8
        Top = 8
        Width = 409
        Height = 185
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = #8470
            Width = 70
          end
          item
            Caption = 'Computer'
            Width = 90
          end
          item
            Caption = 'PID'
            Width = 40
          end
          item
            AutoSize = True
            Caption = 'Application'
          end>
        ColumnClick = False
        FlatScrollBars = True
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lvPortsChange
      end
      object edtClientCount: TTntEdit
        Left = 128
        Top = 204
        Width = 81
        Height = 21
        TabStop = False
        Anchors = [akLeft, akBottom]
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
        Text = '0'
      end
    end
  end
  object btnApply: TTntButton
    Left = 368
    Top = 272
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Apply'
    Enabled = False
    TabOrder = 3
    OnClick = btnApplyClick
  end
  object ImageList: TImageList
    Left = 40
    Top = 272
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FF0000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FF0000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000840000000000000000000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C600000000008400000084000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6008400000084000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000000FFC1F00000000
      000FF80F00000000000FF00700000000000FE00300000000000FC00300000000
      000FC00100000000000F800100000000000F8001000000000004800300000000
      0000C003000000000000C00700000000F800E00F00000000FC00F01F00000000
      FE04F83F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu: TPopupMenu
    Images = ImageList
    Left = 8
    Top = 272
    object miProperties: TMenuItem
      Caption = '&Parameters...'
      Default = True
      ImageIndex = 0
      OnClick = miPropertiesClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miAbout: TMenuItem
      Caption = 'About...'
      ImageIndex = 1
      OnClick = miAboutClick
    end
    object miClose: TMenuItem
      Caption = '&Close'
      OnClick = miCloseClick
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 72
    Top = 272
  end
end
