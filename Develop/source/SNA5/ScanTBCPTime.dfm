object ScanTBCPTime1: TScanTBCPTime1
  Left = 429
  Top = 107
  Width = 870
  Height = 450
  Caption = 'ScanTBCuttingPreparationTime'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 419
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 417
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 858
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 140
          Height = 37
          Caption = 'SCAN TB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 192
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 81
        Width = 858
        Height = 335
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FirstMatOutDate'
            Footers = <>
            Title.Caption = 'CuttingPreparation Date'
            Width = 277
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 185
    Top = 153
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,Finish,FirstMatOutDate,TBReceive from shoe' +
        'test')
    Left = 185
    Top = 201
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Finish: TBooleanField
      FieldName = 'Finish'
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1FirstMatOutDate: TDateTimeField
      FieldName = 'FirstMatOutDate'
    end
  end
end
