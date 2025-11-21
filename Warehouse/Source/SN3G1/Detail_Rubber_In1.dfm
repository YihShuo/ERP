object Detail_Rubber_In: TDetail_Rubber_In
  Left = 354
  Top = 189
  Width = 1305
  Height = 617
  Caption = 'Detail Rubber In'
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
  object Splitter1: TSplitter
    Left = 902
    Top = 73
    Width = 2
    Height = 505
    Align = alRight
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 41
      Top = 11
      Width = 65
      Height = 16
      Caption = 'Entry Date:'
    end
    object Label2: TLabel
      Left = 246
      Top = 43
      Width = 56
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 45
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 342
      Top = 10
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Entry No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 202
      Top = 11
      Width = 21
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 535
      Top = 3
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 535
      Top = 38
      Width = 82
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 305
      Top = 41
      Width = 61
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
      Text = 'VR2'
      Items.Strings = (
        'VR2'
        'VR3')
    end
    object Edit1: TEdit
      Left = 398
      Top = 6
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 107
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Check: TCheckBox
      Left = 409
      Top = 47
      Width = 52
      Height = 17
      Caption = 'Mine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Date: TCheckBox
      Left = 20
      Top = 11
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 108
      Top = 7
      Width = 89
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 226
      Top = 7
      Width = 89
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 73
    Width = 902
    Height = 505
    Align = alClient
    DataSource = DSRubberIn
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
    ParentFont = False
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
        FieldName = 'KSDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Entry No'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'KSRQ'
        Footers = <>
        Title.Caption = 'Entry Date'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.Caption = 'Material No'
      end
      item
        EditButtons = <>
        FieldName = 'QtyRubberIn'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Quantity'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 106
      end>
  end
  object Panel2: TPanel
    Left = 904
    Top = 73
    Width = 385
    Height = 505
    Align = alRight
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 383
      Height = 503
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
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cldh'
          Footers = <>
          Title.Caption = 'Material No'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Material Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 300
        end>
    end
  end
  object RubberIn: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KSYD.CQDH,KSYD.DGLB,KSYD.KSDH,KSYD.LYDH,KSYD.KSRQ as KSRQ' +
        ',CLDH,SUM(ISNULL(KSYDS.SL,0)) as QtyRubberIn,KSYDS.NY,KSYD.USERI' +
        'D,KSYD.USERDATE'
      'from LIY_DD.dbo.KSYD  KSYD inner join LIY_DD.dbo.KSYDs KSYDs'
      
        'on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSDH=K' +
        'SYDS.KSDH'
      'where KSYD.CQDH='#39'VR3'#39' '
      '--and KSYD.KSRQ between'#39'20240101'#39' and  '#39'20240125'#39
      'and KSYD.LYLB in ('#39'F'#39','#39'A'#39') and KSYD.DGLB='#39'I'#39
      'and KSYD.KSDH='#39'A240100044'#39
      
        'group by KSYD.CQDH,KSYD.DGLB,KSYD.KSDH,KSYD.LYDH,KSYD.KSRQ,CLDH,' +
        'KSYDS.NY,KSYD.USERID,KSYD.USERDATE'
      'order by KSYD.KSRQ,CLDH')
    Left = 188
    Top = 251
    object RubberInKSDH: TStringField
      FieldName = 'KSDH'
      FixedChar = True
      Size = 10
    end
    object RubberInCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object RubberInDGLB: TStringField
      FieldName = 'DGLB'
      FixedChar = True
      Size = 1
    end
    object RubberInLYDH: TStringField
      FieldName = 'LYDH'
      FixedChar = True
      Size = 10
    end
    object RubberInCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 16
    end
    object RubberInQtyRubberIn: TFloatField
      FieldName = 'QtyRubberIn'
    end
    object RubberInNY: TStringField
      FieldName = 'NY'
      FixedChar = True
      Size = 4
    end
    object RubberInUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object RubberInUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object RubberInKSRQ: TStringField
      FieldName = 'KSRQ'
      FixedChar = True
      Size = 8
    end
  end
  object DSRubberIn: TDataSource
    DataSet = RubberIn
    Left = 188
    Top = 283
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DSRubberIn
    SQL.Strings = (
      'select CLZL_ERP.cldh,CLZL_ERP.ywpm'
      'from LIY_DD.dbo.CLZLSL CLZLSL'
      'left join LIY_DD.dbo.CLZL CLZL on CLZL.cldh=CLZLSL.cldhz'
      'left join clzl CLZL_ERP on '#39'A'#39'+CLZL_ERP.cldh=CLZLSL.cldhz'
      'where CLZLSL.cldh='#39'VBR20301'#39
      'order by CLZL_ERP.cldh')
    Left = 1044
    Top = 219
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 1044
    Top = 251
  end
end
