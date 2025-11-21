object Chemical_Rubber: TChemical_Rubber
  Left = 411
  Top = 226
  Width = 818
  Height = 572
  Caption = 'Chemical_Rubber'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 180
      Top = 23
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object DTP1: TDateTimePicker
      Left = 58
      Top = 18
      Width = 103
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyyMMdd'
      Time = 39255.000000000000000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 210
      Top = 17
      Width = 95
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyyMMdd'
      Time = 39255.000000000000000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 313
      Top = 10
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 405
      Top = 9
      Width = 81
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object RubberPage: TPageControl
    Left = 0
    Top = 60
    Width = 802
    Height = 474
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Master'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 794
        Height = 443
        Align = alClient
        DataSource = DSMaster
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Ngay'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26085#26399'|NGAY/THANG'
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'QtyChemical'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #33836#39340#21147#20489#24235'|'#21407#26009#20837#24235#25976'TONG HC NHAP'
            Width = 186
          end
          item
            EditButtons = <>
            FieldName = 'QtyRubberIn'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #32986#26009#20489#24235'|'#20837#24235#25976'SO PHOI KEO NHAP'
            Width = 169
          end
          item
            EditButtons = <>
            FieldName = 'QtyRubberOut'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #32986#26009#20489#24235'|'#20986#24235#25976'PHOI KEO XUAT'
            Width = 161
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Detail Chemical In'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 794
        Height = 443
        Align = alClient
        DataSource = DSChemicalIn
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Ngay'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Date'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'ID'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Material Name'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'QTyChemical'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty'
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detail Rubber In'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 794
        Height = 443
        Align = alClient
        DataSource = DSRubberIn
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Ngay'
            Footer.FieldName = 'Ngay'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Date'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'QtyRubberIn'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty'
            Width = 100
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Detail Rubber Out'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 794
        Height = 443
        Align = alClient
        DataSource = DSRubberOut
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Ngay'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Date'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'CLDH'
          end
          item
            EditButtons = <>
            FieldName = 'QtyRubberOut'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty'
          end>
      end
    end
  end
  object Master: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select tmp.Ngay,isnull(ChemicalIn.QTyChemical,0) as QtyChemical,' +
        'isnull(RubbeIn.QtyRubberIn,0)as QtyRubberIn,isnull(RubberOut.Qty' +
        'RubberOut,0)as QtyRubberOut'
      'from'#9'(select distinct temp.Ngay as Ngay'
      #9#9'from (select distinct CONVERT(varchar,userdate,112) as Ngay'
      #9#9'from kcll '
      
        #9#9'where GSBH='#39'VR2'#39' and  CONVERT(varchar,userdate,112) between '#39'2' +
        '0160101'#39' and '#39'20160131'#39
      #9#9'union all'
      #9#9'select distinct Userdate as Ngay'
      #9#9'from LIY_DD.dbo.KSYD '
      
        #9#9'where CQDH='#39'VR2'#39' and  Userdate between '#39'20160101'#39' and '#39'2016013' +
        '1'#39
      #9#9'union all'
      #9#9'select distinct USERDATE'
      #9#9'from LIY_DD.dbo.LLZL'
      
        #9#9'where CQDH='#39'VR2'#39' and  Userdate between '#39'20160101'#39' and '#39'2016013' +
        '1'#39
      #9#9') temp)tmp'
      
        'left join('#9'select convert(varchar,KCLL.USERDATE,112) as Ngay,SUM' +
        '(isnull(kclls.qty,0)) as QTyChemical'
      #9#9'from KCLLS inner join KCLL'
      #9#9'on KCLLS.LLNO=KCLL.LLNO'
      #9#9'where kcll.GSBH='#39'VR2'#39
      
        #9#9'and convert(varchar,KCLL.USERDATE,112) between '#39'20160101'#39' and ' +
        #39'20160131'#39
      #9#9'and KCLL.YN='#39'5'#39
      
        #9#9'group by convert(varchar,KCLL.USERDATE,112)) ChemicalIn on Che' +
        'micalIn.Ngay=tmp.Ngay'
      
        'left join (select KSYD.USERDATE as Ngay,SUM(ISNULL(KSYDS.SL1,0))' +
        ' as QtyRubberIn'
      #9#9#9'from LIY_DD.dbo.KSYD  KSYD inner join LIY_DD.dbo.KSYDs KSYDs'
      
        #9#9#9'on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSD' +
        'H=KSYDS.KSDH'
      #9#9#9'where KSYD.CQDH='#39'VR2'#39
      #9#9#9'and KSYD.USERDATE between '#39'20160101'#39' and '#39'20160131'#39
      #9#9#9'group by KSYD.USERDATE) RubbeIn on RubbeIn.Ngay=tmp.Ngay'
      
        'left join (select LLZL.USERDATE as Ngay,SUM(ISNULL(LLZLS.KGS_LL,' +
        '0)) as QtyRubberOut'
      #9#9#9'from LIY_DD.dbo.LLZL  LLZL inner join LIY_DD.dbo.LLZLS LLZLS'
      #9#9#9'on LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH'
      #9#9#9'where LLZL.CQDH='#39'VR2'#39
      #9#9#9'and LLZL.USERDATE between '#39'20160101'#39' and '#39'20160131'#39
      #9#9#9'and LLZL.CFM='#39'Y'#39
      
        #9#9#9'group by LLZL.USERDATE) RubberOut on RubberOut.Ngay=tmp.Ngay'#9 +
        #9#9
      #9#9
      ' order by tmp.Ngay'#9#9)
    Left = 108
    Top = 251
    object MasterNgay: TStringField
      FieldName = 'Ngay'
      FixedChar = True
      Size = 30
    end
    object MasterQtyChemical: TCurrencyField
      FieldName = 'QtyChemical'
      DisplayFormat = '##,#0.00'
    end
    object MasterQtyRubberIn: TFloatField
      FieldName = 'QtyRubberIn'
      DisplayFormat = '##,#0.00'
    end
    object MasterQtyRubberOut: TFloatField
      FieldName = 'QtyRubberOut'
      DisplayFormat = '##,#0.00'
    end
  end
  object RubberIn: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KSYD.USERDATE as Ngay,CLDH,SUM(ISNULL(KSYDS.SL1,0)) as Qt' +
        'yRubberIn'
      'from LIY_DD.dbo.KSYD  KSYD inner join LIY_DD.dbo.KSYDs KSYDs'
      
        'on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSDH=K' +
        'SYDS.KSDH'
      'where KSYD.CQDH='#39'VR2'#39
      'and KSYD.USERDATE between '#39'20160101'#39' and '#39'20160131'#39
      'group by KSYD.USERDATE,cldh'
      'order by KSYD.USERDATE,CLDH')
    Left = 188
    Top = 251
    object RubberInNgay: TStringField
      FieldName = 'Ngay'
      FixedChar = True
      Size = 8
    end
    object RubberInCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 16
    end
    object RubberInQtyRubberIn: TFloatField
      FieldName = 'QtyRubberIn'
      DisplayFormat = '##,#0.00'
    end
  end
  object ChemicalIn: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,KCLL.USERDATE,112) as Ngay,KCLLS.CLBH,clz' +
        'l.ywpm,sum(isnull(kclls.qty,0)) as QTyChemical'
      'from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO'
      'inner join clzl on KCLLS.CLBH=clzl.cldh'
      'where kcll.GSBH='#39'VR2'#39
      
        'and convert(varchar,KCLL.USERDATE,112) between '#39'20160104'#39' and '#39'2' +
        '0160104'#39' '
      'and KCLL.YN='#39'5'#39
      'group by convert(varchar,KCLL.USERDATE,112),KCLLS.CLBH,clzl.ywpm'
      'order by KCLLS.CLBH')
    Left = 148
    Top = 251
    object ChemicalInNgay: TStringField
      FieldName = 'Ngay'
      FixedChar = True
      Size = 30
    end
    object ChemicalInCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ChemicalInywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object ChemicalInQTyChemical: TCurrencyField
      FieldName = 'QTyChemical'
      DisplayFormat = '##,#0.00'
    end
  end
  object RubberOut: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select LLZL.USERDATE as Ngay,LLZLS.cldh,sum(ISNULL(LLZLS.KGS_LL,' +
        '0)) as QtyRubberOut'
      'from LIY_DD.dbo.LLZL  LLZL inner join LIY_DD.dbo.LLZLS LLZLS'
      'on LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH'
      'where LLZL.CQDH='#39'VR2'#39
      'and LLZL.USERDATE between '#39'20160101'#39' and '#39'20160131'#39
      'and LLZL.CFM='#39'Y'#39
      'group by LLZL.USERDATE,LLZLS.cldh'
      'order by LLZL.USERDATE,LLZLS.cldh'
      '')
    Left = 228
    Top = 251
    object RubberOutNgay: TStringField
      FieldName = 'Ngay'
      FixedChar = True
      Size = 8
    end
    object RubberOutcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object RubberOutQtyRubberOut: TFloatField
      FieldName = 'QtyRubberOut'
      DisplayFormat = '##,#0.00'
    end
  end
  object DSMaster: TDataSource
    DataSet = Master
    Left = 108
    Top = 283
  end
  object DSChemicalIn: TDataSource
    DataSet = ChemicalIn
    Left = 148
    Top = 283
  end
  object DSRubberIn: TDataSource
    DataSet = RubberIn
    Left = 188
    Top = 283
  end
  object DSRubberOut: TDataSource
    DataSet = RubberOut
    Left = 228
    Top = 283
  end
end
