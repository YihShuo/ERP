object IQCLIST: TIQCLIST
  Left = 374
  Top = 201
  Width = 747
  Height = 381
  Caption = 'IQC LIST'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 41
      Height = 20
      Caption = 'rkno'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 216
      Top = 24
      Width = 29
      Height = 20
      Caption = 'clbh'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 40
      Height = 20
      Caption = 'ywpm'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 24
      Width = 147
      Height = 21
      DataField = 'rkno'
      DataSource = Inspect.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 24
      Width = 199
      Height = 21
      DataField = 'clbh'
      DataSource = Inspect.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 48
      Width = 650
      Height = 21
      DataField = 'ywpm'
      DataSource = Inspect.DataSource1
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 731
    Height = 254
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IQCDATE'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'memo'
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = Inspect.DataSource1
    SQL.Strings = (
      'select * from iqc'
      'where rkno=:rkno and clbh=:clbh')
    Left = 216
    Top = 144
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'rkno'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1IQCDATE: TDateTimeField
      FieldName = 'IQCDATE'
      Origin = 'DB.iqc.IQCDATE'
    end
    object Query1PASS: TStringField
      FieldName = 'PASS'
      Origin = 'DB.iqc.PASS'
      FixedChar = True
      Size = 1
    end
    object Query1memo: TStringField
      FieldName = 'memo'
      Origin = 'DB.iqc.memo'
      FixedChar = True
      Size = 100
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.iqc.RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.iqc.CLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 144
  end
end
