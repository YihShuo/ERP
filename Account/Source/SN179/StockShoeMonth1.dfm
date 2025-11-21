object StockShoeMonth: TStockShoeMonth
  Left = 197
  Top = 128
  Width = 1178
  Height = 558
  Caption = 'StockShoeMonth'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1162
    Height = 519
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Mass'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1154
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 162
          Top = 17
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YSBH:'
        end
        object Label1: TLabel
          Left = 5
          Top = 16
          Width = 45
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 351
          Top = 17
          Width = 48
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
        end
        object Edit1: TEdit
          Left = 215
          Top = 14
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 593
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 53
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button2: TButton
          Left = 693
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button2Click
        end
        object CheckBox1: TCheckBox
          Left = 488
          Top = 16
          Width = 60
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Button3: TButton
          Left = 793
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Print'
          TabOrder = 5
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 892
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Confirm'
          TabOrder = 6
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 990
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Reset'
          TabOrder = 7
          OnClick = Button5Click
        end
        object ComboBox1: TComboBox
          Left = 403
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 8
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1154
        Height = 439
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
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
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'YSBH'
            Footers = <>
            Title.Caption = #21046#20196#32232#34399'|YSBH'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footer.FieldName = 'DDZT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 187
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Sample'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1154
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 148
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 356
          Top = 17
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestNo:'
        end
        object Label10: TLabel
          Left = 488
          Top = 17
          Width = 48
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
        end
        object Edit2: TEdit
          Left = 221
          Top = 14
          Width = 130
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button6: TButton
          Left = 670
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button6Click
        end
        object DTP2: TDateTimePicker
          Left = 50
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button7: TButton
          Left = 764
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button7Click
        end
        object CheckBox2: TCheckBox
          Left = 611
          Top = 16
          Width = 56
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Edit3: TEdit
          Left = 412
          Top = 14
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Button8: TButton
          Left = 859
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 955
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Confirm'
          TabOrder = 7
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 1050
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Reset'
          TabOrder = 8
          OnClick = Button10Click
        end
        object ComboBox2: TComboBox
          Left = 540
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 9
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1154
        Height = 439
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
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
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #27171#21697#21934#32232#34399'|Sample No'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = #36890#22577#34399'|TestNo'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 153
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 144
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'CBY'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1154
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 152
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label9: TLabel
          Left = 10
          Top = 16
          Width = 37
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 345
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrderId:'
        end
        object Edit4: TEdit
          Left = 225
          Top = 14
          Width = 129
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button11: TButton
          Left = 625
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button11Click
        end
        object DTP3: TDateTimePicker
          Left = 50
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button12: TButton
          Left = 722
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button12Click
        end
        object CheckBox3: TCheckBox
          Left = 544
          Top = 16
          Width = 59
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 418
          Top = 14
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Button13: TButton
          Left = 819
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 917
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Confirm'
          TabOrder = 7
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 1014
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Reset'
          TabOrder = 8
          OnClick = Button15Click
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1154
        Height = 439
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
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
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #22823#35330#21934#34399'|Sample NO'
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#24235#25976#37327'|XHQty'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = 'CBY'#23567#35330#21934#34399'|OrderId'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 118
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YWDD.DDBH,YWDD.YSBH,YWDD.CKBH,DDZL.Pairs,YWDD.LastRem,YWD' +
        'D.RKQty,YWDD.XHQty,YWDD.Qty,DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT' +
        ',YWCPMemo.Memo '
      'from ('
      
        '  Select YWDD.DDBH,YWDD.YSBH,Max(YWCP.CKBH) as CKBH,Sum(YWCPMont' +
        'h.Qty) as LastRem,Sum(YWCPRK.Qty) as RKQty,Sum(YWCPXH.Qty) as XH' +
        'Qty,Sum(YWCP.Qty) as Qty'
      '  from ('
      #9'Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from ('
      #9'Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB '
      #9'From YWCPMONTH   '
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9#9' and YWCPMONTH.KCMONTH='#39'08'#39' '
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/09/01'#39' and '#39'2022/09/17'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH'
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,-1*Sum( Case when SB='#39'3' +
        #39' then YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/09/01'#39' and '#39'2022/09/17'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH  ) YWCPMONTH'
      #9'Group by DDBH  ) YWCP'
      '  Left join  ('
      
        '    Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB' +
        ' '
      #9'From YWCPMONTH   '
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      
        #9#9' and YWCPMONTH.KCMONTH='#39'08'#39'  ) YWCPMonth on YWCP.DDBH=YWCPMont' +
        'h.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/09/01'#39' and '#39'2022/09/17'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum( Case when SB='#39'3'#39' t' +
        'hen YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/09/01'#39' and '#39'2022/09/17'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH'
      
        '  Left join YWDD on YWDD.DDBH=YWCP.DDBH  Group by YWDD.YSBH,YWDD' +
        '.DDBH ) YWDD'
      'Left join YWCPMemo on YWCPMemo.DDBH=YWDD.YSBH '
      'left join DDZL on YWDD.YSBH=DDZL.DDBH'
      'where 1=1 and DDZL.GSBH='#39'VA12'#39
      '   and YWDD.YSBH like '#39'Y2209-005%'#39' '
      '   and YWDD.Qty>0'
      ''
      ''
      ''
      '')
    Left = 496
    Top = 192
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 10
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1LastRem: TIntegerField
      FieldName = 'LastRem'
    end
    object Query1RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query1XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 160
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 193
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 547
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ShoeTest.YPDH as DDBH,YPZL.GSDH as CKBH,YPZL.Quantity as ' +
        'Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQty,ShoeT' +
        'estship.Qty as XHQty,ShoetestAll.Qty,YPZL.JHRQ,'
      
        'Shoetest.TestNo,ShoeTest.Article,Case when ShoeTest.TBCancel=1 t' +
        'hen '#39'C'#39' else '#39'Y'#39' end as DDZT,ShoeTestMonth_Memo.Memo from ('
      '  Select  TestNo , Sum(Qty) as Qty'
      '  from ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      #9'   and ShoeTestMonth.CKBH<>'#39'CBY'#39
      #9'union all'
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      #9'Group by shoetest.TestNo'
      #9'union all '
      #9'Select  shoetest.TestNo,-1*Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'   and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  Shoet' +
        'estAll'
      'Left join ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      
        #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' ) ShoeTestMonth on ShoeTestMo' +
        'nth.TestNo=ShoetestAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=Shoe' +
        'testAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'  and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=' +
        'ShoetestAll.TestNo'
      'left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo'
      'Left join YPZL on YPZL.YPDH=ShoeTest.YPDH'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=Shoete' +
        'stAll.TestNo'
      'where 1=1 '
      'and ShoetestAll.Qty>0 '
      'order by ShoetestAll.TestNo'
      '')
    Left = 547
    Top = 192
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 3
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query2LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query2RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query2XHQty: TFloatField
      FieldName = 'XHQty'
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2JHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object Query2TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 548
    Top = 229
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 600
    Top = 160
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CBY_Orders.MasterOrder as DDBH,'#39'CBY '#39'as CKBH,CBY_Orders.t' +
        'otal as Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQ' +
        'ty,ShoeTestship.Qty as XHQty,CBYShoetestAll.Qty,CBY_Orders.requi' +
        'redShipDate as JHRQ,'
      
        'CBYShoetestAll.workOrderId as TestNo,CBY_Orders.style as Article' +
        ',Case when CBY_Orders.Cancel=1 then '#39'C'#39' else '#39'Y'#39' end DDZT,ShoeTe' +
        'stMonth_Memo.Memo  from ('
      '  Select  TestNo as workOrderId, Sum(Qty) as Qty'
      '  from ('
      #9'Select testNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      #9'   and ShoeTestMonth.CKBH='#39'CBY'#39
      #9'union all'
      
        #9'Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, '#39'2'#39' as S' +
        'B '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where Convert(varchar,ScanI.ScanDate, 111) between '#39'2022/10/01'#39 +
        ' and '#39'2022/10/15'#39'  '
      #9'union all '
      
        #9'Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, '#39'3'#39' a' +
        's SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where  (Convert(varchar,CBY_Orders.ShipDate, 111) between '#39'2022' +
        '/10/01'#39' and '#39'2022/10/15'#39'  and  ScanI.ScanDate is not null)   )  ' +
        'Shoetest  Group by TestNo )  CBYShoetestAll'
      'Left join ('
      #9'Select TestNo as workOrderId,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      
        #9'   and ShoeTestMonth.CKBH='#39'CBY'#39' ) ShoeTestMonth on ShoeTestMont' +
        'h.workOrderId=CBYShoetestAll.workOrderId'
      'Left join ('
      
        #9'Select CBY_Orders.workOrderId ,CBY_Orders.total as Qty, '#39'2'#39' as ' +
        'SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where Convert(varchar,ScanI.ScanDate, 111) between '#39'2022/10/01'#39 +
        ' and '#39'2022/10/15'#39'   ) ShoeTestIn on ShoeTestIn.workOrderId=CBYSh' +
        'oetestAll.workOrderId'
      'Left join ('
      
        #9'Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, '#39'3'#39' a' +
        's SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where  (Convert(varchar,CBY_Orders.ShipDate, 111) between '#39'2022' +
        '/10/01'#39' and '#39'2022/10/15'#39'  and  ScanI.ScanDate is not null)  ) Sh' +
        'oeTestship on ShoeTestship.workOrderId=CBYShoetestAll.workOrderI' +
        'd'
      
        'left join CBY_Orders on CBY_Orders.workOrderId=CBYShoetestAll.wo' +
        'rkOrderId'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=CBYSho' +
        'etestAll.workOrderId'
      'where 1=1')
    Left = 600
    Top = 192
    object Query3DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query3LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query3RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query3XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query3Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query3JHRQ: TDateTimeField
      FieldName = 'JHRQ'
    end
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 15
    end
    object Query3Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query3DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query3Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 602
    Top = 231
    object Detail2: TMenuItem
      Caption = 'Detail'
      OnClick = Detail2Click
    end
  end
end
