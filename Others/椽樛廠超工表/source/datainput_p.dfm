object DataInput: TDataInput
  Left = 266
  Top = 141
  Width = 810
  Height = 650
  Caption = 'DataInput'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 51
      Height = 13
      Caption = 'HOI TEAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Lname: TLabel
      Left = 176
      Top = 24
      Width = 9
      Height = 13
      Caption = '   '
    end
    object Label3: TLabel
      Left = 188
      Top = 52
      Width = 44
      Height = 13
      Caption = 'TotCount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 52
      Width = 50
      Height = 13
      Caption = 'daing thea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 370
      Top = 51
      Width = 15
      Height = 13
      Caption = 'TO'
    end
    object cb1: TComboBox
      Left = 72
      Top = 24
      Width = 97
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = cb1Change
    end
    object cb2: TComboBox
      Left = 72
      Top = 48
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = cb2Change
    end
    object seleb: TButton
      Left = 407
      Top = 12
      Width = 75
      Height = 25
      Caption = 'SELECT'
      TabOrder = 2
      OnClick = selectbClick
    end
    object Edit1: TEdit
      Left = 240
      Top = 48
      Width = 25
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object sd: TDateTimePicker
      Left = 280
      Top = 48
      Width = 89
      Height = 21
      Date = 40647.351139710650000000
      Time = 40647.351139710650000000
      TabOrder = 4
    end
    object ed: TDateTimePicker
      Left = 392
      Top = 48
      Width = 89
      Height = 21
      Date = 40647.351139710650000000
      Time = 40647.351139710650000000
      TabOrder = 5
    end
  end
  object dbn: TDBNavigator
    Left = 0
    Top = 80
    Width = 450
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 113
    Width = 794
    Height = 499
    Align = alClient
    DataSource = DataSource1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'workno'
        Footers = <>
        Title.Caption = 'ST|workno'
      end
      item
        EditButtons = <>
        FieldName = 'inputdate'
        Footers = <>
        Title.Caption = 'Ngay|inputdate'
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Title.Caption = 'daing thea|xiexing'
      end
      item
        EditButtons = <>
        FieldName = 'MAXcount'
        Footers = <>
        Title.Caption = 'Tong so khuon|MAXcount'
      end
      item
        EditButtons = <>
        FieldName = 'THIScount'
        Footers = <>
        Title.Caption = 'Thuc te su dung|THIScount'
      end
      item
        EditButtons = <>
        FieldName = 'sqty'
        Footers = <>
        Title.Caption = 'San luong tieu chuan|Sqty'
      end
      item
        EditButtons = <>
        FieldName = 'rqty'
        Footers = <>
        Title.Caption = 'Luong tieu chuan|Rqty'
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Sl vooit cha tieau|qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'cost'
        Footers = <>
        Title.Caption = 'Gia|cost'
      end>
  end
  object Qtemp: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select workno from people')
    Left = 504
    Top = 48
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update workoverreport'
      'set'
      '  workno = :workno,'
      '  inputdate = :inputdate,'
      '  xiexing = :xiexing,'
      '  MAXcount = :MAXcount,'
      '  THIScount = :THIScount,'
      '  sqty = :sqty,'
      '  rqty = :rqty,'
      '  qty = :qty,'
      '  cost = :cost'
      'where'
      '  workno = :OLD_workno and'
      '  inputdate = :OLD_inputdate and'
      '  xiexing = :OLD_xiexing')
    InsertSQL.Strings = (
      'insert into workoverreport'
      
        '  (workno, inputdate, xiexing, MAXcount, THIScount, sqty, rqty, ' +
        'qty, cost)'
      'values'
      
        '  (:workno, :inputdate, :xiexing, :MAXcount, :THIScount, :sqty, ' +
        ':rqty, '
      '   :qty, :cost)')
    DeleteSQL.Strings = (
      'delete from workoverreport'
      'where'
      '  workno = :OLD_workno and'
      '  inputdate = :OLD_inputdate and'
      '  xiexing = :OLD_xiexing')
    Left = 448
    Top = 344
  end
  object showdata: TQuery
    AfterInsert = showdataAfterInsert
    AutoRefresh = True
    DatabaseName = 'dd'
    ParamCheck = False
    RequestLive = True
    SQL.Strings = (
      'select * from workoverreport')
    UpdateObject = UpdateSQL1
    Left = 448
    Top = 312
    object showdataworkno: TStringField
      FieldName = 'workno'
      Origin = 'DD.workoverreport.workno'
      FixedChar = True
      Size = 10
    end
    object showdatainputdate: TDateTimeField
      FieldName = 'inputdate'
      Origin = 'DD.workoverreport.inputdate'
    end
    object showdataxiexing: TStringField
      FieldName = 'xiexing'
      Origin = 'DD.workoverreport.xiexing'
      FixedChar = True
      Size = 30
    end
    object showdataMAXcount: TIntegerField
      FieldName = 'MAXcount'
      Origin = 'DD.workoverreport.MAXcount'
      OnChange = showdataMAXcountChange
    end
    object showdataTHIScount: TIntegerField
      FieldName = 'THIScount'
      Origin = 'DD.workoverreport.THIScount'
      OnChange = showdataTHIScountChange
    end
    object showdatasqty: TIntegerField
      FieldName = 'sqty'
      Origin = 'DD.workoverreport.sqty'
      OnChange = showdatasqtyChange
    end
    object showdatarqty: TIntegerField
      FieldName = 'rqty'
      Origin = 'DD.workoverreport.rqty'
      OnChange = showdatarqtyChange
    end
    object showdataqty: TIntegerField
      FieldName = 'qty'
      Origin = 'DD.workoverreport.qty'
    end
    object showdatacost: TFloatField
      FieldName = 'cost'
      Origin = 'DD.workoverreport.cost'
      DisplayFormat = '#9.0'
    end
  end
  object DataSource1: TDataSource
    DataSet = showdata
    Left = 448
    Top = 272
  end
end
