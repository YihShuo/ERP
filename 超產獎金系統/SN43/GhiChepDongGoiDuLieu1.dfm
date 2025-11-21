object GhiChepDongGoiDuLieu: TGhiChepDongGoiDuLieu
  Left = 0
  Top = 0
  Caption = 'GhiChepDongGoiDuLieu'
  ClientHeight = 533
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 869
    Top = 126
    Height = 407
    Align = alRight
    ExplicitLeft = 704
    ExplicitTop = 248
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 124
      Top = 24
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 246
      Top = 17
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 334
      Top = 17
      Width = 73
      Height = 33
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object CBX2: TComboBox
      Left = 49
      Top = 21
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX3: TComboBox
      Left = 165
      Top = 21
      Width = 49
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button4: TButton
      Left = 406
      Top = 17
      Width = 73
      Height = 33
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 493
      Top = 17
      Width = 65
      Height = 33
      Caption = 'Print'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1094
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 576
      Top = 21
      Width = 199
      Height = 28
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CFMID1  '#24288#21209'/'#37096#38272#20027#31649':'
    end
    object Label5: TLabel
      Left = 8
      Top = 21
      Width = 145
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'USERID'#22519#34892#20154#21729':'
    end
    object Label1: TLabel
      Left = 883
      Top = 21
      Width = 202
      Height = 28
      Alignment = taRightJustify
      AutoSize = False
      Caption = #20633#20221#20301#32622' NAS '#20027#27231
    end
    object Label3: TLabel
      Left = 286
      Top = 21
      Width = 157
      Height = 28
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CFMID  '#21934#20301#20027#31649':'
    end
    object cfmid: TDBEdit
      Left = 449
      Top = 17
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'CFMID'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 0
    end
    object userid: TDBEdit
      Left = 159
      Top = 17
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'UserID'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 1
    end
    object CFMID1: TDBEdit
      Left = 781
      Top = 17
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'CFMID1'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 872
    Top = 126
    Width = 222
    Height = 407
    Align = alRight
    DataSource = DS2
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DataName'
        Footers = <>
        Width = 130
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KetQua'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 126
    Width = 869
    Height = 407
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 1
      Top = 228
      Width = 867
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = -1
      ExplicitTop = 222
      ExplicitWidth = 859
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 867
      Height = 227
      Align = alTop
      ColCount = 1
      DefaultColWidth = 60
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowMoving, goColMoving, goEditing]
      ParentFont = False
      TabOrder = 0
      OnDrawCell = StringGrid1DrawCell
      OnKeyPress = StringGrid1KeyPress
      OnSelectCell = StringGrid1SelectCell
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 231
      Width = 867
      Height = 175
      Align = alClient
      DataSource = DS3
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleParams.MultiTitle = True
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NgayThucHien'
          Footers = <>
          Width = 85
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KetQua'
          Footers = <>
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UserID'
          Footers = <>
          Width = 82
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UserDate'
          Footers = <>
          Width = 120
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 208
    Top = 200
  end
  object QTemp: TMyADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Category'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DailyMenu'
      'WHERE Category = :Category')
    Left = 144
    Top = 200
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 199
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ITPC_DongGoiDuLieu'
      'WHERE 1=2')
    Left = 24
    Top = 247
    object Query1NgayThucHien: TDateTimeField
      FieldName = 'NgayThucHien'
    end
    object Query1KetQua: TIntegerField
      FieldName = 'KetQua'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1CFMID1: TStringField
      FieldName = 'CFMID1'
    end
    object Query1CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object UpdateSQL1: TMyADOUpdateSQL
    DataSet = Query1
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'KetQua'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_NgayThucHien'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE ITPC_DongGoiDuLieu'
      'SET'
      '  KetQua = :KetQua,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  NgayThucHien= :OLD_NgayThucHien')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_NgayThucHien'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM ITPC_DongGoiDuLieu'
      'WHERE'
      '  NgayThucHien = :OLD_NgayThucHien')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'NgayThucHien'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'KetQua'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'CFMID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'CFMDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      
        'INSERT INTO ITPC_DongGoiDuLieu (NgayThucHien, KetQua, UserID, Us' +
        'erDate,CFMID,CFMDate,YN)'
      
        'VALUES (:NgayThucHien, :KetQua, :UserID, :UserDate,:CFMID,:CFMDa' +
        'te, '#39'1'#39')')
    SQLDelete = 
      'DELETE FROM ITPC_DongGoiDuLieu'#13#10'WHERE'#13#10'  NgayThucHien = :OLD_Nga' +
      'yThucHien'#13#10
    SQLInsert = 
      'INSERT INTO ITPC_DongGoiDuLieu (NgayThucHien, KetQua, UserID, Us' +
      'erDate,CFMID,CFMDate,YN)'#13#10'VALUES (:NgayThucHien, :KetQua, :UserI' +
      'D, :UserDate,:CFMID,:CFMDate, '#39'1'#39')'
    SQLModify = 
      'UPDATE ITPC_DongGoiDuLieu'#13#10'SET'#13#10'  KetQua = :KetQua,'#13#10'  UserID = ' +
      ':UserID,'#13#10'  UserDate = :UserDate'#13#10'WHERE'#13#10'  NgayThucHien= :OLD_Ng' +
      'ayThucHien'
    Left = 24
    Top = 295
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 304
    object Confirm1: TMenuItem
      Caption = 'Confirm Month'
      Enabled = False
      OnClick = Confirm1Click
    end
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 208
    Top = 256
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = DS3
    Parameters = <
      item
        Name = 'NgayThucHien'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'Select ITPC_DongGoiDuLieu_DT.ID,ITPC_DongGoiDuLieu_DT.DataName,I' +
        'sNull(ITPC_DongGoiDuLieuChiTiet.KetQua,0) as KetQua'
      'from ITPC_DongGoiDuLieu_DT'
      
        'Left join ITPC_DongGoiDuLieuChiTiet on ITPC_DongGoiDuLieuChiTiet' +
        '.ID=ITPC_DongGoiDuLieu_DT.ID  and ITPC_DongGoiDuLieuChiTiet.Ngay' +
        'ThucHien=:NgayThucHien')
    Left = 864
    Top = 319
    object Query2ID: TStringField
      DisplayWidth = 2
      FieldName = 'ID'
      Size = 2
    end
    object Query2DataName: TStringField
      DisplayWidth = 17
      FieldName = 'DataName'
      Size = 50
    end
    object Query2KetQua: TBooleanField
      FieldName = 'KetQua'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 864
    Top = 263
  end
  object Query3: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select * from ITPC_DongGoiDuLieu')
    Left = 520
    Top = 367
    object Query3NgayThucHien: TDateTimeField
      FieldName = 'NgayThucHien'
    end
    object Query3KetQua: TBooleanField
      FieldName = 'KetQua'
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query3CFMID: TStringField
      FieldName = 'CFMID'
      Size = 15
    end
    object Query3CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 464
    Top = 367
  end
  object Qtemp1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Category'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DailyMenu'
      'WHERE Category = :Category')
    Left = 136
    Top = 256
  end
end
