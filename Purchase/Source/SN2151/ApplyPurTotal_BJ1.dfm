object ApplyPurTotal_BJ: TApplyPurTotal_BJ
  Left = 576
  Top = 256
  Width = 786
  Height = 481
  BorderIcons = [biSystemMenu]
  Caption = 'ApplyPurTotal_BJ'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 12
      Width = 43
      Height = 16
      Alignment = taRightJustify
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EDIT1: TEdit
      Left = 80
      Top = 8
      Width = 177
      Height = 24
      CharCase = ecUpperCase
      Color = 13828095
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 770
    Height = 401
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BJNO'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDate'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSBH'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSYWJC'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USPrice'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNPrice'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXPDATE'
        Width = 83
        Visible = True
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
      'select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,'
      'CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJ.EXPDATE'
      'from CGBJ'
      'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'left join CLZL on CLZL.CLDH=CGBJS.CLBH'
      'where CGBJS.CLBH='#39'A010000637'#39
      'and CGBJ.GSBH='#39'VA12'#39
      'and CGBJ.EXPDATE >= GETDATE()'
      'order by CGBJ.ZSBH,CGBJ.BJNO DESC')
    Left = 424
    Top = 160
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/mm/dd'
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
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1EXPDATE: TDateTimeField
      FieldName = 'EXPDATE'
    end
  end
end
