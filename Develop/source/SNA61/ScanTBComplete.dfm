object ScanTBComplete1: TScanTBComplete1
  Left = 429
  Top = 107
  Width = 870
  Height = 450
  Caption = 'ScanTBComplete'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 419
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 417
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 858
        Height = 415
        ActivePage = TabSheet3
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = 'Insole_get Time'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 32
              Top = 24
              Width = 245
              Height = 37
              Caption = 'SCAN Insole_get'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit2: TEdit
              Left = 288
              Top = 16
              Width = 305
              Height = 45
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = Edit2KeyPress
            end
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource2
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'insole_get'
                Footers = <>
                Title.Caption = 'Insole_get'
                Width = 277
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Lace_get Time'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 32
              Top = 24
              Width = 230
              Height = 37
              Caption = 'SCAN Lace_get'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit3: TEdit
              Left = 272
              Top = 16
              Width = 305
              Height = 45
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = Edit3KeyPress
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource3
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'lace_get'
                Footers = <>
                Title.Caption = 'Lace_get'
                Width = 277
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Packing Complete Time'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 850
            Height = 80
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 32
              Top = 24
              Width = 358
              Height = 37
              Caption = 'SCAN Packing Complete'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 392
              Top = 16
              Width = 305
              Height = 45
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = Edit1KeyPress
            end
          end
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 80
            Width = 850
            Height = 300
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Finish'
                Footers = <>
                Title.Caption = 'Packing Finish'
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Width = 277
              end>
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 89
    Top = 201
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select top 1 Testno,Article,Finish,Complete,TBReceive,YPDH from ' +
        'shoetest')
    Left = 89
    Top = 249
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Finish: TBooleanField
      FieldName = 'Finish'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 129
    Top = 201
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Testno,Article,Finish,insole_get,TBReceive,YPDH from shoe' +
        'test')
    Left = 129
    Top = 249
    object StringField1: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'Finish'
    end
    object BooleanField2: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1insole_get: TDateTimeField
      FieldName = 'insole_get'
    end
    object Query2YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 169
    Top = 201
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select top 10 Testno,Article,lace_get,Finish,TBReceive,YPDH  fro' +
        'm shoetest')
    Left = 169
    Top = 249
    object StringField3: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1lace_get: TDateTimeField
      FieldName = 'lace_get'
    end
    object Query3TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Finish'
    end
    object Query3YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CNO,Max(DWBH) as DWBH,Round(Round(Sum(CLSL)/Max(Pairs),4)' +
        '*IsNull(Max(CLHG.RateC),1),6) as CLSL'
      
        '          ,Round(Round(Sum(Qty)/Max(Pairs),4)*IsNull(Max(CLHG.Ra' +
        'teC),1),6) as Qty '
      
        '          ,Round(Round(Sum(NK)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as NK '
      
        '          ,Round(Round(Sum(HD)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as HD '
      
        '          ,Round(Round(Sum(KD)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as KD '
      
        '          ,Round(Round(Sum(XT)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as XT '
      
        '          ,Round(Round(Sum(GC)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as GC'
      
        '          ,Round(Round(Sum(ZZ)/Max(Pairs),4)*IsNull(Max(CLHG.Rat' +
        'eC),1),6) as ZZ'
      '           from ('
      
        'select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLL' +
        'S.CNO='#39#39' then null else CNO end CNO,KCLLS.RKQty,IsNull(KCLLS.NK,' +
        '0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNul' +
        'l(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        'Case when KCLLS.DType='#39'Assembly'#39' then Round(KCLLS.Qty-IsNull(KCL' +
        'LS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0' +
        ')-IsNull(KCLLS.GC,0),2) '
      
        '     when KCLLS.DType='#39'Gia cong'#39' and KCLLS.Qty=0 then Round(IsNu' +
        'll(KCLLS.Qty,0)-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCL' +
        'LS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2)'
      
        '      else Round((IsNull(KCLLS.Qty,CLSL)-IsNull(KCLLS.NK,0)-IsNu' +
        'll(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLL' +
        'S.GC,0) ),2) end as ZZ,       '
      
        'Case when KCLLS.DType='#39'Assembly'#39' then KCLLS.Qty  when KCLLS.DTyp' +
        'e='#39'Gia cong'#39' and KCLLS.Qty=0 then Round(IsNull(KCLLS.Qty,0),2) e' +
        'lse Round(IsNull(KCLLS.Qty,CLSL),2) end as Qty'
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,D' +
        'DZL.GSBH '
      '      from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH = '#39'Y1709-0178'#39' '
      '      and MJBH='#39'ZZZZZZZZZZ'#39
      '      and DDZL.DDZT='#39'Y'#39
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      'union all '
      
        '   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJB' +
        'H<>'#39'ZZZZZZZZZZ'#39' then A.MJBH else ZLZLS2.MJBH end as MJBH from ZL' +
        'ZLS2 A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Par' +
        'ent,'#39'Gia cong'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Ar' +
        'ticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DD' +
        'ZL.GSBH '
      '    from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH = '#39'Y1709-0178'#39' '
      '      and MJBH<>'#39'ZZZZZZZZZZ'#39
      '      and DDZL.DDZT='#39'Y'#39
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.' +
        'DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      ') OrdCL'
      'left join ('
      
        '      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) a' +
        's TempQty,Max(CNO) as CNO,Sum(RKQty) as RKQty,'
      
        '                  Sum(NK) as NK,Sum(HD) as HD,Sum(KD) as KD,Sum(' +
        'XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from ('
      '                  '
      
        #9#9'   select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.CLBH as MJB' +
        'H,'#39'Assembly'#39' as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty)' +
        ' as TempQty,'
      
        #9#9#9#9#9'KCRKCX.CNO,Max(KCRKCX.RKQty) as RKQty,Max(KCRKCX.NK) as NK,' +
        'Max(KCRKCX.HD) as HD,Max(KCRKCX.KD) as KD,'
      
        #9#9#9#9#9'Max(KCRKCX.XT) as XT,Max(KCRKCX.GC) as GC,Max(KCRKCX.ZZ) as' +
        ' ZZ  '
      #9#9'   from KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      #9#9'   left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      #9#9'   left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      #9#9'   left join (                    '
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',Max(KCRKS.CNO) as CNO,Sum(RKQty) as RKQty,'
      
        '                  Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0' +
        ' end ) as NK, '
      
        '                  Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0' +
        ' end ) as HD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0' +
        ' end ) as KD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0' +
        ' end ) as XT, '
      
        '                  Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0' +
        ' end ) as GC,'
      
        '                  Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else' +
        ' 0 end ) as ZZ  '
      '           from KCRKCX '
      
        '           Left join KCRKS on KCRKS.RKNO=KCRKCX.RKNO and KCRKS.C' +
        'LBH=KCRKCX.CLDH and KCRKS.CGBH=KCRKCX.CGBH and KCRKS.RKSB=KCRKCX' +
        '.RKSB'
      '           Left join KCRK on KCRK.RKNO=KCRKCX.RKNO'
      
        '           where KCRKCX.SCBH = '#39'Y1709-0178'#39' and KCRKCX.DFL<>'#39'JGC' +
        'K'#39' and KCRKCX.RKSB<>'#39'JGRK'#39'  '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL          '
      '           union all'
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',null as CNO,Sum(RKQty) as RKQty,'
      '           null as NK, '
      '           null as HD,'
      '           null as KD, '
      '           null as  XT, '
      '           Sum(RKQty) as GC,'
      '           null as ZZ  '
      '           from KCRKCX '
      
        '           where KCRKCX.SCBH = '#39'Y1709-0178'#39' and KCRKCX.DFL<>'#39'JGC' +
        'K'#39' and KCRKCX.RKSB='#39'JGRK'#39' '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL'
      '           '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH'
      #9#9'   where  KCLLS.CLBH like '#39'%'#39
      #9#9#9#9'  and KCLLS.SCBH = '#39'Y1709-0178'#39' '
      #9#9#9#9'  and DDZl.GSBH='#39'VA12'#39' '
      '           and KCLL.GSBH='#39'VA12'#39' and KCLL.CFMID<>'#39'NO'#39' '
      
        #9#9'   group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCRKCX.CNO,KCRKC' +
        'X.RKQty  '
      '         '
      '           ------'
      '           Union all '
      '           ------'
      
        '           select JGZLSS.JGNO,JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as ' +
        'CLBH,JGZLS.CLBH as MJBH,'#39'Gia cong'#39' as DType,Sum(JGZLS.Qty*JGZLSS' +
        '.Qty) as Qty,Sum(JGZLS.Qty*JGZLSS.Qty) as TempQty, '
      
        '                  KCRKCX.CNO,KCRKCX.RKQty,Max(KCRKCX.NK) as NK,M' +
        'ax(KCRKCX.HD) as HD,Max(KCRKCX.KD) as KD,Max(KCRKCX.XT) as XT,Ma' +
        'x(KCRKCX.GC) as GC,'
      '                  Max(KCRKCX.ZZ) as ZZ          '
      '           from JGZLS'
      
        '           Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.' +
        'CLBH=JGZLSS.CLBH '
      '           Left join DDZL on DDZL.DDBH=JGZLSS.ZLBH'
      '           Left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      '           left join (          '
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',KCRKCX.ZLBH,Max(KCRKCX.CNO) as CNO,Sum(KCRKCX.RKQty) as RKQty,'
      
        '                  Sum(Case when KCRKCX.HGLB='#39'NK'#39' then KCRKCX.RKQ' +
        'ty else 0 end ) as NK, '
      
        '                  Sum(Case when KCRKCX.HGLB='#39'HD'#39' then KCRKCX.RKQ' +
        'ty else 0 end ) as HD, '
      
        '                  Sum(Case when KCRKCX.HGLB='#39'KD'#39' then KCRKCX.RKQ' +
        'ty else 0 end ) as KD, '
      
        '                  Sum(Case when KCRKCX.HGLB='#39'XT'#39' then KCRKCX.RKQ' +
        'ty else 0 end ) as XT, '
      
        '                  Sum(Case when KCRKCX.HGLB='#39'GC'#39' then KCRKCX.RKQ' +
        'ty else 0 end ) as GC,'
      
        '                  Sum(Case when KCRKCX.HGLB='#39'ZZZZ'#39' then KCRKCX.R' +
        'KQty else 0 end ) as ZZ '
      
        '           from ( select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCR' +
        'KCX.DFL,JGZLS.ZLBH,Max(KCRKS.CNO) as CNO,JGZLS.RKQty,Max(KCRK.HG' +
        'LB) as HGLB '
      '           from KCRKCX '
      
        '           left join KCRKS on KCRKS.RKNO=KCRKCX.RKNO and KCRKS.C' +
        'LBH=KCRKCX.CLDH and KCRKS.CGBH=KCRKCX.CGBH and KCRKS.RKSB=KCRKCX' +
        '.RKSB'
      '           left join KCRK on KCRK.RKNO=KCRKCX.RKNO'
      '           Left join ( '
      
        '                  select JGZLS.*,Round(convert(float,JGZLS.JGQty' +
        ')*convert(float,JGDet.Qty),2) as RKQty from ( '
      
        '                  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLSS' +
        '.ZLBH,JGZLSS.Qty as JGQty'
      '                  from JGZLS,JGZLSS'
      
        '                  where JGZLS.JGNO=JGZLSS.JGNO  and JGZLS.CLBH=J' +
        'GZLSS.CLBH  and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JGZLS.ZMLB<>'#39'ZZZZZZ' +
        'ZZZZ'#39' and JGZLSS.Qty>0 and JGZLS.Qty>0 '
      
        '                  Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZL' +
        'SS.ZLBH,JGZLSS.Qty) JGZLS '
      
        '                  left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.' +
        'ZMLB,JGZLS.Qty from JGZLS,JGZLSS where JGZLS.JGNO=JGZLSS.JGNO an' +
        'd JGZLSS.CLBH=JGZLS.CLBH'
      
        '                             and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JG' +
        'ZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39' and JGZLSS.Qty>0 and JGZLS.Qty>0'
      
        '                             Group by JGZLS.JGNO,JGZLS.CLBH,JGZL' +
        'S.ZMLB,JGZLS.Qty'
      
        '                             ) JGDet on JGDet.JGNO=JGZLS.JGNO an' +
        'd JGDet.ZMLB=JGZLS.ZMLB  and JGDet.CLBH=JGZLS.CLBH '
      
        '            ) JGZLS on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JG' +
        'ZLS.CLBH and KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.SCBH=JGZLS.ZMLB '
      '           where  KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.RKSB<>'#39'JGRK'#39' '
      
        '                  and exists (select JGZLS.JGNO,JGZLS.CLBH,JGZLS' +
        '.ZMLB  '
      
        '                  from JGZLS,JGZLSS where JGZLS.JGNO=JGZLSS.JGNO' +
        ' and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  '
      
        '                 and JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKC' +
        'X.CLBH and JGZLS.ZMLB=KCRKCX.SCBH )'
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL,JGZLS.ZLBH,JGZLS.RKQty ) KCRKCX'
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL,KCRKCX.ZLBH '
      '           union all'
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',KCRKCX.ZLBH,null as CNO,Sum(KCRKCX.RKQty) as RKQty,'
      '           null as NK, '
      '           null as HD,'
      '           null as KD, '
      '           null as  XT, '
      '           Sum(KCRKCX.RKQty) as GC,'
      '           null as ZZ '
      
        '           from ( select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCR' +
        'KCX.DFL,JGZLS.ZLBH,null as CNO,JGZLS.RKQty '
      '           from KCRKCX '
      '           Left join ( '
      
        '                  select JGZLS.*,Round(convert(float,JGZLS.JGQty' +
        ')*convert(float,JGDet.Qty),2) as RKQty from ( '
      
        '                  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLSS' +
        '.ZLBH,JGZLSS.Qty as JGQty'
      '                  from JGZLS,JGZLSS'
      
        '                  where JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JG' +
        'ZLSS.CLBH   and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JGZLS.ZMLB<>'#39'ZZZZZZ' +
        'ZZZZ'#39' and JGZLSS.Qty>0 and JGZLS.Qty>0 '
      
        '                  Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZL' +
        'SS.ZLBH,JGZLSS.Qty) JGZLS '
      
        '                  left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.' +
        'ZMLB,JGZLS.Qty from JGZLS,JGZLSS where JGZLS.JGNO=JGZLSS.JGNO an' +
        'd JGZLSS.CLBH=JGZLS.CLBH'
      
        '                             and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JG' +
        'ZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39' and JGZLSS.Qty>0 and JGZLS.Qty>0'
      
        '                             Group by JGZLS.JGNO,JGZLS.CLBH,JGZL' +
        'S.ZMLB,JGZLS.Qty'
      
        '                             ) JGDet on JGDet.JGNO=JGZLS.JGNO an' +
        'd JGDet.ZMLB=JGZLS.ZMLB  and JGDet.CLBH=JGZLS.CLBH '
      
        '            ) JGZLS on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JG' +
        'ZLS.CLBH and KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.SCBH=JGZLS.ZMLB '
      '           where  KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.RKSB='#39'JGRK'#39'  '
      
        '                  and exists (select JGZLS.JGNO,JGZLS.CLBH,JGZLS' +
        '.ZMLB  '
      
        '                  from JGZLS,JGZLSS where JGZLS.JGNO=JGZLSS.JGNO' +
        ' and JGZLSS.ZLBH='#39'Y1709-0178'#39' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  '
      
        '                 and JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKC' +
        'X.CLBH and JGZLS.ZMLB=KCRKCX.SCBH )'
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL,JGZLS.ZLBH,JGZLS.RKQty ) KCRKCX   '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL,KCRKCX.ZLBH '
      '            )'
      
        '             KCRKCX on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JG' +
        'ZLS.CLBH and KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.SCBH=JGZLS.ZMLB and KC' +
        'RKCX.ZLBH=JGZLSS.ZLBH '
      
        '           where  JGZLSS.ZLBH ='#39'Y1709-0178'#39'  and JGZLS.CLBH like' +
        ' '#39'%'#39' and JGZLS.ZMLB like '#39'%'#39
      
        '           and JGZL.GSBH='#39'VA12'#39' and JGZL.CFMID1<>'#39'NO'#39' and conver' +
        't(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<'#39'2017/09/01'#39
      '           and DDZl.GSBH='#39'VA12'#39' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      
        '           Group by JGZLSS.JGNO,JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLB' +
        'H,KCRKCX.CNO,KCRKCX.RKQty'
      '           ) KCLLS Group by SCBH,CLBH,MJBH,DType'
      
        '          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.' +
        'CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH '
      'where 1=1 '
      ''
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO,KCLLS.RKQty,IsNull(KCLLS' +
        '.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,I' +
        'sNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KC' +
        'LLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty'
      ' from ('
      
        'select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(' +
        'ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cldh' +
        'z,10) as cldhz,round(sum(ZLZLS3.TCLYL),2) as TCLYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,ERP_DDZL.Pai' +
        'rs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),11' +
        '1)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh ' +
        'and ZLZLS3.cldhz=CLZLSL.cldhz '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      'where DDZL.ZLBH1='#39'Y1709-0178'#39' and ddzl.CQDH='#39'VR1'#39
      
        'GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,' +
        'CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) ' +
        'as Qty,round(sum(KCLLS.TempQty),2) as TempQty,'
      
        '                  Max(KCRKCX.CNO) as CNO,Sum(KCRKCX.RKQty) as RK' +
        'Qty,Sum(KCRKCX.NK) as NK,Sum(KCRKCX.HD) as HD,Sum(KCRKCX.KD) as ' +
        'KD,'
      
        #9#9#9#9#9'  Sum(KCRKCX.XT) as XT,Sum(KCRKCX.GC) as GC,Sum(KCRKCX.ZZ) ' +
        'as ZZ '
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           left join ( '
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',Max(KCRKS.CNO) as CNO,Sum(RKQty) as RKQty,'
      
        '                  Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0' +
        ' end ) as NK, '
      
        '                  Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0' +
        ' end ) as HD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0' +
        ' end ) as KD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0' +
        ' end ) as XT, '
      
        '                  Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0' +
        ' end ) as GC,'
      
        '                  Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else' +
        ' 0 end ) as ZZ  '
      '           from KCRKCX '
      
        '           Left join KCRKS on KCRKS.RKNO=KCRKCX.RKNO and KCRKS.C' +
        'LBH=KCRKCX.CLBH and KCRKS.CGBH=KCRKCX.CGBH and KCRKS.RKSB=KCRKCX' +
        '.RKSB'
      '           Left join KCRK on KCRK.RKNO=KCRKCX.RKNO'
      
        '           where KCRKCX.SCBH = '#39'Y1709-0178'#39' and KCRKCX.DFL<>'#39'JGC' +
        'K'#39' and KCRKCX.RKSB<>'#39'JGRK'#39' '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      '           where KCLL.USERDate>getdate()-360'
      '                 and KCLL.GSBH='#39'VR1'#39
      '                 and KCLLS.SCBH ='#39'Y1709-0178'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO,KCLLS.RKQty,IsNull(KCLLS' +
        '.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,I' +
        'sNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KC' +
        'LLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty'
      ' from ('
      
        'select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(' +
        'ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cldh' +
        'z,10) as cldhz,round(sum(ZLZLS3.TCLYL),2) as TCLYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,ERP_DDZL.Pai' +
        'rs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),11' +
        '1)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh ' +
        'and ZLZLS3.cldhz=CLZLSL.cldhz '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      'where DDZL.ZLBH1='#39'Y1709-0178'#39' and ddzl.CQDH='#39'VR2'#39
      
        'GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,' +
        'CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) ' +
        'as Qty,round(sum(KCLLS.TempQty),2) as TempQty,'
      
        '                  Max(KCRKCX.CNO) as CNO,Sum(KCRKCX.RKQty) as RK' +
        'Qty,Sum(KCRKCX.NK) as NK,Sum(KCRKCX.HD) as HD,Sum(KCRKCX.KD) as ' +
        'KD,'
      
        #9#9#9#9#9'  Sum(KCRKCX.XT) as XT,Sum(KCRKCX.GC) as GC,Sum(KCRKCX.ZZ) ' +
        'as ZZ '
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           left join ( '
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',Max(KCRKS.CNO) as CNO,Sum(RKQty) as RKQty,'
      
        '                  Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0' +
        ' end ) as NK, '
      
        '                  Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0' +
        ' end ) as HD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0' +
        ' end ) as KD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0' +
        ' end ) as XT, '
      
        '                  Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0' +
        ' end ) as GC,'
      
        '                  Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else' +
        ' 0 end ) as ZZ  '
      '           from KCRKCX '
      
        '           Left join KCRKS on KCRKS.RKNO=KCRKCX.RKNO and KCRKS.C' +
        'LBH=KCRKCX.CLBH and KCRKS.CGBH=KCRKCX.CGBH and KCRKS.RKSB=KCRKCX' +
        '.RKSB'
      '           Left join KCRK on KCRK.RKNO=KCRKCX.RKNO'
      
        '           where KCRKCX.SCBH = '#39'Y1709-0178'#39' and KCRKCX.DFL<>'#39'JGC' +
        'K'#39' and KCRKCX.RKSB<>'#39'JGRK'#39' '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      '           where KCLL.USERDate>getdate()-360'
      '                 and KCLL.GSBH='#39'VR2'#39
      '                 and KCLLS.SCBH ='#39'Y1709-0178'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO,KCLLS.RKQty,IsNull(KCLLS' +
        '.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,I' +
        'sNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KC' +
        'LLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty'
      ' from ('
      
        'select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(' +
        'ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cldh' +
        'z,10) as cldhz,round(sum(ZLZLS3.TCLYL),2) as TCLYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,ERP_DDZL.Pai' +
        'rs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),11' +
        '1)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh ' +
        'and ZLZLS3.cldhz=CLZLSL.cldhz '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      'where DDZL.ZLBH1='#39'Y1709-0178'#39' and ddzl.CQDH='#39'VR3'#39
      
        'GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,' +
        'CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) ' +
        'as Qty,round(sum(KCLLS.TempQty),2) as TempQty,'
      
        '                  Max(KCRKCX.CNO) as CNO,Sum(KCRKCX.RKQty) as RK' +
        'Qty,Sum(KCRKCX.NK) as NK,Sum(KCRKCX.HD) as HD,Sum(KCRKCX.KD) as ' +
        'KD,'
      
        #9#9#9#9#9'  Sum(KCRKCX.XT) as XT,Sum(KCRKCX.GC) as GC,Sum(KCRKCX.ZZ) ' +
        'as ZZ '
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           left join ( '
      
        '           select KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.DFL' +
        ',Max(KCRKS.CNO) as CNO,Sum(RKQty) as RKQty,'
      
        '                  Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0' +
        ' end ) as NK, '
      
        '                  Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0' +
        ' end ) as HD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0' +
        ' end ) as KD, '
      
        '                  Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0' +
        ' end ) as XT, '
      
        '                  Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0' +
        ' end ) as GC,'
      
        '                  Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else' +
        ' 0 end ) as ZZ  '
      '           from KCRKCX '
      
        '           Left join KCRKS on KCRKS.RKNO=KCRKCX.RKNO and KCRKS.C' +
        'LBH=KCRKCX.CLBH and KCRKS.CGBH=KCRKCX.CGBH and KCRKS.RKSB=KCRKCX' +
        '.RKSB'
      '           Left join KCRK on KCRK.RKNO=KCRKCX.RKNO'
      
        '           where KCRKCX.SCBH = '#39'Y1709-0178'#39' and KCRKCX.DFL<>'#39'JGC' +
        'K'#39' and KCRKCX.RKSB<>'#39'JGRK'#39' '
      
        '           Group by KCRKCX.LLNO,KCRKCX.CLBH,KCRKCX.SCBH,KCRKCX.D' +
        'FL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      '           where KCLL.USERDate>getdate()-360'
      '                 and KCLL.GSBH='#39'VR3'#39
      '                 and KCLLS.SCBH ='#39'Y1709-0178'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      '  ) ZLZLS2 '
      '  Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH'
      '  where 1=1  and IsNull(CNO,'#39#39')<>'#39#39
      ' Group by CNO ')
    Left = 51
    Top = 247
  end
end
