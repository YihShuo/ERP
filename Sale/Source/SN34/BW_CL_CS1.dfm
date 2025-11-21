object BW_CL_CS: TBW_CL_CS
  Left = 191
  Top = 444
  Width = 1162
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'BW_CL_CS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 49
    Width = 1146
    Height = 342
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 200
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1146
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 469
      Top = 13
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 306
      Top = 13
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BWBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 687
      Top = 13
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = -24
      Top = 13
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 152
      Top = 13
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Color:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 892
      Top = 8
      Width = 88
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 545
      Top = 9
      Width = 155
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 760
      Top = 9
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 64
      Top = 9
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = 12320767
      Enabled = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 244
      Top = 9
      Width = 69
      Height = 24
      Color = 12320767
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 384
      Top = 9
      Width = 97
      Height = 24
      TabOrder = 5
    end
    object Button2: TButton
      Left = 995
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DestinationPackingBox_Label.DS1
    SQL.Strings = (
      
        'select distinct XXZLS.XieXing, XXZLS.SheHao,XXZLS.BWBH,BWZL.YWSM' +
        ',XXZLS.CLBH,CLZL.YWPM,CLZL.DWBH,XXZLS.CLSL,'
      
        'isnull(XXZLS.CSBH,'#39#39') CSBH, isnull(ZSZL.ZSYWJC,'#39#39') ZSYWJC,XXZLSS' +
        'VN.CLBH as XXZLSSVN_CLBH,XXZLS.BWLB'
      'from XXZLS '
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      'left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'left join ZSZL on XXZLS.CSBH=ZSZL.ZSDH'
      'left join (select XieXing,SheHao,CLBH,BWBH from  XXZLSSVN '
      'where XieXing=:XieXing and Shehao=:SheHao  '
      'and (CLBH like '#39'H%'#39' or CLBH like '#39'L%'#39') '
      
        'Group by XieXing,SheHao,CLBH,BWBH) XXZLSSVN on XXZLSSVN.XieXing=' +
        'XXZLS.XieXing '
      
        'and XXZLSSVN.SheHao=XXZLS.SheHao and XXZLSSVN.CLBH=XXZLS.CLBH an' +
        'd XXZLSSVN.BWBH=XXZLS.BWBH'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.Shehao=:SheHao and XXZLS.' +
        'BWLB='#39'3'#39
      'and (XXZLS.CLBH like '#39'H%'#39' or XXZLS.CLBH like '#39'L%'#39')')
    Left = 404
    Top = 128
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object XXZLSCSBH: TStringField
      FieldName = 'CSBH'
    end
    object XXZLSZSJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSXXZLSSVN_CLBH: TStringField
      FieldName = 'XXZLSSVN_CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSXieXing: TStringField
      FieldName = 'XieXing'
    end
    object XXZLSSheHao: TStringField
      FieldName = 'SheHao'
    end
  end
  object DS: TDataSource
    DataSet = XXZLS
    Left = 404
    Top = 160
  end
end
