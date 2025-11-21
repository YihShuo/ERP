object WarehouseScheduleMainPC: TWarehouseScheduleMainPC
  Left = 235
  Top = 80
  Width = 1680
  Height = 977
  Caption = 'WarehouseScheduleMainPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 1661
    Top = 14
    Height = 924
    Align = alRight
    Color = clBlack
    ParentColor = False
  end
  object Label3: TLabel
    Left = 16
    Top = 10
    Width = 741
    Height = 37
    Caption = 'Cutting Schedule unfinished task (Sample Only) '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1664
    Height = 14
    Align = alTop
    TabOrder = 0
    Visible = False
    object Shape13: TShape
      Left = 653
      Top = 46
      Width = 427
      Height = 91
      Brush.Color = clSkyBlue
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 297
      Top = 24
      Width = 295
      Height = 47
      Caption = 'Digital Signage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 23
      Top = 24
      Width = 271
      Height = 47
      Caption = 'Cutting Team '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 153
      Top = 81
      Width = 129
      Height = 47
      Caption = #35009#26039#32068
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 297
      Top = 81
      Width = 172
      Height = 47
      Caption = #25976#20301#30475#29256
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 683
      Top = 14
      Width = 163
      Height = 26
      DataField = 'date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 878
      Top = 13
      Width = 142
      Height = 32
      Caption = 'Done/Total'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 699
      Top = 56
      Width = 76
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Tasks'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 834
      Top = 56
      Width = 67
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Pairs'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 702
      Top = 91
      Width = 85
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = 'risk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 813
      Top = 91
      Width = 143
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = 'pairs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 962
      Top = 91
      Width = 111
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = '_percent'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 966
      Top = 56
      Width = 59
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Rate'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 14
    Width = 1411
    Height = 924
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1409
      Height = 292
      Align = alTop
      TabOrder = 0
      Visible = False
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1407
        Height = 26
        Align = alTop
        Caption = 'Delay Risk List / '#24310#35492#36890#22577#26126#32048
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Ariel'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 27
        Width = 1407
        Height = 264
        Align = alClient
        Color = clBlack
        DataSource = DS4
        DrawMemoText = True
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindowText
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindow
        FooterFont.Height = -19
        FooterFont.Name = 'Arial'
        FooterFont.Style = []
        OddRowColor = clBlack
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'WarehousePlan'
            Footers = <>
            Title.Caption = 'Ke hoach Kho|WarehousePlan|'#20489#24235#35336#30059#23436#25104
            Width = 121
          end
          item
            Alignment = taCenter
            DisplayFormat = 'yyyy/MM/dd hh:mm'
            EditButtons = <>
            FieldName = 'TBreceive'
            Footers = <>
            Title.Caption = 'TB nhan|TB Receive|'#25509#25910#36890#22577
            Width = 136
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Serino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Footer.Alignment = taCenter
            Footer.FieldName = 'Serino'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clYellow
            Footer.Font.Height = -19
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'So thu tu|Serino|'#24207#34399
            Width = 62
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Groups'
            Footers = <>
            Title.Caption = 'So thu tu|Groups|'#20998#32068
            Width = 74
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = 'TB|TestNo|'#36890#22577
            Width = 97
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PlanQty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            Footer.Alignment = taCenter
            Footer.FieldName = 'PlanQty'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clYellow
            Footer.Font.Height = -19
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'So doi|Pairs|'#38617#25976
            Visible = False
            Width = 58
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PartE'
            Footers = <>
            MaxWidth = 700
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Department'
            Visible = False
            Width = 129
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ReasonE'
            Footers = <>
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Reason'
            Visible = False
            Width = 221
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ReasonV'
            Footers = <>
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Ly do'
            Visible = False
            Width = 196
          end
          item
            EditButtons = <>
            FieldName = 'WarehoueMemo'
            Footers = <>
            Width = 811
          end>
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 293
      Width = 1409
      Height = 26
      Align = alTop
      Caption = 'Unfinish Task (Today+Delay within 10 days) / '#26410#23436#25104#20219#21209' ('#26412#26085'+10'#26085#20839#24310#35492')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 319
      Width = 1409
      Height = 604
      Align = alClient
      Color = clBlack
      DataSource = DS1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clBlack
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWhite
      FooterFont.Height = -19
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghClearSelection, dghDialogFind]
      ParentFont = False
      RowHeight = 40
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Serino'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'So thu tu|Serino|'#24207#34399
          Width = 46
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Groups'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'So thu tu|Groups|'#20998#32068
          Width = 72
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'TestNo'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'TB|TestNo|'#36890#22577
          Width = 85
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'PlanQty'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'So doi|Pairs|'#38617#25976
          Visible = False
          Width = 51
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'SR'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Width = 192
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Stage'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Giai doan|Stage|'#38542#27573
          Width = 72
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'shipdate'
          Footers = <>
          Title.Caption = 'Shipdate'
          Width = 101
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'ETC'
          Footers = <>
          Width = 95
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'TBreceive'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'TB nhan|TB Receive|'#25509#25910#36890#22577
          Width = 146
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'MaterialPlan'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Ke hoach Kho|WarehousePlan|'#20489#24235#35336#30059#23436#25104
          Width = 118
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'CuttingMTRL'
          Footers = <>
          Title.Caption = 'CuttingMTRL|'#35009#26039#26448#26009
          Width = 146
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'StitchingMTRL'
          Footers = <>
          Title.Caption = 'StitchingMTRL|'#37341#36554#26448#26009
          Width = 137
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'AssemblingMTRL'
          Footers = <>
          Title.Caption = 'AssemblingMTRL|'#25104#22411#26448#26009
          Width = 132
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'PackingMTRL'
          Footers = <>
          Title.Caption = 'PackingMTRL|'#21253#35037#26448#26009
          Width = 147
        end>
    end
  end
  object Panel2: TPanel
    Left = 1411
    Top = 14
    Width = 250
    Height = 924
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 2
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 34
      Width = 248
      Height = 889
      Align = alClient
      Color = clBlack
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clWindowText
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindow
      FooterFont.Height = -19
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Visible = False
      OddRowColor = clBlack
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnCellMouseClick = DBGridEh2CellMouseClick
      OnGetCellParams = DBGridEh2GetCellParams
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Warehouseplan'
          Footer.Alignment = taCenter
          Footer.FieldName = 'Warehouseplan'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Ke hoach Kho|WarehousePlan|'#20489#24235#35336#30059#23436#25104
          Width = 114
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'total'
          Footer.Alignment = taCenter
          Footer.FieldName = 'total'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Total|'#32317#25976
          Width = 56
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'unfinish'
          Footer.Alignment = taCenter
          Footer.FieldName = 'unfinish'
          Footer.ValueType = fvtSum
          Footer.WordWrap = True
          Footers = <>
          Title.Caption = 'Unfinish|'#26410#23436#25104
          Width = 63
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 248
      Height = 33
      Align = alTop
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 248
        Height = 33
        Caption = 'Update'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 752
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Itkhua@!erp;Persist Security Info=T' +
      'rue;User ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 752
  end
  object Query1: TADOQuery
    Connection = ADOConnection1
    DataSource = DS3
    Parameters = <
      item
        Name = 'WarehousePlan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.shipdate,main.ETC, main.MaterialPlan, SQplan.Qty AS Plan' +
        'Qty,TBreceive,CuttingMTRL,StitchingMTRL,AssemblingMTRL,PackingMT' +
        'RL FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR,ShoeTest.Shipdate,ShoeTest.ETC, ShoeTest.Prepar' +
        'ationDate_first AS MaterialPlan, ShoeTest.TBReceiveDate AS TBrec' +
        'eive,PreparationDate CuttingMTRL,S_material StitchingMTRL,insole' +
        '_send AssemblingMTRL,lace_send PackingMTRL FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      '    left join ypzl on shoetest.YPDH = ypzl.YPDH'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.PreparationDate_first, 111) BE' +
        'TWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, G' +
        'etDate()+10, 111) and (PreparationDate is null or S_material is ' +
        'null or insole_send is null  or lace_send is null)    and ypzl.G' +
        'SDH = '#39'CDC'#39
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'where CONVERT(VARCHAR,materialplan,111)=:WarehousePlan'
      'order by   ETC desc')
    Left = 56
    Top = 784
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      Size = 10
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      Size = 6
    end
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1SR: TStringField
      FieldName = 'SR'
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      Size = 15
    end
    object Query1ETC: TDateTimeField
      FieldName = 'ETC'
    end
    object Query1TBreceive: TDateTimeField
      FieldName = 'TBreceive'
    end
    object Query1MaterialPlan: TDateTimeField
      FieldName = 'MaterialPlan'
    end
    object Query1PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query1CuttingMTRL: TDateTimeField
      FieldName = 'CuttingMTRL'
    end
    object Query1StitchingMTRL: TDateTimeField
      FieldName = 'StitchingMTRL'
    end
    object Query1AssemblingMTRL: TDateTimeField
      FieldName = 'AssemblingMTRL'
    end
    object Query1PackingMTRL: TDateTimeField
      FieldName = 'PackingMTRL'
    end
    object Query1shipdate: TDateTimeField
      FieldName = 'shipdate'
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 241
    Top = 255
  end
  object Query4: TADOQuery
    Connection = ADOConnection1
    DataSource = DS3
    Parameters = <
      item
        Name = 'WarehousePlan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, SQplan.Qty AS Plan' +
        'Qty,WarehousePlan,TBreceive,WarehoueMemo,ShoetestDelay.PartE,Sho' +
        'etestDelay.PartC,ReasonE,ReasonC,ReasonV FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.TBReceiveDate AS TBreceive, ShoeTest.' +
        'PreparationDate_first AS WarehousePlan,cast(Memo2 as text) Wareh' +
        'oueMemo  FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      '  left join ypzl on shoetest.YPDH = ypzl.YPDH'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.PreparationDate_first, 111) BE' +
        'TWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, G' +
        'etDate()+10, 111) and (PreparationDate is null or S_material is ' +
        'null or insole_send is null  or lace_send is null) and ypzl.GSDH' +
        ' = '#39'CDC'#39
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN('
      
        '  SELECT TestNo,DP,DR,GXLB,Part.VWSM PartV,Part.YWSM PartE,Part.' +
        'ZWSM PartC,Reason.ZWSM ReasonC,Reason.YWSM ReasonE,Reason.VWSM R' +
        'easonV from ShoetestDelay'
      '  LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP '
      
        '  LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay' +
        '.DR '
      '  where ShoetestDelay.GXLB='#39'W'#39
      ')ShoetestDelay on ShoetestDelay.TestNo=main.TestNo'
      'where CONVERT(VARCHAR,Warehouseplan,111)=:WarehousePlan'
      'order by   WarehousePlan,groups,serino'
      '')
    Left = 280
    Top = 256
    object Query4TestNo: TStringField
      FieldName = 'TestNo'
      Size = 10
    end
    object Query4Groups: TStringField
      FieldName = 'Groups'
      Size = 6
    end
    object Query4Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query4PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query4PartE: TStringField
      FieldName = 'PartE'
      Size = 50
    end
    object Query4PartC: TStringField
      FieldName = 'PartC'
      Size = 50
    end
    object Query4ReasonE: TStringField
      FieldName = 'ReasonE'
      Size = 50
    end
    object Query4ReasonC: TStringField
      FieldName = 'ReasonC'
      Size = 50
    end
    object Query4ReasonV: TStringField
      FieldName = 'ReasonV'
      Size = 50
    end
    object Query4WarehousePlan: TDateTimeField
      FieldName = 'WarehousePlan'
    end
    object Query4TBreceive: TDateTimeField
      FieldName = 'TBreceive'
    end
    object Query4WarehoueMemo: TMemoField
      FieldName = 'WarehoueMemo'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object query3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select CONVERT(VARCHAR,Warehouseplan,111) Warehouseplan,total,fi' +
        'nish,total-finish unfinish  from ('
      
        'select total.Warehouseplan ,total.total,isnull(main2.finish,0) f' +
        'inish from ('
      'select Warehouseplan,COUNT(TestNo) total from ('
      
        'select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,Prep' +
        'arationDate_first Warehouseplan,PreparationDate,S_material,insol' +
        'e_send,lace_send   from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      '    left join ypzl on shoetest.YPDH = ypzl.YPDH'
      
        '    where  convert(varchar, PreparationDate_first, 111) BETWEEN ' +
        'CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate' +
        '()+10, 111)        and ypzl.GSDH = '#39'CDC'#39
      '    )main1 group by Warehouseplan    )total'
      'left join ('
      #9'select Warehouseplan,COUNT(testno) finish from ('
      
        #9#9'select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,Pr' +
        'eparationDate_first Warehouseplan,PreparationDate,S_material,ins' +
        'ole_send,lace_send   from ShoeTest'
      #9#9'left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo'
      '      left join ypzl on shoetest.YPDH = ypzl.YPDH'
      
        #9#9'where  convert(varchar, PreparationDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        '+10, 111)  and (PreparationDate is not null and S_material is no' +
        't null and  insole_send is not null  and lace_send is not null) ' +
        ' and ypzl.GSDH = '#39'CDC'#39')main1'
      
        #9#9'group by Warehouseplan ) main2 on main2.warehouseplan= total.w' +
        'arehouseplan)final'
      'order by CONVERT(VARCHAR,Warehouseplan,111)'
      '')
    Left = 1432
    Top = 384
    object query3Warehouseplan: TStringField
      FieldName = 'Warehouseplan'
      ReadOnly = True
      Size = 30
    end
    object query3total: TIntegerField
      FieldName = 'total'
      ReadOnly = True
    end
    object query3finish: TIntegerField
      FieldName = 'finish'
      ReadOnly = True
    end
    object query3unfinish: TIntegerField
      FieldName = 'unfinish'
      ReadOnly = True
    end
  end
  object DS3: TDataSource
    DataSet = query3
    Left = 1433
    Top = 335
  end
  object QueryTime: TADOQuery
    Connection = ADOConnection1
    DataSource = DS3
    Parameters = <>
    SQL.Strings = (
      'select CONVERT(VARCHAR,GETDATE(),111) date')
    Left = 320
    Top = 256
    object QueryTimedate: TStringField
      FieldName = 'date'
      ReadOnly = True
      Size = 30
    end
  end
end
