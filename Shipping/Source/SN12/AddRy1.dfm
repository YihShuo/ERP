object AddRy: TAddRy
  Left = 328
  Top = 183
  Width = 622
  Height = 640
  BorderIcons = [biSystemMenu]
  Caption = 'AddRy'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 264
      Top = 8
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object Label13: TLabel
      Left = 16
      Top = 8
      Width = 29
      Height = 16
      Caption = 'Year'
    end
    object Edit1: TEdit
      Left = 294
      Top = 4
      Width = 107
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 448
      Top = 8
      Width = 65
      Height = 28
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ComboBox6: TComboBox
      Left = 52
      Top = 4
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
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
        '2020'
        '2021')
    end
    object ComboBox7: TComboBox
      Left = 184
      Top = 4
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 3
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
    object chkMonth: TCheckBox
      Left = 124
      Top = 8
      Width = 55
      Height = 17
      Caption = 'Month'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 296
      Top = 35
      Width = 113
      Height = 17
      Caption = 'Show RY VN Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button2: TButton
      Left = 528
      Top = 8
      Width = 65
      Height = 28
      Caption = 'Add'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 606
    Height = 545
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Checkboxes = True
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 22
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <
          item
            FieldName = 'RY'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'StyleName'
        Footers = <>
        ReadOnly = True
        Width = 178
      end
      item
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CustOrdNo'
        Footers = <>
        ReadOnly = True
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 50
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 160
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'MyDB'
    RequestLive = True
    SQL.Strings = (
      
        'select 0 as YN,orderno as RY,afl as StyleName,custord as PO,cust' +
        'ord2 as CustOrdNo,article as Article,pairqty as Pairs,MCUSTMER a' +
        's CustID,Brand'
      'from DE_ORDERM')
    UpdateObject = UpdateSQL1
    Left = 232
    Top = 160
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object Query1StyleName: TStringField
      FieldName = 'StyleName'
      FixedChar = True
      Size = 30
    end
    object Query1PO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 15
    end
    object Query1CustOrdNo: TStringField
      FieldName = 'CustOrdNo'
      FixedChar = True
      Size = 30
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CustID: TStringField
      FieldName = 'CustID'
      FixedChar = True
      Size = 6
    end
    object Query1Brand: TStringField
      FieldName = 'Brand'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 232
    Top = 192
  end
  object qry_tmp1: TQuery
    DatabaseName = 'MyDB'
    Left = 136
    Top = 168
  end
  object qry_tmp2: TQuery
    DatabaseName = 'MyDB'
    Left = 136
    Top = 200
  end
end
