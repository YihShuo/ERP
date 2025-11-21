object Entry_Account: TEntry_Account
  Left = 298
  Top = 234
  Width = 1305
  Height = 675
  Caption = 'Entry_Account'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1289
    Height = 193
    Align = alTop
    Color = clWhite
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 26
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1289
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 122
      Top = 23
      Width = 21
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 23
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 451
      Top = 23
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 641
      Top = 24
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 800
      Top = 14
      Width = 80
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 20
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 148
      Top = 20
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 330
      Top = 20
      Width = 111
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 970
      Top = 14
      Width = 81
      Height = 33
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 885
      Top = 14
      Width = 80
      Height = 33
      Caption = 'Excel '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 525
      Top = 20
      Width = 112
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 712
      Top = 21
      Width = 66
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 1289
    Height = 379
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16757683
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 59
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            ValueType = fvtSum
          end>
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            ValueType = fvtSum
          end>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 314
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        ReadOnly = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 120
      end>
  end
  object EnMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.*,ZSZL.ZSYWJC'
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'where KCRK.YN<>'#39'5'#39
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object EnMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object EnMasHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
  end
  object EnDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select KCRKS.*,CLZL.YWPM,CLZL.DWBH'
      'from KCRKS'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.CLBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object EnDetPaQty: TCurrencyField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object EnDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 508
    Top = 132
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 368
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 96
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  USACC = :USACC,'
      '  VNACC = :VNACC'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 471
    Top = 163
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 340
    Top = 359
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRK'
      'set'
      '  UserDate = :UserDate'
      'where'
      '  RKNO = :OLD_RKNO')
    Left = 324
    Top = 160
  end
end
