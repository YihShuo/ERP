object ScanTBBMTime1: TScanTBBMTime1
  Left = 899
  Top = 134
  Width = 870
  Height = 450
  Caption = 'ScanTB Bottom Material ready Time'
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
    Width = 854
    Height = 411
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 852
      Height = 409
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 850
        Height = 407
        ActivePage = TabSheet2
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
          Caption = 'R3_Outsole Get'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 842
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 56
              Top = 24
              Width = 327
              Height = 37
              Caption = 'R3_Outsole Get SCAN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit2: TEdit
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
              OnKeyPress = Edit2KeyPress
            end
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 80
            Width = 842
            Height = 292
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
                FieldName = 'DMatArriveDateR3'
                Footers = <>
                Width = 277
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Assemble Complete Time'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 842
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 32
              Top = 24
              Width = 368
              Height = 37
              Caption = 'Assemblecomplete SCAN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit3: TEdit
              Left = 408
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
            Width = 842
            Height = 292
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
                FieldName = 'Assemblecomplete'
                Footers = <>
                Width = 277
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'R2_Foxing Get'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 136
              Top = 24
              Width = 313
              Height = 37
              Caption = 'R2_Foxing Get SCAN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 456
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
                FieldName = 'DMatArriveDate'
                Footers = <>
                Title.Caption = 'Bottom Material ready Date'
                Width = 277
              end>
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 41
    Top = 217
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,Finish,DMatArriveDate,TBReceive from shoet' +
        'est')
    Left = 41
    Top = 265
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
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1DMatArriveDate: TDateTimeField
      FieldName = 'DMatArriveDate'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 121
    Top = 217
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,DMatArriveDateR3,TBReceive from shoetest')
    Left = 121
    Top = 265
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
    object Query1DMatArriveDateR3: TDateTimeField
      FieldName = 'DMatArriveDateR3'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 193
    Top = 217
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,Assemblecomplete,TBReceive,convert(varchar' +
        ', AssembiyDate_first, 111) as AssembiyDate_first from shoetest')
    Left = 193
    Top = 265
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
    object Query1Assemblecomplete: TDateTimeField
      FieldName = 'Assemblecomplete'
    end
    object Query3AssembiyDate_first: TStringField
      FieldName = 'AssembiyDate_first'
      FixedChar = True
      Size = 30
    end
  end
end
