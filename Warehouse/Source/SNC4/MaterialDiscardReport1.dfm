object MaterialDiscardReport: TMaterialDiscardReport
  Left = 383
  Top = 291
  Width = 1437
  Height = 675
  Caption = 'Material Discard Report'
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
    Width = 1421
    Height = 137
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 49
      Width = 89
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material ID: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 23
      Top = 16
      Width = 72
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 221
      Top = 16
      Width = 20
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 246
      Top = 50
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 371
      Top = 15
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 85
      Width = 89
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Name: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 245
      Top = 85
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 102
      Top = 45
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 472
      Top = 40
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 560
      Top = 40
      Width = 75
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 101
      Top = 12
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 252
      Top = 11
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 321
      Top = 46
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CB1: TComboBox
      Left = 448
      Top = 11
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      Text = 'ALL'
    end
    object Edit4: TEdit
      Left = 102
      Top = 80
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 321
      Top = 78
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 137
    Width = 1421
    Height = 499
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end>
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KCLL.LLNO,KCLL.CKBH,KCLL.DepID,DepName,CFMDate,KCLLS.CLBH' +
        ',YWPM,ZWPM,DWBH,KCLLS.Qty,KCLLS.VNPrice_HG as VNPrice, KCLLS.VNA' +
        'CC_HG as VNACC'
      'From KCLLS'
      'Left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'Left join BDepartment on BDepartment.ID=KCLL.DepID '
      'Left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      
        'Where  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) ' +
        'between '#39'2024/02/21'#39'  and '#39'2024/02/21'#39
      'and KCLL.CFMID<>'#39'NO'#39
      'and isnull(KCLL.BP,0)=1'
      'Union All'
      
        'Select KCLL.LLNO,KCLL.CKBH,KCLL.DepID,DepName,CFMDate,KCLLS.CLBH' +
        ',YWPM,ZWPM,DWBH,KCLLS.Qty,'#39#39' as VNPrice, '#39#39' as VNACC'
      'From KCLLS_FOC KCLLS'
      'Left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO '
      'Left join BDepartment on BDepartment.ID=KCLL.DepID '
      'Left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      
        'Where  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) ' +
        'between '#39'2024/02/21'#39'  and '#39'2024/02/21'#39
      'and KCLL.CFMID<>'#39'NO'#39
      'and isnull(KCLL.BP,0)=1')
    Left = 560
    Top = 232
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KCLLDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object KCLLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object KCLLCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object KCLLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCLLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
    end
    object KCLLVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object KCLLVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 592
    Top = 232
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 560
    Top = 264
  end
end
