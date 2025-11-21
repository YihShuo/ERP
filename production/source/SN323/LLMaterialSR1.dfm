object LLMaterialSR: TLLMaterialSR
  Left = 59
  Top = 166
  Width = 1380
  Height = 490
  Caption = 'Material SR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1364
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
      Left = 144
      Top = 20
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YPDH:'
    end
    object Label4: TLabel
      Left = 8
      Top = 51
      Width = 44
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pairs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 144
      Top = 55
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label9: TLabel
      Left = 0
      Top = 20
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TestNO'
    end
    object Label2: TLabel
      Left = 352
      Top = 56
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Filter'
    end
    object editYPDH: TEdit
      Left = 221
      Top = 16
      Width = 130
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
      OnExit = editYPDHExit
    end
    object EditMatNo: TEdit
      Left = 222
      Top = 51
      Width = 128
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 521
      Top = 44
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object BaseDate: TDateTimePicker
      Left = 917
      Top = 46
      Width = 105
      Height = 24
      Date = 41615.484468796300000000
      Time = 41615.484468796300000000
      TabOrder = 3
      Visible = False
    end
    object Button2: TButton
      Left = 521
      Top = 7
      Width = 81
      Height = 33
      Caption = 'Copy'
      TabOrder = 4
      OnClick = Button2Click
    end
    object PairsEdit: TEdit
      Left = 56
      Top = 48
      Width = 89
      Height = 24
      TabOrder = 5
    end
    object TestNoEdit: TEdit
      Left = 56
      Top = 16
      Width = 89
      Height = 24
      Color = clYellow
      TabOrder = 6
      OnExit = TestNoEditExit
    end
    object CheckBox1: TCheckBox
      Left = 608
      Top = 56
      Width = 121
      Height = 17
      Caption = 'Shipping Usage'
      TabOrder = 7
    end
    object CheckBox2: TCheckBox
      Left = 609
      Top = 35
      Width = 153
      Height = 17
      Caption = 'Only Usage>0'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object CheckBox3: TCheckBox
      Left = 608
      Top = 12
      Width = 153
      Height = 17
      Caption = 'Only CLSL<=Qty'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox4: TCheckBox
      Left = 737
      Top = 56
      Width = 176
      Height = 17
      Caption = 'No Need Shoe Part Hide'
      TabOrder = 10
    end
    object ComboBox1: TComboBox
      Left = 416
      Top = 51
      Width = 97
      Height = 24
      ItemHeight = 16
      TabOrder = 11
      Text = 'All'
      Items.Strings = (
        'All'
        'CLSL<OkQty'
        'CLSL>OkQty'
        'CLSL=OkQty'
        'CLSL<>OkQty')
    end
    object bbt6: TBitBtn
      Left = 800
      Top = 3
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 1364
    Height = 370
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1362
      Height = 368
      Align = alClient
      DataSource = DSLLMaterial
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ypdh'
          Footer.FieldName = 'ypdh'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'YPDH'
          Width = 101
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footers = <>
          Title.Caption = 'Pairs'
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'cldh'
          Footers = <>
          Title.Caption = 'Temp'
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'clbh'
          Footers = <>
          Title.Caption = 'CLBH'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CLMC'
          Footers = <>
          Title.Caption = 'English name'
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'CLYWMC'
          Footers = <>
          Title.Caption = 'Chinese name'
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          Title.Caption = 'Unit'
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'Usage'
          Footers = <>
          Width = 52
        end
        item
          Color = 8716287
          EditButtons = <>
          FieldName = 'clsl'
          Footers = <>
          Title.Caption = 'CLSL'
          Width = 55
        end
        item
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = 'OKQty'
          Width = 52
        end
        item
          Color = 10921727
          EditButtons = <>
          FieldName = 'KCQty'
          Footers = <>
          Width = 55
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'NK'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'TC'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'HD'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'KD'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'XT'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'GC'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'ZZZZ'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'NK1'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'TC1'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'HD1'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'KD1'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'H11'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'NQ'
          Footers = <>
          Width = 45
        end
        item
          Color = clScrollBar
          DisplayFormat = '#,##0.##'
          EditButtons = <>
          FieldName = 'NKNQ'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'KCBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CSBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CGNO'
          Footers = <>
          Title.Caption = 'PO'
        end>
    end
  end
  object QueryLLMaterial: TQuery
    CachedUpdates = True
    OnCalcFields = QueryLLMaterialCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      'Select * from ('
      
        'select YPZLS.ypdh, YPZLS.Quantity, ypzls.clbh, Sum(ypzls.Usage) ' +
        'as Usage, YPZLS.CLYWMC, ypzls.CLMC, CLZL_LS.cldh, ypzls.dwbh, su' +
        'm(ypzls.CLSL) CLSL,'
      
        '       IsNull(KCLLS.Qty,0.00) as Qty, KCZLS.KCQty,KCZLS.NK,KCZLS' +
        '.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ,YPZLS.YN,KCZL' +
        'S.KCBH,ypzls.CSBH,ZSZL.zsywjc'
      
        'from (SELECT ypzls.YPDH,YPZL.Quantity as Quantity ,ypzls.CLBH ,y' +
        'pzls.CLSL as Usage,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as ' +
        'CLSL ,clzl.CQDH,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh' +
        ' ,clzl.clzmlb,YPZL.YN,ypzls.CSBH'
      '      FROM ypzls ypzls'
      '      Left join ypzl on ypzl.YPDH=ypzls.YPDH'
      '      Left join clzl clzl ON ypzls.CLBH = clzl.cldh'
      
        '      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BW' +
        'BH'
      '      WHERE YPZLS.YPDH = '#39'LAIK210900126'#39
      ')  YPZLS'
      'Left join KCZLS on KCZLS.CLBH=YPZLS.CLBH and KCZLS.CKBH='#39'CDC'#39
      'left join CLZL_LS on CLZL_LS.jhdh=YPZLS.clbh'
      'left join ZSZL on ZSZL.zsdh=ypzls.CSBH'
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH,Sum(Qty) as Qty from KCL' +
        'LS,KCLL where KCLLS.DFL='#39'N'#39' and KCLL.LLNO=KCLLS.LLNO and KCLL.GS' +
        'BH='#39'CDC'#39' and KCLLS.SCBH = '#39'LAIK210900126'#39' Group by KCLLS.SCBH,KC' +
        'LLS.CLBH) KCLLS on KCLLS.SCBH=YPZLS.YPDH and KCLLS.CLBH=YPZLS.CL' +
        'BH'
      'where ypzls.ypdh='#39'LAIK210900126'#39
      '      and ypzls.clbh like '#39'%'#39
      '      and ypzls.CLSL>0'
      
        'group by  YPZLS.ypdh, YPZLS.Quantity,ypzls.clbh,YPZLS.CLYWMC,ypz' +
        'ls.CLMC,KCZLS.KCQty,CLZL_LS.cldh,ypzls.dwbh,KCLLS.Qty,KCZLS.NK,K' +
        'CZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ,YPZLS.YN,' +
        'KCZLS.KCBH,ypzls.CSBH,ZSZL.zsywjc'
      ') YPZLS where 1=1'
      'order by   YPZLS.YPDH,YPZLS.CLBH'
      ''
      '')
    UpdateObject = UpdateSQL1
    Left = 176
    Top = 153
    object QueryLLMaterialypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object QueryLLMaterialQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object QueryLLMaterialclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object QueryLLMaterialCLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object QueryLLMaterialCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object QueryLLMaterialcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object QueryLLMaterialdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object QueryLLMaterialclsl: TFloatField
      FieldName = 'clsl'
    end
    object QueryLLMaterialUsage: TFloatField
      FieldName = 'Usage'
    end
    object QueryLLMaterialQty: TCurrencyField
      FieldName = 'Qty'
    end
    object QueryLLMaterialKCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.00'
    end
    object QueryLLMaterialNK: TCurrencyField
      FieldName = 'NK'
    end
    object QueryLLMaterialTC: TCurrencyField
      FieldName = 'TC'
    end
    object QueryLLMaterialHD: TCurrencyField
      FieldName = 'HD'
    end
    object QueryLLMaterialKD: TCurrencyField
      FieldName = 'KD'
    end
    object QueryLLMaterialXT: TCurrencyField
      FieldName = 'XT'
    end
    object QueryLLMaterialGC: TCurrencyField
      FieldName = 'GC'
    end
    object QueryLLMaterialZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
    end
    object QueryLLMaterialYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QueryLLMaterialKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object QueryLLMaterialCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object QueryLLMaterialzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object QueryLLMaterialCGNO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CGNO'
      Size = 13
      Calculated = True
    end
    object QueryLLMaterialNK1: TCurrencyField
      FieldName = 'NK1'
    end
    object QueryLLMaterialTC1: TCurrencyField
      FieldName = 'TC1'
    end
    object QueryLLMaterialHD1: TCurrencyField
      FieldName = 'HD1'
    end
    object QueryLLMaterialKD1: TCurrencyField
      FieldName = 'KD1'
    end
    object QueryLLMaterialH11: TCurrencyField
      FieldName = 'H11'
    end
    object QueryLLMaterialNQ: TCurrencyField
      FieldName = 'NQ'
    end
    object QueryLLMaterialNKNQ: TCurrencyField
      FieldName = 'NKNQ'
    end
  end
  object DSLLMaterial: TDataSource
    DataSet = QueryLLMaterial
    Left = 208
    Top = 153
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.ypdh,sum(shoetest2.qty) as qty f' +
        'rom shoetest'
      'left join shoetest2 on shoetest.testno=shoetest2.testno'
      'where shoetest.testno='#39'18F1046'#39
      'group by shoetest.testno,shoetest.ypdh'
      '')
    Left = 144
    Top = 154
  end
  object UpdateSQL1: TUpdateSQL
    Left = 176
    Top = 193
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 225
    object Detail1: TMenuItem
      Caption = 'BOM Detail'
      OnClick = Detail1Click
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.ypdh,sum(shoetest2.qty) as qty f' +
        'rom shoetest'
      'left join shoetest2 on shoetest.testno=shoetest2.testno'
      'where shoetest.testno='#39'18F1046'#39
      'group by shoetest.testno,shoetest.ypdh'
      '')
    Left = 128
    Top = 210
  end
end
