object Insurance_work: TInsurance_work
  Left = 279
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Insurance_work'
  ClientHeight = 466
  ClientWidth = 862
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 76
      Height = 20
      Caption = 'Certificate:'
    end
    object Label2: TLabel
      Left = 240
      Top = 32
      Width = 83
      Height = 20
      Caption = 'WorkName:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 24
      Width = 113
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 512
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 328
      Top = 24
      Width = 153
      Height = 28
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 862
    Height = 393
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Certificate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sex'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Education'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 119
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from RsIndividual'
      
        'where not exists(select certificate from Bworker where BWorker.c' +
        'ertificate=RsIndividual.certificate)'
      'order by certificate')
    Left = 424
    Top = 160
    object Query1Certificate: TStringField
      FieldName = 'Certificate'
      FixedChar = True
      Size = 15
    end
    object Query1WorkName: TStringField
      FieldName = 'WorkName'
      FixedChar = True
    end
    object Query1Sex: TStringField
      FieldName = 'Sex'
      FixedChar = True
      Size = 10
    end
    object Query1Education: TStringField
      FieldName = 'Education'
      FixedChar = True
      Size = 10
    end
    object Query1InDate: TDateTimeField
      FieldName = 'InDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
end
