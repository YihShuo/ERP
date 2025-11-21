object FileClient: TFileClient
  Left = 650
  Top = 234
  Width = 490
  Height = 299
  Caption = 'FileClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lstMsg: TListBox
    Left = 0
    Top = 0
    Width = 219
    Height = 261
    Align = alLeft
    ItemHeight = 13
    TabOrder = 0
  end
  object btnList: TButton
    Left = 232
    Top = 17
    Width = 61
    Height = 20
    Caption = 'List'
    TabOrder = 1
    OnClick = btnListClick
  end
  object btnGet: TButton
    Left = 232
    Top = 50
    Width = 61
    Height = 20
    Caption = 'Get'
    TabOrder = 2
    OnClick = btnGetClick
  end
  object btnPut: TButton
    Left = 232
    Top = 81
    Width = 61
    Height = 21
    Caption = 'Put'
    TabOrder = 3
    OnClick = btnPutClick
  end
  object btnDel: TButton
    Left = 232
    Top = 115
    Width = 61
    Height = 20
    Caption = 'Delete'
    TabOrder = 4
    OnClick = btnDelClick
  end
  object chkRefresh: TCheckBox
    Left = 232
    Top = 147
    Width = 61
    Height = 14
    Caption = 'Refresh'
    TabOrder = 5
  end
  object edtSub: TEdit
    Left = 232
    Top = 180
    Width = 61
    Height = 24
    TabOrder = 6
  end
  object Button1: TButton
    Left = 312
    Top = 17
    Width = 61
    Height = 20
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 310
    Top = 50
    Width = 61
    Height = 20
    Caption = 'Button2'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 310
    Top = 83
    Width = 61
    Height = 20
    Caption = 'Button3'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 308
    Top = 116
    Width = 61
    Height = 21
    Caption = 'Button4'
    TabOrder = 10
    OnClick = Button4Click
  end
  object httpC: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 142
    Top = 47
  end
end
