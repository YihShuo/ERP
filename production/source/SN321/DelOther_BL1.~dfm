object DelOther_BL: TDelOther_BL
  Left = 354
  Top = 270
  Width = 1149
  Height = 465
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1133
    Height = 52
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
      Left = 184
      Top = 19
      Width = 94
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MergNO:'
    end
    object Label7: TLabel
      Left = 528
      Top = 20
      Width = 87
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DFL:'
    end
    object Label3: TLabel
      Left = 376
      Top = 19
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object BLNOEdit: TEdit
      Left = 96
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      Text = '2009110001'
      OnKeyPress = BLNOEditKeyPress
    end
    object Button1: TButton
      Left = 696
      Top = 11
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object MergNoEdit: TEdit
      Left = 280
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = BLNOEditKeyPress
    end
    object Button2: TButton
      Left = 776
      Top = 11
      Width = 73
      Height = 33
      Caption = 'COPY'
      TabOrder = 3
      OnClick = Button2Click
    end
    object DFLCombo: TComboBox
      Left = 618
      Top = 16
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        '')
    end
    object CLBHEdit: TEdit
      Left = 448
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = BLNOEditKeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 52
    Width = 1133
    Height = 374
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        FieldName = 'ZLBH'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 93
      end
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
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'okQty'
        Width = 42
      end
      item
        Color = 13290239
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'NK'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'TC'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'HD'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'KD'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'XT'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'GC'
        Footers = <>
        Width = 57
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
      
        'Select SCBL.ZLBH,DDZL.ARTICLE,XXZL.XieMing,SCBLS.BLNO,SCBLS.CLBH' +
        ',CLZL.YWPM,CLZL.DWBH,sum(SCBLS.Qty) as CLSL ,KCZLS.KCQty'
      
        '          ,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC' +
        ',KCZLS.ZZZZ'
      
        '          ,isnull(XXBWFLS.DFL,'#39'N'#39') as DFL,KCLLS.Qty,SCBLYYS.YYBH' +
        ',SCBLYYS.YWSM,DDZL.YN'
      'from  SCBLS '
      'left join SCBL on SCBL.BLNO=SCBLS.BLNO'
      
        'left join (select top 1 SCBLYYS.BLNO,SCBLYYS.YYBH,SCBLYY.YWSM fr' +
        'om SCBLYYS '
      '           left join SCBLYY on SCBLYY.YYBH=SCBLYYS.YYBH'
      '           where 1=1'
      '           -- and BLNO='#39'2009110001'#39
      
        '           and BLNO in (Select distinct BLNO from SCBL where Mer' +
        'gNO='#39'2021040001'#39')) SCBLYYS on SCBLYYS.BLNO=SCBLS.BLNO'
      'left join DDZL on DDZL.ZLBH=SCBL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=' +
        'SCBLS.BWBH'
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH'
      'left join BWZL on BWZL.BWDH=SCBLS.BWBH'
      'left join CLZL on CLZL.CLDH=SCBLS.CLBH'
      
        'left join (select MEMO,CLBH,DFL,sum(Qty) as Qty from KCLLS where' +
        '   1=1'
      '           -- and Memo='#39'2009110001'#39
      
        '            and Memo in (Select distinct BLNO from SCBL where Me' +
        'rgNO='#39'2021040001'#39') '
      
        '           group by MEMO,CLBH,DFL ) KCLLS  on KCLLS.CLBH=SCBLS.C' +
        'LBH and KCLLS.DFL=XXBWFLS.DFL'
      'left join KCZLS on KCZLS.CLBH=SCBLS.CLBH and KCZLS.CKBH='#39'VA12'#39
      'where SCBL.GSBH='#39'VA12'#39
      '        -- and SCBLS.BLNO='#39'2009110001'#39' '
      '         and SCBL.MergNO='#39'2021040001'#39' '
      #9#9' and SCBLS.MJBH = '#39'ZZZZZZZZZZ'#39
      
        'group by  SCBL.ZLBH,DDZL.ARTICLE,XXZL.XieMing,SCBLS.BLNO,SCBLS.C' +
        'LBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,XXBWFLS.DFL,KCLLS.Qty,SCBLYY' +
        'S.YYBH,SCBLYYS.YWSM,DDZL.YN'
      
        ',KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZ' +
        'Z'
      'order by XXBWFLS.DFL,SCBLS.CLBH')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
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
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1NK: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object Query1TC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object Query1HD: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object Query1KD: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object Query1XT: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object Query1GC: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object Query1ZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
      DisplayFormat = '#0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 160
  end
end
