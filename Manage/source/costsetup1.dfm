object costsetup: Tcostsetup
  Left = 623
  Top = 262
  Width = 467
  Height = 370
  BorderIcons = [biSystemMenu]
  Caption = 'COST Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 59
      Height = 16
      Caption = 'Cost Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 8
      Width = 36
      Height = 16
      Caption = 'Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 304
      Top = 4
      Width = 81
      Height = 25
      Caption = 'Recalculation'
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object cby: TComboBox
      Left = 72
      Top = 8
      Width = 57
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '2008'
      OnClick = cbyClick
      Items.Strings = (
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
        '2018')
    end
    object cbm: TComboBox
      Left = 176
      Top = 8
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '1'
      OnClick = cbmClick
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object Button3: TButton
      Left = 224
      Top = 8
      Width = 57
      Height = 21
      Caption = 'Get'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object costlist: TDBGrid
    Left = 0
    Top = 40
    Width = 449
    Height = 294
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
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CostYear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostMon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostDep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostTotP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostTotO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostAvgP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostAvgO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end>
  end
  object getdata: TQuery
    AfterInsert = getdataAfterInsert
    DatabaseName = 'DB'
    UpdateObject = upsql
    Left = 232
    Top = 168
    object getdataCostYear: TStringField
      FieldName = 'CostYear'
      Origin = 'DB.costset.CostYear'
      FixedChar = True
      Size = 4
    end
    object getdataCostMon: TStringField
      FieldName = 'CostMon'
      Origin = 'DB.costset.CostMon'
      FixedChar = True
      Size = 2
    end
    object getdataCostDep: TStringField
      FieldName = 'CostDep'
      Origin = 'DB.costset.CostDep'
      FixedChar = True
      Size = 4
    end
    object getdataCostTotP: TFloatField
      FieldName = 'CostTotP'
      Origin = 'DB.costset.CostTotP'
      DisplayFormat = '#,##0.##'
    end
    object getdataCostTotO: TFloatField
      FieldName = 'CostTotO'
      Origin = 'DB.costset.CostTotO'
      DisplayFormat = '#,##0.##'
    end
    object getdataCostAvgP: TFloatField
      FieldName = 'CostAvgP'
      Origin = 'DB.costset.CostAvgP'
      DisplayFormat = '#0.##'
    end
    object getdataCostAvgO: TFloatField
      FieldName = 'CostAvgO'
      Origin = 'DB.costset.CostAvgO'
      DisplayFormat = '#0.##'
    end
  end
  object DataSource1: TDataSource
    DataSet = getdata
    Left = 264
    Top = 168
  end
  object adddata: TQuery
    AutoCalcFields = False
    DatabaseName = 'dB'
    ParamCheck = False
    Left = 64
    Top = 168
  end
  object upsql: TUpdateSQL
    ModifySQL.Strings = (
      'update costset'
      'set'
      '  CostYear = :CostYear,'
      '  CostMon = :CostMon,'
      '  CostDep = :CostDep,'
      '  CostTotP = :CostTotP,'
      '  CostTotO = :CostTotO,'
      '  CostAvgP = :CostAvgP,'
      '  CostAvgO = :CostAvgO'
      'where'
      '  CostYear = :OLD_CostYear and'
      '  CostMon = :OLD_CostMon and'
      '  CostDep = :OLD_CostDep and'
      '  CostTotP = :OLD_CostTotP and'
      '  CostTotO = :OLD_CostTotO and'
      '  CostAvgP = :OLD_CostAvgP and'
      '  CostAvgO = :OLD_CostAvgO')
    InsertSQL.Strings = (
      'insert into costset'
      
        '  (CostYear, CostMon, CostDep, CostTotP, CostTotO, CostAvgP, Cos' +
        'tAvgO)'
      'values'
      
        '  (:CostYear, :CostMon, :CostDep, :CostTotP, :CostTotO, :CostAvg' +
        'P, :CostAvgO)')
    DeleteSQL.Strings = (
      'delete from costset'
      'where'
      '  CostYear = :OLD_CostYear and'
      '  CostMon = :OLD_CostMon and'
      '  CostDep = :OLD_CostDep and'
      '  CostTotP = :OLD_CostTotP and'
      '  CostTotO = :OLD_CostTotO and'
      '  CostAvgP = :OLD_CostAvgP and'
      '  CostAvgO = :OLD_CostAvgO')
    Left = 200
    Top = 168
  end
end
