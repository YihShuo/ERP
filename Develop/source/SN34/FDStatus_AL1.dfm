object FDStatus_AL: TFDStatus_AL
  Left = 235
  Top = 222
  Width = 809
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'FDStatus_AL'
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
      Left = 26
      Top = 12
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 342
      Top = 12
      Width = 59
      Height = 20
      Caption = 'Mat. No:'
    end
    object Label3: TLabel
      Left = 191
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
      Left = 550
      Top = 12
      Width = 33
      Height = 20
      Caption = 'Unit:'
    end
    object Edit1: TEdit
      Left = 86
      Top = 7
      Width = 90
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
    object Edit2: TEdit
      Left = 404
      Top = 6
      Width = 129
      Height = 28
      ReadOnly = True
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 239
      Top = 7
      Width = 90
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 86
      Top = 43
      Width = 707
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Button1: TButton
      Left = 714
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 586
      Top = 6
      Width = 87
      Height = 28
      ReadOnly = True
      TabOrder = 1
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 793
    Height = 311
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
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
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footer.FieldName = 'article'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'PurQty'
        Footers = <
          item
            FieldName = 'PurQty'
            ValueType = fvtSum
          end>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'cgdate'
        Footers = <>
        Title.TitleButton = True
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'yqdate'
        Footers = <>
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
    SQL.Strings = (
      
        'select xxzlkf.FD,ypzl.article,cg.PurQty,cg.cgdate,cg.yqdate,cg.r' +
        'kdate from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzl on xxzl.xiexing=xxzlkf.xiexing and xxzl.shehao=xx' +
        'zlkf.shehao'
      'left join '
      
        '(select cs.zlbh,sum(cs.Qty) as PurQty, min(cgzl.cgdate)as cgdate' +
        ', min(cgzls.yqdate) as yqdate, min(KCRK.Userdate) as rkdate from' +
        ' cgzlss cs'
      'left join cgzl on cgzl.cgno=cs.cgno'
      'left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      'left join kcrk on kcrk.zsno=cs.cgno'
      
        'where cgzl.season='#39'SS11'#39' and cgzl.purpose='#39'SMS'#39' and cs.clbh='#39'A10' +
        '1010101'#39
      'group by cs.zlbh) cg on cg.zlbh=ypzl.article'
      'where 1=2'
      
        'group by xxzlkf.FD,ypzl.article,cg.PurQty,cg.cgdate,cg.yqdate,cg' +
        '.rkdate'
      'order by ypzl.article')
    Left = 424
    Top = 160
    object strngfldQuery1article: TStringField
      DisplayLabel = 'Article'
      FieldName = 'article'
      FixedChar = True
    end
    object dtmfldQuery1cgdate: TDateTimeField
      DisplayLabel = 'Pur Date'
      FieldName = 'cgdate'
    end
    object dtmfldQuery1yqdate: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object strngfldQuery1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1PurQty: TCurrencyField
      FieldName = 'PurQty'
      DisplayFormat = '#,#'
    end
  end
end
