object NoUseMaterial: TNoUseMaterial
  Left = 184
  Top = 202
  Width = 928
  Height = 480
  Caption = 'No Use Material'
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 13
      Width = 110
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'After Month'
    end
    object Label2: TLabel
      Left = 12
      Top = 42
      Width = 110
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory'
    end
    object Label3: TLabel
      Left = 12
      Top = 70
      Width = 110
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Now Exchange'
    end
    object monthCB: TComboBox
      Left = 136
      Top = 11
      Width = 145
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object FactoryCB: TComboBox
      Left = 136
      Top = 39
      Width = 89
      Height = 28
      ItemHeight = 20
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
    object Button1: TButton
      Left = 327
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 327
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 135
      Top = 69
      Width = 106
      Height = 28
      TabOrder = 4
      Text = 'Edit1'
    end
  end
  object nowcost: TDBGridEh
    Left = 0
    Top = 105
    Width = 910
    Height = 328
    Align = alClient
    DataSource = storkSD
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'kcyear'
        Footers = <>
        Title.Caption = #24180'|year'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'kcmonth'
        Footers = <>
        Title.Caption = #26376'|month'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ckbh'
        Footers = <>
        Title.Caption = #24288#21029'|Factory'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        Title.Caption = #26009#34399'|Material No'
        Width = 99
      end
      item
        DisplayFormat = '#,##0.##'
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = #26376#32080#23384#37327'|qty'
      end
      item
        DisplayFormat = '#,##0.##'
        EditButtons = <>
        FieldName = 'needqty'
        Footers = <>
        Title.Caption = #29992#37327'|needqty'
      end
      item
        DisplayFormat = '#,##0.##'
        EditButtons = <>
        FieldName = 'mmq'
        Footers = <>
        Title.Caption = #21574#26009#37327'|mmq'
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #33521#25991#35498#26126'|English'
        Width = 624
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #20013#25991#35498#26126'|China'
        Width = 564
      end
      item
        DisplayFormat = '#,##0.##'
        DropDownSpecRow.Value = 0.000000000000000000
        EditButtons = <>
        FieldName = 'nowcost'
        Footers = <
          item
            Color = clCream
            DisplayFormat = '#,##0.##'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#21069#25104#26412'|Cost Now'
      end
      item
        DisplayFormat = '#,##0.##'
        DropDownSpecRow.Value = 0.000000000000000000
        EditButtons = <>
        FieldName = 'incostus'
        Footers = <
          item
            Color = clCream
            DisplayFormat = '#,##0.##'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#25104#26412'|In Cose'
      end
      item
        DisplayFormat = '#,##0.##'
        DropDownSpecRow.Value = 0.000000000000000000
        EditButtons = <>
        FieldName = 'agio'
        Footers = <
          item
            Color = clCream
            DisplayFormat = '#,##0.##'
            ValueType = fvtSum
          end>
        Title.Caption = #21295#24046'|Agio'
      end>
  end
  object monthQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kcyear+kcmonth as ym from kcclmonth'
      'group by kcyear+kcmonth'
      'order by  kcyear+kcmonth')
    Left = 592
    Top = 64
  end
  object storkQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.kcyear,KCCLMONTH.kcmonth, KCCLMONTH.ckbh,KCCLMO' +
        'NTH.clbh,clzl.ywpm,clzl.zwpm,'
      
        '          kcclmonth.qty,isnull(k.needqty,0) as needqty, (isnull(' +
        'kcclmonth.qty,0)-isnull(k.needqty,0)) as mmq,'
      
        '          ((isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) * isnul' +
        'l(vnprice,0)) / (case when cwhl <> 0 then cwhl else 1 end) as in' +
        'costus'
      
        '         ,(case when cwhl <> 0 then (isnull(kcclmonth.qty,0)-isn' +
        'ull(k.needqty,0)) * isnull(vnprice,0) / 20000 else 0 end) as now' +
        'cost'
      
        '         ,(case when cwhl <> 0 then (((isnull(kcclmonth.qty,0)-i' +
        'snull(k.needqty,0)) * isnull(vnprice,0)) /  cwhl) - ((isnull(kcc' +
        'lmonth.qty,0)-isnull(k.needqty,0)) * isnull(vnprice,0) / 20000) ' +
        'else 0 end) as agio'
      ' from KCCLMONTH '
      'right join '
      
        '          (select max(KCCLMONTH.kcyear+KCCLMONTH.kcmonth) as ym,' +
        'ckbh,clbh '
      '           from kcclmonth'
      '           group by KCCLMONTH.ckbh,KCCLMONTH.clbh) as h on '
      
        '           h.ym=(KCCLMONTH.kcyear+KCCLMONTH.kcmonth) and kcclmon' +
        'th.ckbh=h.ckbh and kcclmonth.clbh=h.clbh '
      'left join clzl on clzl.cldh=kcclmonth.clbh '
      'full join '
      
        '          (select ywdd.gsbh,zlzls2.clbh,sum(clsl) as needqty fro' +
        'm zlzls2 '
      '           left join ywdd on ywdd.ysbh=zlzls2.zlbh '
      
        '           where (ywdd.sb is null or ywdd.sb <> '#39'OK'#39')  and ywdd.' +
        'etd >= getdate() '
      
        '           group by ywdd.gsbh,zlzls2.clbh) as K on k.gsbh=kcclmo' +
        'nth.ckbh and k.clbh = KCCLMONTH.clbh '
      'where  (kcclmonth.qty-isnull(k.needqty,0)) > 0 '
      ' and KCCLMONTH.ckbh in ('#39'VA12'#39','#39'VA3'#39','#39'VB1'#39')'
      
        ' order by KCCLMONTH.kcyear,KCCLMONTH.kcmonth,KCCLMONTH.ckbh,KCCL' +
        'MONTH.clbh')
    Left = 360
    Top = 248
    object storkQkcyear: TStringField
      FieldName = 'kcyear'
      FixedChar = True
      Size = 4
    end
    object storkQkcmonth: TStringField
      FieldName = 'kcmonth'
      FixedChar = True
      Size = 2
    end
    object storkQckbh: TStringField
      FieldName = 'ckbh'
      FixedChar = True
      Size = 4
    end
    object storkQclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object storkQywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object storkQzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object storkQqty: TCurrencyField
      FieldName = 'qty'
    end
    object storkQneedqty: TFloatField
      FieldName = 'needqty'
    end
    object storkQmmq: TFloatField
      FieldName = 'mmq'
    end
    object storkQincostus: TFloatField
      FieldName = 'incostus'
    end
    object storkQnowcost: TFloatField
      FieldName = 'nowcost'
    end
    object storkQagio: TFloatField
      FieldName = 'agio'
    end
  end
  object storkSD: TDataSource
    DataSet = storkQ
    Left = 328
    Top = 248
  end
  object costnowQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cwhl  from cwhl'
      'where hlyear+hlmonth=(select max( hlyear+hlmonth) from cwhl)')
    Left = 744
    Top = 64
  end
end
