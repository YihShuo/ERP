object RWAmount: TRWAmount
  Left = 293
  Top = 98
  Width = 906
  Height = 490
  Caption = 'RWAmount'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 243
    Width = 890
    Height = 209
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TS3: TTabSheet
      Caption = 'PFMas'
      ImageIndex = 2
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 0
        Width = 882
        Height = 178
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
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
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'PFBH1'
            Footers = <>
            ReadOnly = True
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'PFBH2'
            Footers = <>
            ReadOnly = True
            Width = 145
          end
          item
            Checkboxes = False
            Color = clAqua
            EditButtons = <>
            FieldName = 'times'
            Footers = <>
            Width = 120
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'PFDet'
      ImageIndex = 3
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 0
        Width = 882
        Height = 178
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
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
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldhz'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 284
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end>
      end
    end
    object TS5: TTabSheet
      Caption = 'Amount'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 882
        Height = 178
        Align = alClient
        DataSource = DS5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
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
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldhz'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 284
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end>
      end
    end
  end
  object Edit1: TEdit
    Left = 672
    Top = 384
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 1072
      Top = 24
      Width = 36
      Height = 29
      Caption = 'Set'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 616
      Top = 16
      Width = 105
      Height = 41
      Caption = 'SET'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 162
    Width = 890
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 1064
      Top = 24
      Width = 81
      Height = 29
      Caption = 'Amount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 616
      Top = 16
      Width = 105
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 890
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    object Label3: TLabel
      Left = 1072
      Top = 24
      Width = 68
      Height = 29
      Caption = 'Check'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 352
      Top = 32
      Width = 65
      Height = 24
      Caption = 'PFBH1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 608
      Top = 32
      Width = 65
      Height = 24
      Caption = 'PFBH2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 120
      Top = 32
      Width = 57
      Height = 24
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 424
      Top = 25
      Width = 137
      Height = 37
      Color = clScrollBar
      DataField = 'PFBH1'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 680
      Top = 25
      Width = 137
      Height = 37
      Color = clScrollBar
      DataField = 'PFBH2'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 192
      Top = 25
      Width = 137
      Height = 37
      Color = clScrollBar
      DataField = 'gsbh'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object clzlsl: TQuery
    DatabaseName = 'dd'
    DataSource = DS3
    SQL.Strings = (
      
        'select clzlsl.cldh, clzlsl.cldhz, clzl.ywpm, clzl.zwpm, clzlsl.c' +
        'lyl'
      'from clzlsl'
      'left join clzl on clzlsl.cldhz = clzl.cldh'
      'where clzlsl.cldh = :PFBH2'
      '')
    Left = 420
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFBH2'
        ParamType = ptUnknown
      end>
    object clzlslPFBH2: TStringField
      FieldName = 'cldh'
      Size = 16
    end
    object clzlslcldhz: TStringField
      FieldName = 'cldhz'
      Size = 16
    end
    object clzlslywpm: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object clzlslzwpm: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object clzlslclyl: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS4: TDataSource
    DataSet = clzlsl
    Left = 452
    Top = 308
  end
  object DS3: TDataSource
    DataSet = GSPF
    Left = 340
    Top = 308
  end
  object GSPF: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select * from GSPF'
      'where gsbh = '#39'VR2'#39)
    UpdateObject = UpMas
    Left = 308
    Top = 308
    object GSPFgsbh: TStringField
      FieldName = 'gsbh'
      Size = 4
    end
    object GSPFPFBH1: TStringField
      FieldName = 'PFBH1'
      Size = 16
    end
    object GSPFPFBH2: TStringField
      FieldName = 'PFBH2'
      Size = 16
    end
    object GSPFtimes: TIntegerField
      FieldName = 'times'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update GSPF'
      'set'
      '  GSBH = :GSBH,'
      '  PFBH1 = :PFBH1,'
      '  PFBH2 = :PFBH2,'
      '  invisible = :invisible,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '      GSBH = :OLD_GSBH'
      ' and  PFBH1 = :OLD_PFBH1')
    InsertSQL.Strings = (
      'insert into GSPF'
      '  (GSBH, PFBH1, PFBH2, invisible, USERID, USERDATE, YN)'
      'values'
      '  (:GSBH, :PFBH1, :PFBH2, :invisible, :USERID, :USERDATE, :YN)'
      '')
    DeleteSQL.Strings = (
      'delete from GSPF'
      'where'
      '       GSBH = :OLD_GSBH'
      '  and  PFBH1 = :OLD_PFBH1'
      '')
    Left = 308
    Top = 340
  end
  object Amount: TQuery
    DatabaseName = 'dd'
    DataSource = DS3
    SQL.Strings = (
      
        'select  clzlsl.cldhz, clzl.ywpm, clzl.zwpm, sum(clzlsl.clyl) as ' +
        'clyl from '
      '('
      '  select  cldhz, clyl*10 as clyl from clzlsl'
      '  where cldh = '#39'VBR20101'#39' '
      '  union all'
      '  select  cldhz, clyl*20 as clyl from clzlsl'
      '  where cldh = '#39'VCR20101'#39' '
      ') clzlsl'
      'left join clzl on clzl.cldh = clzlsl.cldhz'
      'group by cldhz, clzl.ywpm, clzl.zwpm')
    Left = 532
    Top = 304
    object StringField2: TStringField
      FieldName = 'cldhz'
      Size = 16
    end
    object StringField3: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS5: TDataSource
    DataSet = Amount
    Left = 564
    Top = 308
  end
end
