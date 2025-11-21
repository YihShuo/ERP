object ShowPicture: TShowPicture
  Left = 270
  Top = 124
  Width = 874
  Height = 563
  Caption = 'ShowPicture'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 97
    Top = 0
    Height = 525
    Color = clBackground
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 97
    Height = 525
    Align = alLeft
    TabOrder = 0
    object ListBox1: TListBox
      Left = 1
      Top = 1
      Width = 95
      Height = 523
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      OnClick = ListBox1Click
    end
  end
  object Panel2: TPanel
    Left = 100
    Top = 0
    Width = 758
    Height = 525
    Align = alClient
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 756
      Height = 523
      Align = alClient
      AutoSize = True
    end
  end
end
