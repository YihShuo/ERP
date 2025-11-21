object ReplenishFeeDep_Det: TReplenishFeeDep_Det
  Left = 280
  Top = 201
  Width = 723
  Height = 445
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishFeeDep_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 715
    Height = 370
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CFMDate'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LLNO'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 374
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNPrice'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNACC'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Width = 66
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 864
      Height = 13
      Caption = 
        '****************************************************************' +
        '****************************************************************' +
        '****************************************************************' +
        '************************'
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = ReplenishFeeDep.DS1
    SQL.Strings = (
      'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,'
      'KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,'
      'KCLLS.YYBH,SCBLYY.YWSM,KCLL.DepID,BDepartment.DepName'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join SCBLYY on KCLLS.YYBH=SCBLYY.YYBH'
      'left join BDepartment on KCLL.DepID=BDepartment.ID'
      'where KCLLS.YYBH='#39'029'#39' '
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) bet' +
        'ween '
      #39'2008/01/01'#39
      ' and '#39'2008/01/31'#39
      'and KCLLS.Qty<>0'
      'order by KCLLS.CLBH,KCLLS.LLNO ')
    Left = 192
    Top = 72
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
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
    Left = 224
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 200
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
