object UseStockReport: TUseStockReport
  Left = 205
  Top = 187
  Width = 870
  Height = 450
  Caption = 'UseStockReport'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label9: TLabel
      Left = 158
      Top = 16
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Button1: TButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object dtp4: TDateTimePicker
      Left = 168
      Top = 8
      Width = 113
      Height = 28
      Date = 41675.431356041660000000
      Format = 'yyyy/MM/dd'
      Time = 41675.431356041660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dtp3: TDateTimePicker
      Left = 40
      Top = 8
      Width = 113
      Height = 28
      Date = 41675.431051550920000000
      Format = 'yyyy/MM/dd'
      Time = 41675.431051550920000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object userdatecheck: TCheckBox
      Left = 24
      Top = 16
      Width = 17
      Height = 17
      Caption = 'userdatecheck'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 854
    Height = 370
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 852
      Height = 368
      Align = alClient
      DataSource = DS1
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
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'clbh'
          Footer.FieldName = 'clbh'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'MateraiNO'
          Width = 113
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'PurQty'
          Footers = <>
          Width = 77
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'StockQty'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Description|English'
          Width = 394
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Footers = <>
          Title.Caption = 'Description|Chinese'
          Width = 296
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          Title.Caption = 'Unit|English'
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'dwzwsm'
          Footers = <>
          Title.Caption = 'Unit|Chinese'
          Width = 85
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      ''
      
        'select cgzl.gsbh,cgzl.clbh,cgzl.PurQty,cgzl.StockQty,clzl.ywpm,c' +
        'lzl.zwpm,clzl.dwbh,clzl.dwzwsm from ('
      
        'select cgzl.gsbh,cgzls.clbh,sum(cgzls.qty) PurQty,cgkcuse.Qty St' +
        'ockQty  from cgzl'
      'left join cgzls on cgzl.cgno=cgzls.cgno'
      
        'full outer join (select cgkcuse.clbh,sum(qty) as qty  from cgkcu' +
        'se '
      
        #9#9#9'where gsbh='#39'CDC'#39' and cgkcuse.userdate between '#39'2019-01-01'#39' an' +
        'd  '#39'2019-12-01'#39' '
      #9#9#9'group by cgkcuse.clbh)cgkcuse on cgkcuse.clbh=cgzls.clbh'#9#9#9
      
        'where cgzl.gsbh='#39'CDC'#39' and cgzl.userdate between '#39'2019-01-01'#39' and' +
        '  '#39'2019-12-01'#39' '
      'group by cgzl.gsbh,cgzls.clbh,cgkcuse.Qty)cgzl'
      'left join clzl on clzl.cldh=cgzl.clbh')
    Left = 152
    Top = 137
    object Query1gsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object Query1clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query1PurQty: TCurrencyField
      FieldName = 'PurQty'
    end
    object Query1StockQty: TCurrencyField
      FieldName = 'StockQty'
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1dwzwsm: TStringField
      FieldName = 'dwzwsm'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 185
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 88
    Top = 137
  end
end
