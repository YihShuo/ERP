object DelChemical_CL: TDelChemical_CL
  Left = 275
  Top = 228
  Width = 872
  Height = 394
  BorderIcons = [biSystemMenu]
  Caption = 'DelChemical_CL'
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 575
      Top = 21
      Width = 37
      Height = 16
      Caption = 'ZLBH:'
    end
    object Label4: TLabel
      Left = 233
      Top = 50
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label3: TLabel
      Left = 39
      Top = 47
      Width = 50
      Height = 16
      Caption = 'SCDate:'
    end
    object Label2: TLabel
      Left = 394
      Top = 54
      Width = 39
      Height = 16
      Caption = 'CLDH:'
    end
    object Label5: TLabel
      Left = 34
      Top = 16
      Width = 57
      Height = 16
      Caption = 'Shipdate:'
    end
    object Label6: TLabel
      Left = 233
      Top = 18
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 391
      Top = 21
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
    end
    object Edit1: TEdit
      Left = 617
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 768
      Top = 40
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object DTP3: TDateTimePicker
      Left = 97
      Top = 46
      Width = 128
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 260
      Top = 48
      Width = 125
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 441
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 768
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CKBox: TCheckBox
      Left = 579
      Top = 58
      Width = 80
      Height = 17
      Caption = 'Not stop'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 97
      Top = 14
      Width = 128
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 260
      Top = 16
      Width = 125
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object chk1: TCheckBox
      Left = 9
      Top = 16
      Width = 25
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 441
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object chk2: TCheckBox
      Left = 8
      Top = 45
      Width = 25
      Height = 17
      TabOrder = 11
    end
    object Chk3: TCheckBox
      Left = 655
      Top = 57
      Width = 98
      Height = 17
      Caption = 'Order Finish'
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 856
    Height = 275
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldhz'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH1'
        Footers = <>
        Title.Caption = 'ZLBH'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'English'
        Width = 178
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'TCLYL'
        Footers = <
          item
            FieldName = 'TCLYL'
            ValueType = fvtSum
          end>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'Chinese'
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Title.Caption = 'Stop'
        Width = 45
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT ZLZLS3.cldhz ,DDZL.ZLBH1,round(sum(ZLZLS3.TCLYL)+0.5,1) a' +
        's TCLYL,'
      
        'CLZL.zwpm,CLZL.ywpm,DDZL.CQDH ,isnull(KCLLS.Qty,0) as Qty,CLZL.D' +
        'WBH,max(clzlsl.lb) as lb,IsNull(ERP_CLZL.TYJH,'#39#39') as TYJH,DDZL.Y' +
        'N'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND  D' +
        'DZL.CQDH = ZLZLS3.CQDH'
      
        'LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh ' +
        ' and ZLZLS3.cldhz=CLZLSL.cldhz'
      'LEFT JOIN LIY_DD.dbo.CLZL CLZL ON CLZLSL.cldhz = CLZL.cldh'
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),1) ' +
        'as Qty'
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           where KCLL.USERDate>getdate()-90'
      '           and KCLL.GSBH='#39'VR2'#39
      '           group by KCLLS.SCBH,KCLLS.CLBH) KCLLS'
      '           on KCLLS.SCBH=DDZL.ZLBH1 and '#39'A'#39'+KCLLS.CLBH=CLZL.CLDH'
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10) and IsNull(ERP_CLZL.TYJH,'#39#39')<>'#39'Y'#39
      'where  DDZL.CQDH='#39'VR2'#39
      'and ZLZLS3.cldhz like '#39'%%'#39
      'and DDZL.SCRQ>convert(varchar,getdate()-90,112)'
      'AND DDZL.SCRQ>='#39'20160222'#39
      'AND DDZL.SCRQ<='#39'20160225'#39
      'and DDZL.ZLBH1 like '#39'%'#39
      'and DDZL.YN='#39'1'#39
      
        'GROUP BY  ZLZLS3.cldhz ,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH' +
        ',KCLLS.Qty ,CLZL.DWBH,clzlsl.lb,ERP_CLZL.TYJH,DDZL.YN')
    UpdateObject = UpdateSQL1
    Left = 200
    Top = 208
    object Query1cldhz: TStringField
      FieldName = 'cldhz'
      FixedChar = True
      Size = 16
    end
    object Query1ZLBH1: TStringField
      FieldName = 'ZLBH1'
      FixedChar = True
      Size = 18
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 60
    end
    object Query1TCLYL: TFloatField
      FieldName = 'TCLYL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 3
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 60
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1lb: TStringField
      FieldName = 'lb'
      FixedChar = True
      Size = 1
    end
    object Query1TYJH: TStringField
      FieldName = 'TYJH'
      FixedChar = True
      Size = 1
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 208
  end
  object UpdateSQL1: TUpdateSQL
    Left = 176
    Top = 208
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 176
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 496
    Top = 176
  end
end
