object checkplan: Tcheckplan
  Left = 181
  Top = 97
  Width = 1147
  Height = 577
  Caption = 'Converse Plan Check'
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
    Width = 1131
    Height = 539
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Will Be Lock'
      object DBGridEh1: TDBGridEh
        Tag = 1
        Left = 0
        Top = 50
        Width = 1123
        Height = 458
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'DDBH|'#35330#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = 'Pairs|'#38617#25976
            Width = 51
          end
          item
            Color = clMenuHighlight
            EditButtons = <>
            FieldName = 'shipdate'
            Footers = <>
            Title.Caption = 'ShipDate|'#20986#36008#26085
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ShipDate| CTS'
            Visible = False
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'CSP'
            Footers = <>
            Title.Caption = 'C-S-P|'#35009#26039#19978#32218'( '#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CSR'
            Footers = <>
            Title.Caption = 'C-S-R|'#35009#26039#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CEP'
            Footers = <>
            Title.Caption = 'C-E-P|'#35009#26039#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CER'
            Footers = <>
            Title.Caption = 'C-E-R|'#35009#26039#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSP'
            Footers = <>
            Title.Caption = 'S-S-P|'#37341#36554#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSR'
            Footers = <>
            Title.Caption = 'S-S-R|'#37341#36554#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SEP'
            Footers = <>
            Title.Caption = 'S-E-P|'#37341#36554#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SER'
            Footers = <>
            Title.Caption = 'S-E-R|'#37341#36554#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASP'
            Footers = <>
            Title.Caption = 'A-S-P|'#25104#22411#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASR'
            Footers = <>
            Title.Caption = 'A-S-R|'#25104#22411#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AEP'
            Footers = <>
            Title.Caption = 'A-E-P|'#25104#22411#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_AEP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A-E-P|'#25104#22411'CTS('#35336')'
            Visible = False
            Width = 82
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AER'
            Footers = <>
            Title.Caption = 'A-E-R|'#25104#22411#23436#25104'('#23526')'
            Width = 80
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 20
          Top = 16
          Width = 112
          Height = 20
          Caption = 'Check 45 Day +'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 136
          Top = 11
          Width = 41
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '5'
        end
        object Button1: TButton
          Left = 190
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 272
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button2Click
        end
        object CK1: TCheckBox
          Left = 355
          Top = 16
          Width = 521
          Height = 17
          Caption = #21482#39023#31034#25104#22411#23436#25104'('#35336')-'#25104#22411#23436#25104'('#23526') )> 5 / Only abs(A-EP-A-E-R)>5'
          TabOrder = 3
        end
        object CheckBox4: TCheckBox
          Left = 792
          Top = 14
          Width = 97
          Height = 17
          Caption = 'Show CTS'
          TabOrder = 4
          OnClick = CheckBox4Click
        end
        object CancelCK: TCheckBox
          Left = 888
          Top = 16
          Width = 201
          Height = 17
          Caption = #19981#21253#21547#21462#28040#35330#21934'DDZT<>C'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Locked'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Tag = 1
        Left = 0
        Top = 50
        Width = 1123
        Height = 458
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
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'DDBH|'#35330#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = 'Pairs|'#38617#25976
            Width = 48
          end
          item
            Color = clMenuHighlight
            EditButtons = <>
            FieldName = 'shipdate'
            Footers = <>
            Title.Caption = 'ShipDate|'#20986#36008#26085
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ShipDate| CTS'
            Visible = False
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'CSP'
            Footers = <>
            Title.Caption = 'C-S-P|'#35009#26039#19978#32218'( '#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CSR'
            Footers = <>
            Title.Caption = 'C-S-R|'#35009#26039#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CEP'
            Footers = <>
            Title.Caption = 'C-E-P|'#35009#26039#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CER'
            Footers = <>
            Title.Caption = 'C-E-R|'#35009#26039#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSP'
            Footers = <>
            Title.Caption = 'S-S-P|'#37341#36554#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSR'
            Footers = <>
            Title.Caption = 'S-S-R|'#37341#36554#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SEP'
            Footers = <>
            Title.Caption = 'S-E-P|'#37341#36554#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SER'
            Footers = <>
            Title.Caption = 'S-E-R|'#37341#36554#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASP'
            Footers = <>
            Title.Caption = 'A-S-P|'#25104#22411#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASR'
            Footers = <>
            Title.Caption = 'A-S-R|'#25104#22411#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AEP'
            Footers = <>
            Title.Caption = 'A-E-P|'#25104#22411#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_AEP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A-E-P|'#25104#22411'CTS('#35336')'
            Visible = False
            Width = 82
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AER'
            Footers = <>
            Title.Caption = 'A-E-R|'#25104#22411#23436#25104'('#23526')'
            Width = 80
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 50
        Align = alTop
        TabOrder = 1
        object Button3: TButton
          Left = 23
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button3Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Select Order'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 303
          Top = 13
          Width = 82
          Height = 16
          AutoSize = False
          Caption = 'Ontime '#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 292
          Top = 43
          Width = 93
          Height = 16
          AutoSize = False
          Caption = 'Overtime '#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 160
          Top = 8
          Width = 21
          Height = 20
          Caption = 'TO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 9
          Top = 11
          Width = 59
          Height = 16
          Caption = 'ShipDate:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 28
          Top = 43
          Width = 37
          Height = 16
          Caption = 'Order:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button4: TButton
          Left = 680
          Top = 38
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 680
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button5Click
        end
        object sdate: TDateTimePicker
          Left = 72
          Top = 8
          Width = 89
          Height = 24
          Date = 41237.504902407410000000
          Time = 41237.504902407410000000
          TabOrder = 2
        end
        object edate: TDateTimePicker
          Left = 184
          Top = 8
          Width = 89
          Height = 24
          Date = 41237.505044687500000000
          Time = 41237.505044687500000000
          TabOrder = 3
        end
        object Edit2: TEdit
          Left = 386
          Top = 10
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '0'
        end
        object Edit3: TEdit
          Left = 387
          Top = 39
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '0'
        end
        object Edit4: TEdit
          Left = 468
          Top = 9
          Width = 79
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '0'
        end
        object Edit5: TEdit
          Left = 468
          Top = 39
          Width = 79
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = '0'
        end
        object editOrder: TEdit
          Left = 72
          Top = 40
          Width = 193
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object CheckBox2: TCheckBox
          Left = 560
          Top = 40
          Width = 97
          Height = 17
          Caption = #26377#26085#26399#21312#38291
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object ScoreFilterCB: TComboBox
          Left = 552
          Top = 8
          Width = 113
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 10
          Items.Strings = (
            ''
            'Ontime'
            'Overtime')
        end
      end
      object DBGridEh3: TDBGridEh
        Tag = 1
        Left = 0
        Top = 81
        Width = 1123
        Height = 427
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
        OnCellClick = DBGridEh3CellClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <
              item
                FieldName = 'ddbh'
                ValueType = fvtCount
              end>
            Title.Caption = 'DDBH|'#35330#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footer.FieldName = 'pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'pairs|'#38617#25976
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'shipdate'
            Footers = <>
            Title.Caption = 'ShipDate|'#20986#36008#26085
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ShipDate| CTS'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'CSP'
            Footers = <>
            Title.Caption = 'C-S-P|'#35009#26039#19978#32218'( '#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CSR'
            Footers = <>
            Title.Caption = 'C-S-R|'#35009#26039#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CEP'
            Footers = <>
            Title.Caption = 'C-E-P|'#35009#26039#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CER'
            Footers = <>
            Title.Caption = 'C-E-R|'#35009#26039#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSP'
            Footers = <>
            Title.Caption = 'S-S-P|'#37341#36554#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSR'
            Footers = <>
            Title.Caption = 'S-S-R|'#37341#36554#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SEP'
            Footers = <>
            Title.Caption = 'S-E-P|'#37341#36554#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SER'
            Footers = <>
            Title.Caption = 'S-E-R|'#37341#36554#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASP'
            Footers = <>
            Title.Caption = 'A-S-P|'#25104#22411#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASR'
            Footers = <>
            Title.Caption = 'A-S-R|'#25104#22411#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AEP'
            Footers = <>
            Title.Caption = 'A-E-P|'#25104#22411#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_AEP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A-E-P|'#25104#22411'CTS('#35336')'
            Visible = False
            Width = 82
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AER'
            Footers = <>
            Title.Caption = 'A-E-R|'#25104#22411#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RYType'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RYType|'#35330#21934#39006#22411
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Select Order by Line'
      ImageIndex = 3
      object Label4: TLabel
        Left = 168
        Top = 104
        Width = 72
        Height = 16
        Caption = #21152#19978#25104#22411#32218#21029
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 183
          Top = 11
          Width = 21
          Height = 20
          Caption = 'TO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 35
          Top = 37
          Width = 28
          Height = 16
          Caption = 'Line:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 9
          Top = 11
          Width = 59
          Height = 16
          Caption = 'ShipDate:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 204
          Top = 38
          Width = 37
          Height = 16
          Caption = 'Order:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 363
          Top = 10
          Width = 82
          Height = 16
          AutoSize = False
          Caption = 'Ontime '#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 350
          Top = 36
          Width = 93
          Height = 16
          AutoSize = False
          Caption = 'Overtime '#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button6: TButton
          Left = 713
          Top = 33
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 713
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button7Click
        end
        object ssdate: TDateTimePicker
          Left = 72
          Top = 8
          Width = 105
          Height = 24
          Date = 41237.504902407410000000
          Time = 41237.504902407410000000
          TabOrder = 2
        end
        object sedate: TDateTimePicker
          Left = 208
          Top = 8
          Width = 105
          Height = 24
          Date = 41237.505044687500000000
          Time = 41237.505044687500000000
          TabOrder = 3
        end
        object Edit6: TEdit
          Left = 444
          Top = 8
          Width = 73
          Height = 24
          TabOrder = 4
          Text = '0'
        end
        object Edit7: TEdit
          Left = 444
          Top = 32
          Width = 73
          Height = 24
          TabOrder = 5
          Text = '0'
        end
        object Edit8: TEdit
          Left = 524
          Top = 8
          Width = 65
          Height = 24
          TabOrder = 6
          Text = '0'
        end
        object Edit9: TEdit
          Left = 524
          Top = 32
          Width = 65
          Height = 24
          TabOrder = 7
          Text = '0'
        end
        object scb: TComboBox
          Left = 70
          Top = 35
          Width = 123
          Height = 24
          ItemHeight = 16
          TabOrder = 8
          Text = 'scb'
        end
        object Edit20: TEdit
          Left = 249
          Top = 34
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object CheckBox3: TCheckBox
          Left = 596
          Top = 38
          Width = 97
          Height = 17
          Caption = #26377#26085#26399#21312#38291
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object ScoreFilterCB1: TComboBox
          Left = 593
          Top = 8
          Width = 113
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 11
          Items.Strings = (
            ''
            'Ontime'
            'Overtime')
        end
      end
      object DBGridEh4: TDBGridEh
        Tag = 1
        Left = 0
        Top = 65
        Width = 1123
        Height = 443
        Align = alClient
        DataSource = DataSource4
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
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'DDBH|'#35330#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Title.Caption = 'pairs|'#38617#25976
            Width = 53
          end
          item
            Color = clMenuHighlight
            EditButtons = <>
            FieldName = 'shipdate'
            Footers = <>
            Title.Caption = 'ShipDate|'#20986#36008#26085
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ShipDate| CTS'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'CSP'
            Footers = <>
            Title.Caption = 'C-S-P|'#35009#26039#19978#32218'( '#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CSR'
            Footers = <>
            Title.Caption = 'C-S-R|'#35009#26039#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CEP'
            Footers = <>
            Title.Caption = 'C-E-P|'#35009#26039#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'CER'
            Footers = <>
            Title.Caption = 'C-E-R|'#35009#26039#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSP'
            Footers = <>
            Title.Caption = 'S-S-P|'#37341#36554#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SSR'
            Footers = <>
            Title.Caption = 'S-S-R|'#37341#36554#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SEP'
            Footers = <>
            Title.Caption = 'S-E-P|'#37341#36554#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SER'
            Footers = <>
            Title.Caption = 'S-E-R|'#37341#36554#23436#25104'('#23526')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASP'
            Footers = <>
            Title.Caption = 'A-S-P|'#25104#22411#19978#32218'('#35336')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ASR'
            Footers = <>
            Title.Caption = 'A-S-R|'#25104#22411#19978#32218'('#23526')'
            Width = 80
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AEP'
            Footers = <>
            Title.Caption = 'A-E-P|'#25104#22411#23436#25104'('#35336')'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BTS_AEP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A-E-P|'#25104#22411'CTS('#35336')'
            Visible = False
            Width = 82
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'AER'
            Footers = <>
            Title.Caption = 'A-E-R|'#25104#22411#23436#25104'('#23526')'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'RYType'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RYType|'#35330#21934#39006#22411
            Visible = False
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Check CSD and  Store In'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label10: TLabel
          Left = 464
          Top = 12
          Width = 76
          Height = 16
          Caption = 'Ontime Pairs'
        end
        object Label11: TLabel
          Left = 456
          Top = 34
          Width = 88
          Height = 16
          Caption = 'Overtime Pairs'
        end
        object Label12: TLabel
          Left = 152
          Top = 16
          Width = 21
          Height = 20
          Caption = 'TO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 16
          Top = 16
          Width = 34
          Height = 20
          Caption = 'CSD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button8: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 352
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button9Click
        end
        object csdsdate: TDateTimePicker
          Left = 56
          Top = 16
          Width = 89
          Height = 24
          Date = 41237.504902407410000000
          Time = 41237.504902407410000000
          TabOrder = 2
        end
        object csdedate: TDateTimePicker
          Left = 176
          Top = 16
          Width = 89
          Height = 24
          Date = 41237.505044687500000000
          Time = 41237.505044687500000000
          TabOrder = 3
        end
        object Edit10: TEdit
          Left = 528
          Top = 8
          Width = 73
          Height = 24
          TabOrder = 4
          Text = '0'
        end
        object Edit11: TEdit
          Left = 528
          Top = 32
          Width = 73
          Height = 24
          TabOrder = 5
          Text = '0'
        end
        object Edit12: TEdit
          Left = 608
          Top = 8
          Width = 65
          Height = 24
          TabOrder = 6
          Text = '0'
        end
        object Edit13: TEdit
          Left = 608
          Top = 32
          Width = 65
          Height = 24
          TabOrder = 7
          Text = '0'
        end
      end
      object DBGridEh5: TDBGridEh
        Tag = 1
        Left = 0
        Top = 57
        Width = 1123
        Height = 451
        Align = alClient
        DataSource = DataSource5
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
        OnGetCellParams = DBGridEh5GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Title.Caption = 'RY#|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'xiexing'
            Footers = <>
            Title.Caption = #22411#39636'|Xiexing'
          end
          item
            EditButtons = <>
            FieldName = 'shehao'
            Footers = <>
            Title.Caption = #33394#34399'|Shehao'
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU|Article'
          end
          item
            EditButtons = <>
            FieldName = 'khpo'
            Footers = <>
            Title.Caption = #23458#25142#35330#21934'|KHPO'
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <
              item
                Color = clYellow
                FieldName = 'pairs'
                ValueType = fvtSum
              end>
            Title.Caption = #38617#25976'|Pairs'
          end
          item
            EditButtons = <>
            FieldName = 'shipdate'
            Footers = <>
            Title.Caption = #20132#26399'|Shipdate'
          end
          item
            EditButtons = <>
            FieldName = 'insdate'
            Footers = <>
            Title.Caption = #20837#24235#23436#25104#26085'|Insdate'
          end
          item
            EditButtons = <>
            FieldName = 'datep'
            Footers = <
              item
                Color = clMenuHighlight
                FieldName = 'datep'
                ValueType = fvtAvg
              end>
            Title.Caption = #26178#38291#24046'|DAY'
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'FYscore'
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 129
        Width = 289
        Height = 379
        Align = alLeft
        DataSource = DataSource6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'date'
            Footers = <>
            Title.Caption = #26085#26399'|Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
            Title.Caption = #25104#22411#25976#37327'|Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 117
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 129
        Align = alTop
        TabOrder = 1
        object Label16: TLabel
          Left = 8
          Top = 16
          Width = 35
          Height = 20
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 168
          Top = 16
          Width = 21
          Height = 20
          Caption = 'TO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 416
          Top = 8
          Width = 78
          Height = 16
          Caption = 'FGI'#21407#22987#20998'       '
        end
        object Label19: TLabel
          Left = 568
          Top = 8
          Width = 36
          Height = 16
          Caption = #24235#23384'    '
        end
        object Label20: TLabel
          Left = 704
          Top = 8
          Width = 90
          Height = 16
          Caption = #24179#22343#25104#22411#38617#25976'      '
        end
        object Label21: TLabel
          Left = 552
          Top = 24
          Width = 9
          Height = 20
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 696
          Top = 24
          Width = 4
          Height = 20
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 568
          Top = 48
          Width = 57
          Height = 16
          Caption = 'FGI'#32317#20998'    '
        end
        object Label24: TLabel
          Left = 696
          Top = 64
          Width = 9
          Height = 20
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 552
          Top = 64
          Width = 9
          Height = 20
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 704
          Top = 48
          Width = 77
          Height = 16
          Caption = 'OGAC'#32317#20998'     '
        end
        object Label27: TLabel
          Left = 416
          Top = 48
          Width = 90
          Height = 16
          Caption = #38617#38917#20998#25976#35413#27604'      '
        end
        object Label28: TLabel
          Left = 16
          Top = 56
          Width = 398
          Height = 16
          Caption = 'FGI'#21407#22987#20998'>14'#30340#35441','#21063'FGY'#32317#20998#28858'0,'#21542#21063'FGY'#21407#22987#20998'*0.5'#28858'FGI'#32317#20998'              '
        end
        object Label29: TLabel
          Left = 16
          Top = 88
          Width = 350
          Height = 16
          Caption = 'OGAC'#32317#20998#28858#26085#26399#21312#38291#25152#26377#35330#21934#25104#22411#23526#38555#26085#26399'-OGAC'#26085#26399'              '
        end
        object Label30: TLabel
          Left = 16
          Top = 104
          Width = 356
          Height = 16
          Caption = #22914'>14,'#21063#28858'0,'#21453#20043#24471'1'#20998','#25152#26377#20998#25976#30456#21152#24460'*0.5'#21363'OGAC'#32317#20998'                '
        end
        object Label33: TLabel
          Left = 392
          Top = 104
          Width = 201
          Height = 20
          Caption = #20197'shipdate'#20316#25490#24207'                   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object fysdate: TDateTimePicker
          Left = 56
          Top = 16
          Width = 113
          Height = 24
          Date = 41913.464512893520000000
          Time = 41913.464512893520000000
          TabOrder = 0
        end
        object fyedate: TDateTimePicker
          Left = 200
          Top = 16
          Width = 129
          Height = 24
          Date = 41925.464587002320000000
          Time = 41925.464587002320000000
          TabOrder = 1
        end
        object Button10: TButton
          Left = 336
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button10Click
        end
        object Edit14: TEdit
          Left = 568
          Top = 64
          Width = 121
          Height = 24
          TabOrder = 3
          Text = 'FGI'#32317#20998
        end
        object Edit15: TEdit
          Left = 568
          Top = 24
          Width = 121
          Height = 24
          TabOrder = 4
          Text = #24235#23384
        end
        object Edit16: TEdit
          Left = 704
          Top = 24
          Width = 121
          Height = 24
          TabOrder = 5
          Text = #24179#22343#25104#22411#38617#25976
        end
        object Edit17: TEdit
          Left = 416
          Top = 24
          Width = 129
          Height = 24
          TabOrder = 6
          Text = 'FGI'#21407#22987
        end
        object Edit18: TEdit
          Left = 704
          Top = 64
          Width = 121
          Height = 24
          TabOrder = 7
          Text = 'OGAC'#32317#20998
        end
        object Edit19: TEdit
          Left = 416
          Top = 64
          Width = 129
          Height = 24
          TabOrder = 8
          Text = #38617#38917#20998#25976#35413#27604
        end
        object Button12: TButton
          Left = 840
          Top = 16
          Width = 75
          Height = 25
          Caption = 'EXCEL'
          TabOrder = 9
          OnClick = Button12Click
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 289
        Top = 129
        Width = 834
        Height = 379
        Align = alClient
        DataSource = DataSource7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|ddbh'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = #20986#36008#26085#26399
            Footers = <>
            Title.Caption = #20132#26399'|shipdate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = #23526#38555#26085#26399
            Footers = <>
            Title.Caption = #25104#22411#23526#38555#26085#26399'|AssemblyOkDate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 132
          end
          item
            EditButtons = <>
            FieldName = #38928#35336#26085#26399
            Footers = <>
            Title.Caption = #38928#35336#26085#26399'|OGAC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = #30456#24046#22825#25976
            Footers = <>
            Title.Caption = #30456#24046#22825#25976'|days'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = #24471#20998
            Footers = <>
            Title.Caption = #24471#20998'|score'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'OGAC'
      ImageIndex = 6
      object Panel7: TPanel
        Left = 0
        Top = 65
        Width = 1123
        Height = 80
        Align = alTop
        Caption = ' '
        TabOrder = 1
        object Label31: TLabel
          Left = 16
          Top = 24
          Width = 51
          Height = 20
          Caption = 'DATE  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 192
          Top = 24
          Width = 21
          Height = 20
          Caption = 'TO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 712
          Top = 24
          Width = 9
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 568
          Top = 24
          Width = 140
          Height = 20
          Caption = #24050#21295#20837#36039#26009#31558#25976'       '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 16
          Top = 52
          Width = 201
          Height = 20
          Caption = #20197'shipdate'#20316#25490#24207'                   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 416
          Top = 32
          Width = 153
          Height = 17
          Caption = 'Only Show No OGAC data                     '
          TabOrder = 0
        end
        object ogacsdate: TDateTimePicker
          Left = 64
          Top = 24
          Width = 105
          Height = 24
          Date = 41939.428055231480000000
          Time = 41939.428055231480000000
          TabOrder = 1
        end
        object ogacedate: TDateTimePicker
          Left = 216
          Top = 24
          Width = 97
          Height = 24
          Date = 41939.428530844910000000
          Time = 41939.428530844910000000
          TabOrder = 2
        end
        object Button11: TButton
          Left = 328
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button11Click
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 65
        Align = alTop
        TabOrder = 6
        object BB4: TBitBtn
          Left = 56
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BB4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbt6: TBitBtn
          Left = 272
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'import'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = bbt6Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 145
        Width = 1123
        Height = 363
        Align = alClient
        DataSource = OGACshow
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'DDBH|'#35330#21934#32232#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Caption = 'ShipDate|'#20132#26399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'OGAC'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
      object BB1: TBitBtn
        Left = 8
        Top = 8
        Width = 49
        Height = 49
        Caption = 'Query'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BB1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FF3FF3333333333CC30003333333333773777333333333C33
          3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
          33003377333337F33377333333333C333300333F333337F33377339333333C33
          3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
          330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
          330077F377F337F33377993399333C33330077FF773337F33377399993333C33
          33333777733337F333FF333333333C33300033333333373FF7773333333333CC
          3000333333333377377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BB5: TBitBtn
        Left = 104
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Save Current'
        Caption = 'Save'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BB5Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BB6: TBitBtn
        Left = 152
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Cancel'
        Caption = 'Cancel'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BB6Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BB7: TBitBtn
        Left = 200
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Exit Current Form'
        Caption = 'Exit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BB7Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object wbl: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ddzl.ddbh,ddzl.Pairs,CONVERT(char(10),ddzl.shipdate,111) ' +
        'as shipdate, '
      
        'CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111' +
        ') as CSR, '
      
        'CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111' +
        ') as CER, '
      
        'CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111' +
        ') as SSR, '
      
        'CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111' +
        ') as SER, '
      
        'CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111' +
        ') as ASR, '
      
        'CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111' +
        ') as AER, '
      
        'Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as ' +
        'BTS_AEP '
      'from ddzl '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh '
      'left join ('
      'select * from ('
      
        'select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd' +
        '_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert' +
        '(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERD' +
        'ATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDE' +
        'R BY RTSSmdd.USERDATE DESC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'N'#39' '
      
        '   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN='#39'Y'#39'  ' +
        'Group by DDBH) '
      ') RTSSmdd_N '
      'left join ('
      'select * from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'Y'#39' '
      ') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH'
      ''
      ''
      ' union all   '
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')='#39'STL'#39' and RTSSm' +
        'dd.YN='#39'Y'#39' '
      '  '
      ') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH'
      'where ddzl.khbh='#39'036'#39
      '  and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      
        ' and ddzl.shipdate < (getdate() + 45 + 5) and ddzl.shipdate > ge' +
        'tdate() + 45  and RTSSMDD.DDBH is null '
      'group by ddzl.ddbh,ddzl.Pairs,ddzl.shipdate, '
      #9#9' c.strt,c.endd,c.strtr,c.enddr, '
      #9#9' s.strt,s.endd,s.strtr,s.enddr, '
      #9#9' a.strt,a.endd,a.strtr,a.enddr '
      'order by shipdate')
    Left = 308
    Top = 264
    object wblddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object wblPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object wblshipdate: TStringField
      FieldName = 'shipdate'
      FixedChar = True
      Size = 10
    end
    object wblCSP: TStringField
      FieldName = 'CSP'
      FixedChar = True
      Size = 10
    end
    object wblCSR: TStringField
      FieldName = 'CSR'
      FixedChar = True
      Size = 10
    end
    object wblCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object wblCER: TStringField
      FieldName = 'CER'
      FixedChar = True
      Size = 10
    end
    object wblSSP: TStringField
      FieldName = 'SSP'
      FixedChar = True
      Size = 10
    end
    object wblSSR: TStringField
      FieldName = 'SSR'
      FixedChar = True
      Size = 10
    end
    object wblSEP: TStringField
      FieldName = 'SEP'
      FixedChar = True
      Size = 10
    end
    object wblSER: TStringField
      FieldName = 'SER'
      FixedChar = True
      Size = 10
    end
    object wblASP: TStringField
      FieldName = 'ASP'
      FixedChar = True
      Size = 10
    end
    object wblASR: TStringField
      FieldName = 'ASR'
      FixedChar = True
      Size = 10
    end
    object wblAEP: TStringField
      FieldName = 'AEP'
      FixedChar = True
      Size = 10
    end
    object wblAER: TStringField
      FieldName = 'AER'
      FixedChar = True
      Size = 10
    end
    object wblBTS_ShipDate: TDateTimeField
      FieldName = 'BTS_ShipDate'
    end
    object wblBTS_AEP: TStringField
      FieldName = 'BTS_AEP'
      FixedChar = True
      Size = 10
    end
  end
  object ld: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ddzl.ddbh,ddzl.Pairs,CONVERT(char(10),ddzl.shipdate,111) ' +
        'as shipdate, '
      
        'CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111' +
        ') as CSR, '
      
        'CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111' +
        ') as CER, '
      
        'CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111' +
        ') as SSR, '
      
        'CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111' +
        ') as SER, '
      
        'CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111' +
        ') as ASR, '
      
        'CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111' +
        ') as AER, '
      
        'Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as ' +
        'BTS_AEP '
      'from ddzl '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh '
      'left join ('
      'select * from ('
      
        'select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd' +
        '_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert' +
        '(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERD' +
        'ATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDE' +
        'R BY RTSSmdd.USERDATE DESC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'N'#39' '
      
        '   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN='#39'Y'#39'  ' +
        'Group by DDBH) '
      ') RTSSmdd_N '
      'left join ('
      'select * from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'Y'#39' '
      ') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH'
      ''
      ' union all   '
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')='#39'STL'#39' and RTSSm' +
        'dd.YN='#39'Y'#39' '
      '  '
      ') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH'
      'where ddzl.khbh='#39'036'#39
      '  and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      
        'and ( ( ddzl.shipdate <= (getdate() + 45 ) and ddzl.shipdate > g' +
        'etdate()  )  or ( RTSSMDD.DDBH is not null) ) '
      'group by ddzl.ddbh,ddzl.Pairs,ddzl.shipdate, '
      #9#9' c.strt,c.endd,c.strtr,c.enddr, '
      #9#9' s.strt,s.endd,s.strtr,s.enddr, '
      #9#9' a.strt,a.endd,a.strtr,a.enddr '
      'order by shipdate'
      '')
    Left = 356
    Top = 264
    object ldddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object ldPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object ldshipdate: TStringField
      FieldName = 'shipdate'
      FixedChar = True
      Size = 10
    end
    object ldCSP: TStringField
      FieldName = 'CSP'
      FixedChar = True
      Size = 10
    end
    object ldCSR: TStringField
      FieldName = 'CSR'
      FixedChar = True
      Size = 10
    end
    object ldCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object ldCER: TStringField
      FieldName = 'CER'
      FixedChar = True
      Size = 10
    end
    object ldSSP: TStringField
      FieldName = 'SSP'
      FixedChar = True
      Size = 10
    end
    object ldSSR: TStringField
      FieldName = 'SSR'
      FixedChar = True
      Size = 10
    end
    object ldSEP: TStringField
      FieldName = 'SEP'
      FixedChar = True
      Size = 10
    end
    object ldSER: TStringField
      FieldName = 'SER'
      FixedChar = True
      Size = 10
    end
    object ldASP: TStringField
      FieldName = 'ASP'
      FixedChar = True
      Size = 10
    end
    object ldASR: TStringField
      FieldName = 'ASR'
      FixedChar = True
      Size = 10
    end
    object ldAEP: TStringField
      FieldName = 'AEP'
      FixedChar = True
      Size = 10
    end
    object ldAER: TStringField
      FieldName = 'AER'
      FixedChar = True
      Size = 10
    end
    object ldBTS_ShipDate: TDateTimeField
      FieldName = 'BTS_ShipDate'
    end
    object ldBTS_AEP: TStringField
      FieldName = 'BTS_AEP'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = wbl
    Left = 308
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = ld
    Left = 356
    Top = 232
  end
  object so: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ddzl.ddbh,ddzl.pairs,CONVERT(char(10),ddzl.shipdate,111) ' +
        'as shipdate, '
      
        'CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111' +
        ') as CSR, '
      
        'CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111' +
        ') as CER, '
      
        'CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111' +
        ') as SSR, '
      
        'CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111' +
        ') as SER, '
      
        'CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111' +
        ') as ASR, '
      
        'CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111' +
        ') as AER, '
      
        'Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as ' +
        'BTS_AEP,Max(DDZL.RYTYPE) as RYType'
      'from ddzl '
      'left join'
      'YWCP on ywcp.ddbh=DDZL.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh '
      'left join ('
      'select * from ('
      
        'select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd' +
        '_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert' +
        '(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERD' +
        'ATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDE' +
        'R BY RTSSmdd.USERDATE DESC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'N'#39' '
      
        '   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN='#39'Y'#39'  ' +
        'Group by DDBH) '
      ') RTSSmdd_N '
      'left join ('
      'select * from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'Y'#39' '
      ') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH'
      ''
      ' union all   '
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')='#39'STL'#39' and RTSSm' +
        'dd.YN='#39'Y'#39' '
      '  '
      ') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH'
      'where ddzl.khbh='#39'036'#39
      '  and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      #9'and CONVERT(char(10),ddzl.shipdate,111) >= '#39'2016/03/01'#39
      #9'and CONVERT(char(10),ddzl.shipdate,111) <= '#39'2016/03/31'#39
      'and ddzl.ddbh like '#39'%'#39
      ' and a.strt is not null '
      'group by ddzl.ddbh,ddzl.pairs,ddzl.shipdate, '
      #9#9' c.strt,c.endd,c.strtr,c.enddr, '
      #9#9' s.strt,s.endd,s.strtr,s.enddr, '
      #9#9' a.strt,a.endd,a.strtr,a.enddr '
      'order by ddzl.shipdate')
    Left = 404
    Top = 264
    object soddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object sopairs: TIntegerField
      FieldName = 'pairs'
    end
    object soshipdate: TStringField
      FieldName = 'shipdate'
      FixedChar = True
      Size = 10
    end
    object soCSP: TStringField
      FieldName = 'CSP'
      FixedChar = True
      Size = 10
    end
    object soCSR: TStringField
      FieldName = 'CSR'
      FixedChar = True
      Size = 10
    end
    object soCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object soCER: TStringField
      FieldName = 'CER'
      FixedChar = True
      Size = 10
    end
    object soSSP: TStringField
      FieldName = 'SSP'
      FixedChar = True
      Size = 10
    end
    object soSSR: TStringField
      FieldName = 'SSR'
      FixedChar = True
      Size = 10
    end
    object soSEP: TStringField
      FieldName = 'SEP'
      FixedChar = True
      Size = 10
    end
    object soSER: TStringField
      FieldName = 'SER'
      FixedChar = True
      Size = 10
    end
    object soASP: TStringField
      FieldName = 'ASP'
      FixedChar = True
      Size = 10
    end
    object soASR: TStringField
      FieldName = 'ASR'
      FixedChar = True
      Size = 10
    end
    object soAEP: TStringField
      FieldName = 'AEP'
      FixedChar = True
      Size = 10
    end
    object soAER: TStringField
      FieldName = 'AER'
      FixedChar = True
      Size = 10
    end
    object soBTS_ShipDate: TDateTimeField
      FieldName = 'BTS_ShipDate'
    end
    object soBTS_AEP: TStringField
      FieldName = 'BTS_AEP'
      FixedChar = True
      Size = 10
    end
    object soRYType: TStringField
      FieldName = 'RYType'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource3: TDataSource
    DataSet = so
    Left = 404
    Top = 232
  end
  object tempq: TQuery
    DatabaseName = 'dB'
    Left = 268
    Top = 264
  end
  object sol: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select ddzl.ddbh,ddzl.pairs,CONVERT(char(10),ddzl.shipdate,111) ' +
        'as shipdate, '
      
        'CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111' +
        ') as CSR, '
      
        'CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111' +
        ') as CER, '
      
        'CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111' +
        ') as SSR, '
      
        'CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111' +
        ') as SER, '
      
        'CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111' +
        ') as ASR, '
      
        'CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111' +
        ') as AER, '
      
        'Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as ' +
        'BTS_AEP,Max(DDZL.RYType) as RYType '
      'from ddzl '
      'left join'
      'YWCP on ywcp.ddbh=DDZL.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh '
      'left join '
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd, '
      #9#9#9'min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR '
      '      from smdd '
      '      where smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh '
      'left join ('
      'select * from ('
      
        'select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd' +
        '_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert' +
        '(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERD' +
        'ATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDE' +
        'R BY RTSSmdd.USERDATE DESC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'N'#39' '
      
        '   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN='#39'Y'#39'  ' +
        'Group by DDBH) '
      ') RTSSmdd_N '
      'left join ('
      'select * from ('
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')<>'#39'STL'#39' and RTSS' +
        'mdd.YN='#39'Y'#39' '
      ') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH'
      ''
      ' union all   '
      
        ' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,R' +
        'TSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSm' +
        'dd.DDBH ORDER BY RTSSmdd.USERDATE ASC)'
      
        'as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.s' +
        'hipdate-180>GetDate() and IsNull(DDZL.RYTYPE,'#39#39')='#39'STL'#39' and RTSSm' +
        'dd.YN='#39'Y'#39' '
      '  '
      ') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH'
      'where ddzl.khbh='#39'036'#39
      '  and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      #9'and CONVERT(char(10),ddzl.shipdate,111) >= '#39'2016/03/19'#39
      #9'and CONVERT(char(10),ddzl.shipdate,111) <= '#39'2016/04/18'#39
      ' and DDZL.DDZT<>'#39'C'#39' '
      'and ddzl.ddbh like '#39'%'#39
      ' and a.strt is not null '
      'group by ddzl.ddbh,ddzl.pairs,ddzl.shipdate, '
      #9#9' c.strt,c.endd,c.strtr,c.enddr, '
      #9#9' s.strt,s.endd,s.strtr,s.enddr, '
      #9#9' a.strt,a.endd,a.strtr,a.enddr')
    Left = 444
    Top = 264
    object solddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object solpairs: TIntegerField
      FieldName = 'pairs'
    end
    object solshipdate: TStringField
      FieldName = 'shipdate'
      FixedChar = True
      Size = 10
    end
    object solBTS_ShipDate: TDateTimeField
      FieldName = 'BTS_ShipDate'
    end
    object solCSP: TStringField
      FieldName = 'CSP'
      FixedChar = True
      Size = 10
    end
    object solCSR: TStringField
      FieldName = 'CSR'
      FixedChar = True
      Size = 10
    end
    object solCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object solCER: TStringField
      FieldName = 'CER'
      FixedChar = True
      Size = 10
    end
    object solSSP: TStringField
      FieldName = 'SSP'
      FixedChar = True
      Size = 10
    end
    object solSSR: TStringField
      FieldName = 'SSR'
      FixedChar = True
      Size = 10
    end
    object solSEP: TStringField
      FieldName = 'SEP'
      FixedChar = True
      Size = 10
    end
    object solSER: TStringField
      FieldName = 'SER'
      FixedChar = True
      Size = 10
    end
    object solASP: TStringField
      FieldName = 'ASP'
      FixedChar = True
      Size = 10
    end
    object solASR: TStringField
      FieldName = 'ASR'
      FixedChar = True
      Size = 10
    end
    object solAEP: TStringField
      FieldName = 'AEP'
      FixedChar = True
      Size = 10
    end
    object solBTS_AEP: TStringField
      FieldName = 'BTS_AEP'
      FixedChar = True
      Size = 10
    end
    object solAER: TStringField
      FieldName = 'AER'
      FixedChar = True
      Size = 10
    end
    object solRYType: TStringField
      FieldName = 'RYType'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource4: TDataSource
    DataSet = sol
    Left = 444
    Top = 232
  end
  object DataSource5: TDataSource
    DataSet = ccsi
    Left = 484
    Top = 232
  end
  object ccsi: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ddzl.ddbh,ddzl.xiexing,ddzl.shehao,ddzl.article,ddzl.khpo' +
        ',ddzl.pairs'
      #9#9',ddzl.shipdate,ywcp.insdate'
      
        #9#9',abs(convert(int,ddzl.shipdate)-convert(int,ywcp.insdate)) as ' +
        'datep'
      ' from ddzl '
      'left join ywdd on ddzl.ddbh=ywdd.ddbh'
      'left join (select ddbh,max(lastindate) as insdate '
      #9#9#9'from ywcp'
      #9#9#9'group by ddbh) as ywcp on ywcp.ddbh=ddzl.ddbh'
      'where ywdd.sb ='#39'ok'#39' and ddzl.khbh='#39'036'#39
      #9'and shipdate>='#39'2013/04/01'#39
      #9'and shipdate<='#39'2013/05/01'#39)
    Left = 484
    Top = 264
    object ccsiddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object ccsixiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object ccsishehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object ccsiarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object ccsikhpo: TStringField
      FieldName = 'khpo'
      FixedChar = True
      Size = 25
    end
    object ccsipairs: TIntegerField
      FieldName = 'pairs'
    end
    object ccsishipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object ccsiinsdate: TDateTimeField
      FieldName = 'insdate'
    end
    object ccsidatep: TIntegerField
      FieldName = 'datep'
    end
  end
  object qy: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select CONVERT(char(10),scbb.scdate,111) as date,sum(ISNULL(scbb' +
        'ss.qty,0))as qty from scbbss '
      'left join scbb with (nolock) on scbb.prono  =scbbss.prono   '
      'where scbbss.SCBH like '#39'y%'#39' and scbbss.gxlb= '#39'A'#39'     '
      'group by  CONVERT(char(10),scbb.scdate,111)')
    Left = 580
    Top = 264
  end
  object fy: TQuery
    DatabaseName = 'dB'
    Left = 548
    Top = 264
  end
  object DataSource6: TDataSource
    DataSet = qy
    Left = 580
    Top = 232
  end
  object DataSource7: TDataSource
    DataSet = qy1
    Left = 612
    Top = 232
  end
  object qy1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ddzl_od.ddbh,ddzl_od.shipdate as '#20986#36008#26085#26399',CONVERT(char(10),a.' +
        'enddR,111) as '#23526#38555#26085#26399' ,CONVERT(char(10),ddzl_od.ogac,111) as '#38928#35336#26085#26399','
      
        ' datediff(day,ddzl_od.ogac,a.enddR) as '#30456#24046#22825#25976',sum(case when datedi' +
        'ff(day,ddzl_od.ogac,a.enddR) > 14 then 1 else 0 end)as '#24471#20998
      ' from ddzl_od'
      'left join'
      ' (select smdd.ysbh,smdd.depno,'
      'max(smdd.OKdate) as enddR'
      'from smdd'
      'where smdd.gxlb='#39'A'#39
      'group by smdd.ysbh,smdd.depno) as A on A.ysbh=ddzl_od.ddbh '
      'left join BDepartment on BDepartment.id=a.depno'
      'group by ddzl_od.ddbh,ddzl_od.shipdate,ddzl_od.ogac, a.enddr'
      'order by ddzl_od.shipdate DESC')
    Left = 612
    Top = 264
  end
  object OGACshow: TDataSource
    DataSet = DDZL_OD
    Left = 772
    Top = 232
  end
  object DDZL_OD: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ddbh as DDBH,shipdate as ShipDate,CONVERT(char(10),ogac,1' +
        '11) as OGAC from ddzl_od')
    UpdateObject = UDDDZL_OD
    Left = 772
    Top = 264
  end
  object OpenDialog: TOpenDialog
    Left = 740
    Top = 232
  end
  object UDDDZL_OD: TUpdateSQL
    ModifySQL.Strings = (
      'update ddzl_od'
      'set'
      '  OGAC = :OGAC'
      'where'
      '  DDBH = :OLD_DDBH')
    Left = 772
    Top = 296
  end
end
