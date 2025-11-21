object Import: TImport
  Left = 630
  Top = 305
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Import '
  ClientHeight = 425
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 162
    Width = 52
    Height = 16
    Caption = 'Status :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 176
    Top = 16
    Width = 177
    Height = 41
    Caption = 'Import '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 80
    Width = 681
    Height = 369
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 264
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 96
    Top = 8
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 8
  end
end
