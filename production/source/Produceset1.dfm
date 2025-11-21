object Produceset: TProduceset
  Left = 353
  Top = 183
  Width = 800
  Height = 500
  Caption = 'Produceset'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 169
      Height = 24
      Caption = 'Production situation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 56
      Width = 111
      Height = 20
      Caption = 'ETD(yyyyy/mm):'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 168
      Top = 96
      Width = 67
      Height = 20
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 408
      Top = 96
      Width = 81
      Height = 20
      Caption = 'Query Way:'
    end
    object Label5: TLabel
      Left = 16
      Top = 96
      Width = 68
      Height = 20
      Caption = 'ArticleNo:'
    end
    object Label7: TLabel
      Left = 760
      Top = 64
      Width = 60
      Height = 20
      Caption = 'Finished'
    end
    object Label9: TLabel
      Left = 760
      Top = 32
      Width = 66
      Height = 20
      Caption = 'No Finish'
    end
    object Label10: TLabel
      Left = 760
      Top = 96
      Width = 59
      Height = 20
      Caption = 'No Start'
    end
    object Edit1: TEdit
      Left = 376
      Top = 48
      Width = 121
      Height = 28
      TabOrder = 1
      Text = '2007/05'
    end
    object Edit2: TEdit
      Left = 80
      Top = 48
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 240
      Top = 88
      Width = 153
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button1: TButton
      Left = 592
      Top = 80
      Width = 105
      Height = 41
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 496
      Top = 88
      Width = 81
      Height = 28
      CharCase = ecUpperCase
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 4
      Text = 'ORDER'
      Items.Strings = (
        'ORDER'
        'ARTICLE'
        'ETD')
    end
    object Edit3: TEdit
      Left = 88
      Top = 88
      Width = 65
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 592
      Top = 24
      Width = 105
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 728
      Top = 32
      Width = 25
      Height = 21
      Color = clRed
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 728
      Top = 64
      Width = 25
      Height = 21
      Color = clLime
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit7: TEdit
      Left = 728
      Top = 96
      Width = 25
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 792
    Height = 337
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SCBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KHPO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CusName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pairs'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 41
        Visible = True
      end
      item
        Color = 12189625
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = 'A-Set'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 51
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'CDate'
        Width = 50
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'C_Fin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 38
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'C_Bal'
        Width = 51
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'Z_Fin'
        Width = 47
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'Z_Bal'
        Width = 48
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'Y_Fin'
        Width = 48
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'Y_Bal'
        Width = 50
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'SDate'
        Width = 49
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'S_Fin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 43
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'S_Bal'
        Width = 52
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'ODate'
        Width = 51
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'O_Fin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 45
        Visible = True
      end
      item
        Color = 16503502
        Expanded = False
        FieldName = 'O_Bal'
        Width = 52
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'ADate'
        Width = 50
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'A_Fin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
        Visible = True
      end
      item
        Color = 14539006
        Expanded = False
        FieldName = 'A_Bal'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETC'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSP'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXF'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETD'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSD'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Assemble'
        Title.Caption = 'GO'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Stitching'
        Title.Caption = 'MAY'
        Width = 51
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH,ZLZL.ZLBH,DDZL.XieXing,DDZL.Shehao,DDZ' +
        'L.ShipDate,DDZL.Pairs,'
      'XXZL.XieMing,XXZL.Article,isnull(SCBB.Qty,0) as Qty,'
      
        'isnull(SCBBS.s_Qty,0) as S_Fin,isnull(SCBBO.o_Qty,0) as O_Fin,is' +
        'null(SCBBC.c_Qty,0) as C_Fin,isnull(SCBBA.a_Qty,0) as A_Fin,isnu' +
        'll(SCBBY.Y_Qty,0) as Y_Fin,isnull(SCBBZ.Z_Qty,0) as Z_Fin,'
      
        'DDZL.Pairs-SCBBS.s_Qty as S_Bal,DDZL.Pairs-SCBBO.O_Qty as O_Bal,' +
        'DDZL.Pairs-SCBBC.c_Qty as C_Bal,DDZL.Pairs-SCBBA.a_Qty as A_Bal,' +
        'DDZL.Pairs-SCBBY.Y_Qty as Y_Bal,DDZL.Pairs-SCBBZ.Z_Qty as Z_Bal,'
      
        'LBZLS.YWSM as CusName,DDZL.KHPO,SCZLDate.CDate,SCZLDate.SDate,SC' +
        'ZLDate.ODate,'
      
        'SCZLDate.ADate,SCZLDate.ETC,SCZLDate.INSP,SCZLDate.EXF,SCZLDate.' +
        'ETD,SCZLDate.CSD,SCZLDate.Assemble,SCZLDate.Stitching'
      'from SCZL '
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      'left join LBZLS on lbzls.lb='#39'13'#39' and lbzls.lbdh=DDZL.Dest'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join          /*'#31532#20108#23652'*/'
      ''
      ' (select SCBBS.SCBH,sum(SCBBS.Qty) as Qty from          /*'#31532#19977#23652'*/'
      ''
      
        '(select  SCBBSL.SCBH, SCBBSL.XXCC,min( SCBBSL.Qty) as Qty  from ' +
        ' /* '#31532#22235#23652'*/'
      ''
      
        '(select SCBBSS.SCBH,SCBBSS.GXLB,SCBBSS.XXCC,sum(SCBBSS.Qty) as Q' +
        'ty'
      'from SCBBSS '
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH and SCZL.GXLB=SCBBSS.GXL' +
        'B'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'group by SCBBSS.SCBH,SCBBSS.GXLB,SCBBSS.XXCC) SCBBSL         /* ' +
        #31532#22235#23652#32080#26463'*/'
      ''
      
        'where (select count(*) from (select  SCBBSL.SCBH,SCBBSL.XXCC,SCB' +
        'BSL.Qty)  aa)>1       /*'#31532#19977#23652#32080#26463'*/'
      'group by  SCBBSL.SCBH, SCBBSL.XXCC) SCBBS '
      ''
      'group by SCBBS.SCBH)   SCBB     /*'#31532#20108#23652#32080#26463'*/'
      'on SCBB.SCBH=SCZL.SCBH'
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as s_Qty'
      'from SCBBSS'
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBSS.GX' +
        'LB'
      'left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      ' where SCBBSS.GXLB='#39'S'#39' '
      'group by SCBBSS.SCBH) SCBBS'
      'on SCBBS.SCBH=SCZL.SCBH'
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as o_Qty'
      'from SCBBSS'
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBSS.GX' +
        'LB'
      'left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      ' where SCBBSS.GXLB='#39'O'#39' '
      'group by SCBBSS.SCBH) SCBBO'
      'on SCBBO.SCBH=SCZL.SCBH'
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as c_Qty'
      'from SCBBSS'
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBSS.GX' +
        'LB'
      'left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      ' where SCBBSS.GXLB='#39'C'#39' '
      'group by SCBBSS.SCBH) SCBBC'
      'on SCBBC.SCBH=SCZL.SCBH'
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as a_Qty'
      'from SCBBSS'
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBSS.GX' +
        'LB'
      'left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      ' where SCBBSS.GXLB='#39'A'#39' '
      'group by SCBBSS.SCBH) SCBBA'
      'on SCBBA.SCBH=SCZL.SCBH'
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as Y_Qty'
      'from SCBBSS'
      
        'left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBSS.GX' +
        'LB'
      'left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      ' where SCBBSS.GXLB='#39'Y'#39' '
      'group by SCBBSS.SCBH) SCBBY'
      'on SCBBY.SCBH=SCZL.SCBH'
      ''
      ''
      'left join (select SCBBSS.SCBH,sum(SCBBSS.Qty) as Z_Qty'
      '    from SCBBSS'
      
        '    left join SCZL on SCZL.SCBH=SCBBSS.SCBH  and SCZL.GXLB=SCBBS' +
        'S.GXLB'
      '    left join  ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      '    left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '    left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=' +
        'DDZL.SheHao '
      '    where SCBBSS.GXLB='#39'Z'#39' '
      '    group by SCBBSS.SCBH) SCBBZ'
      'on SCBBZ.SCBH=SCZL.SCBH'
      ''
      ''
      'where SCZL.GXLB='#39'A'#39)
    Left = 496
    Top = 160
    object Query1ZLBH: TStringField
      DisplayWidth = 15
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      DisplayWidth = 19
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1CusName: TStringField
      FieldName = 'CusName'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CDate: TDateTimeField
      FieldName = 'CDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1Qty: TFloatField
      DisplayWidth = 5
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1C_Fin: TFloatField
      FieldName = 'C_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1C_Bal: TFloatField
      FieldName = 'C_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1Z_Fin: TFloatField
      FieldName = 'Z_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1Z_Bal: TFloatField
      FieldName = 'Z_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1Y_Fin: TFloatField
      FieldName = 'Y_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1Y_Bal: TFloatField
      FieldName = 'Y_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1SDate: TDateTimeField
      FieldName = 'SDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1S_Fin: TFloatField
      FieldName = 'S_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1S_Bal: TFloatField
      FieldName = 'S_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1ODate: TDateTimeField
      FieldName = 'ODate'
      DisplayFormat = 'MM/dd'
    end
    object Query1O_Fin: TFloatField
      FieldName = 'O_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1O_Bal: TFloatField
      FieldName = 'O_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1ADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'MM/dd'
    end
    object Query1A_Fin: TFloatField
      FieldName = 'A_Fin'
      DisplayFormat = '##,#0.0'
    end
    object Query1A_Bal: TFloatField
      FieldName = 'A_Bal'
      DisplayFormat = '##,#0.0'
    end
    object Query1ETC: TDateTimeField
      FieldName = 'ETC'
      DisplayFormat = 'MM/dd'
    end
    object Query1INSP: TDateTimeField
      FieldName = 'INSP'
      DisplayFormat = 'MM/dd'
    end
    object Query1EXF: TDateTimeField
      FieldName = 'EXF'
      DisplayFormat = 'MM/dd'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'MM/dd'
    end
    object Query1CSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'MM/dd'
    end
    object Query1Assemble: TStringField
      FieldName = 'Assemble'
      FixedChar = True
      Size = 10
    end
    object Query1Stitching: TStringField
      FieldName = 'Stitching'
      FixedChar = True
      Size = 10
    end
    object Query1ShipDate: TDateTimeField
      DisplayWidth = 11
      FieldName = 'ShipDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1Shehao: TStringField
      DisplayWidth = 9
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1XieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      DisplayWidth = 13
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
end
