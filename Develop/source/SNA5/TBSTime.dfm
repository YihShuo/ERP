object TBSTime1: TTBSTime1
  Left = 131
  Top = 124
  Width = 870
  Height = 379
  Caption = 'TB Stitching Time'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 348
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'StitchingPhu Get'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 374
          Height = 37
          Caption = 'StitchingPhu Finish SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 392
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 80
        Width = 854
        Height = 233
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_S'
            Footers = <>
            Title.Caption = 'Stitching Finish'
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'StitchingPhuFinishDate'
            Footers = <>
            Width = 277
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'E_embroidery_get Time'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 24
          Width = 359
          Height = 37
          Caption = 'E_embroidery_get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 384
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit3KeyPress
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 80
        Width = 854
        Height = 233
        Align = alClient
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_S'
            Footers = <>
            Title.Caption = 'Stitching Finish'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'E_embroidery_get'
            Footers = <>
            Width = 277
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Printing_get Time'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 24
          Width = 270
          Height = 37
          Caption = 'Printing_get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 296
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit4KeyPress
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 80
        Width = 854
        Height = 233
        Align = alClient
        DataSource = DataSource4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_S'
            Footers = <>
            Title.Caption = 'Stitching Finish'
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'printing_get'
            Footers = <>
            Width = 277
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Stitching Finish'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 32
          Top = 26
          Width = 219
          Height = 37
          Caption = 'MAY SCAN TB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 261
          Top = 20
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit2KeyPress
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 89
        Width = 854
        Height = 224
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 182
          end
          item
            EditButtons = <>
            FieldName = 'Pending_S'
            Footers = <>
            Title.Caption = 'Stitching Finish'
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'StitchingDate'
            Footers = <>
            Width = 285
          end>
      end
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select Testno,Article,TBReceive,Pending_S,StitchingDate from sho' +
        'etest')
    Left = 316
    Top = 240
    object Query2Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query2Pending_S: TBooleanField
      FieldName = 'Pending_S'
    end
    object Query2StitchingDate: TDateTimeField
      FieldName = 'StitchingDate'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 316
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 57
    Top = 185
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,Pending_S,StitchingPhuFinishDate,TBReceive' +
        ' from shoetest')
    Left = 57
    Top = 233
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1StitchingPhuFinishDate: TDateTimeField
      FieldName = 'StitchingPhuFinishDate'
    end
    object Query1Pending_S: TBooleanField
      FieldName = 'Pending_S'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 145
    Top = 185
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,E_embroidery_get,TBReceive,Pending_S from ' +
        'shoetest')
    Left = 145
    Top = 233
    object StringField1: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1E_embroidery_get: TDateTimeField
      FieldName = 'E_embroidery_get'
    end
    object Query3Pending_S: TBooleanField
      FieldName = 'Pending_S'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 233
    Top = 185
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,printing_get,TBReceive,Pending_S from shoe' +
        'test')
    Left = 233
    Top = 233
    object StringField3: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField2: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1printing_get: TDateTimeField
      FieldName = 'printing_get'
    end
    object Query4Pending_S: TBooleanField
      FieldName = 'Pending_S'
    end
  end
end
