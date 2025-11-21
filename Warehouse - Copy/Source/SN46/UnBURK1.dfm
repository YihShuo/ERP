object UnBURK: TUnBURK
  Left = 378
  Top = 250
  Width = 692
  Height = 247
  Caption = 'UnBURK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh_RY: TDBGridEh
    Left = 0
    Top = 0
    Width = 676
    Height = 209
    Align = alClient
    DataSource = DS_UnBURK
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 3
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGDATE'
        Footers = <>
        Title.TitleButton = True
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'RKQTY'
        Footers = <>
        Title.Caption = 'RK Qty'
        Title.TitleButton = True
        Width = 58
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Diffqty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'UnRK'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'CGType'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.TitleButton = True
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'ETD'
        Title.TitleButton = True
        Width = 76
      end>
  end
  object DS_UnBURK: TDataSource
    DataSet = Qry_UnBURK
    Left = 204
    Top = 96
  end
  object Qry_UnBURK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select CGZLS.CGNO'
      '       ,CGZLS.CLBH'
      '       ,CGZLS.Qty '
      '       ,CGZLS.YQDate'
      '       ,CGZLS.CFMDate'
      '       ,CGZL.ZSBH'
      '       ,ZSZL.ZSYWJC'
      '       ,CGZL.CGDATE'
      '       ,CGRK.RKQTY   '
      '       ,CGZLS.Qty-ISNULL(CGRK.RKQTY,0) as Diffqty   '
      
        '       ,case when CGZL.CGLX=1 then '#39'SIZE'#39' when CGZL.CGLX=2 then ' +
        #39'NO SIZE'#39' when CGZL.CGLX=3 then '#39'OTHER'#39' when CGZL.CGLX=5 then '#39'B' +
        'OX'#39' else '#39#39' end as CGType  '
      'from CGZLS'
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH '
      'left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty) as RKQTY '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where ISNULL(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RK' +
        'SB,'#39#39')<>'#39'DL'#39' and KCRK.GSBH='#39'VA12'#39' '
      '                 AND KCRKS.CLBH='#39'A010001864'#39
      
        '           group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZ' +
        'LS.CGNO AND CGRK.CLBH=CGZLS.CLBH '
      'where  isnull(CGZLS.qty,0)>isnull(CGRK.RKQTY,0) '
      '       and CGZLS.YN<>'#39'5'#39' and IsNull(CGZL.DevType,'#39#39')<>'#39'Z07'#39'  '
      '       AND CGZLS.CLBH='#39'A010001864'#39
      '       and CGZL.GSBH='#39'VA12'#39
      '       and CGZL.CGDate > @LDate '
      '       and (CGZL.CGLX='#39'2'#39
      '            or CGZL.CGLX='#39'3'#39
      '            or CGZL.CGLX='#39'5'#39
      '            or CGZL.CGLX='#39'1'#39')'
      '')
    Left = 204
    Top = 128
    object Qry_UnBURKZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
      Size = 200
    end
    object Qry_UnBURKCGDATE: TDateTimeField
      DisplayLabel = 'Pur Date'
      FieldName = 'CGDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Qry_UnBURKCGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_UnBURKQty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Qry_UnBURKRKQTY: TCurrencyField
      FieldName = 'RKQTY'
      currency = False
    end
    object Qry_UnBURKYQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Qry_UnBURKCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Qry_UnBURKZSBH: TStringField
      DisplayLabel = 'Supp ID'
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_UnBURKDiffqty: TCurrencyField
      FieldName = 'Diffqty'
      currency = False
    end
    object Qry_UnBURKCGType: TStringField
      FieldName = 'CGType'
      FixedChar = True
      Size = 7
    end
  end
end
