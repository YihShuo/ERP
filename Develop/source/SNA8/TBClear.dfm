object TBClear1: TTBClear1
  Left = 775
  Top = 223
  Width = 870
  Height = 450
  Caption = 'TBClear1'
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
          Caption = 'VATTU'
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
              Width = 107
              Height = 37
              Caption = 'VATTU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 152
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
            end
            object Button1: TButton
              Left = 472
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button1Click
            end
          end
          object DBGridEh2: TDBGridEh
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
            FooterFont.Height = -12
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
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Pending_P'
                Footers = <>
                Title.Caption = 'Material Finish'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'PreparationDate'
                Footers = <>
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'MAY'
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
              Width = 70
              Height = 37
              Caption = 'MAY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit2: TEdit
              Left = 112
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
            end
            object Button2: TButton
              Left = 432
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button2Click
            end
          end
          object DBGridEh1: TDBGridEh
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
            FooterFont.Height = -12
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
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Pending_P'
                Footers = <>
                Title.Caption = 'Material Finish'
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'S_material'
                Footers = <>
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'GO'
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
              Width = 50
              Height = 37
              Caption = 'GO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit3: TEdit
              Left = 88
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
            end
            object Button3: TButton
              Left = 408
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button3Click
            end
          end
          object DBGridEh9: TDBGridEh
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
            FooterFont.Height = -12
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
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Pending_P'
                Footers = <>
                Title.Caption = 'Material Finish'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'insole_send'
                Footers = <>
                Title.Caption = 'Insole_send'
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'BAO BI'
          ImageIndex = 3
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label4: TLabel
              Left = 32
              Top = 24
              Width = 106
              Height = 37
              Caption = 'BAO BI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit4: TEdit
              Left = 144
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
            end
            object Button4: TButton
              Left = 464
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button4Click
            end
          end
          object DBGridEh10: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
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
            FooterFont.Height = -12
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
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Pending_P'
                Footers = <>
                Title.Caption = 'Material Finish'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'lace_send'
                Footers = <>
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Chat Ok(Cutting Finished)'
          ImageIndex = 4
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label5: TLabel
              Left = 16
              Top = 0
              Width = 118
              Height = 37
              Caption = 'Chat Ok'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 16
              Top = 40
              Width = 232
              Height = 37
              Caption = 'Cutting Finished'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit5: TEdit
              Left = 264
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
            end
            object Button5: TButton
              Left = 584
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button5Click
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource5
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
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno'
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Width = 190
              end
              item
                EditButtons = <>
                FieldName = 'Pending_C'
                Footers = <>
                Title.Caption = 'Cutting Finish'
                Width = 104
              end
              item
                EditButtons = <>
                FieldName = 'CutDate'
                Footers = <>
                Width = 293
              end>
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Stitching Finish'
          ImageIndex = 5
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label7: TLabel
              Left = 32
              Top = 24
              Width = 218
              Height = 37
              Caption = 'Stitching Finish'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit6: TEdit
              Left = 256
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
            end
            object Button6: TButton
              Left = 576
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button6Click
            end
          end
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource6
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
        object TabSheet7: TTabSheet
          Caption = 'Assemble Complete Time'
          ImageIndex = 6
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label8: TLabel
              Left = 32
              Top = 24
              Width = 365
              Height = 37
              Caption = 'Assemble Complete Time'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit7: TEdit
              Left = 400
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
            end
            object Button7: TButton
              Left = 720
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button7Click
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource7
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
        object TabSheet8: TTabSheet
          Caption = 'Packing Complete Time'
          ImageIndex = 7
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label9: TLabel
              Left = 32
              Top = 24
              Width = 339
              Height = 37
              Caption = 'Packing Complete Time'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit8: TEdit
              Left = 376
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
            end
            object Button8: TButton
              Left = 696
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 1
              OnClick = Button8Click
            end
          end
          object DBGridEh6: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource8
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
    Left = 40
    Top = 184
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,PreparationDate,memo2 ' +
        'from shoetest')
    Left = 40
    Top = 232
    object Query1testno: TStringField
      FieldName = 'testno'
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
    object Query1Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1PreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 112
    Top = 184
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,S_material,memo2 from ' +
        'shoetest')
    Left = 112
    Top = 232
    object StringField1: TStringField
      FieldName = 'testno'
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
    object BooleanField2: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1S_material: TDateTimeField
      FieldName = 'S_material'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 200
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,insole_send from shoet' +
        'est')
    Left = 200
    Top = 232
    object StringField15: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField15: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField16: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query3insole_send: TDateTimeField
      FieldName = 'insole_send'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 288
    Top = 184
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lace_send from shoetes' +
        't')
    Left = 288
    Top = 232
    object StringField17: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField18: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField17: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField18: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query4lace_send: TDateTimeField
      FieldName = 'lace_send'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 372
    Top = 184
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select testno,Article,TBReceive,Pending_C,CutDate from shoetest')
    Left = 372
    Top = 232
    object StringField3: TStringField
      FieldName = 'testno'
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
    object Query1Pending_C: TBooleanField
      FieldName = 'Pending_C'
    end
    object Query1CutDate: TDateTimeField
      FieldName = 'CutDate'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 452
    Top = 184
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select Testno,Article,TBReceive,Pending_S,StitchingDate from sho' +
        'etest')
    Left = 452
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
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 537
    Top = 185
  end
  object Query7: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,Assemblecomplete,TBReceive from shoetest')
    Left = 537
    Top = 233
    object StringField5: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField4: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1Assemblecomplete: TDateTimeField
      FieldName = 'Assemblecomplete'
    end
  end
  object DataSource8: TDataSource
    DataSet = Query8
    Left = 625
    Top = 185
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select Testno,Article,Finish,Complete,TBReceive from shoetest')
    Left = 625
    Top = 233
    object StringField7: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Finish: TBooleanField
      FieldName = 'Finish'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
    end
    object BooleanField5: TBooleanField
      FieldName = 'TBReceive'
    end
  end
end
