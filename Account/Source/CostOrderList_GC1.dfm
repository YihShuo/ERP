object CostOrderList_GC: TCostOrderList_GC
  Left = 321
  Top = 199
  Width = 782
  Height = 439
  BorderIcons = [biSystemMenu]
  Caption = 'CostOrderList_GC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 405
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 65
      Width = 772
      Height = 339
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnGetCellParams = DBGrid1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <>
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Width = 203
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'okQty'
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'IPrice'
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <>
          Width = 96
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 772
      Height = 64
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 43
        Height = 16
        Caption = 'OrdNo:'
      end
      object Label2: TLabel
        Left = 176
        Top = 24
        Width = 48
        Height = 16
        Caption = 'XieXing:'
      end
      object Label3: TLabel
        Left = 360
        Top = 24
        Width = 41
        Height = 16
        Caption = 'GSBH:'
      end
      object Edit1: TEdit
        Left = 56
        Top = 16
        Width = 113
        Height = 24
        TabOrder = 0
      end
      object Button1: TButton
        Left = 504
        Top = 16
        Width = 81
        Height = 33
        Caption = 'Query'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 224
        Top = 16
        Width = 121
        Height = 24
        TabOrder = 2
      end
      object CB1: TComboBox
        Left = 408
        Top = 16
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        ItemHeight = 16
        TabOrder = 3
        Text = 'ALL'
        Items.Strings = (
          'ALL')
      end
    end
  end
  object CWDD: TQuery
    CachedUpdates = True
    OnCalcFields = CWDDCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select CWDD.YSBH as DDBH,CWDD.Article,CWDD.XieMing,sum(CWDD.Qty)' +
        ' as Qty,isnull(CWXXCB.JGFY,0) as IPrice'
      '       ,isnull(CWDDOk.okQty,0) as okQty'
      'from CWDD '
      'left join (select DDBH,sum(Qty) as okQty from CWDD '
      '           where YSBH like '#39'%'#39
      '                 and not (CWDD.CWYEAR='#39'2009'#39
      '                 and CWDD.CWMONTH='#39'10'#39')'
      '                 and CWDD.GSBH='#39'VGC'#39
      '           group by DDBH) CWDDok on CWDDok.DDBH=CWDD.YSBH '
      'left join DDZL on DDZL.DDBH=CWDD.YSBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao '
      
        'left join CWXXCB on XXZl.XieXing=CWXXCB.XieXing and CWXXCB.SheHa' +
        'o=XXZl.SheHao '
      'where CWDD.CWYEAR='#39'2009'#39
      '      and CWDD.CWMONTH='#39'10'#39
      '      and CWDD.DDBH like '#39'%'#39
      '      and CWDD.XieMing like '#39'%%'#39
      '      and CWDD.SB='#39'1'#39
      
        'group by CWDD.YSBH,CWDD.Article,CWDD.XieMing,CWDD.GSBH,CWDDOk.ok' +
        'Qty,CWXXCB.JGFY'
      'order by CWDD.YSBH,CWDD.Article,CWDD.XieMing ')
    UpdateObject = UpSQL1
    Left = 128
    Top = 208
    object CWDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object CWDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 15
    end
    object CWDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object CWDDQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object CWDDokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object CWDDIPrice: TCurrencyField
      FieldName = 'IPrice'
      DisplayFormat = '##,#0.0000'
    end
    object CWDDUSACC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      DisplayFormat = '##,#0.0000'
      Calculated = True
    end
  end
  object DS1: TDataSource
    DataSet = CWDD
    Left = 160
    Top = 208
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CWDD'
      'set'
      '  CWYEAR = :CWYEAR,'
      '  CWMONTH = :CWMONTH,'
      '  DDBH = :DDBH,'
      '  GSBH = :GSBH,'
      '  YSBH = :YSBH,'
      '  Qty = :Qty,'
      '  IPrice = :IPrice,'
      '  USACC = :USACC,'
      '  CWHL = :CWHL,'
      '  VNACC = :VNACC,'
      '  Article = :Article,'
      '  XieMing = :XieMing,'
      '  MEMO = :MEMO,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate,'
      '  SB = :SB,'
      '  YN = :YN'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  DDBH = :OLD_DDBH and'
      '  GSBH = :OLD_GSBH')
    InsertSQL.Strings = (
      'insert into CWDD'
      
        '  (CWYEAR, CWMONTH, DDBH, GSBH, YSBH, Qty, IPrice, USACC, CWHL, ' +
        'VNACC, '
      '   Article, XieMing, MEMO, USERID, USERDate, SB, YN)'
      'values'
      
        '  (:CWYEAR, :CWMONTH, :DDBH, :GSBH, :YSBH, :Qty, :IPrice, :USACC' +
        ', :CWHL, '
      
        '   :VNACC, :Article, :XieMing, :MEMO, :USERID, :USERDate, :SB, :' +
        'YN)')
    DeleteSQL.Strings = (
      'delete from CWDD'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  DDBH = :OLD_DDBH and'
      '  GSBH = :OLD_GSBH')
    Left = 128
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 217
    object N1: TMenuItem
      Caption = 'Order OK'
      Enabled = False
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 193
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      'Order List Monthly')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 168
    Top = 249
  end
end
