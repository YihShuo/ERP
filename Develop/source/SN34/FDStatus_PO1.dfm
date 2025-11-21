object FDStatus_PO: TFDStatus_PO
  Left = 288
  Top = 178
  Width = 974
  Height = 491
  BorderIcons = [biSystemMenu]
  Caption = 'FDStatus_PO'
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
    Width = 958
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
      Left = 26
      Top = 12
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 260
      Top = 12
      Width = 52
      Height = 20
      Caption = 'Mat.ID:'
    end
    object Label3: TLabel
      Left = 151
      Top = 12
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label4: TLabel
      Left = 2
      Top = 46
      Width = 81
      Height = 20
      Caption = 'Mat. Name:'
    end
    object Label5: TLabel
      Left = 422
      Top = 12
      Width = 33
      Height = 20
      Caption = 'Unit:'
    end
    object Label6: TLabel
      Left = 510
      Top = 11
      Width = 26
      Height = 20
      Caption = 'FD:'
    end
    object Label7: TLabel
      Left = 636
      Top = 11
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Edit1: TEdit
      Left = 86
      Top = 7
      Width = 58
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 314
      Top = 6
      Width = 96
      Height = 28
      ReadOnly = True
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 199
      Top = 7
      Width = 55
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 86
      Top = 43
      Width = 779
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object Button1: TButton
      Left = 789
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 456
      Top = 6
      Width = 44
      Height = 28
      ReadOnly = True
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 538
      Top = 6
      Width = 80
      Height = 28
      ReadOnly = True
      TabOrder = 2
    end
    object Edit7: TEdit
      Left = 686
      Top = 6
      Width = 80
      Height = 28
      ReadOnly = True
      TabOrder = 3
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 958
    Height = 372
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
        FieldName = 'CGNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'season'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'STAGE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'FD'
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
        FieldName = 'Qty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'cgdate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'yqdate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'ETA'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'rkdate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = FDStatus.ds1
    SQL.Strings = (
      
        '     select CS.CGNO,cgzl.season,CS.STAGE,CS.ZLBH AS ARTICLE,xxzl' +
        'kf.FD,CS.Qty,cgzl.cgdate,cgzlS.yqdate,kcrk.Userdate as rkdate,cg' +
        'zls.ETA '
      '            from cgzlss CS'
      '            left join cgzl on cgzl.cgno=cs.cgno'
      
        '            left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh' +
        '=cs.clbh'
      
        '            left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.User' +
        'date) as Userdate FROM kcrk,KCRKS WHERE kcrk.RKNO=KCRKS.RKNO gro' +
        'up by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cs.cgno and kcrk.c' +
        'lbh=cs.clbh'
      '            left join kfxxzl on KFxxzl.ARTICLE=CS.ZLBH'
      
        '            left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing an' +
        'd kfxxzl.shehao=xxzlkf.shehao'
      '            where 1=2'
      '')
    Left = 424
    Top = 160
    object Query1season: TStringField
      DisplayLabel = 'Season'
      FieldName = 'season'
      FixedChar = True
    end
    object Query1STAGE: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'STAGE'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 15
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,#'
    end
    object Query1cgdate: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object Query1yqdate: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object Query1rkdate: TDateTimeField
      DisplayLabel = 'Debt Note Date'
      FieldName = 'rkdate'
    end
    object Query1CGNO: TStringField
      DisplayLabel = 'Purchase Order'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1ETA: TDateTimeField
      FieldName = 'ETA'
    end
  end
end
