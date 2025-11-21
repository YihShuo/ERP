object Scandata_Report: TScandata_Report
  Left = 474
  Top = 309
  Width = 1305
  Height = 675
  Caption = 'Scandata_Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Detail'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 605
        Align = alClient
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1279
          Height = 603
          Align = alClient
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DDBH'
              Footers = <
                item
                  ValueType = fvtCount
                end>
              Title.Caption = 'RY#|'#35330#21934#32232#34399
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'indate'
              Footers = <>
              Title.Caption = 'INDATE|'#20837#24235#26085
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'exedate'
              Footers = <>
              Title.Caption = 'EXEDATE|'#20986#36008#26085
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'Shoe Name'
              Footers = <>
              Title.Caption = 'Shoe Name|'#38795#21517
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'P.O.#'
              Footers = <>
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'Stock NO'
              Footers = <>
              Title.Caption = 'SKU#'
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'Color'
              Footers = <>
              Title.Caption = 'Color|'#38991#33394
              Width = 295
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'RY_Del'
              Footers = <>
              Title.Caption = 'RY# Delivery'
              Width = 140
            end>
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 605
        Align = alClient
        TabOrder = 1
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 1279
          Height = 81
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 19
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'From:'
          end
          object Label4: TLabel
            Left = 304
            Top = 20
            Width = 85
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'OrdNO:'
          end
          object Label5: TLabel
            Left = 304
            Top = 52
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Location:'
          end
          object Label6: TLabel
            Left = 0
            Top = 52
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Status:'
          end
          object Label7: TLabel
            Left = 168
            Top = 20
            Width = 39
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'To:'
          end
          object Label12: TLabel
            Left = 744
            Top = 27
            Width = 61
            Height = 25
            Caption = 'Detail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Button1: TButton
            Left = 491
            Top = 6
            Width = 75
            Height = 34
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button1Click
          end
          object Edit1: TEdit
            Left = 391
            Top = 16
            Width = 97
            Height = 24
            TabOrder = 1
          end
          object DTP1: TDateTimePicker
            Left = 70
            Top = 16
            Width = 97
            Height = 24
            Date = 39983.610104166670000000
            Format = 'yyyy/MM/dd'
            Time = 39983.610104166670000000
            TabOrder = 2
          end
          object ComboBox1: TComboBox
            Left = 71
            Top = 48
            Width = 122
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            ItemIndex = 0
            TabOrder = 3
            Text = 'INDATE'#20837#24235
            Items.Strings = (
              'INDATE'#20837#24235
              'EXEDATE'#20986#36008)
          end
          object DTP2: TDateTimePicker
            Left = 206
            Top = 16
            Width = 97
            Height = 24
            Date = 39983.610104166670000000
            Format = 'yyyy/MM/dd'
            Time = 39983.610104166670000000
            TabOrder = 4
          end
          object Button6: TButton
            Left = 492
            Top = 44
            Width = 75
            Height = 34
            Caption = 'Excel'
            TabOrder = 5
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 571
            Top = 6
            Width = 75
            Height = 34
            Caption = 'Print'
            TabOrder = 6
            OnClick = Button7Click
          end
          object CB1: TCheckBox
            Left = 203
            Top = 54
            Width = 123
            Height = 17
            Caption = #39023#31034#27511#21490#36039#26009
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 7
          end
          object CBLoc: TComboBox
            Left = 392
            Top = 48
            Width = 97
            Height = 24
            ItemHeight = 16
            ItemIndex = 0
            TabOrder = 8
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'A1'
              'A2'
              'A3'
              'A6'
              'A7'
              'A8'
              'A9'
              'A11'
              'A12')
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 82
          Width = 1279
          Height = 522
          Align = alClient
          TabOrder = 1
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1277
            Height = 520
            Align = alClient
            DataSource = DataSource2
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <
                  item
                    ValueType = fvtCount
                  end>
                Title.Caption = 'RY#|'#35330#21934#32232#34399
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'indate'
                Footers = <>
                Title.Caption = 'INDATE|'#20837#24235#26085
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'exedate'
                Footers = <>
                Title.Caption = 'EXEDATE|'#20986#36008#26085
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'Shoe Name'
                Footers = <>
                Title.Caption = 'Shoe Name|'#38795#21517
                Width = 152
              end
              item
                EditButtons = <>
                FieldName = 'P.O.#'
                Footers = <>
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'Stock NO'
                Footers = <>
                Title.Caption = 'SKU#'
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'Color'
                Footers = <>
                Title.Caption = 'Color|'#38991#33394
                Width = 295
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Location'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'RY_Del'
                Footers = <>
                Title.Caption = 'RY# Delivery'
                Width = 140
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Total'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 19
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label3: TLabel
          Left = 304
          Top = 20
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrdNO:'
        end
        object Label8: TLabel
          Left = 304
          Top = 52
          Width = 86
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Location:'
        end
        object Label9: TLabel
          Left = 0
          Top = 52
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Status:'
        end
        object Label10: TLabel
          Left = 168
          Top = 20
          Width = 39
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'To:'
        end
        object Label11: TLabel
          Left = 789
          Top = 32
          Width = 56
          Height = 25
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -21
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 503
          Top = 17
          Width = 61
          Height = 16
          Caption = 'Print Date:'
        end
        object Button2: TButton
          Left = 589
          Top = 44
          Width = 75
          Height = 34
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Edit2: TEdit
          Left = 391
          Top = 16
          Width = 97
          Height = 24
          TabOrder = 1
        end
        object DTP3: TDateTimePicker
          Left = 70
          Top = 16
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 71
          Top = 48
          Width = 122
          Height = 24
          Style = csDropDownList
          Enabled = False
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'INDATE'#20837#24235
          Items.Strings = (
            'INDATE'#20837#24235)
        end
        object DTP4: TDateTimePicker
          Left = 206
          Top = 16
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 4
        end
        object Button3: TButton
          Left = 668
          Top = 44
          Width = 75
          Height = 34
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 667
          Top = 6
          Width = 75
          Height = 34
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button4Click
        end
        object CB2: TCheckBox
          Left = 203
          Top = 54
          Width = 123
          Height = 17
          Caption = #39023#31034#27511#21490#36039#26009
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
        end
        object Cb3: TComboBox
          Left = 392
          Top = 48
          Width = 97
          Height = 24
          ItemHeight = 16
          TabOrder = 8
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'A1'
            'A2'
            'A3'
            'A6'
            'A7'
            'A8'
            'A9'
            'A11'
            'A12')
        end
        object cbPrintDate: TComboBox
          Left = 568
          Top = 15
          Width = 97
          Height = 24
          ItemHeight = 16
          TabOrder = 9
          OnChange = cbPrintDateChange
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 81
        Width = 1281
        Height = 524
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'RY#|'#35330#21934#32232#34399
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'indate'
            Footers = <>
            Title.Caption = 'INDATE|'#20837#24235#26085
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'Shoe Name'
            Footers = <>
            Title.Caption = 'Shoe Name|'#38795#21517
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'P.O.#'
            Footers = <>
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Stock NO'
            Footers = <>
            Title.Caption = 'SKU#'
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Title.Caption = 'Color|'#38991#33394
            Width = 295
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Location'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RY_Del'
            Footers = <>
            Title.Caption = 'RY# Delivery'
            Width = 140
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Total All'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 19
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label15: TLabel
          Left = 304
          Top = 20
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrdNO:'
        end
        object Label16: TLabel
          Left = 304
          Top = 52
          Width = 86
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Location:'
        end
        object Label17: TLabel
          Left = 0
          Top = 52
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Status:'
        end
        object Label18: TLabel
          Left = 168
          Top = 20
          Width = 39
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'To:'
        end
        object Label19: TLabel
          Left = 789
          Top = 32
          Width = 83
          Height = 25
          Caption = 'Total All'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -21
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 503
          Top = 17
          Width = 61
          Height = 16
          Caption = 'Print Date:'
        end
        object Button5: TButton
          Left = 589
          Top = 44
          Width = 75
          Height = 34
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Edit3: TEdit
          Left = 391
          Top = 16
          Width = 97
          Height = 24
          TabOrder = 1
        end
        object DTP5: TDateTimePicker
          Left = 70
          Top = 16
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 2
        end
        object ComboBox3: TComboBox
          Left = 71
          Top = 48
          Width = 122
          Height = 24
          Style = csDropDownList
          Enabled = False
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'INDATE'#20837#24235
          Items.Strings = (
            'INDATE'#20837#24235)
        end
        object DTP6: TDateTimePicker
          Left = 206
          Top = 16
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 4
        end
        object Button8: TButton
          Left = 668
          Top = 44
          Width = 75
          Height = 34
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 667
          Top = 6
          Width = 75
          Height = 34
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button9Click
        end
        object CheckBox1: TCheckBox
          Left = 203
          Top = 54
          Width = 123
          Height = 17
          Caption = #39023#31034#27511#21490#36039#26009
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
        end
        object ComboBox4: TComboBox
          Left = 392
          Top = 48
          Width = 97
          Height = 24
          ItemHeight = 16
          TabOrder = 8
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'A1'
            'A2'
            'A3'
            'A6'
            'A7'
            'A8'
            'A9'
            'A11'
            'A12')
        end
        object ComboBox5: TComboBox
          Left = 568
          Top = 15
          Width = 97
          Height = 24
          ItemHeight = 16
          TabOrder = 9
          OnChange = ComboBox5Change
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 81
        Width = 1281
        Height = 524
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'RY#|'#35330#21934#32232#34399
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'EXEDATE'
            Footers = <>
            Title.Caption = 'INDATE|'#20837#24235#26085
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'Shoe Name'
            Footers = <>
            Title.Caption = 'Shoe Name|'#38795#21517
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'P.O.#'
            Footers = <>
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Stock NO'
            Footers = <>
            Title.Caption = 'SKU#'
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Title.Caption = 'Color|'#38991#33394
            Width = 295
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Location'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RY_Del'
            Footers = <>
            Title.Caption = 'RY# Delivery'
            Width = 140
          end>
      end
    end
  end
  object Query1: TQuery
    Left = 116
    Top = 225
  end
  object DataSource2: TDataSource
    DataSet = QryOrder
    Left = 116
    Top = 193
  end
  object QryOrder: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) a' +
        's exedate,CONVERT(char(10), ywcp.indate,111) as indate,'
      
        'xxzl.XieMing as '#39'Shoe Name'#39',DDZL.KHPO as '#39'P.O.#'#39',ddzl.article as' +
        ' '#39'Stock NO'#39',xxzl.YSSM as '#39'Color'#39',xxzl.LOGO as '#39'Size'#39', sum(YWCP.Q' +
        'ty) as '#39'Qty(Pairs)'#39' FROM YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.' +
        'XieXing'
      'where YWCP.DDBH is not null'
      'and CONVERT(char(10), ywcp.exedate,111) = '
      #39'2015/05/05'#39
      
        'group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111)' +
        ',CONVERT(char(10), ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.' +
        'article,xxzl.YSSM,xxzl.LOGO'
      'order by ywcp.DDBH')
    Left = 116
    Top = 225
    object QryOrderDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QryOrderexedate: TStringField
      FieldName = 'exedate'
      FixedChar = True
      Size = 10
    end
    object QryOrderindate: TStringField
      FieldName = 'indate'
      FixedChar = True
      Size = 10
    end
    object QryOrderGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QryOrderShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object QryOrderPO: TStringField
      FieldName = 'P.O.#'
      FixedChar = True
      Size = 25
    end
    object QryOrderStockNO: TStringField
      FieldName = 'Stock NO'
      FixedChar = True
    end
    object QryOrderColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object QryOrderQty: TIntegerField
      FieldName = 'Qty'
    end
    object QryOrderLocation: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object QryOrderRY_Del: TStringField
      FieldName = 'RY_Del'
      Size = 15
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 177
  end
  object QryOrder_Total: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) a' +
        's exedate,CONVERT(char(10), ywcp.indate,111) as indate,'
      
        'xxzl.XieMing as '#39'Shoe Name'#39',DDZL.KHPO as '#39'P.O.#'#39',ddzl.article as' +
        ' '#39'Stock NO'#39',xxzl.YSSM as '#39'Color'#39',xxzl.LOGO as '#39'Size'#39', sum(YWCP.Q' +
        'ty) as '#39'Qty(Pairs)'#39' FROM YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.' +
        'XieXing'
      'where YWCP.DDBH is not null'
      'and CONVERT(char(10), ywcp.exedate,111) = '
      #39'2015/05/05'#39
      
        'group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111)' +
        ',CONVERT(char(10), ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.' +
        'article,xxzl.YSSM,xxzl.LOGO'
      'order by ywcp.DDBH')
    Left = 164
    Top = 225
    object StringField1: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'indate'
      FixedChar = True
      Size = 10
    end
    object QryOrder_TotalIODate: TStringField
      FieldName = 'IODate'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'P.O.#'
      FixedChar = True
      Size = 25
    end
    object StringField7: TStringField
      FieldName = 'Stock NO'
      FixedChar = True
    end
    object StringField8: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object IntegerField1: TIntegerField
      FieldName = 'Qty'
    end
    object StringField9: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'RY_Del'
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = QryOrder_Total
    Left = 164
    Top = 193
  end
  object DataSource1: TDataSource
    DataSet = QryOrder_TotalAll
    Left = 212
    Top = 193
  end
  object QryOrder_TotalAll: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else ' +
        'YWCP.DDBH end DDBH,DDZL.GSBH, '
      ' max(CONVERT(char(10), ywcp.indate,111)) as indate,'
      
        ' case when max(EXEDATE)  is null then (select max(CONVERT(char(1' +
        '0), ywcp.indate,111)) as indate from YWCP '
      
        '                                       where 1=1 and CONVERT(cha' +
        'r(10), ywcp.INDATE,111) Between '#39'2024/09/01'#39' and '#39'2024/09/29'#39' )'
      
        '                                       else max(CONVERT(char(10)' +
        ', ywcp.indate,111)) end as EXEDATE'
      ',CONVERT(VARCHAR(7), ywcp.indate,111) as IODate,'
      
        '   xxzl.XieMing as '#39'Shoe Name'#39',DDZL.KHPO as '#39'P.O.#'#39',ddzl.article' +
        ' as '#39'Stock NO'#39',xxzl.YSSM as '#39'Color'#39', sum(YWCP.Qty) as Qty,max (Y' +
        'WCP.KCBH) as '#39'Location'#39' '
      ','#39' '#39' as RY_Del '
      'FROM (select * from YWCP union all select * from YWCPOld) YWCP'
      'left join YWDD on YWDD.DDBH=YWCP.DDBH'
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        'left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.' +
        'XieXing'
      'left join DDZLTR on DDZL.DDBH=DDZLTR.DDBH1'
      'where YWCP.DDBH is not null'
      'and ywcp.DDBH not in (select DDBH from DDZLTR) '
      'and CONVERT(char(10), ywcp.INDATE,111) Between '
      #39'2024/09/01'#39' and '#39'2024/09/29'#39' '
      'and DDZL.GSBH='#39'VA12'#39' '
      
        'group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article' +
        ',xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.ind' +
        'ate,111) '
      'order by indate,ywcp.DDBH'
      '')
    Left = 212
    Top = 225
    object QryOrder_TotalAllDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QryOrder_TotalAllGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QryOrder_TotalAllindate: TStringField
      FieldName = 'indate'
      FixedChar = True
      Size = 10
    end
    object QryOrder_TotalAllEXEDATE: TStringField
      FieldName = 'EXEDATE'
      FixedChar = True
      Size = 10
    end
    object QryOrder_TotalAllIODate: TStringField
      FieldName = 'IODate'
      FixedChar = True
      Size = 7
    end
    object QryOrder_TotalAllShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object QryOrder_TotalAllPO: TStringField
      FieldName = 'P.O.#'
      FixedChar = True
      Size = 30
    end
    object QryOrder_TotalAllStockNO: TStringField
      FieldName = 'Stock NO'
      FixedChar = True
    end
    object QryOrder_TotalAllColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 50
    end
    object QryOrder_TotalAllQty: TIntegerField
      FieldName = 'Qty'
    end
    object QryOrder_TotalAllLocation: TStringField
      FieldName = 'Location'
      FixedChar = True
      Size = 10
    end
    object QryOrder_TotalAllRY_Del: TStringField
      FieldName = 'RY_Del'
      FixedChar = True
      Size = 1
    end
  end
end
