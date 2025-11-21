object Dest_BW_CL_CS: TDest_BW_CL_CS
  Left = 302
  Top = 550
  Width = 1272
  Height = 480
  Caption = 'Dest_BW_CL_CS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 49
    Width = 1256
    Height = 392
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
        FieldName = 'Dest'
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
        FieldName = 'Destination'
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
        Width = 150
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
        Width = 130
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
        Width = 250
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
    Width = 1256
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
      Left = 517
      Top = 24
      Width = 60
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
      Left = 354
      Top = 24
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
      Left = 735
      Top = 24
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
      Left = 8
      Top = 24
      Width = 51
      Height = 16
      Caption = 'DestNO:'
    end
    object Label5: TLabel
      Left = 152
      Top = 24
      Width = 40
      Height = 16
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 924
      Top = 8
      Width = 88
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 585
      Top = 16
      Width = 155
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 808
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 432
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1043
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
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 208
      Top = 16
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select '#39'ZZZZZZZZZ'#39' XieXing,'#39'ZZZ'#39' SheHao,xxzls.BWBH,BWZL.YWSM,isn' +
        'ull(xxzls.CSBH,'#39#39') CSBH, isnull(ZSZL.ZSYWJC,'#39#39') ZSYWJC,xxzls.CLB' +
        'H,CLZL.YWPM,CLZL.DWBH,xxzls.CLSL,count(xxzls.BWBH) cou'
      'FROM xxzls'
      
        'left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XX' +
        'ZL.SheHao '
      
        'left join DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZ' +
        'LS.SheHao'
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      'left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'left join ZSZL on XXZLS.CSBH=ZSZL.ZSDH'
      
        'where (left(xxzls.CLBH,1) = '#39'H'#39' or left(xxzls.CLBH,1) = '#39'L'#39') and' +
        ' isnull(DDZL.Dest,'#39#39')<>'#39#39' and DDZL.GSBH='#39'VA12'#39' and XXZLS.BWLB='#39#39 +
        '3'#39#39
      
        'and not exists(select bwbh from xxzlssvn where xxzlssvn.bwbh=xxz' +
        'lss.bwbh and XieXing='#39'ZZZZZZZZZ'#39' and SheHao='#39'ZZZ'#39')'
      
        'group by xxzls.BWBH,BWZL.YWSM,xxzls.CSBH,ZSZL.ZSYWJC,xxzls.CLBH,' +
        'CLZL.YWPM,CLZL.DWBH,xxzls.CLSL'
      'having count(xxzls.BWBH)>1')
    Left = 404
    Top = 128
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
    object XXZLSXieXing: TStringField
      FieldName = 'XieXing'
    end
    object XXZLSSheHao: TStringField
      FieldName = 'SheHao'
    end
    object XXZLSDest: TStringField
      FieldName = 'Dest'
    end
    object XXZLSDestination: TStringField
      FieldName = 'Destination'
    end
  end
  object DS: TDataSource
    DataSet = XXZLS
    Left = 404
    Top = 160
  end
end
