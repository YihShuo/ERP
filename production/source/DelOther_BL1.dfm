object DelOther_BL: TDelOther_BL
  Left = 458
  Top = 193
  Width = 696
  Height = 477
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_BL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 19
      Width = 94
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BLNO:'
    end
    object Label2: TLabel
      Left = 280
      Top = 18
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 424
      Top = 18
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object DBEdit2: TDBEdit
      Left = 336
      Top = 16
      Width = 89
      Height = 24
      Color = clInactiveBorder
      DataField = 'Article'
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 504
      Top = 16
      Width = 169
      Height = 24
      Color = clInactiveBorder
      DataField = 'XieMing'
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      Text = '2009110001'
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 208
      Top = 8
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 688
    Height = 389
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 194
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'okQty'
      end
      item
        Color = 13290239
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DelOther.DS3
    RequestLive = True
    SQL.Strings = (
      
        'select SCBLS.BLNO,SCBLS.CLBH,CLZL.YWPM,CLZL.DWBH,sum(SCBLS.Qty) ' +
        'as CLSL ,KCZLS.KCQty'
      '          ,isnull(XXBWFLS.DFL,'#39'N'#39') as DFL,KCLLS.Qty'
      'from  SCBLS '
      'left join SCBL on SCBL.BLNO=SCBLS.BLNO'
      'left join DDZL on DDZL.ZLBH=SCBL.ZLBH'
      
        'left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=' +
        'SCBLS.BWBH'
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH'
      'left join BWZL on BWZL.BWDH=SCBLS.BWBH'
      'left join CLZL on CLZL.CLDH=SCBLS.CLBH'
      
        'left join (select MEMO,CLBH,DFL,sum(Qty) as Qty from KCLLS where' +
        ' MEMO=:BLNO group by MEMO,CLBH,DFL ) KCLLS'
      '              on KCLLS.CLBH=SCBLS.CLBH and KCLLS.DFL=XXBWFLS.DFL'
      'left join KCZLS on KCZLS.CLBH=SCBLS.CLBH and KCZLS.CKBH=:CKBH'
      'where SCBL.GSBH=:GSBH'
      '         and SCBLS.BLNO=:BLNO'
      '         and SCBLS.MJBH = '#39'ZZZZZZZZZZ'#39
      
        'group by  SCBLS.BLNO,SCBLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,' +
        'XXBWFLS.DFL,KCLLS.Qty'
      'order by XXBWFLS.DFL,SCBLS.CLBH'
      '')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BLNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftUnknown
        Name = 'BLNO'
        ParamType = ptUnknown
      end>
    object Query1BLNO: TStringField
      FieldName = 'BLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1KCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 232
    Top = 120
  end
end
