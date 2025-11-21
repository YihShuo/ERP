object Import_Excel_To_MsSQL: TImport_Excel_To_MsSQL
  Left = 194
  Top = 124
  Width = 1017
  Height = 539
  Caption = 'Import_Excel_To_MsSQL'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 60
    Align = alTop
    Caption = 'OPEN EXCEL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 60
    Width = 500
    Height = 380
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGridEh2: TDBGridEh
    Left = 500
    Top = 60
    Width = 501
    Height = 380
    Align = alClient
    DataSource = DataSource2
    Flat = False
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 1001
    Height = 60
    Align = alBottom
    Caption = 'Save Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Panel2Click
  end
  object ADOConnection3: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 904
    Top = 8
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 936
    Top = 8
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 968
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 936
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'GSBH'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ReqDate'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Factory'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Department'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Result'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Material0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Select ReportID,GSBH,ReqDate,Factory,Department,Result,Material0' +
        ',Material1,Material2,Material3,Material4,Color,Component,Materia' +
        'lType,Treatment,SupplierCode,Category,Season,SamplingFor,SKU,SR,' +
        'TestedBy,Approvalby,AcceptedDate,CompleteDate,Comment,FailReason' +
        ',UserID,UserDate,YN FROM [LTM$]'
      ''
      '')
    Left = 968
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 936
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 968
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel 97-2003 '#27963#38913#31807' (*.xls)|*.xls'
    Left = 968
    Top = 104
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 872
    Top = 8
  end
end
