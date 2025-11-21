object PurTotal_SGDH: TPurTotal_SGDH
  Left = 472
  Top = 364
  Width = 944
  Height = 492
  Caption = 'PurTotal_SGDH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 17
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 248
      Top = 17
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 83
      Top = 11
      Width = 134
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 489
      Top = 8
      Width = 77
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CB1: TCheckBox
      Left = 579
      Top = 23
      Width = 65
      Height = 17
      Caption = 'NO OK'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 328
      Top = 13
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = PurTotal.DS4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 50
    Width = 928
    Height = 403
    Align = alClient
    DataSource = DS1
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SGNO'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 175
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 176
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 113
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SGDHS.SGNO,SGDHS.CLBH,SGDHS.Qty,IsNull(CGZLSS.okQty,0) as' +
        ' okQty,CLZL.YWPM,CLZL.ZWPM,BDepartment.DepName'
      'from SGDHS left join SGDH on SGDH.SGNO=SGDHS.SGNO'
      'left join CLZL on CLZL.CLDH = SGDHS.CLBH'
      'left join (select ZLBH,CLBH,Sum(Qty) as okQty '
      
        #9#9'   from CGZLSS where CLBH='#39'Z207000005'#39' and CGZLSS.USERDATE>GET' +
        'DATE()-180 Group by ZLBH,CLBH) '
      
        '           CGZLSS on CGZLSS.CLBH=SGDHS.CLBH and CGZLSS.ZLBH=SGDH' +
        'S.SGNO'
      'left join BDepartment on BDepartment.ID=SGDH.DepID')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 200
    object Query1SGNO: TStringField
      FieldName = 'SGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 240
  end
end
