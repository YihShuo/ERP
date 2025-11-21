object Equipment_CGZL: TEquipment_CGZL
  Left = 321
  Top = 278
  Caption = 'Equipment_CGZL'
  ClientHeight = 426
  ClientWidth = 1166
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1166
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 13
      Width = 51
      Height = 20
      Caption = 'CGNO:'
    end
    object edtCGNO: TEdit
      Left = 64
      Top = 11
      Width = 113
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnQuery: TButton
      Left = 187
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = btnQueryClick
    end
    object btnCopy: TButton
      Left = 283
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Copy'
      TabOrder = 2
      OnClick = btnCopyClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1166
    Height = 377
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029'ID|SBBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 197
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25976#37327'|Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OkQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24050#20837#24235'|OkQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35215#26684'|QUCBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#34399'|LSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 51
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_YW'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|ZSJC_YW'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_ZW'
        Footers = <>
        Title.Caption = #24288#21830#20013#25991'|ZSJC_ZW'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 176
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_CGZLS.CGNO,TSCD_CGZLS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM' +
        ',TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH,TSCD_CGZLS.Qty,TSCD_CGZ' +
        'LS.VNPrice,TSCD_CGZLS.USPrice'
      
        '       ,IsNull(TSCD_KCRKS.OkQty,0) as OkQty,TSCD_ZSZL.ZSJC_YW,TS' +
        'CD_ZSZL.ZSJC_ZW,TSCD_SB.Memo     '
      'from TSCD_CGZLS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_CGZLS.SBBH'
      'left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_SB.ZSDH '
      
        'left join (Select ZSNO,IsNull(SBBH,'#39#39') as SBBH,IsNull(SUM(Qty),0' +
        ') as OkQty'
      '           from TSCD_KCRK'
      
        '           left join TSCD_KCRKS on TSCD_KCRK.RKNO=TSCD_KCRKS.RKN' +
        'O'
      '           where TSCD_KCRK.ZSNO='#39'20200300002'#39' '
      '           Group by ZSNO,SBBH'
      
        '            ) TSCD_KCRKS on TSCD_KCRKS.ZSNO=TSCD_CGZLS.CGNO and ' +
        'TSCD_KCRKS.SBBH=TSCD_CGZLS.SBBH'
      'where TSCD_CGZLS.CGNO='#39'20200300002'#39' '
      'order by TSCD_CGZLS.CGNO')
    UpdateObject = UpdateSQL1
    Left = 320
    Top = 208
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1LSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object Query1QUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1OkQty: TFloatField
      FieldName = 'OkQty'
    end
    object Query1ZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
    end
    object Query1ZSJC_ZW: TStringField
      FieldName = 'ZSJC_ZW'
      FixedChar = True
      Size = 50
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 320
    Top = 240
  end
end
