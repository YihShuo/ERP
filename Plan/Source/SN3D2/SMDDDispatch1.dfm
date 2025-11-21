object SMDDDispatch: TSMDDDispatch
  Left = 407
  Top = 292
  Width = 1063
  Height = 537
  Caption = 'SMDDDispatch'
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 283
      Top = 18
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 161
      Top = 20
      Width = 15
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 483
      Top = 18
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lean:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 704
      Top = 20
      Width = 38
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GX:'
    end
    object DDBHEdit: TEdit
      Left = 373
      Top = 15
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 20
      Width = 48
      Height = 14
      Caption = 'From'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 66
      Top = 15
      Width = 90
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
    object DTP2: TDateTimePicker
      Left = 187
      Top = 15
      Width = 87
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
      TabOrder = 3
    end
    object Button1: TButton
      Left = 804
      Top = 13
      Width = 78
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object BDepEdit: TEdit
      Left = 573
      Top = 15
      Width = 100
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button2: TButton
      Left = 884
      Top = 13
      Width = 78
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 964
      Top = 13
      Width = 78
      Height = 30
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object BitBtn1: TBitBtn
      Left = 672
      Top = 15
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 8
      OnClick = BitBtn1Click
    end
    object GXLBCombo: TComboBox
      Left = 744
      Top = 16
      Width = 41
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 2
      TabOrder = 9
      Text = 'A'
      Items.Strings = (
        'C'
        'S'
        'A')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 57
    Width = 1055
    Height = 449
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Order'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1047
        Height = 418
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 194
          Top = 1
          Height = 416
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 193
          Height = 416
          Align = alLeft
          TabOrder = 0
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 191
            Height = 414
            Align = alClient
            DataSource = DS1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'YSBH'
                Footer.FieldName = 'ZLBH'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 83
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Width = 113
              end
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Width = 74
              end>
          end
        end
        object Panel2: TPanel
          Left = 197
          Top = 1
          Width = 849
          Height = 416
          Align = alClient
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 1
            Top = 81
            Width = 847
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object Panel3: TPanel
            Left = 1
            Top = 84
            Width = 847
            Height = 331
            Align = alClient
            TabOrder = 0
            object Splitter3: TSplitter
              Left = 1
              Top = 121
              Width = 845
              Height = 8
              Cursor = crVSplit
              Align = alTop
            end
            object DBGridEh1: TDBGridEh
              Left = 1
              Top = 129
              Width = 845
              Height = 201
              Align = alClient
              DataSource = DS3
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -12
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              ParentFont = False
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 1
              Width = 845
              Height = 120
              Align = alTop
              DataSource = DS2
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -12
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              ParentFont = False
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 847
            Height = 80
            Align = alTop
            TabOrder = 1
            object Label6: TLabel
              Left = 8
              Top = 8
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'YSBH:'
            end
            object DBText1: TDBText
              Left = 101
              Top = 8
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'YSBH'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label2: TLabel
              Left = 240
              Top = 8
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'PlanDate:'
            end
            object DBText2: TDBText
              Left = 333
              Top = 8
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'PlanDate'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label3: TLabel
              Left = 472
              Top = 8
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Article'
            end
            object DBText3: TDBText
              Left = 565
              Top = 8
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'ARTICLE'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label5: TLabel
              Left = 8
              Top = 31
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'XTMH:'
            end
            object DBText4: TDBText
              Left = 101
              Top = 31
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'XTMH'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label7: TLabel
              Left = 240
              Top = 31
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Pairs:'
            end
            object DBText5: TDBText
              Left = 333
              Top = 31
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'Pairs'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label9: TLabel
              Left = 472
              Top = 30
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'YSSM:'
            end
            object DBText6: TDBText
              Left = 565
              Top = 30
              Width = 164
              Height = 17
              Color = clBtnFace
              DataField = 'YSSM'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label10: TLabel
              Left = 8
              Top = 53
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'DAOMH:'
            end
            object DBText7: TDBText
              Left = 101
              Top = 53
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'DAOMH'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 240
              Top = 52
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'DDGB:'
            end
            object DBText8: TDBText
              Left = 333
              Top = 52
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'DDGB'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label12: TLabel
              Left = 473
              Top = 52
              Width = 87
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'DepName:'
            end
            object DBText9: TDBText
              Left = 565
              Top = 52
              Width = 130
              Height = 17
              Color = clBtnFace
              DataField = 'DepName'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'List'
      ImageIndex = 1
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1047
        Height = 418
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object SMDDQry: TQuery
    AfterScroll = SMDDQryAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select SMDD.YSBH,SMDD.PlanDate,DDZL.XieXing,DDZL.SheHao,DDZL.ART' +
        'ICLE,DDZL.DDGB,DDZL.Pairs,DDZL.BUYNO,XXZL.YSSM,XXZL.DAOMH,XXZL.X' +
        'TMH,BDepartment.ID,BDepartment.DepName '
      
        'from (Select YSBH as YSBH,Max(DepNO) as DepNo,Max(PlanDate) as P' +
        'lanDate'
      '      from SMDD '
      #9'  left join BDepartment on BDepartment.ID=SMDD.DepNO'
      #9'  where SMDD.GXLB='#39'A'#39' and DDBH like '#39'Y2112%'#39' '
      #9'  Group by YSBH'
      '     ) SMDD'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=SMDD.DepNO')
    Left = 115
    Top = 108
    object SMDDQryYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SMDDQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SMDDQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object SMDDQryDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object SMDDQryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object SMDDQryYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object SMDDQryDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object SMDDQryXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object SMDDQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDQryID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object SMDDQryPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object SMDDQryBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = SMDDQry
    Left = 114
    Top = 141
  end
  object DDZLSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#XXCC'#39') is not null  '
      'begin   drop table #XXCC end   '
      'if object_id('#39'tempdb..#CC'#39') is not null  '
      '  begin   drop table #CC  end  '
      'select DDZL.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as BOMCC'
      'into #XXCC from  XXZLS3 '
      'left join DDZL on DDZL.XieXing=XXZLS3.XieXing'
      'where DDZL.DDBH='#39'Y2112-0001'#39
      
        'select 7 as NO,'#39'Quantity  '#39' as DDType,'#39'2400 '#39' as SizeType,#XXCC.' +
        'BOMCC,'
      ' convert(varchar(6),DDZLS.Quantity) as DDCC into #CC from #XXCC '
      'left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC'
      
        'insert #CC  select 0 as NO, '#39'OrderSize'#39' as DDType,'#39'US'#39' as SizeTy' +
        'pe, #XXCC.BOMCC,#XXCC.DDCC from #XXCC '
      
        'insert #CC  select 1 as NO, '#39'Article'#39' as DDType,'#39'US'#39' as SizeType' +
        ', #XXCC.BOMCC,#XXCC.BOMCC as DDCC from #XXCC'
      
        'insert #CC select  2 as NO,'#39'LAST'#39' as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'100'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  3 as NO,'#39'OUTSOLE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where XXGJS.GJLB='#39'101'#39'and XXGJS.XieXing='#39'CON19HWC3W' +
        '01'#39
      
        'insert #CC select  4 as NO,'#39'WEDGE'#39'as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'102'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  5 as NO,'#39'CUT DIE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'200'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  6 as NO,'#39'TOE CAP'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      'from XXGJS'
      'left join XXZLSVNS2 on xxgjs.XieXing = XXZLSVNS2.XieXing'
      
        'where  XXZLSVNS2.Article='#39'565902C'#39' and XXGJS.GJLB='#39'280'#39'and XXGJS' +
        '.XieXing='#39'CON19HWC3W01'#39
      'select NO,DDType,SizeType'
      ',max(case when BOMCC='#39'05.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.0'#39
      ',max(case when BOMCC='#39'05.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.5'#39
      ',max(case when BOMCC='#39'06.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.0'#39
      ',max(case when BOMCC='#39'06.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.5'#39
      ',max(case when BOMCC='#39'07.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.0'#39
      ',max(case when BOMCC='#39'07.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.5'#39
      ',max(case when BOMCC='#39'08.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.0'#39
      ',max(case when BOMCC='#39'08.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.5'#39
      ',max(case when BOMCC='#39'09.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.0'#39
      ',max(case when BOMCC='#39'09.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.5'#39
      ',max(case when BOMCC='#39'10.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.0'#39
      ',max(case when BOMCC='#39'10.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.5'#39
      ',max(case when BOMCC='#39'11.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'11.0'#39
      ' from #CC'
      ' group by NO,DDType,SizeType'
      'order by NO')
    Left = 331
    Top = 148
  end
  object DS2: TDataSource
    DataSet = DDZLSQry
    Left = 331
    Top = 179
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 80
    Top = 110
  end
  object SMDDSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#XXCC'#39') is not null  '
      'begin   drop table #XXCC end   '
      'if object_id('#39'tempdb..#CC'#39') is not null  '
      '  begin   drop table #CC  end  '
      'select DDZL.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as BOMCC'
      'into #XXCC from  XXZLS3 '
      'left join DDZL on DDZL.XieXing=XXZLS3.XieXing'
      'where DDZL.DDBH='#39'Y2112-0001'#39
      
        'select 7 as NO,'#39'Quantity  '#39' as DDType,'#39'2400 '#39' as SizeType,#XXCC.' +
        'BOMCC,'
      ' convert(varchar(6),DDZLS.Quantity) as DDCC into #CC from #XXCC '
      'left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC'
      
        'insert #CC  select 0 as NO, '#39'OrderSize'#39' as DDType,'#39'US'#39' as SizeTy' +
        'pe, #XXCC.BOMCC,#XXCC.DDCC from #XXCC '
      
        'insert #CC  select 1 as NO, '#39'Article'#39' as DDType,'#39'US'#39' as SizeType' +
        ', #XXCC.BOMCC,#XXCC.BOMCC as DDCC from #XXCC'
      
        'insert #CC select  2 as NO,'#39'LAST'#39' as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'100'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  3 as NO,'#39'OUTSOLE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where XXGJS.GJLB='#39'101'#39'and XXGJS.XieXing='#39'CON19HWC3W' +
        '01'#39
      
        'insert #CC select  4 as NO,'#39'WEDGE'#39'as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'102'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  5 as NO,'#39'CUT DIE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'200'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  6 as NO,'#39'TOE CAP'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      'from XXGJS'
      'left join XXZLSVNS2 on xxgjs.XieXing = XXZLSVNS2.XieXing'
      
        'where  XXZLSVNS2.Article='#39'565902C'#39' and XXGJS.GJLB='#39'280'#39'and XXGJS' +
        '.XieXing='#39'CON19HWC3W01'#39
      'select NO,DDType,SizeType'
      ',max(case when BOMCC='#39'05.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.0'#39
      ',max(case when BOMCC='#39'05.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.5'#39
      ',max(case when BOMCC='#39'06.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.0'#39
      ',max(case when BOMCC='#39'06.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.5'#39
      ',max(case when BOMCC='#39'07.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.0'#39
      ',max(case when BOMCC='#39'07.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.5'#39
      ',max(case when BOMCC='#39'08.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.0'#39
      ',max(case when BOMCC='#39'08.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.5'#39
      ',max(case when BOMCC='#39'09.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.0'#39
      ',max(case when BOMCC='#39'09.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.5'#39
      ',max(case when BOMCC='#39'10.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.0'#39
      ',max(case when BOMCC='#39'10.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.5'#39
      ',max(case when BOMCC='#39'11.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'11.0'#39
      ' from #CC'
      ' group by NO,DDType,SizeType'
      'order by NO')
    Left = 331
    Top = 300
  end
  object DS3: TDataSource
    DataSet = SMDDSQry
    Left = 331
    Top = 331
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh4
    Options = [pghFitGridToPageWidth]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #36650#27425#34920
      'Production Cycle')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = '????'
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 421
    Top = 366
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B544465705D200D0A5C706172207D0D0A00}
  end
  object SMDDListQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#XXCC'#39') is not null  '
      'begin   drop table #XXCC end   '
      'if object_id('#39'tempdb..#CC'#39') is not null  '
      '  begin   drop table #CC  end  '
      'select DDZL.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as BOMCC'
      'into #XXCC from  XXZLS3 '
      'left join DDZL on DDZL.XieXing=XXZLS3.XieXing'
      'where DDZL.DDBH='#39'Y2112-0001'#39
      
        'select 7 as NO,'#39'Quantity  '#39' as DDType,'#39'2400 '#39' as SizeType,#XXCC.' +
        'BOMCC,'
      ' convert(varchar(6),DDZLS.Quantity) as DDCC into #CC from #XXCC '
      'left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC'
      
        'insert #CC  select 0 as NO, '#39'OrderSize'#39' as DDType,'#39'US'#39' as SizeTy' +
        'pe, #XXCC.BOMCC,#XXCC.DDCC from #XXCC '
      
        'insert #CC  select 1 as NO, '#39'Article'#39' as DDType,'#39'US'#39' as SizeType' +
        ', #XXCC.BOMCC,#XXCC.BOMCC as DDCC from #XXCC'
      
        'insert #CC select  2 as NO,'#39'LAST'#39' as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'100'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  3 as NO,'#39'OUTSOLE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where XXGJS.GJLB='#39'101'#39'and XXGJS.XieXing='#39'CON19HWC3W' +
        '01'#39
      
        'insert #CC select  4 as NO,'#39'WEDGE'#39'as DDType,'#39'    '#39' as SizeType,X' +
        'XGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'102'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  5 as NO,'#39'CUT DIE'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      
        ' from XXGJS  where  XXGJS.GJLB='#39'200'#39'and XXGJS.XieXing='#39'CON19HWC3' +
        'W01'#39
      
        'insert #CC select  6 as NO,'#39'TOE CAP'#39'as DDType,'#39'    '#39' as SizeType' +
        ',XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC'
      'from XXGJS'
      'left join XXZLSVNS2 on xxgjs.XieXing = XXZLSVNS2.XieXing'
      
        'where  XXZLSVNS2.Article='#39'565902C'#39' and XXGJS.GJLB='#39'280'#39'and XXGJS' +
        '.XieXing='#39'CON19HWC3W01'#39
      'select NO,DDType,SizeType'
      ',max(case when BOMCC='#39'05.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.0'#39
      ',max(case when BOMCC='#39'05.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'05.5'#39
      ',max(case when BOMCC='#39'06.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.0'#39
      ',max(case when BOMCC='#39'06.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'06.5'#39
      ',max(case when BOMCC='#39'07.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.0'#39
      ',max(case when BOMCC='#39'07.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'07.5'#39
      ',max(case when BOMCC='#39'08.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.0'#39
      ',max(case when BOMCC='#39'08.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'08.5'#39
      ',max(case when BOMCC='#39'09.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.0'#39
      ',max(case when BOMCC='#39'09.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'09.5'#39
      ',max(case when BOMCC='#39'10.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.0'#39
      ',max(case when BOMCC='#39'10.5'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'10.5'#39
      ',max(case when BOMCC='#39'11.0'#39
      'and DDCC<>'#39'0'#39' then DDCC else'#39#39' end ) as '#39'11.0'#39
      ' from #CC'
      ' group by NO,DDType,SizeType'
      'order by NO')
    Left = 419
    Top = 300
  end
  object DS4: TDataSource
    DataSet = SMDDListQry
    Left = 419
    Top = 331
  end
end
