object Pursample_BW: TPursample_BW
  Left = 334
  Top = 187
  Width = 809
  Height = 369
  BorderIcons = [biSystemMenu]
  Caption = 'Pursample_BW'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 210
      Top = 14
      Width = 59
      Height = 20
      Caption = 'Mat. No:'
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 51
      Height = 20
      Caption = 'Stage :'
    end
    object Label4: TLabel
      Left = 194
      Top = 46
      Width = 81
      Height = 20
      Caption = 'Mat. Name:'
    end
    object Edit1: TEdit
      Left = 76
      Top = 7
      Width = 113
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 281
      Top = 8
      Width = 193
      Height = 28
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 76
      Top = 39
      Width = 113
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 281
      Top = 40
      Width = 504
      Height = 28
      ReadOnly = True
      TabOrder = 3
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 793
    Height = 250
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'article'
        Footer.FieldName = 'article'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'xieming'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'bwbh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 182
      end
      item
        EditButtons = <>
        FieldName = 'clsl'
        Footer.FieldName = 'clsl'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample_IM.DS1
    SQL.Strings = (
      
        'select kfxxzl.article,kfxxzl.xieming,ypzls.bwbh,bwzl.ywsm,ypzls.' +
        'clsl from ypzls'
      'left join bwzl on bwzl.bwdh=ypzls.bwbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'where 1=2')
    Left = 424
    Top = 160
    object strngfldQuery1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object strngfldQuery1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object strngfldQuery1bwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 4
    end
    object strngfldQuery1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 30
    end
    object fltfldQuery1clsl: TFloatField
      FieldName = 'clsl'
    end
  end
end
