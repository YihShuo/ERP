object WarehouseTrace_Details: TWarehouseTrace_Details
  Left = 314
  Top = 224
  Width = 510
  Height = 437
  BorderIcons = [biSystemMenu]
  Caption = 'WarehouseTrace_Details'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 265
    Height = 403
    Align = alLeft
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CTNO'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qty'
        Width = 49
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USERDate'
        Title.Caption = 'DATE'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RKCS'
        Width = 42
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 265
    Top = 0
    Width = 237
    Height = 403
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 1
      Width = 228
      Height = 401
      Align = alRight
      DataSource = DS2
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'XXCC'
          Width = 40
          Visible = True
        end
        item
          Color = 10944511
          Expanded = False
          FieldName = 'Qty'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LHLabel'
          Width = 114
          Visible = True
        end>
    end
  end
  object SCSMRK: TQuery
    DatabaseName = 'DB'
    DataSource = WarehouseTrace.DS1
    SQL.Strings = (
      'select *'
      'from SCSMRK'
      'where DDBH=:DDBH'
      'order by CTNO')
    Left = 8
    Top = 24
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SCSMRKDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMRK.DDBH'
      FixedChar = True
      Size = 15
    end
    object SCSMRKCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMRK.CTNO'
      FixedChar = True
      Size = 5
    end
    object SCSMRKQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCSMRK.Qty'
      DisplayFormat = '##,#0'
    end
    object SCSMRKUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SCSMRK.USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCSMRKUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCSMRK.USERID'
      FixedChar = True
      Size = 15
    end
    object SCSMRKYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCSMRK.YN'
      FixedChar = True
      Size = 1
    end
    object SCSMRKRKCS: TIntegerField
      FieldName = 'RKCS'
      Origin = 'DB.SCSMRK.RKCS'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = SCSMRK
    Left = 40
    Top = 24
  end
  object SCSMRKS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SCSMRKS'
      'where DDBH=:DDBH'
      'and CTNO=:CTNO'
      'order by XXCC')
    Left = 313
    Top = 40
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object SCSMRKSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMRKS.DDBH'
      FixedChar = True
      Size = 15
    end
    object SCSMRKSCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMRKS.CTNO'
      FixedChar = True
      Size = 5
    end
    object SCSMRKSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCSMRKS.XXCC'
      FixedChar = True
      Size = 6
    end
    object SCSMRKSLHLabel: TStringField
      FieldName = 'LHLabel'
      Origin = 'DB.SCSMRKS.LHLabel'
      FixedChar = True
      Size = 25
    end
    object SCSMRKSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCSMRKS.Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = SCSMRKS
    Left = 337
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 136
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
