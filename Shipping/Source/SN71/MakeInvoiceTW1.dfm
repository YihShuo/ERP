object MakeInvoiceTW: TMakeInvoiceTW
  Left = 96
  Top = 136
  Width = 1277
  Height = 742
  Caption = 'MakeInvoiceTW'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 665
    Top = 0
    Height = 703
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 703
    Align = alLeft
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 97
      Width = 663
      Height = 605
      Align = alClient
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      UseMultiTitle = True
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'clpm'
          Footer.FieldName = 'clpm'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Name'
          Width = 401
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          Title.Caption = 'Unit'
        end
        item
          EditButtons = <>
          FieldName = 'ck_qty'
          Footers = <>
          Title.Caption = 'Q/ctn.'
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'ctn'
          Footers = <>
          Title.Caption = 'Ctns'
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'No_SE'
          Footers = <>
          Title.Caption = 'C/NO'
          Width = 88
        end
        item
          EditButtons = <>
          FieldName = 'nw'
          Footers = <>
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'tnw'
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'gw'
          Footers = <>
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'tgw'
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'py_dj'
          Footers = <>
          Title.Caption = 'Unit-Price'
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'py_tdj'
          Footer.FieldName = 'py_tdj'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Amount'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'Memo'
          Footers = <>
          Title.Caption = 'Note'
          Width = 321
        end
        item
          EditButtons = <>
          FieldName = 'pp'
          Footers = <>
          Title.Caption = 'Logo'
          Width = 104
        end
        item
          EditButtons = <>
          FieldName = 'pzbh'
          Footers = <>
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'made'
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ywsm'
          Footers = <>
          Title.Caption = 'Country'
          Width = 58
        end>
    end
    object EditPanel: TPanel
      Left = 1
      Top = 1
      Width = 663
      Height = 96
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 11
        Top = 35
        Width = 40
        Height = 16
        Caption = 'Name:'
      end
      object Label4: TLabel
        Left = 19
        Top = 7
        Width = 32
        Height = 16
        Caption = 'Date:'
      end
      object Label5: TLabel
        Left = 185
        Top = 6
        Width = 54
        Height = 16
        Caption = 'Con_NO:'
      end
      object Label7: TLabel
        Left = 10
        Top = 61
        Width = 41
        Height = 16
        Caption = 'Memo:'
      end
      object DBEdit1: TDBEdit
        Left = 55
        Top = 32
        Width = 602
        Height = 24
        Color = clYellow
        DataField = 'clpm'
        DataSource = DS1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 55
        Top = 4
        Width = 98
        Height = 24
        DataField = 'con_date'
        DataSource = DS1
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 244
        Top = 4
        Width = 141
        Height = 24
        DataField = 'con_no'
        DataSource = DS1
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 54
        Top = 58
        Width = 602
        Height = 24
        DataField = 'Memo'
        DataSource = DS1
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 668
    Top = 0
    Width = 593
    Height = 703
    Align = alClient
    Caption = 'Make Invoice'
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 1
    object Label6: TLabel
      Left = 15
      Top = 343
      Width = 96
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'INV NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 58
      Width = 96
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 103
      Width = 96
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = -24
      Top = 143
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Shipped by:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 179
      Width = 314
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'For account and risk of messers:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = -9
      Top = 255
      Width = 118
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Currency :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 99
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CON_NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 297
      Top = 15
      Width = 31
      Height = 32
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object Label12: TLabel
      Left = -13
      Top = 293
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desc Goods:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object INV_NOEdit: TEdit
      Left = 118
      Top = 339
      Width = 185
      Height = 32
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object FROM_WHEREComBo: TComboBox
      Left = 111
      Top = 54
      Width = 233
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 1
      Text = 'TAICHUNG, TAIWAN'
    end
    object TO_WHEREComBo: TComboBox
      Left = 111
      Top = 99
      Width = 241
      Height = 32
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 2
      Text = 'HOCHIMINH CITY'
      Items.Strings = (
        'HOCHIMINH CITY')
    end
    object SHIP_BYCombo: TComboBox
      Left = 110
      Top = 139
      Width = 297
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 3
      Text = 'CHEER ACCESS LTD.'
      Items.Strings = (
        'CHEER ACCESS LTD.')
    end
    object RISKCombo: TComboBox
      Left = 39
      Top = 211
      Width = 329
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'VINH LONG FOOTWEAR CO.,LTD'
      Items.Strings = (
        'VINH LONG FOOTWEAR CO.,LTD')
    end
    object MakeInvoice_Btn: TButton
      Left = 40
      Top = 381
      Width = 289
      Height = 65
      Caption = 'Make Invoice && Packing List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = MakeInvoice_BtnClick
    end
    object Button2: TButton
      Left = 336
      Top = 381
      Width = 75
      Height = 65
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object cbo_Currency: TComboBox
      Left = 118
      Top = 251
      Width = 81
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'USD'
      Items.Strings = (
        'USD'
        'VND'
        'EUR')
    end
    object Con_NOEdit: TEdit
      Left = 111
      Top = 15
      Width = 185
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = '1110811-6A'
    end
    object DescGoodsCombo: TComboBox
      Left = 118
      Top = 291
      Width = 411
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 9
      Text = 'RAW MATERIAL OF SHOES'
      Items.Strings = (
        'RAW MATERIAL OF SHOES'
        'MACHINE & PARTS FOR MAKING SHOES')
    end
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      
        'Select HGZL.con_date,hgzls.con_no,hgzls.XH, hgzls.clpm,hgzls.dwb' +
        'h,hgzls.ck_qty,'
      
        '       Case when hgzls.ctn<>0 then hgzls.ctn else null end ctn ,' +
        'case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck' +
        '_qty end Quantity,'
      
        #9'      hgzls.no_s,hgzls.No_e, hgzls.mark+'#39' '#39'+Convert(varchar,hgz' +
        'ls.no_s)+'#39'-'#39'+hgzls.mark+'#39' '#39'+convert(varchar,hgzls.no_e) as No_SE' +
        ','
      
        #9'      case when hgzls.nw<>0 then hgzls.nw else null end as nw,c' +
        'ase when hgzls.nw<>0 then hgzls.nw*hgzls.ctn else null end as tn' +
        'w, '
      
        #9'      case when hgzls.gw<>0 then hgzls.gw else null end as gw,c' +
        'ase when hgzls.nw<>0 then hgzls.gw*hgzls.ctn else null end as tg' +
        'w, '
      
        '            hgzls.py_dj,hgzls.py_dj*(case when hgzls.ctn<>0 then' +
        ' hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end) as py_tdj,exzl.ex' +
        'lb,'
      
        #9'      Case when exzl.exlb='#39'A'#39' then exzls.CLDH+exzls.wide+hgzls.' +
        'memo else clzl.zwpm+hgzls.memo end as Memo,'
      
        #9'      EXZLS.pp,EXZLS.pzbh,EXZLS.made,hgzls.clbh,EXZLS.cldh as e' +
        'x_cldh,INVOICE_D_TW.INV_NO ,LBZLS.ywsm'
      'FROM hgzls  '
      'LEFT JOIN HGZL ON hgzls.con_no = hgzl.con_no '
      
        'LEFT JOIN EXZLS  ON substring(hgzls.clbh,1,10) = EXZLS.exno and ' +
        'substring(hgzls.clbh,11,3) = EXZLS.xh '
      'LEFT JOIN clzl  ON EXZLS.cldh = clzl.cldh '
      'LEFT JOIN exzl  ON EXZLS.exno = exzl.exno '
      
        'LEFT JOIN INVOICE_D_TW on INVOICE_D_TW.CON_NO=hgzls.con_no and I' +
        'NVOICE_D_TW.clbh=hgzls.clbh '
      
        'Left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.lbdh=SUBSTRING(EXZLS.' +
        'made,1,CHARINDEX('#39':'#39',EXZLS.made)-1)'
      'where 1=1 '
      ' and hgzls.con_no = '#39'220816-K'#39' '
      ' and HGZL.CQDH in ('#39'FNG'#39','#39'FNS'#39')'
      'ORDER BY HGZL.con_date,hgzls.con_no , hgzls.xh')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 152
    object Query1con_date: TStringField
      DisplayWidth = 12
      FieldName = 'con_date'
      FixedChar = True
      Size = 8
    end
    object Query1con_no: TStringField
      DisplayWidth = 13
      FieldName = 'con_no'
      FixedChar = True
    end
    object Query1XH: TStringField
      DisplayWidth = 4
      FieldName = 'XH'
      FixedChar = True
      Size = 4
    end
    object Query1clpm: TStringField
      DisplayWidth = 200
      FieldName = 'clpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 4
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1ck_qty: TFloatField
      DisplayWidth = 10
      FieldName = 'ck_qty'
    end
    object Query1ctn: TSmallintField
      DisplayWidth = 10
      FieldName = 'ctn'
    end
    object Query1Quantity: TFloatField
      DisplayWidth = 10
      FieldName = 'Quantity'
    end
    object Query1No_SE: TStringField
      DisplayWidth = 75
      FieldName = 'No_SE'
      FixedChar = True
      Size = 75
    end
    object Query1no_s: TSmallintField
      DisplayWidth = 10
      FieldName = 'no_s'
    end
    object Query1No_e: TSmallintField
      DisplayWidth = 10
      FieldName = 'No_e'
    end
    object Query1nw: TFloatField
      DisplayWidth = 10
      FieldName = 'nw'
    end
    object Query1tnw: TFloatField
      DisplayWidth = 10
      FieldName = 'tnw'
    end
    object Query1gw: TFloatField
      DisplayWidth = 10
      FieldName = 'gw'
    end
    object Query1tgw: TFloatField
      DisplayWidth = 10
      FieldName = 'tgw'
    end
    object Query1py_dj: TFloatField
      DisplayWidth = 10
      FieldName = 'py_dj'
    end
    object Query1py_tdj: TFloatField
      DisplayWidth = 10
      FieldName = 'py_tdj'
    end
    object Query1exlb: TStringField
      DisplayWidth = 1
      FieldName = 'exlb'
      FixedChar = True
      Size = 1
    end
    object Query1Memo: TStringField
      DisplayWidth = 255
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object Query1pp: TStringField
      DisplayWidth = 20
      FieldName = 'pp'
      FixedChar = True
    end
    object Query1pzbh: TStringField
      DisplayWidth = 100
      FieldName = 'pzbh'
      FixedChar = True
      Size = 100
    end
    object Query1made: TStringField
      DisplayWidth = 30
      FieldName = 'made'
      FixedChar = True
      Size = 30
    end
    object Query1clbh: TStringField
      DisplayWidth = 13
      FieldName = 'clbh'
      FixedChar = True
      Size = 13
    end
    object Query1ex_cldh: TStringField
      DisplayWidth = 200
      FieldName = 'ex_cldh'
      FixedChar = True
      Size = 200
    end
    object Query1INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object Query1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 184
  end
  object UpdateSQL1: TUpdateSQL
    DeleteSQL.Strings = (
      '')
    Left = 424
    Top = 216
  end
  object qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 384
    Top = 153
  end
end
