object ForeCast_Purchase_Compare: TForeCast_Purchase_Compare
  Left = 468
  Top = 173
  Width = 1305
  Height = 675
  Caption = 'ForeCast_Purchase_Compare'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 7
      Top = 7
      Width = 48
      Height = 48
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object BB7: TBitBtn
      Left = 75
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 145
    Width = 1297
    Height = 499
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Material_NO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Material_NO|'#26448#26009#32232#34399
      end
      item
        EditButtons = <>
        FieldName = 'Material_Desc'
        Footers = <>
        Title.Caption = 'Material_Desc|'#26448#26009#25551#36848
        Width = 226
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Title.Caption = 'Season|'#23395#31680
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        Title.Caption = 'SR|SR'
      end
      item
        EditButtons = <>
        FieldName = 'Forecast_Leadtime'
        Footers = <>
        Title.Caption = 'Forecast_Leadtime|Leadtime'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Purchase_Qty'
        Footers = <>
        Title.Caption = 'Purchase_Qty|'#25505#36092#25976#37327
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'ForeCast_Qty'
        Footers = <>
        Title.Caption = 'ForeCast_Qty|'#38928#21578#35330#21934#25976#37327
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'Different_Qty'
        Footers = <>
        Title.Caption = 'Different_Qty|'#24046#30064#25976#37327
        Width = 105
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1297
    Height = 82
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 17
      Top = 28
      Width = 50
      Height = 16
      Caption = 'Season:'
    end
    object Label4: TLabel
      Left = 190
      Top = 28
      Width = 75
      Height = 16
      Caption = 'Material_NO'
    end
    object Button1: TButton
      Left = 479
      Top = 21
      Width = 84
      Height = 36
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object edSeason: TEdit
      Left = 77
      Top = 24
      Width = 36
      Height = 24
      Color = clYellow
      TabOrder = 1
    end
    object EdMaterial: TEdit
      Left = 270
      Top = 24
      Width = 145
      Height = 24
      TabOrder = 2
    end
    object Button2: TButton
      Left = 575
      Top = 21
      Width = 84
      Height = 36
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object cbSeason: TComboBox
      Left = 112
      Top = 24
      Width = 41
      Height = 24
      Style = csDropDownList
      Color = clYellow
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'S'
      Items.Strings = (
        'S'
        'U'
        'F'
        'H')
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZL.CLBH as Material_NO,CGZL.ywpm as Material_Desc,CGZL.' +
        'season as Season,CGZL.SKU as SR,CGZL.Forecast_Leadtime,CGZL.Qty ' +
        'as Purchase_Qty,isnull(ddzl.total,0) as ForeCast_Qty,(CGZL.Qty-i' +
        'snull(ddzl.total,0)) as Different_Qty from ('
      
        'select cgzlsS.CLBH,substring(ddzl.buyno,8,3) as season,kfxxzl.DE' +
        'VCODE as SKU,clzl.ywpm,sum(CGZLSS.Qty) as Qty,Forecast_Leadtime ' +
        'from cgzlsS'
      'left join CGZL on CGZL.CGNO = CGZLSS.CGNO'
      'left join ddzl on ddzl.DDBH = CGZLSS.ZLBH'
      'left join clzl on cgzlss.CLBH = clzl.cldh'
      
        'left join kfxxzl on kfxxzl.XieXing = ddzl.XieXing and kfxxzl.She' +
        'Hao = ddzl.SheHao'
      'left join ('
      
        '  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location' +
        ' from ('
      
        '    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Foreca' +
        'st_Leadtime, A.Location from ('
      
        '      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadt' +
        'ime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Sub' +
        'string(Season,1,2) DESC, USERDATE desc) as rn from ('
      
        '        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as' +
        ' CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, Mater' +
        'ialMOQ.USERDATE from MaterialMOQ with (nolock)'
      
        '        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = Materi' +
        'alMOQ.CLBH and IsNull(CLZL_LS.JHDH, '#39#39') <> '#39#39
      '      ) AS MaterialMOQ'
      '    ) A where A.rn=1'
      '  ) AS MatMOQ'
      ') AS m on m.CLBH = cgzlsS.clbh'
      'where Stage = '#39'Mass'#39
      'and ZSDH not like '#39'JNG%'#39
      'and substring(ddzl.buyno,8,3) = '#39'25U'#39
      'and cgzlsS.CLBH = '#39'G010000174'#39
      
        'group by cgzlsS.CLBH,substring(ddzl.buyno,8,3),kfxxzl.DEVCODE,cl' +
        'zl.ywpm,Forecast_Leadtime'
      ') CGZL'
      'left join '
      '('
      
        'select ywpm,devcode,clbh,Forecast_Leadtime,sum(total) as total f' +
        'rom '
      '('
      
        'select year,clzl.ywpm,month,devcode,a.clbh,Forecast_Leadtime,sum' +
        '(total) as cscl,pairs*sum(total) as total  from('
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.Cost' +
        'ing_CLSL as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate'
      'from FC_import '
      
        'left join kfxxzl on kfxxzl.devcode=fc_import.devcode  and kfxxzl' +
        '.ARTICLE=FC_Import.ARTICLE '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'group by xiexing+shehao,kfjd,xiexing,shehao) size'
      '           left join (select * from ypzl where kfjd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'and SUBSTRING(ypzl.ypdh,4,1)='#39'K'#39' '
      
        ') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.she' +
        'hao and size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      'where ypzls.clbh is not null'
      'and FC_import.year='#39'2024'#39' '
      'and FC_import.month='#39'9'#39' '
      'and FC_import.type='#39'STIM'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.Costing_CLSL,FC' +
        '_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_i' +
        'mport.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzl' +
        's.csbh,zszl.zsywjc,FC_import.userdate'
      'union'
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Co' +
        'sting_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import' +
        '.userdate'
      'FROM FC_import'
      
        'left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.' +
        'ARTICLE=FC_Import.ARTICLE '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      'article,kfjd,xiexing,shehao from ypzl where kfjd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'group by article,kfjd,xiexing,shehao) size'
      '           left join (select * from ypzl where kfjd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'and SUBSTRING(ypzl.ypdh,4,1)='#39'K'#39' '
      
        ') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.she' +
        'hao and size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and FC_import.year='#39'2024'#39' '
      'and FC_import.month='#39'9'#39' '
      'and FC_import.type='#39'STIM'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLS' +
        'L*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate'
      'union'
      
        'select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cl' +
        'dh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userdate from(  '
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Co' +
        'sting_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import' +
        '.userdate'
      'FROM FC_import'
      
        'left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.' +
        'ARTICLE=FC_Import.ARTICLE '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao '
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'group by xiexing+shehao,kfjd,xiexing,shehao) size'
      '           left join (select * from ypzl where kfjd='#39'CFM'#39
      'and ypzl.ProductionLocation='#39'LYN'#39
      'and SUBSTRING(ypzl.ypdh,4,1)='#39'K'#39' '
      
        ') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.she' +
        'hao and size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '            ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.sheha' +
        'o=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and CLZHZL.SYL>0  and clzl.clzmlb='#39'Y'#39
      'and FC_import.year='#39'2024'#39' '
      'and FC_import.month='#39'9'#39' '
      'and FC_import.type='#39'STIM'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLS' +
        'L*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate)clzhzl2'
      'inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'WHERE CLZHZL.cldh1 is not null'
      ' ) a '
      'left join clzl on clzl.cldh=a.clbh '
      'left join clzl_flex on clzl.cldh=clzl_flex.cldh'
      'left join ('
      
        '  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location' +
        ' from ('
      
        '    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Foreca' +
        'st_Leadtime, A.Location from ('
      
        '      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadt' +
        'ime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Sub' +
        'string(Season,1,2) DESC, USERDATE desc) as rn from ('
      
        '        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as' +
        ' CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, Mater' +
        'ialMOQ.USERDATE from MaterialMOQ with (nolock)'
      
        '        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = Materi' +
        'alMOQ.CLBH and IsNull(CLZL_LS.JHDH, '#39#39') <> '#39#39
      '      ) AS MaterialMOQ'
      '    ) A where A.rn=1'
      '  ) AS MatMOQ'
      ') AS m on m.CLBH = a.clbh'
      'where clzl.clzmlb <>'#39'Y'#39' '
      'and a.CLBH = '#39'G010000174'#39
      'group by year,month,ywpm,devcode,a.clbh,Forecast_Leadtime,pairs'
      ') Data1'
      'group by ywpm,devcode,clbh,Forecast_Leadtime'
      ') ddzl on ddzl.CLBH = cgzl.CLBH and ddzl.Devcode = cgzl.SKU'
      '')
    Left = 74
    Top = 288
    object Query1Material_NO: TStringField
      FieldName = 'Material_NO'
      FixedChar = True
      Size = 15
    end
    object Query1Material_Desc: TStringField
      FieldName = 'Material_Desc'
      FixedChar = True
      Size = 200
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Forecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object Query1Purchase_Qty: TCurrencyField
      FieldName = 'Purchase_Qty'
    end
    object Query1ForeCast_Qty: TFloatField
      FieldName = 'ForeCast_Qty'
    end
    object Query1Different_Qty: TFloatField
      FieldName = 'Different_Qty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 77
    Top = 224
  end
end
