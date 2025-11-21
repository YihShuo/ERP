object EVAScanIn: TEVAScanIn
  Left = 835
  Top = 283
  Width = 1305
  Height = 675
  Caption = 'EVA ScanIn'
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
    Width = 1289
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 264
      Top = 32
      Width = 42
      Height = 25
      Caption = 'QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 1024
      Top = 18
      Width = 43
      Height = 16
      Caption = 'CLASS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 384
      Top = 20
      Width = 353
      Height = 45
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
    object Button2: TButton
      Left = 902
      Top = 22
      Width = 81
      Height = 41
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 88
      Top = 4
      Width = 153
      Height = 77
      Caption = '000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 88
        Top = 20
        Width = 10
        Height = 24
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 88
        Top = 44
        Width = 10
        Height = 24
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 25
        Width = 54
        Height = 16
        Caption = 'All QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 49
        Width = 56
        Height = 16
        Caption = 'OK QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object StaticText1: TStaticText
      Left = 768
      Top = 30
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EDqty: TEdit
      Left = 320
      Top = 28
      Width = 41
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '10'
      OnKeyPress = EDqtyKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 65
      Height = 73
      TabOrder = 5
      object Label19: TLabel
        Left = 8
        Top = 24
        Width = 46
        Height = 29
        Caption = 'EVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object ComboBox1: TComboBox
      Left = 1086
      Top = 15
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      Text = 'Ca 1 - Morning'
      Items.Strings = (
        'Ca 1 - Morning'
        'Ca 2- Noon'
        'Ca 3 - Night')
    end
    object Button1: TButton
      Left = 803
      Top = 22
      Width = 81
      Height = 41
      Caption = 'UPLOAD'
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 97
    Width = 1289
    Height = 539
    Align = alClient
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 160
  end
  object TmpQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select  workscan.ProNo,workscan.CodeBar,Convert(varchar,workscan' +
        '.ScanDate) as scandate,WorkScan.InOut,WorkScan.Class,'
      
        '       workscan.WorkID,workscan.MJBH,workscan.ColorNo,workscan.D' +
        'DBH,workscan.Size,workscan.Qty,workscan.UserID,workscan.UserDate' +
        ',workScan.YN'
      '      ,colorclass.englishname'
      'from LIY_DD.dbo.workscan workscan'
      
        'left join LIY_DD.dbo.colorclass colorclass on colorclass.ColorNo' +
        '=workscan.ColorNo'
      'where 1=1')
    Left = 408
    Top = 224
    object TmpQryProNo: TFloatField
      FieldName = 'ProNo'
    end
    object TmpQryCodebar: TStringField
      FieldName = 'Codebar'
      FixedChar = True
      Size = 22
    end
    object TmpQryInOut: TStringField
      FieldName = 'InOut'
      FixedChar = True
      Size = 1
    end
    object TmpQryClass: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object TmpQryWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object TmpQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object TmpQryColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object TmpQryenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object TmpQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object TmpQrySize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object TmpQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object TmpQryUserid: TStringField
      FieldName = 'Userid'
      FixedChar = True
    end
    object TmpQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD hh:nn:ss'
    end
    object TmpQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object TmpQryscandate: TStringField
      FieldName = 'scandate'
      FixedChar = True
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 320
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
