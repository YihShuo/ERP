object ScanCheck: TScanCheck
  Left = 421
  Top = 52
  Width = 1380
  Height = 643
  Caption = 'ScanCheck'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 19
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 256
      Top = 19
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 216
      Top = 59
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNO:'
    end
    object Label5: TLabel
      Left = 537
      Top = 18
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GXLB:'
    end
    object Label6: TLabel
      Left = 432
      Top = 59
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Barcode:'
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 16
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 16
      Width = 89
      Height = 24
      Date = 39983.000011574070000000
      Format = 'HH:mm:ss'
      Time = 39983.000011574070000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Button1: TButton
      Left = 648
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 88
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 296
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object DTP3: TDateTimePicker
      Left = 280
      Top = 16
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 384
      Top = 16
      Width = 89
      Height = 24
      Date = 39983.999988425930000000
      Format = 'HH:mm:ss'
      Time = 39983.999988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object CBX4: TComboBox
      Left = 576
      Top = 15
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
    end
    object Button2: TButton
      Left = 648
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 512
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object CheckBox1: TCheckBox
      Left = 736
      Top = 58
      Width = 97
      Height = 17
      Caption = 'okCTS<CTS'
      TabOrder = 10
    end
    object SMZLChk: TCheckBox
      Left = 2
      Top = 19
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Button3: TButton
      Left = 744
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query TT'
      TabOrder = 12
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1364
    Height = 515
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.TitleButton = True
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.TitleButton = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.TitleButton = True
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.TitleButton = True
        Width = 23
      end
      item
        EditButtons = <>
        FieldName = 'Components'
        Footers = <>
        Width = 80
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 25
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'CTS'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 32
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'TotQty'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'TotQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 44
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'okCTS'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'okCTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 46
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'TotokQty'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'TotokQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 56
      end
      item
        Color = 8716287
        EditButtons = <>
        FieldName = 'NowokCTS'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'NowokCTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 61
      end
      item
        Color = 8716287
        EditButtons = <>
        FieldName = 'NowokQty'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'NowokQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = SMZL
    Left = 360
    Top = 120
  end
  object SMZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMDDSS.DDBH,BDepartment.DepName,SMDDSS.GXLB,SMDDSS.XXCC,S' +
        'MDDSS.XH,SMDD.Article,SMDD.XieMing,'
      
        '       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMD' +
        'DSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty'
      
        '       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as No' +
        'wokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as Scan' +
        'Date '
      'from SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      'where BDepartment.DepName like '#39'%%'#39' '
      '      and SMDDSS.DDBH like '#39'%'#39' '
      '      and SMDDSS.GXLB='#39'C'#39
      '      and SMDDSS.CODEBAR='#39'00000032'#39
      '      and SMZL.ScanDate between '
      '           '#39'2022/05/01 00:00:00'#39
      '           and '#39'2022/05/18 23:59:59'#39
      
        'group by SMDDSS.GXLB,SMDDSS.DDBH,BDepartment.DepName,SMDDSS.XXCC' +
        ',SMDDSS.XH,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDS' +
        'S.okCTS'
      
        'order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Arti' +
        'cle,SMDD.XieMing')
    Left = 392
    Top = 120
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object SMZLComponents: TIntegerField
      FieldName = 'Components'
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object SMZLTotQty: TIntegerField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0'
    end
    object SMZLokCTS: TIntegerField
      FieldName = 'okCTS'
      DisplayFormat = '##,#0'
    end
    object SMZLTotokQty: TIntegerField
      FieldName = 'TotokQty'
      DisplayFormat = '##,#0'
    end
    object SMZLNowokCTS: TIntegerField
      FieldName = 'NowokCTS'
      DisplayFormat = '##,#0'
    end
    object SMZLNowokQty: TIntegerField
      FieldName = 'NowokQty'
      DisplayFormat = '##,#0'
    end
    object SMZLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 360
    Top = 152
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B544461746574696D655D0D0A5C706172207D
      0D0A00}
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 152
  end
end
