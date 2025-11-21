object CutMaterialRpt: TCutMaterialRpt
  Left = 226
  Top = 259
  Width = 1638
  Height = 675
  Caption = 'CutMaterialRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1620
    Height = 630
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1618
      Height = 192
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 215
        Top = 11
        Width = 80
        Height = 25
        Caption = 'OrderNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 12
        Width = 70
        Height = 25
        Caption = 'BUYNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 423
        Top = 11
        Width = 56
        Height = 25
        Caption = 'GSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 52
        Width = 69
        Height = 25
        Caption = 'Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 45
        Top = 116
        Width = 35
        Height = 25
        Caption = 'Part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BUYNO: TEdit
        Left = 88
        Top = 8
        Width = 121
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object orderno: TEdit
        Left = 296
        Top = 8
        Width = 121
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 584
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
      object ComboBox1: TComboBox
        Left = 484
        Top = 8
        Width = 82
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 25
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'VA12'
        Items.Strings = (
          'VA12')
      end
      object CheckBox1: TCheckBox
        Left = 672
        Top = 24
        Width = 193
        Height = 17
        Caption = 'HideOrderNOList'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 48
        Width = 1059
        Height = 33
        DataField = 'MatDes'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 80
        Width = 1060
        Height = 33
        DataField = 'MatTWDes'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 112
        Width = 1060
        Height = 33
        DataField = 'PartDes'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 144
        Width = 1060
        Height = 33
        DataField = 'PartTWDes'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 193
      Width = 592
      Height = 436
      Align = alLeft
      Caption = 'Panel3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 590
        Height = 434
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -20
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -20
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Buyno'
            Footers = <>
            Title.Caption = 'BuyNO'
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'OrderNO'
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 157
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Title.Caption = 'Paris'
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'Xiexing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Shehao'
            Footers = <>
            Width = 70
          end>
      end
    end
    object Panel4: TPanel
      Left = 593
      Top = 193
      Width = 1026
      Height = 436
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 2
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 1
        Width = 1024
        Height = 434
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -20
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'OrderNO'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'MatNO'
            Footers = <>
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'Part'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'MatDes'
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'MatTWDes'
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'PartDes'
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'PartTWDes'
            Footers = <>
            Width = 2
          end
          item
            DisplayFormat = 'yyyy/mm/DD'
            EditButtons = <>
            FieldName = 'ETD'
            Footers = <>
            Width = 106
          end
          item
            DisplayFormat = 'yyyy/mm/DD'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Width = 101
          end
          item
            DisplayFormat = 'yyyy/mm/DD'
            EditButtons = <>
            FieldName = 'Arrivedate'
            Footers = <>
            Width = 110
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'KCLLQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PurchaseNO'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select top 3000 Buyno,DDBH,Article,pairs,Xiexing,Shehao from ddz' +
        'l where gsbh='#39'VA12'#39' order by userdate desc')
    Left = 137
    Top = 321
    object Query1Buyno: TStringField
      FieldName = 'Buyno'
      FixedChar = True
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query1Xiexing: TStringField
      FieldName = 'Xiexing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 145
    Top = 289
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select  zlzls2.zlbh as OrderNO,zlzls2.clbh MatNO,zlzls2.bwbh Par' +
        't,clzl.ywpm MatDes,bwzl.ywsm PartDes,cgzlss.yqdate ETD,cgzlss.CF' +
        'MDate,cgzlss.cgno PurchaseNO,cgzlss.Arrivedate,kclls.Qty KCLLQty' +
        ',bwzl.zwsm PartTWDes,clzl.zwpm MatTWDes from zlzls2  '
      'left join clzl on clzl.cldh=zlzls2.clbh'
      'left join bwzl on bwzl.bwdh=zlzls2.bwbh'
      
        'left join (select cgzlss.cgno,cgzlss.clbh,cgzlss.zlbh,cgzlss.yqd' +
        'ate,cgzlss.cfmdate,cgzlss.userdate,kcrks.userdate as arrivedate ' +
        'from cgzlss'
      
        #9#9'left join kcrks on kcrks.docno=cgzlss.cgno and kcrks.clbh=cgzl' +
        'ss.clbh)cgzlss on cgzlss.clbh=zlzls2.clbh and cgzlss.zlbh=zlzls2' +
        '.zlbh'
      
        'left join kclls on kclls.scbh=zlzls2.zlbh and kclls.clbh=zlzls2.' +
        'clbh'
      'where zlzls2.zlbh='#39'Y1904-0418'#39' '
      
        'group by zlzls2.zlbh,zlzls2.clbh,zlzls2.bwbh,clzl.ywpm,bwzl.ywsm' +
        ',cgzlss.yqdate,cgzlss.cfmdate,cgzlss.cgno,cgzlss.Arrivedate,kcll' +
        's.qty,bwzl.zwsm,clzl.zwpm ')
    Left = 649
    Top = 305
    object Query2OrderNO: TStringField
      FieldName = 'OrderNO'
      FixedChar = True
      Size = 15
    end
    object Query2MatNO: TStringField
      FieldName = 'MatNO'
      FixedChar = True
      Size = 10
    end
    object Query2Part: TStringField
      FieldName = 'Part'
      FixedChar = True
      Size = 4
    end
    object Query2MatDes: TStringField
      FieldName = 'MatDes'
      FixedChar = True
      Size = 200
    end
    object Query2MatTWDes: TStringField
      FieldName = 'MatTWDes'
      FixedChar = True
      Size = 200
    end
    object Query2PartDes: TStringField
      FieldName = 'PartDes'
      FixedChar = True
      Size = 40
    end
    object Query2PartTWDes: TStringField
      FieldName = 'PartTWDes'
      FixedChar = True
      Size = 40
    end
    object Query2ETD: TDateTimeField
      FieldName = 'ETD'
    end
    object Query2CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query2PurchaseNO: TStringField
      FieldName = 'PurchaseNO'
      FixedChar = True
      Size = 11
    end
    object Query2Arrivedate: TDateTimeField
      FieldName = 'Arrivedate'
    end
    object Query2KCLLQty: TCurrencyField
      FieldName = 'KCLLQty'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 649
    Top = 257
  end
end
