object ScanTBComplete1: TScanTBComplete1
  Left = 429
  Top = 107
  Width = 870
  Height = 450
  Caption = 'ScanTBComplete'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 419
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 417
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 858
        Height = 415
        ActivePage = TabSheet3
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
          Caption = 'Insole_get Time'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 32
              Top = 24
              Width = 245
              Height = 37
              Caption = 'SCAN Insole_get'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit2: TEdit
              Left = 288
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
              OnKeyPress = Edit2KeyPress
            end
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource2
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
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'insole_get'
                Footers = <>
                Title.Caption = 'Insole_get'
                Width = 277
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Lace_get Time'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 32
              Top = 24
              Width = 230
              Height = 37
              Caption = 'SCAN Lace_get'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit3: TEdit
              Left = 272
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
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
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
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'lace_get'
                Footers = <>
                Title.Caption = 'Lace_get'
                Width = 277
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Packing Complete Time'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 32
              Top = 24
              Width = 358
              Height = 37
              Caption = 'SCAN Packing Complete'
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
            Width = 850
            Height = 300
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
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Width = 277
              end>
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 57
    Top = 201
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,Finish,Complete,TBReceive from shoetest')
    Left = 57
    Top = 249
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Finish: TBooleanField
      FieldName = 'Finish'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 129
    Top = 201
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,Finish,insole_get,TBReceive from shoetest')
    Left = 129
    Top = 249
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
      FieldName = 'Finish'
    end
    object BooleanField2: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1insole_get: TDateTimeField
      FieldName = 'insole_get'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 209
    Top = 201
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,lace_get,Finish,TBReceive from shoetest')
    Left = 209
    Top = 249
    object StringField3: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField3: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1lace_get: TDateTimeField
      FieldName = 'lace_get'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Finish'
    end
  end
end
