object RYDetail_S: TRYDetail_S
  Left = 568
  Top = 342
  Width = 429
  Height = 342
  BorderIcons = [biSystemMenu]
  Caption = 'RYDetail_S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 62
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label2: TLabel
      Left = 12
      Top = 36
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object edt1: TEdit
      Left = 51
      Top = 6
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 51
      Top = 32
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 186
      Top = 6
      Width = 60
      Height = 24
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 186
      Top = 32
      Width = 60
      Height = 24
      Caption = 'Copy'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 62
    Width = 413
    Height = 241
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'Article'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CUSTORD'
        Footers = <>
        Title.Caption = 'CustPO'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 124
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      
        'select CGZLSS.ZLBH,DDZL.ARTICLE,DE_ORDERM.CUSTORD,'#39'Purchase'#39' AS ' +
        'Memo'
      'from CGZLSS'
      'Left Join CGZL  on CGZL.CGNO =CGZLSS.CGNO'
      
        'Left Join CGZLS on CGZLS.CGNO =CGZLSS.CGNO and CGZLS.CLBH =CGZLS' +
        'S.CLBH'
      'left join ddzl on ddzl.ddbh=CGZLSS.ZLBH'
      'left join DE_ORDERM on DE_ORDERM.ORDERNO=CGZLSS.ZLBH'#9#9
      'where CGZL.CGNO='#39'20141200229'#39' and CGZLS.CLBH='#39'A010006620'#39' '
      
        'GROUP BY CGZLSS.CLBH,CGZLSS.CGNO,CGZLSS.ZLBH,DDZL.ARTICLE,DE_ORD' +
        'ERM.CUSTORD'
      'union '
      
        'select JGZLSS.ZLBH,DDZL.Article,DE_ORDERM.CUSTORD,'#39'Process'#39' AS M' +
        'emo'
      'from JGZLS'
      'LEFT JOIN JGZL ON JGZLS.JGNO=JGZL.JGNO'
      
        'LEFT JOIN JGZLSS ON JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS' +
        '.CLBH'
      'left join DDZL  on JGZLSS.ZLBH=DDZL.DDBH'
      'left join DE_ORDERM on DE_ORDERM.ORDERNO=JGZLSS.ZLBH'#9#9
      'where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' '
      #9#9'and JGZLS.JGNO='#39'20141200229'#39' and JGZLS.CLBH='#39'A010006620'#39
      
        'group by JGZLS.JGNO,JGZLS.CLBH,JGZLSS.ZLBH,DDZL.Article,DE_ORDER' +
        'M.CUSTORD'
      ''
      'UNION'
      
        'select DE_ORDERM.ORDERNO,YPZL.Article,DE_ORDERM.CUSTORD,'#39'BOM'#39' AS' +
        ' Memo'
      'FROM YPZLS'
      #9'left join YPZL on YPZL.YPDH=YPZLs.YPDH                       '
      #9'LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      #9'left join DE_ORDERM on DE_ORDERM.ARTICLE=YPZL.ARTICLE'
      'WHERE YPZLS.CLBH='#39'A010006620'#39
      
        'group by YPZLS.CLBH,DE_ORDERM.ORDERNO,YPZL.Article,DE_ORDERM.CUS' +
        'TORD'
      ''
      'UNION'
      'select ORDERNO,ARTICLE,CUSTORD,'#39'Use stock'#39' AS Memo'
      'from DE_ORDERM'
      'where left(ORDERNO,2) not in ('#39'AL'#39','#39'AH'#39')')
    UpdateObject = UpdateSQL1
    Left = 96
    Top = 184
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1CUSTORD: TStringField
      FieldName = 'CUSTORD'
      FixedChar = True
      Size = 15
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 216
  end
  object UpdateSQL1: TUpdateSQL
    Left = 96
    Top = 248
  end
end
