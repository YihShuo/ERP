object Planoutput: TPlanoutput
  Left = 261
  Top = 171
  Width = 812
  Height = 500
  Caption = 'Planoutput'
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
    Width = 804
    Height = 385
    Align = alClient
    ColCount = 30
    DefaultColWidth = 35
    RowCount = 20
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowMoving, goColMoving, goEditing]
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    OnKeyPress = StringGrid1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
    end
    object Button3: TButton
      Left = 472
      Top = 24
      Width = 105
      Height = 41
      Caption = 'Save'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName,ID as RecNum'
      'from BDepartment'
      'where ProYN=1')
    UpdateObject = UpdateSQL1
    Left = 512
    Top = 104
    object QDepID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object QDepDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object QDepRecNum: TStringField
      FieldName = 'RecNum'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 544
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = TSCBZCL
    Left = 552
    Top = 256
  end
  object TSCBZCL: TTable
    DatabaseName = 'DB'
    TableName = 'dbo.scbzcl'
    Left = 584
    Top = 256
  end
  object Qold: TQuery
    SQL.Strings = (
      'select DepNo'
      'from SCBZCL')
    Left = 392
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    Left = 256
    Top = 160
  end
  object DepTot: TQuery
    DatabaseName = 'DB'
    Left = 160
    Top = 296
  end
end
