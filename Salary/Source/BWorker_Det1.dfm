object BWorker_Det: TBWorker_Det
  Left = 352
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'BWorker_Det'
  ClientHeight = 373
  ClientWidth = 709
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
    Width = 709
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
      Width = 21
      Height = 20
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 184
      Top = 32
      Width = 83
      Height = 20
      Caption = 'WorkName:'
    end
    object Edit1: TEdit
      Left = 48
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
      Left = 280
      Top = 24
      Width = 193
      Height = 28
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 709
    Height = 300
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Certificate'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkName'
        Title.Alignment = taCenter
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sex'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Education'
        Title.Alignment = taCenter
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InDate'
        Title.Alignment = taCenter
        Width = 116
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
