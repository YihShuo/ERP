object Articlecheck: TArticlecheck
  Left = 627
  Top = 218
  Width = 533
  Height = 300
  Caption = 'Articlecheck'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 517
    Height = 140
    Align = alClient
    DataSource = ds2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bwdh'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywsm'
        Title.Caption = 'Part Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clsl'
        Title.Caption = 'Usage'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 121
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 142
      Top = 7
      Width = 29
      Height = 16
      Caption = 'Size:'
    end
    object Label2: TLabel
      Left = 39
      Top = 37
      Width = 49
      Height = 16
      Caption = 'Outsole:'
    end
    object Label3: TLabel
      Left = 304
      Top = 34
      Width = 28
      Height = 16
      Caption = 'Last:'
    end
    object Label4: TLabel
      Left = 9
      Top = 7
      Width = 34
      Height = 16
      Caption = 'Pairs:'
    end
    object Label5: TLabel
      Left = 281
      Top = 4
      Width = 51
      Height = 16
      Caption = 'Midsole:'
    end
    object Label6: TLabel
      Left = 291
      Top = 62
      Width = 39
      Height = 16
      Caption = 'Insole:'
    end
    object Label7: TLabel
      Left = 260
      Top = 87
      Width = 71
      Height = 16
      Caption = 'Insole Filler:'
    end
    object Label8: TLabel
      Left = 9
      Top = 61
      Width = 81
      Height = 16
      Caption = 'Outsole Filler:'
    end
    object Label9: TLabel
      Left = 9
      Top = 85
      Width = 80
      Height = 16
      Caption = 'Stroble Sock:'
    end
    object YPCC: TDBEdit
      Left = 175
      Top = 3
      Width = 74
      Height = 24
      DataField = 'YPCC'
      DataSource = ds1
      TabOrder = 0
    end
    object YPCCO: TDBEdit
      Left = 93
      Top = 30
      Width = 156
      Height = 24
      DataField = 'YPCCO'
      DataSource = ds1
      TabOrder = 1
    end
    object YPCCL: TDBEdit
      Left = 336
      Top = 28
      Width = 161
      Height = 24
      DataField = 'YPCCL'
      DataSource = ds1
      TabOrder = 2
    end
    object Quantity: TDBEdit
      Left = 47
      Top = 3
      Width = 74
      Height = 24
      DataField = 'Quantity'
      DataSource = ds1
      TabOrder = 3
    end
    object YPCCM: TDBEdit
      Left = 336
      Top = 1
      Width = 161
      Height = 24
      DataField = 'YPCCM'
      DataSource = ds1
      TabOrder = 4
    end
    object YPCCI: TDBEdit
      Left = 336
      Top = 57
      Width = 161
      Height = 24
      DataField = 'YPCCI'
      DataSource = ds1
      TabOrder = 5
    end
    object YPCCIL: TDBEdit
      Left = 336
      Top = 83
      Width = 161
      Height = 24
      DataField = 'YPCCIL'
      DataSource = ds1
      TabOrder = 6
    end
    object YPCCSS: TDBEdit
      Left = 93
      Top = 81
      Width = 156
      Height = 24
      DataField = 'YPCCSS'
      DataSource = ds1
      TabOrder = 7
    end
    object YPCCOL: TDBEdit
      Left = 93
      Top = 55
      Width = 156
      Height = 24
      DataField = 'YPCCOL'
      DataSource = ds1
      TabOrder = 8
    end
  end
  object ypzl: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample.DS5
    SQL.Strings = (
      
        'select * from (select Quantity,YPCC,'#39'[ '#39'+YPCCO+'#39' ]'#39'+KFXXZL.DDMH ' +
        'as '#39'YPCCO'#39','#39'[ '#39'+YPCCL+'#39' ]'#39'+KFXXZL.XTMH as '#39'YPCCL'#39','
      
        #39'[ '#39'+YPCCM+'#39' ]'#39'+KFXXZL.MDMH as '#39'YPCCM'#39', '#39'[ '#39'+YPCCI+'#39' ]'#39' as YPCCI' +
        ','#39'[ '#39'+YPCCIL+'#39' ]'#39' as YPCCIL,'#39'[ '#39'+YPCCOL+'#39' ]'#39' as YPCCOL,'#39'[ '#39'+YPCC' +
        'SS+'#39' ]'#39' as YPCCSS   from YPZL'
      
        'Left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHa' +
        'o=YPZL.SheHao'
      'where YPZL.YPDH=:ZLBH)a')
    Left = 160
    Top = 205
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object ypzlYPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object ypzlYPCCO: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 40
    end
    object ypzlYPCCL: TStringField
      FieldName = 'YPCCL'
      FixedChar = True
      Size = 40
    end
    object ypzlYPCCM: TStringField
      FieldName = 'YPCCM'
      FixedChar = True
      Size = 40
    end
    object ypzlQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object ypzlYPCCI: TStringField
      FieldName = 'YPCCI'
      Size = 6
    end
    object ypzlYPCCIL: TStringField
      FieldName = 'YPCCIL'
      Size = 6
    end
    object ypzlYPCCOL: TStringField
      FieldName = 'YPCCOL'
      Size = 6
    end
    object ypzlYPCCSS: TStringField
      FieldName = 'YPCCSS'
      Size = 6
    end
  end
  object ds1: TDataSource
    DataSet = ypzl
    Left = 160
    Top = 173
  end
  object ypzls: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample.DS5
    SQL.Strings = (
      'select bwzl.bwdh,bwzl.ywsm,ypzls.clsl from ypzls'
      'inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=ypzls.bwbh'
      'where ypzls.ypdh=:ZLBH  and ypzls.clbh=:CLBH'
      'union all'
      
        'select bwzl.bwdh,bwzl.ywsm,ypzls.clsl*clzhzl.syl as clsl from yp' +
        'zls'
      'inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0'
      'inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where ypzls.ypdh=:ZLBH and clzhzl.cldh1=:CLBH'
      'union all'
      
        'select  clzhzl2.bwdh,clzhzl2.ywsm,clzhzl2.clsl*clzhzl.syl as cls' +
        'l'
      
        'from ( select bwzl.bwdh,bwzl.ywsm,ypzls.clsl,clzhzl.cldh1 as clb' +
        'h '
      
        '  from ypzls ypzls inner join clzhzl ON  ypzls.CLBH = CLZHZL.cld' +
        'h'
      '  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      '  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh  '
      '  WHERE ypzls.ypdh=:ZLBH  and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'where  clzhzl.cldh1=:CLBH and CLZHZL.SYL>0   and clzl.clzmlb='#39'N'#39
      ''
      '')
    Left = 200
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object ypzlsbwdh: TStringField
      DisplayWidth = 5
      FieldName = 'bwdh'
      FixedChar = True
      Size = 4
    end
    object ypzlsywsm: TStringField
      DisplayWidth = 32
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object ypzlsclsl: TFloatField
      DisplayWidth = 10
      FieldName = 'clsl'
    end
  end
  object ds2: TDataSource
    DataSet = ypzls
    Left = 200
    Top = 173
  end
end
