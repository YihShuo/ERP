object BCSHOES: TBCSHOES
  Left = 332
  Top = 151
  Width = 960
  Height = 480
  Caption = 'BC Shoes List'
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
    Width = 944
    Height = 442
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 942
      Height = 440
      ActivePage = SOS
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object SOS: TTabSheet
        Caption = 'Sum of SKU'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 934
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 47
            Height = 20
            Caption = 'xiexing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 208
            Top = 24
            Width = 59
            Height = 20
            Caption = 'SheHao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 416
            Top = 24
            Width = 33
            Height = 20
            Caption = 'SKU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 72
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 280
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 456
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object Button1: TButton
            Left = 608
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button1Click
          end
        end
        object Panel3: TPanel
          Left = 640
          Top = 65
          Width = 294
          Height = 347
          Align = alRight
          TabOrder = 1
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 292
            Height = 345
            Align = alClient
            DataSource = sosds2
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ryno'
                Footers = <
                  item
                    FieldName = 'ryno'
                    ValueType = fvtCount
                  end>
              end
              item
                EditButtons = <>
                FieldName = 'size'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'class'
                Footers = <>
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'rqty'
                Footers = <
                  item
                    FieldName = 'rqty'
                    ValueType = fvtSum
                  end>
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'lqty'
                Footers = <
                  item
                    FieldName = 'lqty'
                    ValueType = fvtSum
                  end>
                Width = 33
              end>
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 65
          Width = 640
          Height = 347
          Align = alClient
          DataSource = sosds1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object SOWL: TTabSheet
        Caption = 'Sum Of Work-Line'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 934
          Height = 49
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 24
            Top = 16
            Width = 30
            Height = 20
            Caption = 'Line'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 200
            Top = 16
            Width = 35
            Height = 20
            Caption = 'Start'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 336
            Top = 16
            Width = 18
            Height = 20
            Caption = 'To'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit4: TEdit
            Left = 64
            Top = 16
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object sdt: TDateTimePicker
            Left = 240
            Top = 16
            Width = 89
            Height = 21
            Date = 41279.698742268520000000
            Time = 41279.698742268520000000
            TabOrder = 1
          end
          object edt: TDateTimePicker
            Left = 368
            Top = 16
            Width = 89
            Height = 21
            Date = 41279.699114849540000000
            Time = 41279.699114849540000000
            TabOrder = 2
          end
          object Button2: TButton
            Left = 476
            Top = 14
            Width = 75
            Height = 25
            Caption = 'Query'
            TabOrder = 3
            OnClick = Button2Click
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 49
          Width = 934
          Height = 363
          Align = alClient
          DataSource = DataSource1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  object sosm: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from qc_wht')
    Left = 141
    Top = 145
  end
  object sosd: TQuery
    DatabaseName = 'dB'
    DataSource = sosds1
    SQL.Strings = (
      'select qc_whd.ryno,qc_whd.size,qc_whd.class'
      ',sum(rqty) as rqty,sum(lqty) as lqty '
      'from qc_whd'
      'left join ddzl on ddzl.ddbh=qc_whd.ryno'
      'where xiexing=:xiexing'
      'and shehao=:shehao'
      'group by qc_whd.ryno,qc_whd.size,qc_whd.class')
    Left = 141
    Top = 178
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'xiexing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object sosdryno: TStringField
      FieldName = 'ryno'
      FixedChar = True
      Size = 15
    end
    object sosdsize: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object sosdclass: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 1
    end
    object sosdrqty: TIntegerField
      FieldName = 'rqty'
    end
    object sosdlqty: TIntegerField
      FieldName = 'lqty'
    end
  end
  object sosds1: TDataSource
    DataSet = sosm
    Left = 181
    Top = 145
  end
  object sosds2: TDataSource
    DataSet = sosd
    Left = 181
    Top = 178
  end
  object SOW: TQuery
    DatabaseName = 'dB'
    Left = 301
    Top = 145
  end
  object DataSource1: TDataSource
    DataSet = SOW
    Left = 341
    Top = 145
  end
  object getsize: TQuery
    DatabaseName = 'DB'
    Left = 245
    Top = 105
  end
end
