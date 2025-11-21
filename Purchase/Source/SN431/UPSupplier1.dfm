object UPSupplier: TUPSupplier
  Left = 606
  Top = 247
  Width = 1070
  Height = 557
  Caption = 'N431 UP Supplier'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1062
    Height = 68
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 5
      Width = 49
      Height = 19
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 213
      Top = 5
      Width = 47
      Height = 19
      Caption = 'Sup. ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 378
      Top = 5
      Width = 86
      Height = 19
      Caption = 'Group Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 187
      Top = 35
      Width = 73
      Height = 19
      Caption = 'Sup. Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 408
      Top = 35
      Width = 55
      Height = 19
      Caption = 'Country'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 35
      Width = 51
      Height = 19
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 67
      Top = 5
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 267
      Top = 5
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 469
      Top = 5
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 267
      Top = 35
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 469
      Top = 35
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 792
      Top = 34
      Width = 89
      Height = 25
      Caption = 'Discount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 876
      Top = 34
      Width = 58
      Height = 25
      Caption = 'VAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox3: TCheckBox
      Left = 792
      Top = 12
      Width = 121
      Height = 25
      Caption = 'Contractor Tax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Button1: TButton
      Left = 932
      Top = 5
      Width = 193
      Height = 59
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 572
      Top = 5
      Width = 27
      Height = 27
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 572
      Top = 35
      Width = 27
      Height = 27
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 609
      Top = 2
      Width = 172
      Height = 58
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object RadioButton1: TRadioButton
      Left = 617
      Top = 13
      Width = 159
      Height = 25
      Caption = 'Production Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object RadioButton2: TRadioButton
      Left = 617
      Top = 37
      Width = 111
      Height = 17
      Caption = 'All Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Edit6: TEdit
      Left = 67
      Top = 35
      Width = 100
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 1062
    Height = 458
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1060
      Height = 456
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -19
      FooterFont.Name = 'Calibri'
      FooterFont.Style = [fsBold]
      FooterRowCount = 1
      FrozenCols = 7
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'FTY'
          Footer.Color = 14286847
          Footers = <>
          PickList.Strings = (
            'LVL'
            'LBT'
            'LDT'
            'LYV'
            'LHG'
            'LYM')
          Title.Color = 8454143
          Width = 80
        end
        item
          Color = 14286847
          DisplayFormat = 'yyyy/mm/dd'
          EditButtons = <>
          FieldName = 'EffectiveDate'
          Footer.Color = 14286847
          Footers = <>
          Title.Caption = 'Effective Date'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 100
          OnUpdateData = DBGridEh1Columns0UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'Season'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 60
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'zsdh'
          Footer.Color = 14286847
          Footers = <>
          Title.Caption = 'ERP Supplier|ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 60
          OnEditButtonClick = DBGridEh1Columns2EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|Style'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'GroupName'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|Group Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsqm'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Chinese Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'VD3 Supplier|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW_jc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'VD3 Supplier|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'MZSDH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Payment Agency|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Mzsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Payment Agency|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 80
        end
        item
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'VAT'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 60
        end
        item
          Color = 15925222
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'Discount_UP'
          Footer.Color = 15925222
          Footers = <>
          Title.Caption = 'Discount|Unit Price'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15925222
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'Discount_OA'
          Footer.Color = 15925222
          Footers = <>
          Title.Caption = 'Discount|End of Monthly'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ContractorTax'
          Footers = <>
          PickList.Strings = (
            'Duty Free'
            'LYV'
            'Supplier')
          Title.Caption = 'Contractor Tax [1%]'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'SEA_Freight_cost'
          Footers = <>
          Title.Caption = 'SEA Freight cost'
          Width = 101
        end
        item
          EditButtons = <>
          FieldName = 'TT_Transportation'
          Footers = <>
          PickList.Strings = (
            'LYV'
            'Supplier'
            'Port')
          Title.Caption = 'Transaction Terms|Transportation'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'TT_Payment'
          Footers = <>
          PickList.Strings = (
            '10th of next month'
            '25th of next month'
            '10th or 25th of next month')
          Title.Caption = 'Transaction Terms|Payment Method'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'TT_Document'
          Footers = <>
          PickList.Strings = (
            'Invoice'
            'Domestic Inport'
            'Customs Declaration')
          Title.Caption = 'Transaction Terms|Document Type'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'memo'
          Footers = <>
          Title.Caption = 'UP Remark'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'Remark'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Customclearanceday'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Custom Clearance Day'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ShippingleadtimeAIR'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Shipping Leadtime|Air'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'ShippingleadtimeSEA'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Shipping Leadtime|Sea'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'yjdz'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Address'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'dh'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Telephone'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'cz'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'FAX'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CGProdCnt'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Prod P.O'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CGSampleCnt'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Sample P.O'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'JGZLCnt'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Treatment'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'KCRKCnt'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Import Warehouse'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'ProdPurchaser'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Production Purchaser|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ProdPurchaser_Name'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Production Purchaser|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'SamplePurchaser'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Sample Purchaser|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'SamplePurchaser_Name'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Sample Purchaser|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15724527
          EditButtons = <>
          FieldName = 'USERID'
          Footer.Color = 15724527
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User ID'
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15724527
          DisplayFormat = 'yyyy/mm/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'USERDATE'
          Footer.Color = 15724527
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User Date'
          Title.TitleButton = True
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'YN'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Visible = False
          Width = 60
        end>
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      
        #9' Data_UP_Supplier.FTY, Data_UP_Supplier.EffectiveDate, Data_UP_' +
        'Supplier.zsdh, Data_UP_Supplier.Season, Data_UP_Supplier.Discoun' +
        't_UP, Data_UP_Supplier.Discount_OA, '
      
        #9' Data_UP_Supplier.ContractorTax, Data_UP_Supplier.TT_Transporta' +
        'tion, Data_UP_Supplier.TT_Payment, Data_UP_Supplier.TT_Document,' +
        ' '
      
        #9' Data_UP_Supplier.memo, Data_UP_Supplier.YN, Data_UP_Supplier.U' +
        'SERID,Data_UP_Supplier.USERDATE, Data_UP_Supplier.SEA_Freight_co' +
        'st, '
      
        #9' zszl_dev.Style,zszl_dev.GroupName,zszl.zsywjc,zszl_dev.Country' +
        ',zszl_dev.SamplePurchaser,zszl_dev.ProdPurchaser, '
      
        #9' zszl.yjdz,zszl_dev.MZSDH,zszl_dev.Zsdh_TW, zszl.dh,zszl.cz,zsz' +
        'l.zsqm, '
      
        #9' Country.Customclearanceday,Country.ShippingleadtimeSEA, Countr' +
        'y.ShippingleadtimeAIR, '
      #9' ZSZL_Mat.Remark, '
      #9' ProdBUSERS.USERNAME as ProdPurchaser_Name, '
      #9' Busers.USERNAME as SamplePurchaser_Name, '
      
        #9' (select zsywjc from zszl A where A.zsdh=zszl_dev.mzsdh ) as  M' +
        'zsywjc, '
      
        #9' (select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_TW ) as ' +
        ' Zsdh_TW_jc, '
      #9' zszl_VN.VAT, '
      
        #9' (select count(CGNO) AS CNT from CGZL CGSample WHERE CGSample.C' +
        'GLX IN ('#39'6'#39') AND CGSample.zsbh=Data_UP_Supplier.zsdh ) as CGSamp' +
        'leCnt, '
      
        #9' (select count(CGNO) AS CNT from CGZL CGProd WHERE CGProd.CGLX ' +
        'NOT IN('#39'6'#39', '#39'4'#39') AND CGProd.zsbh=Data_UP_Supplier.zsdh ) as CGPr' +
        'odCnt, '
      
        #9' (select count(RKNO) AS CNT from KCRK WHERE KCRK.zsbh=Data_UP_S' +
        'upplier.zsdh ) as KCRKCnt, '
      
        #9' (select count(JGNO) AS CNT from JGZL WHERE JGZL.zsbh=Data_UP_S' +
        'upplier.zsdh ) as JGZLCnt'
      ' FROM Data_UP_Supplier '
      ' LEFT JOIN zszl  ON zszl.zsdh = Data_UP_Supplier.zsdh '
      
        ' LEFT JOIN zszl_dev on zszl.zsdh=zszl_dev.zsdh and zszl_dev.GSBH' +
        '='#39'VA12'#39
      ' LEFT JOIN Country  ON Country.Country = zszl_dev.Country '
      ' LEFT JOIN ZSZL_Mat  ON ZSZL_Mat.zsdh = Data_UP_Supplier.zsdh '
      ' LEFT JOIN Busers  ON Busers.USERID = zszl_dev.SamplePurchaser '
      
        ' LEFT JOIN (select C.zsbh,Max(CGNO) AS CGNO from CGZL c WHERE C.' +
        'CGLX='#39'6'#39' group by C.zsbh ) CGSampleCGNO on CGSampleCGNO.zsbh=Dat' +
        'a_UP_Supplier.zsdh '
      ' LEFT JOIN CGZL CGZL ON CGZL.CGNO = CGSampleCGNO.CGNO  '
      
        ' LEFT JOIN zszl_VN zszl_VN ON zszl_VN.zsdh = Data_UP_Supplier.zs' +
        'dh '
      
        ' LEFT JOIN BUSERS ProdBUSERS on ProdBUSERS.USERID=zszl_dev.ProdP' +
        'urchaser '
      ' WHERE 1=2')
    UpdateObject = UpdateSQL1
    Left = 72
    Top = 146
    object Query1FTY: TStringField
      FieldName = 'FTY'
      FixedChar = True
    end
    object Query1EffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object Query1ContractorTax: TStringField
      FieldName = 'ContractorTax'
      FixedChar = True
      Size = 30
    end
    object Query1SEA_Freight_cost: TStringField
      FieldName = 'SEA_Freight_cost'
      FixedChar = True
      Size = 3
    end
    object Query1TT_Transportation: TStringField
      FieldName = 'TT_Transportation'
      FixedChar = True
      Size = 200
    end
    object Query1TT_Payment: TStringField
      FieldName = 'TT_Payment'
      FixedChar = True
      Size = 200
    end
    object Query1TT_Document: TStringField
      FieldName = 'TT_Document'
      FixedChar = True
      Size = 200
    end
    object Query1memo: TStringField
      FieldName = 'memo'
      FixedChar = True
      Size = 240
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1Style: TStringField
      FieldName = 'Style'
      FixedChar = True
    end
    object Query1GroupName: TStringField
      FieldName = 'GroupName'
      FixedChar = True
      Size = 30
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1SamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object Query1ProdPurchaser: TStringField
      FieldName = 'ProdPurchaser'
      FixedChar = True
    end
    object Query1yjdz: TStringField
      FieldName = 'yjdz'
      FixedChar = True
      Size = 120
    end
    object Query1MZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1Zsdh_TW: TStringField
      FieldName = 'Zsdh_TW'
      FixedChar = True
      Size = 6
    end
    object Query1dh: TStringField
      FieldName = 'dh'
      FixedChar = True
    end
    object Query1cz: TStringField
      FieldName = 'cz'
      FixedChar = True
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1Customclearanceday: TIntegerField
      FieldName = 'Customclearanceday'
    end
    object Query1ShippingleadtimeSEA: TIntegerField
      FieldName = 'ShippingleadtimeSEA'
    end
    object Query1ShippingleadtimeAIR: TIntegerField
      FieldName = 'ShippingleadtimeAIR'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object Query1ProdPurchaser_Name: TStringField
      FieldName = 'ProdPurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1SamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1Mzsywjc: TStringField
      FieldName = 'Mzsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1Zsdh_TW_jc: TStringField
      FieldName = 'Zsdh_TW_jc'
      FixedChar = True
      Size = 200
    end
    object Query1VAT: TCurrencyField
      FieldName = 'VAT'
    end
    object Query1CGSampleCnt: TIntegerField
      FieldName = 'CGSampleCnt'
    end
    object Query1CGProdCnt: TIntegerField
      FieldName = 'CGProdCnt'
    end
    object Query1KCRKCnt: TIntegerField
      FieldName = 'KCRKCnt'
    end
    object Query1JGZLCnt: TIntegerField
      FieldName = 'JGZLCnt'
    end
    object Query1Discount_UP: TCurrencyField
      FieldName = 'Discount_UP'
    end
    object Query1Discount_OA: TCurrencyField
      FieldName = 'Discount_OA'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 178
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Data_UP_Supplier'
      'set'
      '  EffectiveDate = :EffectiveDate,'
      '  zsdh = :zsdh,'
      '  Season = :Season,'
      '  FTY = :FTY,'
      '  Discount_UP = :Discount_UP,'
      '  Discount_OA = :Discount_OA,'
      '  ContractorTax = :ContractorTax,'
      '  TT_Transportation = :TT_Transportation,'
      '  TT_Payment = :TT_Payment,'
      '  TT_Document = :TT_Document,'
      '  memo = :memo,'
      '  YN = :YN,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  SEA_Freight_cost = :SEA_Freight_cost'
      'where'
      '  EffectiveDate = :OLD_EffectiveDate and'
      '  zsdh = :OLD_zsdh and'
      '  FTY = :OLD_FTY')
    InsertSQL.Strings = (
      'insert into Data_UP_Supplier'
      
        '  (EffectiveDate, zsdh, Season, FTY, Discount_UP, Discount_OA, C' +
        'ontractorTax, '
      
        '   TT_Transportation, TT_Payment, TT_Document, memo, YN, USERID,' +
        ' USERDATE, SEA_Freight_cost)'
      'values'
      
        '  (:EffectiveDate, :zsdh, :Season, :FTY, :Discount_UP, :Discount' +
        '_OA, :ContractorTax, '
      
        '   :TT_Transportation, :TT_Payment, :TT_Document, :memo, :YN, :U' +
        'SERID, '
      '   :USERDATE, :SEA_Freight_cost)')
    DeleteSQL.Strings = (
      'delete from Data_UP_Supplier'
      'where'
      '  EffectiveDate = :OLD_EffectiveDate and'
      '  zsdh = :OLD_zsdh and'
      '  FTY = :OLD_FTY')
    Left = 72
    Top = 210
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 242
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object Excel1: TMenuItem
      Caption = '-'
    end
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
