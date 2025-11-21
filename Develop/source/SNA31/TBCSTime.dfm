object TBCSTime1: TTBCSTime1
  Left = 239
  Top = 153
  Width = 1191
  Height = 379
  Caption = 'TB Cutting Time'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1175
    Height = 340
    ActivePage = TabSheet6
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
      Caption = 'Vat Tu Ianh(Mtrl Get)'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 0
          Width = 311
          Height = 37
          Caption = 'Vat Tu Mat Ianh Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 32
          Width = 426
          Height = 37
          Caption = 'Cutting Material Receive Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
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
          OnKeyPress = Edit2KeyPress
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 80
        Width = 1175
        Height = 233
        Align = alClient
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
            FieldName = 'Pending_C'
            Footers = <>
            Title.Caption = 'Cutting Finish'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FirstMatOutDate'
            Footers = <>
            Title.Caption = 'CuttingPreparation Date'
            Width = 277
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Phat Theu(Embroidery Send)'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 3
          Width = 230
          Height = 37
          Caption = 'Phat Theu Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 43
          Width = 328
          Height = 37
          Caption = 'Embroidery Send Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 344
          Top = 24
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
        Top = 89
        Width = 1175
        Height = 224
        Align = alClient
        DataSource = DataSource3
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
            FieldName = 'E_embroidery_send'
            Footers = <>
            Width = 293
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Phat In(Printing Send)'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 3
          Width = 183
          Height = 37
          Caption = 'Phat In Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 24
          Top = 43
          Width = 274
          Height = 37
          Caption = 'Printing Send Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 304
          Top = 24
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
        Top = 89
        Width = 1175
        Height = 224
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource4
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
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'printing_send'
            Footers = <>
            Width = 293
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Theu Ve(Embroidery Get)'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 0
          Width = 203
          Height = 37
          Caption = 'Theu Ve Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 16
          Top = 40
          Width = 305
          Height = 37
          Caption = 'Embroidery Get Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 328
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
          OnKeyPress = Edit5KeyPress
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 80
        Width = 1175
        Height = 233
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource5
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
            FieldName = 'Pending_C'
            Footers = <>
            Title.Caption = 'Cutting Finish'
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
    object TabSheet5: TTabSheet
      Caption = 'In Ve(Printing Get)'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 0
          Width = 156
          Height = 37
          Caption = 'In Ve Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 16
          Top = 40
          Width = 278
          Height = 37
          Caption = 'Printingm Get Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 304
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
          OnKeyPress = Edit6KeyPress
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 80
        Width = 1175
        Height = 233
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource6
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
            FieldName = 'Pending_C'
            Footers = <>
            Title.Caption = 'Cutting Finish'
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
    object TabSheet6: TTabSheet
      Caption = 'Chat Ok(Cutting Finished)'
      ImageIndex = 5
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1167
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 3
          Width = 200
          Height = 37
          Caption = 'Chat Ok Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 24
          Top = 43
          Width = 314
          Height = 37
          Caption = 'Cutting Finished Scan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 352
          Top = 24
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
        Top = 89
        Width = 1167
        Height = 216
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource1
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
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 68
    Top = 216
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_C,CutDate,convert(varcha' +
        'r, CutDate_First, 111) as CutDate_First from shoetest')
    Left = 68
    Top = 264
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
    object Query1Pending_C: TBooleanField
      FieldName = 'Pending_C'
    end
    object Query1CutDate: TDateTimeField
      FieldName = 'CutDate'
    end
    object Query1CutDate_First: TStringField
      FieldName = 'CutDate_First'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 145
    Top = 217
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,FirstMatOutDate,TBReceive,Pending_C from s' +
        'hoetest')
    Left = 145
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
    object Query1FirstMatOutDate: TDateTimeField
      FieldName = 'FirstMatOutDate'
    end
    object Query2Pending_C: TBooleanField
      FieldName = 'Pending_C'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 220
    Top = 216
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_C,E_embroidery_send from' +
        ' shoetest')
    Left = 220
    Top = 264
    object StringField3: TStringField
      FieldName = 'testno'
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
    object BooleanField3: TBooleanField
      FieldName = 'Pending_C'
    end
    object Query1E_embroidery_send: TDateTimeField
      FieldName = 'E_embroidery_send'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 292
    Top = 216
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_C,printing_send from sho' +
        'etest')
    Left = 292
    Top = 264
    object StringField5: TStringField
      FieldName = 'testno'
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
    object BooleanField5: TBooleanField
      FieldName = 'Pending_C'
    end
    object Query1printing_send: TDateTimeField
      FieldName = 'printing_send'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 369
    Top = 217
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,E_embroidery_get,TBReceive,Pending_C from ' +
        'shoetest')
    Left = 369
    Top = 265
    object StringField7: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField6: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1E_embroidery_get: TDateTimeField
      FieldName = 'E_embroidery_get'
    end
    object Query5Pending_C: TBooleanField
      FieldName = 'Pending_C'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 441
    Top = 217
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,printing_get,TBReceive,Pending_C from shoe' +
        'test')
    Left = 441
    Top = 265
    object StringField9: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField7: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1printing_get: TDateTimeField
      FieldName = 'printing_get'
    end
    object Query6Pending_C: TBooleanField
      FieldName = 'Pending_C'
    end
  end
end
