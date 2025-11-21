object CGVendorCompare: TCGVendorCompare
  Left = 499
  Top = 155
  Width = 958
  Height = 466
  Caption = 'MRP Vendors v.s Actual Vendors'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 40
      Width = 106
      Height = 20
      Caption = 'Purchase Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 221
      Top = 40
      Width = 14
      Height = 20
      Caption = 'to'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 61
      Top = 13
      Width = 53
      Height = 20
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 355
      Top = 40
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CGSD: TDateTimePicker
      Left = 126
      Top = 40
      Width = 89
      Height = 21
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      TabOrder = 0
    end
    object CGED: TDateTimePicker
      Left = 242
      Top = 40
      Width = 89
      Height = 21
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      TabOrder = 1
    end
    object GSBH: TComboBox
      Left = 126
      Top = 12
      Width = 89
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VDT'
        'VTX'
        'CDC'
        'KDC')
    end
    object Button1: TButton
      Left = 540
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 402
      Top = 40
      Width = 80
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'MAIN'
        'Other')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 400
    Height = 355
    Align = alLeft
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 33
      Width = 398
      Height = 321
      Align = alClient
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.FieldName = 'CLBH'
          Footers = <>
          Title.Caption = 'Material NO|'#26448#26009#32232#34399
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Material Name|'#26448#26009#21517#31281
          Width = 110
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Caption = 'Vendor|'#25351#23450#21488#28771#24288#21830
        end
        item
          DisplayFormat = '.00'
          EditButtons = <>
          FieldName = 'TotCLSL'
          Footers = <>
          Title.Caption = 'Required|'#32317#38656#27714#37327
        end
        item
          DisplayFormat = '.00'
          EditButtons = <>
          FieldName = 'TotQty'
          Footers = <>
          Title.Caption = 'Qty|'#32317#25505#36092#37327
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 398
      Height = 32
      Align = alTop
      TabOrder = 1
      object cb1: TCheckBox
        Left = 18
        Top = 7
        Width = 303
        Height = 17
        Caption = 'Show Materail Has Assign Vendor only'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 400
    Top = 73
    Width = 542
    Height = 355
    Align = alClient
    TabOrder = 2
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 33
      Width = 540
      Height = 321
      Align = alClient
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGridEh2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CGNO'
          Footers = <>
          Title.Caption = 'CGNO|'#25505#36092#21934#34399
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          Title.Caption = 'ZLBH|'#21046#20196#21934#34399
          Width = 86
        end
        item
          DisplayFormat = '.00'
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.DisplayFormat = '.00'
          Footer.FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Required|'#38656#27714#37327
        end
        item
          DisplayFormat = '.00'
          EditButtons = <>
          FieldName = 'Qty'
          Footer.DisplayFormat = '.00'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Qty|'#25505#36092#37327
        end
        item
          EditButtons = <>
          FieldName = 'MRP_csbh'
          Footers = <>
          Title.Caption = 'Vendor|'#24288#21830#32232#34399
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'MRP_zsywjc'
          Footers = <>
          Title.Caption = 'MRP Vendor|'#25351#23450#21488#28771#24288#21830
        end
        item
          EditButtons = <>
          FieldName = 'map_csbh'
          Footers = <>
          Title.Caption = 'Vendor|'#24288#21830#32232#34399
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'map_zsywjc'
          Footers = <>
          Title.Caption = 'Mapping Vendor|'#25351#23450#36234#21335#24288#21830
        end
        item
          EditButtons = <>
          FieldName = 'cgzl_zsbh'
          Footers = <>
          Title.Caption = 'Vendor|'#24288#21830#32232#34399
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'cgzl_zsywjc'
          Footers = <>
          Title.Caption = 'Purchase Vendor|'#25505#36092#24288#21830
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 540
      Height = 32
      Align = alTop
      TabOrder = 1
      object cb2: TCheckBox
        Left = 10
        Top = 7
        Width = 271
        Height = 17
        Caption = 'Show Vendor Doesn'#39't Match Only'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DS1: TDataSource
    DataSet = CGMas
    Left = 128
    Top = 208
  end
  object DS2: TDataSource
    DataSet = CGDet
    Left = 416
    Top = 208
  end
  object CGMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZLSS.CLBH,clzl.ywpm,zlzls2.CSBH,zszl.zsywjc,'
      '       SUM(zlzls2.CLSL) as TotCLSL,sum(CGZLSS.Qty) as TotQty'
      'from CGZLSS'
      'left join CGZL on CGZLSS.CGNO=CGZL.CGNO'
      'left join clzl on CGZLSS.CLBH=clzl.cldh'
      
        'left join zlzls2 on zlzls2.ZLBH = CGZLSS.ZLBH and zlzls2.CLBH=CG' +
        'ZLSS.CLBH'
      'left join zszl on zlzls2.CSBH=zszl.zsdh'
      'where CGZLSS.USERDate>='#39'2013/06/13'#39
      '      and CGZLSS.USERDate<='#39'2013/07/13'#39
      '    and (zlzls2.CSBH<>'#39#39' and zlzls2.CSBH is not null)'
      'group by CGZLSS.CLBH,zlzls2.CSBH,clzl.ywpm,zszl.zsywjc'
      'order by CGZLSS.CLBH,zlzls2.CSBH')
    Left = 128
    Top = 176
    object CGMasCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGMasywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object CGMasCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object CGMaszsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object CGMasTotCLSL: TFloatField
      FieldName = 'TotCLSL'
    end
    object CGMasTotQty: TCurrencyField
      FieldName = 'TotQty'
    end
  end
  object CGDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select CGZLSS.CGNO,CGZLSS.ZLBH,zlzls2.CLBH,zlzls2.CLSL,CGZLSS.Qt' +
        'y,'
      '       zlzls2.CSBH as MRP_csbh,zszl.zsywjc as MRP_zsywjc,'
      
        '       ISNULL(map.CSBHV,'#39#39') as map_csbh,isnull(map.zsywjcv,'#39#39') a' +
        's map_zsywjc,'
      
        '       cgzl.ZSBH as cgzl_zsbh,cgzl.zsywjc as cgzl_zsywjc,CGZLSS.' +
        'USERDate'
      'from zlzls2'
      
        'left join CGZLSS on zlzls2.ZLBH=CGZLSS.ZLBH and zlzls2.CLBH=CGZL' +
        'SS.CLBH'
      'left join zszl on zlzls2.CSBH=zszl.zsdh'
      
        'left join (select CGZL.CGNO,CGZL.ZSBH,zszl.zsywjc from CGZL left' +
        ' join zszl on CGZL.ZSBH = zszl.zsdh) as cgzl'
      '           on CGZLSS.CGNO = cgzl.CGNO'#9
      
        'left join (select b2buser.csbh,zszl.zsywjc,csbhv.CSBHV,csbhv.zsy' +
        'wjcv from B2BUser'
      #9#9'        left join zszl on B2BUser.CSBH = zszl.zsdh'
      
        #9#9'        left join (select B2BUser.csbh,B2BUser.CSBHV,zszl.zsyw' +
        'jc as zsywjcv from B2BUser'
      
        '           left join zszl on B2BUser.CSBHV=zszl.zsdh) as csbhv o' +
        'n B2BUser.CSBH=csbhv.csbh) as map'
      #9#9'        on zlzls2.CSBH = map.CSBH   '
      'where CGZLSS.USERDate>='#39'2013/06/13'#39
      '      and CGZLSS.USERDate<='#39'2013/07/13'#39
      '      and zlzls2.CLBH=:CLBH'
      '      and zlzls2.CSBH=:CSBH'
      
        '    and (CGZL.ZSBH <> isnull(map.CSBHV,zlzls2.CSBH) and CGZL.ZSB' +
        'H <> zlzls2.CSBH)'
      'order by CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.USERDate')
    Left = 416
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSBH'
        ParamType = ptUnknown
      end>
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CGDetCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
    end
    object CGDetMRP_csbh: TStringField
      FieldName = 'MRP_csbh'
      FixedChar = True
      Size = 6
    end
    object CGDetMRP_zsywjc: TStringField
      FieldName = 'MRP_zsywjc'
      FixedChar = True
    end
    object CGDetmap_csbh: TStringField
      FieldName = 'map_csbh'
      FixedChar = True
      Size = 6
    end
    object CGDetmap_zsywjc: TStringField
      FieldName = 'map_zsywjc'
      FixedChar = True
    end
    object CGDetcgzl_zsbh: TStringField
      FieldName = 'cgzl_zsbh'
      FixedChar = True
      Size = 6
    end
    object CGDetcgzl_zsywjc: TStringField
      FieldName = 'cgzl_zsywjc'
      FixedChar = True
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
  end
end
