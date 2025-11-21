object ExtraDel_Child: TExtraDel_Child
  Left = 495
  Top = 313
  Width = 840
  Height = 325
  Caption = 'ExtraDel_Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      824
      41)
    object Label1: TLabel
      Left = 73
      Top = 13
      Width = 40
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      Caption = 'JGNO:'
    end
    object Button1: TButton
      Left = 248
      Top = 3
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 8
      Width = 121
      Height = 24
      Color = clBtnFace
      DataField = 'JGNO'
      DataSource = ExtraDel.DS3
      ReadOnly = True
      TabOrder = 1
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 824
    Height = 245
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 136
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ExtraDel.DS3
    SQL.Strings = (
      'select JGZLS.*,ZLZLS2.CLSL from ( '
      
        'select CLBH, DFL,ZLBH as SCBH,Qty as TempQty,Qty,Memo,GetDate() ' +
        'as UserDate,'#39'System'#39' as UserID,1 as YN'
      
        'from (select JGZLS.JGNO as LLNO,JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JG' +
        'ZLM.CLBH as DFL,round(convert(float,JGZLS.Qty)*convert(float,JGZ' +
        'LM.Qty),2) as Qty,JGZLM.Memo    '
      
        '      from JGZLS left join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.' +
        'CLBH,JGZLSS.Qty,JGZLS.Memo'
      
        '                            from JGZLS left join JGZL on JGZL.JG' +
        'NO=JGZLS.JGNO'
      
        '                            left join JGZLSS on JGZLSS.CLBH=JGZL' +
        'S.CLBH and JGZLSS.JGNO=JGZLS.JGNO'
      
        '                            where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JG' +
        'ZL.JGNO='#39'20170900437'#39
      
        '                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and ' +
        'JGZLM.CLBH=JGZLS.CLBH'
      '      where JGZLS.JGNO='#39'20170900437'#39
      '      and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  )   JGZLS ) JGZLS '
      'Left join ( '
      
        '      select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,Sum(ZLZLS2.CLSL' +
        ') as CLSL from  ZLZLS2 '
      '      inner join ('
      '      select JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as MJBH'
      '      from JGZLS '
      
        '      inner join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS' +
        'S.Qty,JGZLS.Memo'
      
        '                            from JGZLS left join JGZL on JGZL.JG' +
        'NO=JGZLS.JGNO'
      
        '                            left join JGZLSS on JGZLSS.CLBH=JGZL' +
        'S.CLBH and JGZLSS.JGNO=JGZLS.JGNO'
      
        '                            where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JG' +
        'ZL.JGNO='#39'20170900437'#39
      
        '                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and ' +
        'JGZLM.CLBH=JGZLS.CLBH'
      '      where JGZLS.JGNO='#39'20170900437'#39
      
        '      and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  )  JGZLS on ZLZLS2.ZLBH=JGZL' +
        'S.ZLBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.MJBH    '
      
        '      Group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH ) ZLZLS2 on Z' +
        'LZLS2.ZLBH=JGZLS.SCBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH' +
        '=JGZLS.DFL')
    Left = 192
    Top = 136
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1TempQty: TFloatField
      FieldName = 'TempQty'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 6
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
  end
end
