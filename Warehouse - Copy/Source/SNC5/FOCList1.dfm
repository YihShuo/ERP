object FOCList: TFOCList
  Left = 412
  Top = 235
  Width = 1059
  Height = 556
  Caption = 'FOCList'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1043
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 20
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 415
      Top = 21
      Width = 25
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 603
      Top = 11
      Width = 78
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 689
      Top = 11
      Width = 78
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 82
      Top = 16
      Width = 130
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 318
      Top = 16
      Width = 97
      Height = 24
      Date = 44896.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 44896.041666666660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 445
      Top = 16
      Width = 105
      Height = 24
      Date = 44926.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 44926.958333333340000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Checkbox1: TCheckBox
      Left = 257
      Top = 20
      Width = 56
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'From'
      ParentBiDiMode = False
      TabOrder = 5
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 57
    Width = 1043
    Height = 460
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1043
    Height = 460
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 209
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 100
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 512
    Top = 296
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRKS_FOC.RKNO,CKBH,ZSBH,ZSZL.ZSYWJC,ZSNO,KCRKS_FOC.CLBH,' +
        'CLZL.YWPM,CLZL.DWBH,Qty,KCRKS_FOC.Memo,KCRKS_FOC.UserID,KCRKS_FO' +
        'C.UserDate,Qty as oldQty'
      'from KCRKS_FOC'
      'left join KCRK_FOC on KCRK_FOC.RKNO = KCRKS_FOC.RKNO'
      'left join CLZL on CLZL.CLDH = KCRKS_FOC.CLBH'
      'left join ZSZL on ZSZL.ZSDH = KCRK_FOC.ZSBH'
      'where 1=2 '
      'order by KCRKS_FOC.RKNO')
    Left = 472
    Top = 296
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 11
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0000'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 150
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1oldQty: TCurrencyField
      FieldName = 'oldQty'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 320
    Top = 297
  end
end
