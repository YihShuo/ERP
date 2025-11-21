object WareStock: TWareStock
  Left = 223
  Top = 157
  Width = 1690
  Height = 514
  Caption = 'WareStock'
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
    Width = 1674
    Height = 475
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TON KHO VAT TU'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1666
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 3
          Top = 11
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          OnDblClick = Label3DblClick
        end
        object Label2: TLabel
          Left = 423
          Top = 14
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNO:'
        end
        object Label13: TLabel
          Left = 203
          Top = 48
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'StockDate:'
        end
        object Label28: TLabel
          Left = 621
          Top = 13
          Width = 91
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Shelves:'
        end
        object Label1: TLabel
          Left = 402
          Top = 47
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Not CKBH:'
        end
        object Label9: TLabel
          Left = 35
          Top = 48
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Caption = 'CKBH:'
        end
        object Label16: TLabel
          Left = 579
          Top = 46
          Width = 44
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO:'
        end
        object Label4: TLabel
          Left = 225
          Top = 12
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'JHDH:'
          OnDblClick = Label3DblClick
        end
        object Button1: TButton
          Left = 707
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object CBX1: TComboBox
          Left = 76
          Top = 44
          Width = 121
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 1
        end
        object MatNoEdit: TEdit
          Left = 76
          Top = 8
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CNO1Edit: TEdit
          Left = 496
          Top = 9
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object StockDT1: TDateTimePicker
          Left = 276
          Top = 44
          Width = 125
          Height = 24
          Date = 43069.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 43069.406377673610000000
          TabOrder = 4
        end
        object CBox1: TCheckBox
          Left = 905
          Top = 11
          Width = 37
          Height = 17
          Caption = '<0'
          TabOrder = 5
        end
        object KCBHEdit: TEdit
          Left = 715
          Top = 9
          Width = 87
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object NotInCKBHEdit: TEdit
          Left = 496
          Top = 43
          Width = 83
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object CKBHBox: TCheckBox
          Left = 1009
          Top = 11
          Width = 133
          Height = 17
          Caption = 'Sum(MatNo)'
          TabOrder = 8
        end
        object Button2: TButton
          Left = 803
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = Button2Click
        end
        object HGLBCBX: TComboBox
          Left = 625
          Top = 43
          Width = 76
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 10
          Items.Strings = (
            'ALL'
            'in ('#39'NK'#39')'
            'in ('#39'TC'#39')'
            'in ('#39'HD'#39')'
            'in ('#39'KD'#39')'
            'in ('#39'XT'#39')'
            'in ('#39'GC'#39')'
            'in ('#39'NK1'#39')'
            'in ('#39'TC1'#39')'
            'in ('#39'HD1'#39')'
            'in ('#39'KD1'#39')'
            'in ('#39'H11'#39')'
            'in('#39'NQ'#39')'
            'in('#39'NKNQ'#39')'
            'not in ('#39'XT'#39')')
        end
        object Button4: TButton
          Left = 897
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 993
          Top = 38
          Width = 105
          Height = 33
          Caption = 'Monthly Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = Button5Click
        end
        object KCBH1Edit: TEdit
          Left = 811
          Top = 9
          Width = 87
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 13
        end
        object Button6: TButton
          Left = 1105
          Top = 38
          Width = 105
          Height = 33
          Caption = 'Material List'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnClick = Button6Click
        end
        object CheckBox1: TCheckBox
          Left = 955
          Top = 10
          Width = 33
          Height = 17
          Caption = 'H'
          Checked = True
          State = cbChecked
          TabOrder = 15
          Visible = False
          OnClick = CheckBox1Click
        end
        object JHDHEdit: TEdit
          Left = 298
          Top = 9
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 16
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 81
        Width = 1666
        Height = 363
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = KhoPopup
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh1CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footer.FieldName = 'CLDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26009#34399'|MatNo'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'JHDH'
            Footers = <>
            Title.Caption = #27491#24335#26009#34399'|JHDH'
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364#26009#34399'|Custom'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009'|YWPM'
            Width = 295
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #26448#26009#20013#25991'|ZWPM'
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.Caption = #36008#26550'|KCBH'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'KCMC'
            Footers = <>
            Title.Caption = #36008#26550#20998#39006'|KCMC'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LBBH'
            Footers = <>
            Title.Caption = #39006#21029'|LBBH'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384'|KCQty'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'NK'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|NK'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'TC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|TC'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|HD'
          end
          item
            EditButtons = <>
            FieldName = 'KD'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|KD'
          end
          item
            EditButtons = <>
            FieldName = 'XT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|XT'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'GC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|GC'
          end
          item
            EditButtons = <>
            FieldName = 'ZZ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|ZZ'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'NK1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|NK1'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'TC1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|TC1'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'HD1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|HD1'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'KD1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|KD1'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'H11'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|H11'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'NQ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|NQ'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'NKNQ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|NKNQ'
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #20379#25033#21830#21517#31281'|ZSYWJC'
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TO KHAI '
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 473
        Top = 81
        Width = 5
        Height = 363
        Color = clActiveCaption
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1666
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 217
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TO KHAI:'
        end
        object Label6: TLabel
          Left = 4
          Top = 49
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CKBH:'
        end
        object Label7: TLabel
          Left = 217
          Top = 49
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date From:'
        end
        object Label8: TLabel
          Left = 4
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
        end
        object Label10: TLabel
          Left = 402
          Top = 51
          Width = 25
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To'
        end
        object Label12: TLabel
          Left = 424
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNO:'
        end
        object Button3: TButton
          Left = 592
          Top = 40
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object TNO2Edit: TEdit
          Left = 297
          Top = 9
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object CBX3: TComboBox
          Left = 80
          Top = 44
          Width = 121
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 299
          Top = 46
          Width = 97
          Height = 24
          Date = 39879.359434490740000000
          Format = 'yyyy/MM/dd'
          Time = 39879.359434490740000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 438
          Top = 47
          Width = 97
          Height = 24
          Date = 39879.359434490740000000
          Format = 'yyyy/MM/dd'
          Time = 39879.359434490740000000
          TabOrder = 4
        end
        object Edit1: TEdit
          Left = 502
          Top = 9
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Edit2: TEdit
          Left = 80
          Top = 9
          Width = 115
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
        end
      end
      object GridKhoMas: TDBGridEh
        Left = 0
        Top = 81
        Width = 473
        Height = 363
        Align = alLeft
        DataSource = DS4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = TK2MasPopup
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
            FieldName = 'DOCNO'
            Footers = <>
            Title.Caption = #30332#31080'|DOCNO'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            Title.Caption = #22577#38364#21934'|To Khai'
          end
          item
            EditButtons = <>
            FieldName = 'Export'
            Footers = <>
            Title.Caption = #39006#22411'|Export'
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364#26009#34399'|CNO'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'NK'
            Footers = <>
            Title.Caption = #25976#37327'|NK'
          end
          item
            EditButtons = <>
            FieldName = 'TC'
            Footers = <>
            Title.Caption = #25976#37327'|TC'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'HD'
            Footers = <>
            Title.Caption = #25976#37327'|HD'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KD'
            Footers = <>
            Title.Caption = #25976#37327'|KD'
          end
          item
            EditButtons = <>
            FieldName = 'XT'
            Footers = <>
            Title.Caption = #25976#37327'|XT'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'GC'
            Footers = <>
            Title.Caption = #25976#37327'|GC'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ZZ'
            Footers = <>
            Title.Caption = #25976#37327'|ZZ'
          end>
      end
      object GridKhoDet: TDBGridEh
        Left = 478
        Top = 81
        Width = 1188
        Height = 363
        Align = alClient
        DataSource = DS5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = TK2DetPopup
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = GridKhoDetCellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            Title.Caption = #22577#38364#21934'|To Khai'
          end
          item
            EditButtons = <>
            FieldName = 'Export'
            Footers = <>
            Title.Caption = #39006#22411'|Export'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364#26009#34399'|CNO'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Title.Caption = #26009#34399'|CLDH'
          end
          item
            EditButtons = <>
            FieldName = 'JHDH'
            Footers = <>
            Title.Caption = #27491#24335#26009#34399'|JHDH'
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #20013#25991'|YWPM'
            Width = 246
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #33521#25991'|ZWPM'
            Width = 183
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'NK'
            Footers = <>
            Title.Caption = #25976#37327'|NK'
          end
          item
            EditButtons = <>
            FieldName = 'TC'
            Footers = <>
            Title.Caption = #25976#37327'|TC'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'HD'
            Footers = <>
            Title.Caption = #25976#37327'|HD'
            Visible = False
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'KD'
            Footers = <>
            Title.Caption = #25976#37327'|KD'
          end
          item
            EditButtons = <>
            FieldName = 'XT'
            Footers = <>
            Title.Caption = #25976#37327'|XT'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'GC'
            Footers = <>
            Title.Caption = #25976#37327'|GC'
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'ZZ'
            Footers = <>
            Title.Caption = #25976#37327'|ZZ'
            Width = 53
          end>
      end
    end
  end
  object KHOQry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id('#39'tempdb..#tmpKCCLMonthHG'#39') is not null '
      'begin   drop table #tmpKCCLMonthHG end   '
      
        'select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as ' +
        'RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,'
      
        '       Round(isnull(round(Sum(LastRem),4),0)+isnull(round(Sum(RK' +
        'Qty),4),0)-isnull(round(Sum(LLQty),4),0)+isnull(round(Sum(JGRK),' +
        '4),0)-isnull(round(Sum(JGCK),4),0),4)  as Qty'
      'into #tmpKCCLMonthHG  from ('
      'select * from ('
      
        'select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CN' +
        'O,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as ' +
        'JGCK'
      '           from KCCLMONTH_HGBH KCCLMONTH   '
      
        '           where KCCLMONTH.KCYEAR='#39'2022'#39'  and KCMONTH='#39'07'#39' and C' +
        'LBH like '#39'%'#39'  '
      '            and KCCLMONTH.CKBH='#39'BYC'#39
      '           ) LastKC'
      'Union all   '
      'select * from ('
      
        'select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CN' +
        'O,'#39#39')='#39#39' or KCRK.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')) then '#39'ZZZZ'#39' ' +
        'else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,' +
        '0 as LLQty,0 as JGRK,0 as JGCK from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111)) between '
      '                 '#39'2022/08/01'#39' and '#39'2022/08/09'#39
      '           and KCRKS.CLBH like '#39'%'#39'    '
      '            and KCRK.CKBH='#39'BYC'#39
      
        '           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (Is' +
        'Null(KCRKS.CNO,'#39#39')='#39#39' or KCRK.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39'))' +
        ' then '#39'ZZZZ'#39' else KCRKS.CNO end ) RK        '
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.C' +
        'NO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')) then '#39'ZZZZ' +
        #39' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qt' +
        'y) as LLQty,0 as JGRK,0 as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2022/08/01'#39' and '#39'2022/08/09'#39
      
        '           and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39' and ' +
        'KCLLS.Qty>0 and KCLLS.CLBH like '#39'%'#39'   '
      '            and KCLL.CKBH='#39'BYC'#39
      
        '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39 +
        ')) then '#39'ZZZZ'#39' else KCLLS.CNO end ) LL    '
      'union all '
      'select * from (                                         '
      
        'select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,'#39'ZZZZ'#39' as CNO,0 as Last' +
        'Rem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from ' +
        'JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '          where convert(smalldatetime,convert(varchar,JGZL.CFMDa' +
        'te1,111)) between '
      '                 '#39'2022/08/01'#39' and '#39'2022/08/09'#39
      '                 and JGZL.CFMID1<>'#39'NO'#39' and JGZLS.CLBH like '#39'%'#39' '
      '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZLS.Qty>0 '
      '            and JGZL.CKBH='#39'BYC'#39
      '           group by JGZL.CKBH,JGZLS.CLBH ) JGRK'
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull' +
        '(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')) th' +
        'en '#39'ZZZZ'#39' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as' +
        ' LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2022/08/01'#39' and '#39'2022/08/09'#39' '
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))>='#39'2017/09/01'#39
      
        '           and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLLS.Qty>0 and KCLL.C' +
        'FMID<>'#39'NO'#39' and KCLLS.CLBH like '#39'%'#39' '
      '            and KCLL.CKBH='#39'BYC'#39
      
        '           Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39 +
        ')) then '#39'ZZZZ'#39' else KCLLS.CNO end ) JGCK'
      ') KCZLS'
      'where 1=1 and CLBH like '#39'%'#39'  '
      'Group by CKBH,CLBH,HGLB,CNO     '
      '----'
      
        'Select KCRK.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,KCZL.KCMC' +
        ',CLLBFLS.LBBH,ZSZL.ZSYWJC from ('
      
        'select CKBH,CLBH as CLDH,case when CNO='#39'ZZZZ'#39' then '#39#39' else CNO e' +
        'nd as CNO,Sum(Qty) as Qty, '
      '       Sum(Case when HGLB='#39'NK'#39' then Qty else 0 end ) as NK,'
      '       Sum(Case when HGLB='#39'TC'#39' then Qty else 0 end ) as TC,'
      '       Sum(Case when HGLB='#39'HD'#39' then Qty else 0 end ) as HD,'
      '       Sum(Case when HGLB='#39'KD'#39' then Qty else 0 end ) as KD,'
      '       Sum(Case when HGLB='#39'XT'#39' then Qty else 0 end ) as XT,'
      '       Sum(Case when HGLB='#39'GC'#39' then Qty else 0 end ) as GC,'
      '       Sum(Case when HGLB='#39'ZZ'#39' then Qty else 0 end ) as ZZ'
      'from (select * from #tmpKCCLMonthHG ) KCZLS'
      'where 1=1 and CLBH not like '#39'Adjusting%'#39' '
      'Group by CKBH,CLBH,CNO  ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLDH'
      
        'left join KCZLS on KCZLS.CLBH=KCRK.CLDH and KCZLS.CKBH=KCRK.CKBH' +
        '  '
      
        'left join KCZL on KCZL.KCBH=KCZLS.KCBH and KCZLS.CKBH=KCZL.CKBH ' +
        ' '
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'CD' +
        'C'#39
      
        'left join (select * from (select CGZL.CGNO, CLBH, ZSBH, ROW_NUMB' +
        'ER() OVER (PARTITION BY CGZLS.CLBH ORDER BY CGZL.CGNO DESC) as R' +
        'owNum'
      '                           from CGZLS '
      
        '                           left join CGZL ON CGZL.CGNO = CGZLS.C' +
        'GNO '
      '                           where gsbh = '#39'CDC'#39' '
      '                          )CGZL where RowNum = 1'#9#9#9#9#9#9'  '
      '           )CGZL on CGZL.CLBH = KCRK.CLDH'
      'left join ZSZL on ZSZL.ZSDH = CGZL.ZSBH'
      'where 1=1  and KCRK.Qty<>0 '
      'order by KCRK.CLDH,KCRK.CNO')
    Left = 85
    Top = 213
    object KHOQry1CLDH: TStringField
      DisplayWidth = 13
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object KHOQry1CNO: TStringField
      DisplayWidth = 11
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object KHOQry1JHDH: TStringField
      FieldName = 'JHDH'
      Size = 10
    end
    object KHOQry1YWPM: TStringField
      DisplayWidth = 42
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KHOQry1ZWPM: TStringField
      DisplayWidth = 46
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KHOQry1DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KHOQry1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KHOQry1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object KHOQry1KCMC: TStringField
      FieldName = 'KCMC'
      FixedChar = True
      Size = 50
    end
    object KHOQry1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 4
    end
    object KHOQry1Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object KHOQry1NK_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object KHOQry1TC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object KHOQry1ND_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object KHOQry1NKND_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object KHOQry1XT_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object KHOQry1GC_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object KHOQry1Null_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object KHOQry1NK1: TCurrencyField
      FieldName = 'NK1'
    end
    object KHOQry1TC1: TCurrencyField
      FieldName = 'TC1'
    end
    object KHOQry1HD1: TCurrencyField
      FieldName = 'HD1'
    end
    object KHOQry1KD1: TCurrencyField
      FieldName = 'KD1'
    end
    object KHOQry1H11: TCurrencyField
      FieldName = 'H11'
    end
    object KHOQry1NQ: TCurrencyField
      FieldName = 'NQ'
    end
    object KHOQry1NKNQ: TCurrencyField
      FieldName = 'NKNQ'
    end
    object KHOQry1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = KHOQry1
    Left = 85
    Top = 245
  end
  object TemQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH from ('
      'select KCRK.CLDH,KCRK.CNO,Sum(KCRK.RemQty) as Qty,'
      
        '        Sum(Case when KCRK.HGLB='#39'NK'#39' then RemQty else 0 end ) as' +
        ' NK_Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'ND'#39' then RemQty else 0 end ) as' +
        ' ND_Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'KD'#39' then RemQty else 0 end ) as' +
        ' NKND_Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'XT'#39' then RemQty else 0 end ) as' +
        ' XT_Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'GC'#39' then RemQty else 0 end ) as' +
        ' GC_Qty,'
      
        '        Sum(Case when KCRK.HGLB is null then RemQty else 0 end )' +
        ' as Null_Qty  '
      'from ('
      'select * from ('
      
        'select '#39'00000000000'#39' as RKNO,KCCLMONTH.CLBH as CLDH,'#39'ZZZZ'#39' as CG' +
        'BH,'#39'ZZZZ'#39' as RKSB,null as CNO,null as HGLB,Sum(KCCLMONTH.QTY) as' +
        ' RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCCLMONTH.Qty)-' +
        'Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KCCLMONTH'
      
        'left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty ' +
        'from  KCRKCX where KCRKCX.RKNO='#39'00000000000'#39'  and KCRKCX.RKSB='#39'Z' +
        'ZZZ'#39' and KCRKCX.CGBH='#39'ZZZZ'#39' and KCRKCX.CKBH='#39'VA12'#39' Group by RKNO' +
        ',CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO='#39'00000000000'#39' '
      
        '            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH='#39'ZZZZ' +
        #39' and KCRKCX.RKSB='#39'ZZZZ'#39' and KCRKCX.CKBH=KCCLMONTH.CKBH'
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'05'#39' and KCC' +
        'LMONTH.CKBH='#39'VA12'#39' and KCCLMONTH.CLBH like '#39'%'#39
      
        'Group by KCCLMONTH.CLBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCR' +
        'KCX.RKQty,0))>0'
      'union all'
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,KCRK.HGLB,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,' +
        '0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQ' +
        'ty '
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  ' +
        'KCRKCX where KCRKCX.RKSB<>'#39'JGRK'#39' Group by RKNO,CLDH,CGBH,RKSB  )' +
        '  '
      
        '           KCRKCX on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRK' +
        'S.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB'
      
        'where KCRK.USERDATE>='#39'2017/06/01'#39' and KCRK.CKBH='#39'VA12'#39'   and KCR' +
        'KS.CLBH like '#39'%'#39
      
        'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,K' +
        'CRK.HGLB'
      'having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0'
      'Union all'
      
        'select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,'#39'JGRK'#39' a' +
        's RKSB,null as CNO,'#39'GC'#39' as HGLB,Sum(JGZLS.Qty) as RKQty,Sum(IsNu' +
        'll(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.R' +
        'KQty,0)) as RemQty from JGZLS'
      'inner join JGZL on JGZL.JGNO=JGZLS.JGNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  ' +
        'KCRKCX where KCRKCX.RKSB='#39'JGRK'#39'  Group by RKNO,CLDH,CGBH,RKSB  )' +
        '   '
      
        '           KCRKCX on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZL' +
        'S.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB='#39'JGRK'#39
      
        'where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZL.CFMID1<>'#39'NO'#39' and JGZL.CKB' +
        'H='#39'VA12'#39' and JGZL.CFMDATE1>='#39'2017/06/01'#39' '
      'Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB '
      'having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 '
      ') KCRKS'
      'where KCRKS.CLDH like '#39'%'#39'  ) KCRK'
      'Group by KCRK.CLDH,KCRK.CNO ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLDH'
      '--Left join KCZLS on KCZLS.CKBH='#39'VA12'#39' and KCZLS.CLBH=KCRK.CLDH'
      '--where KCZLS.KCQty<>KCRK.Qty --and KCZLS.CLBH='#39'A050002615'#39
      '--order by KCZLS.CLBH')
    Left = 53
    Top = 213
  end
  object TK2MasQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select KCRK.* from ('
      
        'select IsNull(DOCNO,'#39#39') as DOCNO,IsNull(Declaretion,'#39#39') as Decla' +
        'retion,Export,CNO,Sum(RKQty) as Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0 end ) as ' +
        'NK, '
      
        '        Sum(Case when KCRK.HGLB='#39'TC'#39' then RKQty else 0 end ) as ' +
        'TC, '
      
        '        Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0 end ) as ' +
        'HD, '
      
        '        Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0 end ) as ' +
        'KD, '
      
        '        Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0 end ) as ' +
        'XT, '
      
        '        Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0 end ) as ' +
        'GC,'
      
        '        Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else 0 end ) a' +
        's ZZ  '
      'from ('
      'select * from ('
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,Max(KCRK.DOCNO) as DOCNO, Max(KCPK.Declaretion) as Declare' +
        'tion,'
      
        '        Max(KCPK.Export) as Export,IsNull(KCRK.HGLB,'#39'ZZZZ'#39') as H' +
        'GLB,Sum(KCRKS.Qty) as RKQty '
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCPK  on KCPK.PKNO=KCRK.RKNO '
      
        'where KCRK.USERDATE>='#39'2017/06/01'#39' and  KCRK.CKBH='#39'VA12'#39'  and KCP' +
        'K.Declaretion is not null  and KCRKS.CLBH like '#39'%'#39' '
      'and KCRK.USERDATE>='#39'2021/01/05'#39' and KCRK.USERDATE<'#39'2021/05/05'#39' '
      'and KCRKS.CLBH like '#39'A010009132%'#39' '
      
        'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,K' +
        'CRK.HGLB'
      ') KCRKS'
      'where KCRKS.CLDH like '#39'%'#39'  ) KCRK'
      'Group by DOCNO,Declaretion,Export,CNO ) KCRK'
      'where KCRK.Declaretion<>'#39#39'  '
      'order by KCRK.Declaretion'
      ''
      '')
    Left = 237
    Top = 213
    object StringField1: TStringField
      DisplayWidth = 14
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object StringField2: TStringField
      DisplayWidth = 6
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
    object StringField3: TStringField
      DisplayWidth = 8
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object CurrencyField1: TCurrencyField
      DisplayWidth = 8
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField2: TCurrencyField
      DisplayWidth = 8
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object TK2MasQryTC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField3: TCurrencyField
      DisplayWidth = 7
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField4: TCurrencyField
      DisplayWidth = 8
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField5: TCurrencyField
      DisplayWidth = 8
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object CurrencyField6: TCurrencyField
      DisplayWidth = 8
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField7: TCurrencyField
      DisplayWidth = 8
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object TK2MasQryDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
  end
  object DS4: TDataSource
    DataSet = TK2MasQry
    Left = 237
    Top = 245
  end
  object TK2DetQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select KCRK.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH from ('
      
        'select IsNull(DOCNO,'#39#39') as DOCNO,IsNull(Declaretion,'#39#39') as Decla' +
        'retion,Export,CLDH,CNO,Sum(RKQty) as Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0 end ) as ' +
        'NK, '
      
        '        Sum(Case when KCRK.HGLB='#39'TC'#39' then RKQty else 0 end ) as ' +
        'TC, '
      
        '        Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0 end ) as ' +
        'HD, '
      
        '        Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0 end ) as ' +
        'KD, '
      
        '        Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0 end ) as ' +
        'XT, '
      
        '        Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0 end ) as ' +
        'GC, '
      
        '        Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else 0 end ) a' +
        's ZZ  '
      'from ('
      'select * from ('
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,Max(KCRK.DOCNO) as DOCNO, Max(KCPK.Declaretion) as Declare' +
        'tion,Max(KCPK.Export) as Export,IsNull(KCRK.HGLB,'#39'ZZZZ'#39') as HGLB' +
        ',Sum(KCRKS.Qty) as RKQty'
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCPK  on KCPK.PKNO=KCRK.RKNO '
      
        'where KCRK.USERDATE>='#39'2017/06/01'#39' and KCRK.CKBH='#39'VA12'#39'  and KCPK' +
        '.Declaretion=:Declaretion and KCRKS.CLBH like '#39'%'#39' '
      'and KCRK.USERDATE>='#39'2021/04/05'#39' and KCRK.USERDATE<'#39'2021/05/05'#39' '
      'and KCRKS.CLBH like '#39'%'#39' '
      
        'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,K' +
        'CRK.HGLB'
      ') KCRKS'
      'where KCRKS.CLDH like '#39'%'#39'  ) KCRK'
      'Group by DOCNO,Declaretion,Export,CLDH,CNO ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLDH'
      
        'where KCRK.Declaretion<>'#39#39' and KCRK.DOCNO=:DOCNO  and KCRK.Decla' +
        'retion=:Declaretion and KCRK.CNO=:CNO'
      ''
      '')
    Left = 277
    Top = 213
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Declaretion'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftFixedChar
        Name = 'DOCNO'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'Declaretion'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CNO'
        ParamType = ptUnknown
        Size = 41
      end>
    object StringField4: TStringField
      DisplayWidth = 13
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object StringField5: TStringField
      DisplayWidth = 5
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
    object StringField6: TStringField
      DisplayWidth = 12
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object TK2DetQryJHDH: TStringField
      FieldName = 'JHDH'
      Size = 10
    end
    object StringField7: TStringField
      DisplayWidth = 7
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object CurrencyField8: TCurrencyField
      DisplayWidth = 6
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField9: TCurrencyField
      DisplayWidth = 6
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object TK2DetQryTC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField10: TCurrencyField
      DisplayWidth = 7
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField11: TCurrencyField
      DisplayWidth = 6
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField12: TCurrencyField
      DisplayWidth = 6
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object CurrencyField13: TCurrencyField
      DisplayWidth = 7
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField14: TCurrencyField
      DisplayWidth = 10
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object StringField8: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField9: TStringField
      DisplayWidth = 200
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField10: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS5: TDataSource
    DataSet = TK2DetQry
    Left = 277
    Top = 245
  end
  object KhoPopup: TPopupMenu
    Left = 84
    Top = 283
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel2: TMenuItem
      Caption = 'Qty<0 Export'
      OnClick = Excel2Click
    end
  end
  object TK2DetPopup: TPopupMenu
    Left = 278
    Top = 283
    object MenuItem3: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem3Click
    end
  end
  object TK2MasPopup: TPopupMenu
    Left = 236
    Top = 283
    object MenuItem4: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem4Click
    end
  end
end
