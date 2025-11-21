object HRMNHhanVien: THRMNHhanVien
  Left = 445
  Top = 190
  Width = 724
  Height = 400
  Caption = 'HRMNHhanVien'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 708
    Height = 360
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NDay'
        Footers = <>
        Title.Caption = #26085#26399'|NDay'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'X_MA_'
        Footers = <>
        Title.Caption = #24288'|X_MA_'
      end
      item
        EditButtons = <>
        FieldName = 'DV_MA'
        Footers = <>
        Title.Caption = #21934#20301'|DV_MA'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CV_MA'
        Footers = <>
        Title.Caption = #24037#32887'|CV_MA'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'NV_MA'
        Footer.FieldName = 'NV_MA'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #21729#24037#32232#34399'|NV_MA'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'NV_Ten'
        Footers = <>
        Title.Caption = #21729#24037#22995#21517'|NV_Ten'
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'NP_Ma'
        Footers = <>
        Title.Caption = #20241#20551#21029'|NP_Ma'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CC_GIOBINHTHUONG'
        Footers = <>
        Title.Caption = #24037#26178'|GIO_LAM'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'CC_HESONGAYCONG'
        Footers = <>
        Title.Caption = #24037#26178#39006#21029'|HESO'
      end>
  end
  object HRMQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      
        ' '#39'2017-02-20'#39' as NDay,ST_DONVI.X_MA_,ST_NHANVIEN.DV_MA,ST_NHANVI' +
        'EN.CV_MA,ST_NHANVIEN.NV_MA,ST_NHANVIEN.NV_Ten,ST_GIOQUETTHE.NP_M' +
        'a,ST_GIOQUETTHE.CC_GIOBINHTHUONG,ST_GIOQUETTHE.CC_HESONGAYCONG'
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN  ST_NHANVIEN'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 AND DV_TV <> 1'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE' +
        ' ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE .NV_MA AND QT_NGAY = '#39'2017' +
        '-02-20'#39
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_NUOICONDUOI12THANG IT_NU' +
        'OICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV' +
        '_MA'
      
        'AND CHONNGAYSANH=1 AND '#39'2017-02-20'#39' BETWEEN CONVERT(DATETIME,NGA' +
        'YSANH,103) AND DATEADD(M,12,CONVERT(DATETIME,NGAYSANH,103))'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_THAITHANGTHU7 IT_THAITHA' +
        'NGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA'
      
        'AND '#39'2017-02-20'#39' BETWEEN ISNULL(BATDAUTU,DATEADD(YY,-100, '#39'2017-' +
        '02-20'#39')) AND ISNULL(IT_THAITHANGTHU7.DENNGAY,DATEADD(YY,-100, '#39'2' +
        '017-02-20'#39'))'
      'WHERE ST_NHANVIEN.NV_Ngayvao <= '#39'2017-02-20'#39
      'AND ST_NHANVIEN.DV_MA NOT IN ('#39'BGD'#39','#39'BGDX'#39')'
      'AND ST_NHANVIEN.DV_MA NOT LIKE '#39'%CG%'#39
      'AND ST_DONVI.X_MA_ = '#39'VP'#39
      
        'and ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 and  ST_GIOQUETTHE.NP_Ma ' +
        'is null --and ST_GIOQUETTHE.CC_HESONGAYCONG=1 '
      '--and LEFT(ST_NHANVIEN.CV_MA,1)='#39'A'#39
      '--and ST_GIOQUETTHE.NP_Ma NOT IN ('#39'P'#39','#39'TS'#39','#39'TS1'#39') '
      'order by ST_DONVI.X_MA_,ST_NHANVIEN.DV_MA')
    Left = 160
    Top = 136
    object HRMQryNDay: TStringField
      FieldName = 'NDay'
      FixedChar = True
      Size = 10
    end
    object HRMQryX_MA_: TStringField
      FieldName = 'X_MA_'
      FixedChar = True
      Size = 8
    end
    object HRMQryDV_MA: TStringField
      FieldName = 'DV_MA'
      FixedChar = True
      Size = 100
    end
    object HRMQryCV_MA: TStringField
      FieldName = 'CV_MA'
      FixedChar = True
      Size = 100
    end
    object HRMQryNV_MA: TStringField
      FieldName = 'NV_MA'
      FixedChar = True
      Size = 100
    end
    object HRMQryNV_Ten: TStringField
      FieldName = 'NV_Ten'
      FixedChar = True
      Size = 100
    end
    object HRMQryNP_Ma: TStringField
      FieldName = 'NP_Ma'
      FixedChar = True
      Size = 100
    end
    object HRMQryCC_GIOBINHTHUONG: TFloatField
      FieldName = 'CC_GIOBINHTHUONG'
    end
    object HRMQryCC_HESONGAYCONG: TFloatField
      FieldName = 'CC_HESONGAYCONG'
    end
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 162
    Top = 168
  end
  object PopupMenu: TPopupMenu
    Left = 192
    Top = 136
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
