object ChuyenGio: TChuyenGio
  Left = 319
  Top = 227
  Width = 243
  Height = 94
  Caption = 'ChuyenGio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 208
    Height = 81
    Align = alTop
    TabOrder = 0
    object Ngay: TLabel
      Left = 10
      Top = 16
      Width = 48
      Height = 16
      Caption = 'Times:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GioChuyen: TDateTimePicker
      Left = 66
      Top = 16
      Width = 73
      Height = 24
      Date = 39219.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39219.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = 'Chinese (Traditional) - New Phonetic'
      Kind = dtkTime
      ParentFont = False
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 152
      Top = 11
      Width = 47
      Height = 29
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnOKClick
    end
  end
end
