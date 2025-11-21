object FScanIn: TFScanIn
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'FScanIn'
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
    Width = 1297
    Height = 89
    Align = alTop
    TabOrder = 0
    object Edit1: TEdit
      Left = 200
      Top = 16
      Width = 353
      Height = 49
      AutoSize = False
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object UploadBtn: TButton
      Left = 560
      Top = 20
      Width = 89
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button2: TButton
      Left = 665
      Top = 20
      Width = 81
      Height = 41
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 185
      Height = 81
      TabOrder = 3
      object RadioButton1: TRadioButton
        Left = 24
        Top = 24
        Width = 113
        Height = 17
        Caption = #30332#27873#24213
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 24
        Top = 48
        Width = 113
        Height = 17
        Caption = #27233#33184#24213
        TabOrder = 1
      end
      object StaticText1: TStaticText
        Left = 136
        Top = 24
        Width = 14
        Height = 28
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 89
    Width = 1297
    Height = 555
    Align = alClient
    TabOrder = 1
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 520
    Top = 240
  end
  object WorkScanQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select top 100  workscan.ProNo,workscan.CodeBar,Convert(varchar,' +
        'workscan.ScanDate) as scandate,WorkScan.InOut,WorkScan.Class,'
      
        '       workscan.WorkID,workscan.MJBH,workscan.ColorNo,workscan.D' +
        'DBH,workscan.Size,workscan.Qty,workscan.UserID,workscan.UserDate' +
        ',workScan.YN'
      '      ,colorclass.englishname'
      'from LIY_DD.dbo.workscan workscan'
      
        'left join LIY_DD.dbo.colorclass colorclass on colorclass.ColorNo' +
        '=workscan.ColorNo'
      'where 1=1')
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object WorkScanQryProNo: TFloatField
      FieldName = 'ProNo'
    end
    object WorkScanQryCodebar: TStringField
      FieldName = 'Codebar'
      FixedChar = True
      Size = 22
    end
    object WorkScanQryInOut: TStringField
      FieldName = 'InOut'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryClass: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object WorkScanQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object WorkScanQryColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object WorkScanQryenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object WorkScanQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object WorkScanQrySize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object WorkScanQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object WorkScanQryUserid: TStringField
      FieldName = 'Userid'
      FixedChar = True
    end
    object WorkScanQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD hh:nn:ss'
    end
    object WorkScanQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryscandate: TStringField
      FieldName = 'scandate'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = WorkScanQry
    Left = 560
    Top = 272
  end
  object UpdateSQL1: TUpdateSQL
    InsertSQL.Strings = (
      'Insert into WorkScan'
      
        '  (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH,' +
        ' Size, Qty, UserID, YN)'
      'Values'
      
        '  (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo' +
        ', :DDBH, :Size, :Qty, :UserID, :YN)')
    Left = 560
    Top = 304
  end
end
