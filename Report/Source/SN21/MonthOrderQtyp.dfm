object MonthOrderQty: TMonthOrderQty
  Left = 248
  Top = 211
  Width = 928
  Height = 480
  Caption = 'SN21 Order Qty by Month'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MonDBGridEh: TDBGridEh
    Left = 0
    Top = 137
    Width = 912
    Height = 305
    Align = alClient
    DataSource = DS
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = MonDBGridEhDrawColumnCell
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BB1: TBitBtn
      Left = 17
      Top = 7
      Width = 57
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
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
    object bbt6: TBitBtn
      Left = 160
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
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
    object Lang: TGroupBox
      Left = 232
      Top = 8
      Width = 233
      Height = 48
      Caption = 'Language'
      TabOrder = 2
      object RBLan1: TRadioButton
        Left = 16
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Chinese'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RBLan2: TRadioButton
        Left = 120
        Top = 23
        Width = 81
        Height = 17
        Caption = 'English'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object QryPanel: TPanel
    Left = 0
    Top = 64
    Width = 912
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 8
      Top = 44
      Width = 49
      Height = 16
      Caption = 'START:'
    end
    object Label4: TLabel
      Left = 208
      Top = 44
      Width = 32
      Height = 16
      Caption = 'END:'
    end
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object QryBtn: TButton
      Left = 424
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object STYea: TComboBox
      Left = 64
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 6
      TabOrder = 1
      Text = '2014'
      Items.Strings = (
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object STMon: TComboBox
      Left = 144
      Top = 40
      Width = 49
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object EDYea: TComboBox
      Left = 248
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 6
      TabOrder = 3
      Text = '2014'
      Items.Strings = (
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object EDMon: TComboBox
      Left = 336
      Top = 40
      Width = 49
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object GSBHCombo: TComboBox
      Left = 64
      Top = 8
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'ALL'
      OnChange = GSBHComboChange
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
    object BuyNoCK: TCheckBox
      Left = 336
      Top = 10
      Width = 89
      Height = 17
      Caption = 'By BuyNO'
      TabOrder = 6
      Visible = False
    end
    object SaleTypeCK: TCheckBox
      Left = 144
      Top = 10
      Width = 185
      Height = 17
      Caption = 'Not include VN Order Qty'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object MonQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#MonDQty'#39') is not null  '
      '   begin   drop table #MonDQty end   '
      'select * into #MonDQty '
      'from('
      
        #9'select (Cast(Year(shipdate) as Varchar)+'#39'/'#39'+Cast(month(shipdate' +
        ') as Varchar)) as MD,'#39'VA12'#39' as GSBH,Sum(Pairs) as Qty,'#39'1.Order'#39' ' +
        'as SB'
      #9'from DDZL '
      
        #9'where KHBH='#39'036'#39' and ShipDate>='#39'2014-01-01'#39' and ShipDate<='#39'2014' +
        '-02-28'#39' and DDBH like '#39'Y%'#39
      #9'group by Year(shipdate),month(shipdate)  '
      #9'Union All'
      
        #9'select (Cast(Year(shipdate) as Varchar)+'#39'/'#39'+Cast(month(shipdate' +
        ') as Varchar)) as MD,'#39'VB1'#39' as GSBH,Sum(Pairs) as Qty,'#39'1.Order'#39' a' +
        's SB'
      #9'from DDZL '
      
        #9'where ((KHBH='#39'0038'#39') or (KHBH='#39'0060'#39')) and ShipDate>='#39'2014-01-0' +
        '1'#39' and ShipDate<='#39'2014-02-28'#39' and DDBH like '#39'A%'#39
      #9'group by Year(shipdate),month(shipdate) '
      #9'Union All'
      
        #9'select (Cast(Year(shipdate) as Varchar)+'#39'/'#39'+Cast(month(shipdate' +
        ') as Varchar)) as MD,'#39'VA3'#39' as GSBH,Sum(Pairs) as Qty,'#39'1.Order'#39' a' +
        's SB '
      #9'from DDZL '
      
        #9'where (GSBH='#39'VA3'#39') and ShipDate>='#39'2014-01-01'#39' and ShipDate<='#39'20' +
        '14-02-28'#39' '
      #9'group by Year(shipdate),month(shipdate) '
      #9'Union All'
      
        #9'select (Cast(Year(shipdate) as Varchar)+'#39'/'#39'+Cast(month(shipdate' +
        ') as Varchar)) as MD,'#39'VB2'#39' as GSBH,Sum(Pairs) as Qty,'#39'1.Order'#39' a' +
        's SB '
      #9'from DDZL '
      
        #9'where (GSBH='#39'VB2'#39') and ShipDate>='#39'2014-01-01'#39' and ShipDate<='#39'20' +
        '14-02-28'#39' '
      #9'group by Year(shipdate),month(shipdate) '
      #9'Union All'
      
        #9'select (Cast(Year(BZDate) as Varchar)+'#39'/'#39'+Cast(month(BZDate) as' +
        ' Varchar)) as MD,BDepartment.GSBH,Sum(SCBZCL.Qty) as Qty,'#39'2.Plan' +
        #39' as SB'
      #9'  from SCBZCL'
      #9'  left join BDepartment on BDepartment.ID=SCBZCL.DepNo '
      
        #9'  where  convert(varchar,SCBZCL.BZDate,111)>='#39'2014/01/01'#39' and c' +
        'onvert(varchar,SCBZCL.BZDate,111)<='#39'2014/02/28'#39
      #9#9#9' and Bdepartment.GXLB in ('#39'A'#39') '
      
        #9'  group by Year(SCBZCL.BZDate),month(SCBZCL.BZDate),BDepartment' +
        '.GSBH'
      #9'Union All'
      
        #9'select  (Cast(Year(SCDate) as Varchar)+'#39'/'#39'+Cast(month(SCDate) a' +
        's Varchar)) as MD,BDepartment.GSBH,isnull(sum(SCBBS.Qty),0) as Q' +
        'ty,'#39'3.Actual'#39' as SB'
      #9#9'  from SCBBS '
      #9#9'  left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      #9#9'  left join BDepartment on BDepartment.ID=SCBB.DepNO '
      #9#9'  left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        #9#9'  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111' +
        ')) between '
      #9#9#9#9' '#39'2014/01/01'#39'and '#39'2014/02/28'#39
      #9#9#9#9' and BDepartment.DepName like '#39'%%'#39
      #9#9#9#9'  and BDepartment.GXLB<>'#39'G'#39
      #9#9#9#9'  and SCBBS.GXLB='#39'A'#39
      
        #9#9'  group by Year(SCBB.SCDate),month(SCBB.SCDate),BDepartment.GS' +
        'BH  '
      ') MonDQty '
      ''
      'select MonDQty.GSBH ,MonDQty.SB  '
      ',sum(case  when MD='#39'2014/1'#39
      ' then Qty else 0 end) as '#39'2014/1'#39
      ',sum(case  when MD='#39'2014/2'#39
      ' then Qty else 0 end) as '#39'2014/2'#39' '
      'from  (select #MonDQty.* from #MonDQty '
      '       union all '
      '       select SCBZCL.MD,SCBZCL.GSBH,'
      
        '             case when isnull(SCBBS.Qty,0)<>0  then  isnull(SCBB' +
        'S.Qty,0)-isnull(SCBZCL.Qty,0) end Qty,'#39'4.Diff'#39' as SB'
      
        '       from (select * from #MonDQty where #MonDQty.SB like '#39'%Pla' +
        'n%'#39') SCBZCL '
      
        '       left join (select * from #MonDQty where #MonDQty.SB like ' +
        #39'%Actual%'#39') SCBBS '
      
        '                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.MD=SCBBS.M' +
        'D '
      '       union all '
      '       select SCBZCL.MD,SCBZCL.GSBH,'
      
        '             case when isnull(SCBZCL.Qty,0)<>0 then convert(int,' +
        'isnull(SCBBS.Qty,0)/isnull(SCBZCL.Qty,0)*100)  end Qty,'#39'5.Per%'#39' ' +
        'as SB '
      
        '       from (select * from #MonDQty where #MonDQty.SB like '#39'%Pla' +
        'n%'#39') SCBZCL '
      
        '       left join (select * from #MonDQty where #MonDQty.SB like ' +
        #39'%Actual%'#39') SCBBS '
      
        '                 on SCBZCL.GSBH=SCBBS.GSBH  and SCBZCL.MD=SCBBS.' +
        'MD'
      '       ) MonDQty'
      'group by   MonDQty.GSBH ,MonDQty.SB '
      'order by   MonDQty.GSBH ,MonDQty.SB  ')
    Left = 16
    Top = 168
  end
  object DS: TDataSource
    DataSet = MonQry
    Left = 48
    Top = 168
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 80
    Top = 168
  end
end
