object MonthRep: TMonthRep
  Left = 250
  Top = 195
  Width = 800
  Height = 500
  Caption = 'MonthRep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 81
    Width = 792
    Height = 385
    Align = alClient
    ColCount = 20
    DefaultColWidth = 35
    RowCount = 10
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    TabOrder = 2
    OnDrawCell = StringGrid1DrawCell
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 792
    Height = 385
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'SCDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bzQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lack_Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Person'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 117
      Height = 20
      Caption = 'Month(yyyy/mm):'
    end
    object Button1: TButton
      Left = 344
      Top = 24
      Width = 105
      Height = 41
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 24
      Width = 105
      Height = 41
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 28
      TabOrder = 2
      Text = '2007/05'
      OnKeyPress = Edit1KeyPress
    end
    object Button3: TButton
      Left = 472
      Top = 24
      Width = 105
      Height = 41
      Caption = 'Switch'
      Enabled = False
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,'
      ' isnull(sum(SCBBS.Qty),0) as Qty,SCBZCL.Qty as bzQty'
      'from SCBB  left join SCBBS'
      'on SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo'
      'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate'
      'group by SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty'
      'Order by  SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty'
      ''
      ' ')
    Left = 448
    Top = 200
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 15
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1bzQty: TIntegerField
      FieldName = 'bzQty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_Qty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lack_Qty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1Person: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    Left = 656
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    Left = 528
    Top = 104
  end
end
