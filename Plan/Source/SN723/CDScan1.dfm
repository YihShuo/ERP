object CDScan: TCDScan
  Left = 374
  Top = 238
  Width = 1076
  Height = 675
  Caption = 'CDScan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1060
    Height = 81
    Align = alTop
    Color = 16768991
    TabOrder = 0
    object Label2: TLabel
      Left = 276
      Top = 0
      Width = 169
      Height = 41
      AutoSize = False
      Caption = 'Scanned Barcode: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 3
      Top = 10
      Width = 81
      Height = 20
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 840
      Top = 51
      Width = 73
      Height = 20
      Caption = 'PlanDate:'
    end
    object Edit1: TEdit
      Left = 443
      Top = 3
      Width = 390
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object DepNMEdit: TEdit
      Left = 96
      Top = 8
      Width = 174
      Height = 28
      CharCase = ecUpperCase
      Color = 11599871
      ReadOnly = True
      TabOrder = 1
      OnClick = DepNMEditClick
    end
    object seDate: TSpinEdit
      Left = 919
      Top = 45
      Width = 53
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 60
    end
    object Button2: TButton
      Left = 53
      Top = 43
      Width = 81
      Height = 33
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 184
      Top = 42
      Width = 81
      Height = 33
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 81
    Width = 1060
    Height = 555
    Align = alClient
    Color = 14548991
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footer.FieldName = 'DLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 227
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'CutNum'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'okCutNum'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'ScanUser'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 81
      end
      item
        DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
        EditButtons = <>
        FieldName = 'ScanDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 113
      end>
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 152
    Top = 192
  end
  object DS1: TDataSource
    DataSet = tmpDispatchSQry
    Left = 248
    Top = 160
  end
  object DispatchSQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWP' +
        'M,BDepartment.DepName,CutDispatch.PlanDate,CutDispatch.Memo FROM' +
        ' CutDispatchS'
      'Left JOIN CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO'
      'Left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'Left JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH'
      'Left JOIN BDepartment on BDepartment.ID=CutDispatch.DepID'
      'WHERE 1=1'
      'ORDER BY CutDispatchS.BWBH')
    UpdateObject = UpdateSQL2
    Left = 280
    Top = 192
    object DispatchSQryDLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object DispatchSQryZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object DispatchSQryBWBH: TStringField
      FieldName = 'BWBH'
    end
    object DispatchSQryZWSM: TStringField
      FieldName = 'ZWSM'
    end
    object DispatchSQryYWSM: TStringField
      FieldName = 'YWSM'
    end
    object DispatchSQrySIZE: TStringField
      FieldName = 'SIZE'
    end
    object DispatchSQryCLBH: TStringField
      FieldName = 'CLBH'
    end
    object DispatchSQryYWPM: TStringField
      FieldName = 'YWPM'
    end
    object DispatchSQryZWPM: TStringField
      FieldName = 'ZWPM'
      Size = 0
    end
    object DispatchSQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object DispatchSQryXXCC: TStringField
      FieldName = 'XXCC'
    end
    object DispatchSQryCutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object DispatchSQryokCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
    object DispatchSQryUSERID: TStringField
      FieldName = 'USERID'
      Size = 0
    end
    object DispatchSQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DispatchSQryScanUser: TStringField
      FieldName = 'ScanUser'
    end
    object DispatchSQryScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object DispatchSQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DispatchSQryPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DispatchSQryMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object DispatchSQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 248
    Top = 224
  end
  object UpdateSQL2: TUpdateSQL
    Left = 280
    Top = 224
  end
  object tmpDispatchSQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWP' +
        'M,BDepartment.DepName,CutDispatch.PlanDate,CutDispatch.Memo FROM' +
        ' CutDispatchS'
      'Left JOIN CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO'
      'Left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'Left JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH'
      'Left JOIN BDepartment on BDepartment.ID=CutDispatch.DepID'
      'WHERE 1=2'
      'ORDER BY CutDispatchS.BWBH')
    UpdateObject = UpdateSQL1
    Left = 248
    Top = 192
    object StringField1: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object StringField2: TStringField
      FieldName = 'ZLBH'
    end
    object StringField3: TStringField
      FieldName = 'BWBH'
    end
    object StringField4: TStringField
      FieldName = 'ZWSM'
    end
    object StringField5: TStringField
      FieldName = 'YWSM'
    end
    object StringField6: TStringField
      FieldName = 'SIZE'
    end
    object StringField7: TStringField
      FieldName = 'CLBH'
    end
    object StringField8: TStringField
      FieldName = 'YWPM'
    end
    object StringField9: TStringField
      FieldName = 'ZWPM'
      Size = 0
    end
    object IntegerField1: TIntegerField
      FieldName = 'Qty'
    end
    object StringField10: TStringField
      FieldName = 'XXCC'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CutNum'
    end
    object IntegerField3: TIntegerField
      FieldName = 'okCutNum'
    end
    object StringField11: TStringField
      FieldName = 'USERID'
      Size = 0
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField12: TStringField
      FieldName = 'ScanUser'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ScanDate'
    end
    object StringField13: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'PlanDate'
    end
    object StringField14: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object StringField15: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 200
    object N1: TMenuItem
      Caption = 'Dispatch Cutting'
      OnClick = N1Click
    end
  end
  object DepNo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName'
      'from BDepartment'
      'where ProYN=1  and GXLB='#39'C'#39
      'order by ID')
    Left = 192
    Top = 192
    object DepNoID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object DepNoDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
end
