object AccountFix: TAccountFix
  Left = 328
  Top = 213
  Width = 812
  Height = 500
  Caption = 'AccountFix'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 424
      Top = 24
      Width = 84
      Height = 20
      Caption = 'ETD Year:'
    end
    object Label5: TLabel
      Left = 592
      Top = 24
      Width = 56
      Height = 20
      Caption = 'Month:'
    end
    object CB1: TCheckBox
      Left = 8
      Top = 24
      Width = 177
      Height = 17
      Caption = '  621 and no order '
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CB2: TCheckBox
      Left = 192
      Top = 24
      Width = 225
      Height = 17
      Caption = '  not 621 and have order'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Button1: TButton
      Left = 720
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 512
      Top = 16
      Width = 73
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 3
    end
    object CBX3: TComboBox
      Left = 656
      Top = 16
      Width = 49
      Height = 28
      DropDownCount = 12
      ItemHeight = 20
      TabOrder = 4
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 796
    Height = 404
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 124
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,'
      
        'KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH' +
        ','
      
        'SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CW' +
        'BH'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH '
      'where KCLLS.CostID='#39'621'#39
      
        'and not exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH ' +
        ')'
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) bet' +
        'ween '
      #39'2008/03/31'#39
      ' and '#39'2008/03/01'#39
      'and KCLLS.Qty<>0'
      'union '
      'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,'
      
        'KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH' +
        ','
      
        'SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CW' +
        'BH'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH '
      'where KCLLS.CostID<>'#39'621'#39
      'and exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH )'
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) bet' +
        'ween '
      #39'2008/03/31'#39
      ' and '#39'2008/03/01'#39
      'and KCLLS.Qty<>0'
      'order by KCLLS.LLNO,KCLLS.CLBH ')
    Left = 216
    Top = 216
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
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
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 312
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 168
    Top = 216
  end
end
