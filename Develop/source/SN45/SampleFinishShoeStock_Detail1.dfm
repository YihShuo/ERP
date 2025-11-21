object SampleFinishShoeStock_Detail: TSampleFinishShoeStock_Detail
  Left = 603
  Top = 231
  Width = 679
  Height = 608
  Caption = 'SampleFinishShoeStock_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 281
    Width = 663
    Height = 287
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TestNO'
        Footers = <>
        Title.Caption = #36890#22577#34399'|TestNo'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = #27171#21697#21934#32232#34399'|Sample No'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|ARTICLE'
      end
      item
        EditButtons = <>
        FieldName = 'shipdate_final'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|ShipDate'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #20986#36008#25976#37327'|XHQty'
        Width = 109
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 663
    Height = 281
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TestNO'
        Footers = <>
        Title.Caption = #36890#22577#34399'|TestNo'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = #27171#21697#21934#32232#34399'|Sample No'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|ARTICLE'
      end
      item
        EditButtons = <>
        FieldName = 'Complete'
        Footers = <>
        Title.Caption = #25104#22411#20837#24235'|Complete'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|RKQty'
        Width = 105
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 56
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = SampeFinishShoeStock.DS2
    SQL.Strings = (
      
        'Select  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, Shoetes' +
        't.Complete,Sum(shoetest2.qty) as Qty'
      'from shoetest'
      
        'left join (select testno,sum(qty) as qty from shoetest2 group by' +
        ' testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      'where 1=1 and shoetest.testno=:TestNo'
      
        'group by Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, Shoete' +
        'st.Complete')
    Left = 208
    Top = 88
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNo'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 10
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 208
    Top = 360
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = SampeFinishShoeStock.DS2
    SQL.Strings = (
      
        #9'Select  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, shoete' +
        'stshipping.shipdate_final,Sum(shoetestshipping.qty) as Qty'
      #9'from shoetest'
      
        #9'left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from sh' +
        'oetestshipping   Group by TestNO,shipdate_final ) shoetestshippi' +
        'ng on shoetest.testno=shoetestshipping.testno'
      #9
      #9'where 1=1 and shoetest.testno =:TestNo'
      
        #9'group by  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, shoe' +
        'testshipping.shipdate_final')
    Left = 208
    Top = 392
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNo'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query2TestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 10
    end
    object Query2YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2shipdate_final: TDateTimeField
      FieldName = 'shipdate_final'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
  end
end
