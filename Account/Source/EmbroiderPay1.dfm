object EmbroiderPay: TEmbroiderPay
  Left = 411
  Top = 250
  Width = 795
  Height = 413
  Caption = 'EmbroiderPay'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 232
      Top = 29
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 136
      Top = 29
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 480
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 280
      Top = 21
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button2: TButton
      Left = 560
      Top = 16
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 2
    end
    object CBX2: TComboBox
      Left = 56
      Top = 21
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = '2007'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX3: TComboBox
      Left = 176
      Top = 21
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button3: TButton
      Left = 632
      Top = 16
      Width = 65
      Height = 33
      Caption = 'PRINT'
      TabOrder = 5
    end
    object DB1: TCheckBox
      Left = 384
      Top = 24
      Width = 89
      Height = 17
      Caption = 'For Tools'
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 779
    Height = 317
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH'
      'from KCCLMONTH'
      'left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH'
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDH'
      'where KCCLMONTH.KCYEAR='#39'2007'#39
      'and KCCLMONTH.KCMONTH='#39'12'#39
      'order by KCCLMONTH.CLBH')
    Left = 496
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
end
