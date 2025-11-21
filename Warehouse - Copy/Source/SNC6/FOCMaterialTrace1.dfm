object FOCMaterialTrace: TFOCMaterialTrace
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'FOCMaterialTrace'
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
  object Splitter1: TSplitter
    Left = 561
    Top = 52
    Width = 5
    Height = 584
    Color = clHotLight
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 52
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 20
      Width = 91
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material code : '
    end
    object Label6: TLabel
      Left = 429
      Top = 20
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label5: TLabel
      Left = 597
      Top = 20
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label8: TLabel
      Left = 246
      Top = 20
      Width = 49
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO No:'
    end
    object Edit1: TEdit
      Left = 107
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
    end
    object Button1: TButton
      Left = 767
      Top = 10
      Width = 75
      Height = 33
      Caption = 'Search'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 485
      Top = 16
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 621
      Top = 16
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 3
    end
    object CGNOEdit: TEdit
      Left = 298
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button2: TButton
      Left = 850
      Top = 10
      Width = 75
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 566
    Top = 52
    Width = 723
    Height = 584
    Align = alClient
    Color = clWhite
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#21934#34399'|LLNO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #26085#26399'|DATE'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #39006#22411#25110#21934#20301'|Memo'
        Width = 119
      end>
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 52
    Width = 561
    Height = 584
    Align = alLeft
    Color = clWhite
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830'ID|ZSBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20837#24235#26085'|DATE'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #30906#35469'ID|USERID'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #39006#22411'|Memo'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'PaperNo'
        Footers = <>
        Title.Caption = #25991#20214'|PaperNo'
        Width = 74
      end>
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.RKNO,KCRK.ZSBH,KCRK.USERDATE,KCRKS.Qty,KCRK.USERID,K' +
        'CRK.ZSNO as Memo,KCRK.Memo as PaperNo'
      'from KCRKS_FOC KCRKS'
      'left join KCRK_FOC KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where KCRKS.CLBH='#39'A110026707'#39
      'and KCRK.CKBH='#39'FOC'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '#39'2025/02/01'#39' and '#39'2025/02/11'#39
      'order by KCRK.USERDATE'
      '')
    Left = 160
    Top = 216
    object KCRKRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
    end
    object KCRKUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKPaperNo: TStringField
      FieldName = 'PaperNo'
      FixedChar = True
      Size = 150
    end
  end
  object DS1: TDataSource
    DataSet = KCRK
    Left = 160
    Top = 248
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLLS.Qty,KCLL.CFMID,BDepartment.D' +
        'epName as Memo '
      'from KCLLS_FOC KCLLS'
      'left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'where  KCLLS.CLBH='#39'A110026707'#39
      'and KCLL.CKBH='#39'FOC'#39
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) bet' +
        'ween '#39'2025/02/01'#39' and '#39'2025/02/11'#39
      'order by KCLL.CFMDate')
    Left = 592
    Top = 216
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
    end
    object KCLLCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 592
    Top = 248
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 280
    object EXCEL1: TMenuItem
      Caption = 'Excel'
    end
    object JGDet1: TMenuItem
      Caption = 'JGDet'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 280
    object EXCEL2: TMenuItem
      Caption = 'EXCEL'
    end
    object JGDet2: TMenuItem
      Caption = 'JGDet'
    end
  end
end
