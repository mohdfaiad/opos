object fmLogo: TfmLogo
  Left = 360
  Top = 155
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'Logo'
  ClientHeight = 439
  ClientWidth = 422
  Color = clBtnFace
  Constraints.MinHeight = 315
  Constraints.MinWidth = 430
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    422
    439)
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TButton
    Left = 328
    Top = 408
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    Default = True
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object btnOpen: TBitBtn
    Left = 328
    Top = 272
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Open'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object btnLoad: TBitBtn
    Left = 328
    Top = 304
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Load'
    TabOrder = 1
    OnClick = btnLoadClick
  end
  object btnPrint: TBitBtn
    Left = 328
    Top = 336
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Print'
    TabOrder = 2
    OnClick = btnPrintClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 272
    Width = 313
    Height = 161
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      313
      161)
    object lblMaxImageSize: TLabel
      Left = 8
      Top = 56
      Width = 99
      Height = 13
      Caption = 'Maximum image size:'
    end
    object lblInfo1: TLabel
      Left = 8
      Top = 8
      Width = 244
      Height = 13
      Caption = 'Select monochrome image and press "Load" button'
    end
    object lblImageSize: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Image size:'
    end
    object lblWarn: TLabel
      Left = 48
      Top = 128
      Width = 36
      Height = 13
      Caption = 'lblWarn'
      Visible = False
    end
    object imgWarn: TImage
      Left = 8
      Top = 120
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        07544269746D617036100000424D361000000000000036000000280000002000
        000020000000010020000000000000100000C40E0000C40E0000000000000000
        000000000000000000000000000000000000C56031FFAB4A28FFAB4A28FFAC4C
        29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C
        29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C29FFAC4C
        29FFAC4C29FFAC4C29FFAC4C29FFAB4C2AFFA84D2CFFAD512EFF000000000000
        0000000000000000000000000000A75633FF6A302DFF603031FF603032FF6030
        32FF603032FF603032FF603032FF603032FF603032FF5F3032FF5F3032FF5F30
        32FF5F3032FF5F3032FF603032FF603032FF603032FF603032FF603032FF6030
        32FF603032FF603031FF5D3235FF622E2EFF73130DFF6A1F1CFF000000000000
        0000000000000000000036A3B6FF00B1DAFF02A5CBFF00A4CDFF00A6CDFF00A4
        CDFF00A4CDFF00A4CDFF00A4CDFF00A6CDFF00A4CDFF00A5CEFF00A7CFFF00A7
        CFFF00A5CEFF00A5CEFF00A6CDFF00A6CDFF00A4CDFF00A4CDFF00A6CDFF00A4
        CDFF00A4CDFF00A5CEFF00ACD6FF02B2DDFF366B81FF73130DFF6A1F1CFF0000
        0000000000005E989AFF00ACD6FF00B1DAFF00B5DEFF00B3DFFF00B3DFFF00B3
        DFFF00B3DFFF00B3DFFF00B3DFFF00B3DFFF00B6E2FF00BAE5FF00CBFAFF00CB
        FCFF00C1F1FF00B6E2FF00B4E0FF00B3DFFF00B3DFFF00B3DFFF00B3DFFF00B3
        DFFF00B3DFFF00B4E0FF00B8E3FF00C1EFFF00CFFEFF514750FF6F1813FF0000
        00000000000025B0C8FF00B5DEFF00BAE5FF00C5F1FF00C7F6FF01C7F5FF01C9
        F5FF01C9F5FF01C7F5FF01C9F5FF01CAF7FF00D1FFFF00D9FFFF216983FF5A62
        7AFF3D97B3FF00D3FFFF00CBFAFF00C8F6FF01C9F5FF01C7F5FF01C9F5FF01C7
        F5FF00C8F6FF00C8F6FF00C5F1FF00C1EFFF00D3FFFF357588FF740D06FF0000
        00000000000000B8E3FF00B8E3FF00C1EAFF06D5FEFF05DAFFFF00D6FFFF00D6
        FFFF00D6FFFF00D6FFFF00D6FFFF00D9FFFF00E7FFFF223B4FFF160000FF6908
        1BFFFFB2BEFF539EADFF00E4FFFF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D5
        FFFF00D6FFFF0DE2FFFF06D5FEFF00C8F6FF00D6FFFF4E4E58FF8F1042FF0000
        00000000000000BFE5FF00BFE5FF00C1EAFF07D1FCFF0DE2FFFF00D6FFFF00D3
        FFFF00D3FFFF00D3FFFF00D3FFFF00D9FFFF00DFFFFF040000FF120000FF611A
        31FF69081BFF5A627AFF00EDFFFF00D6FFFF00D3FFFF00D3FFFF00D3FFFF00D3
        FFFF05DAFFFF1CEFFFFF06D5FEFF00CFFEFF00C9F1FF6F1813FF8F1042FF0000
        000000000000000000001BBAD5FF00BFE5FF00C9F1FF10E3FFFF06DDFFFF00D5
        FFFF00D3FFFF00D6FFFF00D6FFFF00DBFFFF00E8FFFF111924FF010000FF1B00
        00FF320000FF225973FF00F1FFFF00D6FFFF00D6FFFF00D5FFFF00D5FFFF00D5
        FFFF14E9FFFF1CEFFFFF00CCF9FF00E1FFFF357588FF841E10FF000000000000
        0000000000000000000000BFE5FF00BFE5FF00C6ECFF0BDEFEFF11E8FFFF00D9
        FFFF00D6FFFF00D6FFFF00D9FFFF00DBFFFF00EBFFFF06ABCCFF120000FF0700
        00FF221827FF00D6FCFF00E1FFFF00D9FFFF00D9FFFF00D6FFFF00D5FFFF03DC
        FFFF25FDFFFF0BDEFEFF00D3FFFF00CEF5FF622E2EFFA44727FF000000000000
        000000000000000000000000000005C5E7FF00C6E8FF02D0F7FF14ECFFFF0AE4
        FFFF00D9FFFF00D9FFFF00DBFFFF00DBFFFF00DFFFFF00EBFFFF00EDFFFF00F5
        FFFF00EBFFFF00E8FFFF00DBFFFF00DBFFFF00DBFFFF00D9FFFF00D6FFFF19F2
        FFFF25FDFFFF00D5FDFF00E3FFFF2C8998FF82190BFF00000000000000000000
        000000000000000000000000000000C6E8FF00C6E8FF01CAEDFF0BDEFEFF11EE
        FFFF00DDFFFF00DBFFFF00DBFFFF00DBFFFF00DDFFFF00E1FFFF00E4FFFF0FA5
        C3FF00E4FFFF00E1FFFF00DBFFFF00DBFFFF00DDFFFF00D9FFFF06E2FEFF2AFF
        FFFF0AE4FFFF00D6FCFF00DDFFFF642928FFAB4A28FF00000000000000000000
        00000000000000000000000000000000000015C6DAFF00C9E8FF00D2F3FF11EE
        FFFF08E7FEFF00DDFFFF00DDFFFF00DFFFFF00DFFFFF00E4FFFF01D6F9FF4310
        1DFF00DFFFFF00E8FFFF00DFFFFF00DDFFFF00DDFFFF00DBFFFF1AF8FFFF1DF9
        FFFF01D6F9FF00E8FFFF318090FF851E0FFF0000000000000000000000000000
        00000000000000000000000000000000000000CAE6FF00CAE6FF00CDECFF06E2
        FEFF11F1FFFF00E1FFFF00DFFFFF00DFFFFF00E1FFFF00F1FFFF0FA5C3FF4500
        02FF01CAEDFF00EFFFFF00E1FFFF00DFFFFF00DDFFFF06E7FFFF24FFFFFF06E2
        FEFF00DDFFFF00D5F3FF622C2BFFA94827FF0000000000000000000000000000
        000000000000000000000000000000000000000000000ECBE1FF00CAE6FF00D5
        F3FF11EEFFFF08EAFFFF00E3FFFF00E3FFFF00E4FFFF00FDFFFF1D7B8CFF6A00
        00FF06ABCCFF00F8FFFF00E4FFFF00E1FFFF00E1FFFF16F7FFFF1AF8FFFF01D6
        F9FF00E8FFFF2C8998FF82190BFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000CAE6FF00CAE6FF00CF
        E9FF08E7FEFF0DF0FFFF00E4FFFF00E4FFFF00E8FFFF00FFFFFF154959FF7C00
        00FF1590A8FF00FAFFFF00E7FFFF00E3FFFF06E7FFFF1EFFFFFF08E7FEFF00DB
        F8FF00E3FFFF652724FFA44727FF000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000015C6DAFF00CE
        E5FF01DAF2FF12F5FFFF05EAFFFF00E7FFFF00F1FFFF00E8FFFF221827FFA64E
        5DFF325064FF00F5FFFF00E8FFFF00E4FFFF0EF4FFFF1EFFFFFF00DEFAFF00EF
        FFFF2C8998FF82190BFF00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000CEE5FF00CE
        E5FF00D5EBFF0DF0FFFF0DF7FFFF00E8FFFF00FDFFFF00BCD0FF220000FFA64E
        5DFF543843FF00FAFFFF00EDFFFF00E8FFFF1EFFFFFF12F5FFFF00E3FFFF00E1
        F9FF603232FFA34425FF00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000001D4
        E6FF01D4E6FF04E5F8FF13FBFFFF03F0FFFF00FFFFFF01A3B4FF2E0000FF6821
        37FF4F273DFF02CCE3FF00F7FFFF0DF7FFFF24FFFFFF00E7FFFF00F1FFFF2898
        A2FF850F06FF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000001D4
        E6FF01D4E6FF01DAF2FF0EF6FFFF0DFEFFFF00FFFFFF154959FF2E0000FF4703
        1BFF47031BFF1590A8FF00FFFFFF1EFFFFFF15F9FFFF00E5FBFF00F3FFFF622E
        2EFFA53F22FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000AD3E2FF00DBE9FF03E8FAFF13FFFFFF03FFFFFF060A10FF1B0000FF3E00
        15FF450002FF225973FF03FFFFFF24FFFFFF00EDFFFF00F7FFFF2898A2FF8311
        09FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000001D4E6FF01D4E6FF00E3F2FF0EFFFFFF0BFFFFFF010000FF160000FF4703
        1BFF450002FF223B4FFF15FFFFFF16FFFFFF00EBFFFF00F3FFFF543843FFA33A
        1EFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000DBE9FF00DBE9FF03F0FFFF13FFFFFF070000FF090000FF3000
        0AFF320000FF2E4D5CFF1EFFFFFF00F3FFFF00FAFFFF1FACB3FF7F0C04FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000DBE9FF00DBE9FF00E3F2FF0EFFFFFF11A6A7FF010000FF0100
        00FF090000FF23E2E3FF13FFFFFF00F0FCFF00FAFFFF554646FF9A351DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001E1E9FF01E1E9FF03F5FFFF13FFFFFF03F7FEFF02B8
        C3FF09FFFFFF22FFFFFF00F8FFFF00FFFFFF1FACB3FF7B0E09FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000DDE7FF00DDE7FF00EBF2FF0EFFFFFF09FFFFFF00FF
        FFFF1CFFFFFF16FFFFFF00F5FFFF00FDFFFF554646FF9A351DFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001E1E9FF00E6EAFF04F4F9FF11FFFFFF09FF
        FFFF2AFFFFFF00F8FFFF00FFFFFF1AC1C2FF740D06FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000E1E5FF00E1E5FF00EBF2FF18FFFFFF31FF
        FFFF22FFFFFF00F6F9FF00FFFFFF554646FF9A351DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000E6EAFF00EAEBFF17FDFEFF68FF
        FFFF0DFEFFFF00FFFFFF1AC1C2FF7B0E09FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000EAEBFF00EAEBFF03FAFDFF2AFF
        FFFF00FFFFFF00FFFFFF4F5351FFA53F22FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000F3F3FF00F6F9FF00FF
        FFFF00FFFFFF1AC1C2FFAA4424FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000FF7F5FF07FF
        FFFF38D5C7FFC56031FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
      Visible = False
    end
    object lblProgress: TLabel
      Left = 248
      Top = 80
      Width = 3
      Height = 13
      Anchors = [akTop, akRight]
    end
    object edtImageSize: TEdit
      Left = 120
      Top = 32
      Width = 113
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object edtMaxImageSize: TEdit
      Left = 120
      Top = 56
      Width = 113
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object chbLogoCenter: TCheckBox
      Left = 120
      Top = 104
      Width = 137
      Height = 17
      Caption = 'Center logo on page'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 409
    Height = 257
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 5
    DesignSize = (
      409
      257)
    object Image: TImage
      Left = 8
      Top = 8
      Width = 393
      Height = 241
      Anchors = [akLeft, akTop, akRight, akBottom]
      Center = True
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 140
    Top = 104
  end
end