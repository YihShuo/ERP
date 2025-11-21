object PurEquipment_SGDH: TPurEquipment_SGDH
  Left = 540
  Top = 314
  Width = 754
  Height = 464
  Caption = 'PurEquipment_SGDH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 39
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 206
      Top = 38
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label1: TLabel
      Left = 8
      Top = 9
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
    object DBEdit1: TDBEdit
      Left = 86
      Top = 35
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'SBBH'
      DataSource = PurEquipment.DS2
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 287
      Top = 30
      Width = 153
      Height = 33
      Color = 14286847
      DataField = 'YWPM'
      DataSource = PurEquipment.DS2
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 88
      Top = 6
      Width = 121
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 449
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CB1: TCheckBox
      Left = 448
      Top = 8
      Width = 65
      Height = 17
      Caption = 'NO OK'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object Button2: TButton
      Left = 544
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 65
    Width = 746
    Height = 368
    Align = alClient
    DataSource = DS1
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
    UseMultiTitle = True
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SGNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#36092#21934#34399'|SGNO'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633#21697#21517'|YWPM'
        Width = 203
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633#20013#25991'|ZWPM'
        Width = 161
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#36092#25976#37327'|Qty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25505#36092#25976'|okQty'
        Width = 69
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#36092#37096#38272'|DepName'
        Width = 93
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_SGDHS.SGNO,TSCD_SGDHS.SBBH,TSCD_SGDHS.Qty,IsNull(TSC' +
        'D_CGZLSS.okQty,0) as okQty,TSCD_SB.YWPM,TSCD_SB.ZWPM,BDepartment' +
        '.DepName'
      'from TSCD_SGDHS'
      'left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO'
      'left join TSCD_SB on TSCD_SB.SBBH=TSCD_SGDHS.SBBH'
      
        'left join (select SGNO,SBBH,Sum(Qty) as okQty from TSCD_CGZLSS w' +
        'here SBBH='#39'A00010011'#39' and TSCD_CGZLSS.USERDATE>GETDATE()-180 Gro' +
        'up by SGNO,SBBH) TSCD_CGZLSS on TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH' +
        ' and TSCD_CGZLSS.SGNO=TSCD_SGDHS.SGNO'
      'left join BDepartment on BDepartment.ID=TSCD_SGDH.DepID'
      
        'where IsNull(TSCD_SGDHS.Qty,0)>IsNull(TSCD_CGZLSS.okQty,0) and T' +
        'SCD_SGDHS.SBBH='#39'A00010011'#39' ')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 192
    object Query1SGNO: TStringField
      FieldName = 'SGNO'
      FixedChar = True
      Size = 11
    end
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
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
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 160
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 224
  end
end
