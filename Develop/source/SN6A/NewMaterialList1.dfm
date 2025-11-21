object NewMaterialList: TNewMaterialList
  Left = 180
  Top = 123
  Width = 1386
  Height = 579
  Caption = 'NewMaterialList'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 81
    Align = alTop
    Caption = ' '
    TabOrder = 0
    object Label9: TLabel
      Left = 214
      Top = 16
      Width = 9
      Height = 20
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 230
      Top = 12
      Width = 43
      Height = 20
      Caption = 'Today'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 12
      Width = 56
      Height = 20
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 38
      Top = 42
      Width = 55
      Height = 20
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 188
      Top = 44
      Width = 43
      Height = 20
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 307
      Top = 10
      Width = 52
      Height = 20
      Caption = 'Supllier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 320
      Top = 45
      Width = 43
      Height = 20
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object dtp3: TDateTimePicker
      Left = 96
      Top = 8
      Width = 113
      Height = 28
      Date = 41675.431051550920000000
      Format = 'yyyy/MM/dd'
      Time = 41675.431051550920000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 547
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 547
      Top = 45
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 96
      Top = 40
      Width = 81
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 234
      Top = 40
      Width = 86
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Check_Mine: TCheckBox
      Left = 457
      Top = 49
      Width = 54
      Height = 17
      Caption = 'Mine'
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 368
      Top = 8
      Width = 129
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button3: TButton
      Left = 629
      Top = 11
      Width = 102
      Height = 25
      Caption = 'Master list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object ComboBox2: TComboBox
      Left = 368
      Top = 44
      Width = 73
      Height = 28
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 8
      Visible = False
      Items.Strings = (
        'SKX'
        'SRL')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1370
    Height = 459
    Align = alClient
    Caption = ' '
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1368
      Height = 457
      Align = alClient
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
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SupplierCode'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Supplier|Code'
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'SupplierName'
          Footers = <>
          Title.Caption = 'Supplier|Name'
          Width = 118
        end
        item
          EditButtons = <>
          FieldName = 'FlexNumber'
          Footers = <>
          Title.Caption = 'Flex|Number'
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'FlexDescripion'
          Footers = <>
          Title.Caption = 'Flex|Descripion'
          Width = 203
        end
        item
          EditButtons = <>
          FieldName = 'Season'
          Footers = <>
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'Stage'
          Footers = <>
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'ShoeName'
          Footers = <>
          Width = 137
        end
        item
          EditButtons = <>
          FieldName = 'SR'
          Footers = <>
          Width = 149
        end
        item
          EditButtons = <>
          FieldName = 'devtype'
          Footers = <>
          Title.Caption = 'Devtype'
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'Developer'
          Footers = <>
          Width = 98
        end
        item
          EditButtons = <>
          FieldName = 'Part'
          Footers = <>
          Width = 106
        end
        item
          EditButtons = <>
          FieldName = 'MaterialNumber'
          Footers = <>
          Title.Caption = 'ERPMaterial|Number'
        end
        item
          EditButtons = <>
          FieldName = 'MaterialDescription'
          Footers = <>
          Title.Caption = 'ERPMaterial|Description'
          Width = 182
        end
        item
          EditButtons = <>
          FieldName = 'MaterialBuildDay'
          Footers = <>
          Title.Caption = 'ERPMaterial|BuildDay'
          Width = 153
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        ' select devtype,main.csbh SupplierCode,zszl.zsywjc SupplierName,' +
        'main.cldhflex FlexNumber,clzl_flexs.cldhflexdes FlexDescripion,j' +
        'ijie Season,kfjd Stage,'
      
        'xieming ShoeName,devcode SR,fd Developer,ywsm Part,main.clbh Mat' +
        'erialNumber,MatDes MaterialDescription,main.userdate MaterialBui' +
        'ldDay,main.category,main.NA HQDeveloperName,main.CTS'
      ',case when ( (left(clzl.cldh,3)='#39'V90'#39' and CLZL.cltd='#39'VT Mat'#39') '
      
        #9#9#9#9'OR (LEFT(clzl.cldh,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39')  and LEFT(clzl.cl' +
        'dh,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39')) '
      
        #9#9#9#9'OR (LEFT(clzl.cldh,1) ='#39'P'#39' and (main.csbh='#39'M027'#39'))) then '#39'Up' +
        'per'#39' '
      #9'when ( (left(clzl.cldh,3)='#39'V90'#39' and CLZL.cltd='#39'VT Phu May'#39') '
      
        #9#9#9#9'OR (LEFT(clzl.cldh,1) in ('#39'B'#39','#39'L'#39','#39'M'#39','#39'N'#39')  and LEFT(clzl.cl' +
        'dh,3)  in ('#39'D03'#39','#39'D11'#39','#39'J05'#39','#39'O02'#39','#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39')) ) t' +
        'hen '#39'Sitching'#39
      #9'when ( (left(clzl.cldh,3)='#39'V90'#39' and CLZL.cltd='#39'VT Phu Go'#39') '
      
        #9#9#9#9'OR (LEFT(clzl.cldh,1) in ('#39'D'#39','#39'E'#39','#39'O'#39','#39'I'#39','#39'J'#39')  and LEFT(clz' +
        'l.cldh,3) not in ('#39'D03'#39','#39'D11'#39','#39'J05'#39','#39'O02'#39')) ) then '#39'Sitching'#39' '#9
      #9'when ( (left(clzl.cldh,3)='#39'V90'#39' and CLZL.cltd='#39'VT De'#39') '
      
        #9#9#9#9'OR (LEFT(clzl.cldh,1) ='#39'G'#39'  and LEFT(clzl.cldh,3)='#39'J03'#39') ) t' +
        'hen '#39'Bottom'#39' '#9#9#9#9
      #9'else '#39#39' end as PartName'
      
        ',max (case when substring(main.ypdh,4,1)='#39'K'#39' then cgzlss.cgno el' +
        'se '#39#39' end ) as CGNO'
      ' from ('
      
        '  select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.jijie,yp' +
        'zl.kfjd,clzl_flex.cldhflex,ypzls.clbh,bwzl.bwdh,bwzl.ywsm,kfxxzl' +
        '.devcode,clzl.ywpm MatDes,clzl.userdate,ypzls.csbh,xxzlkf.catego' +
        'ry,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls'
      '  left join ypzl on ypzls.ypdh=ypzl.ypdh'
      
        '  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.sh' +
        'ehao=ypzl.shehao'
      
        '  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.she' +
        'hao=ypzl.shehao'
      '  inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb='#39'N'#39
      '  left join bwzl on bwzl.bwdh=ypzls.bwbh'
      '  left join clzl_flex on clzl_flex.cldh=clzl.cldh'
      '  WHERE 1=1'
      '  and kfxxzl.jijie ='#39'23S'#39
      '  and ypzl.kfjd='#39'SMS'#39
      
        '  and kfxxzl.userdate>=convert(datetime,'#39'2022-01-01'#39')  and clzl.' +
        'userdate>=convert(datetime,'#39'2022-01-01'#39')  '
      '  union all'
      
        '  select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.jijie,yp' +
        'zl.kfjd,clzl_flex.cldhflex, clzhzl.cldh1 clbh ,bwzl.bwdh,bwzl.yw' +
        'sm,kfxxzl.devcode,clzl.ywpm MatDes,clzl.userdate,CLZHZL.zsdh csb' +
        'h,xxzlkf.category,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls'
      '  left join ypzl on ypzls.ypdh=ypzl.ypdh'
      
        '  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.sh' +
        'ehao=ypzl.shehao'
      
        '  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.she' +
        'hao=ypzl.shehao'
      '  inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0'
      '  inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb='#39'N'#39
      '  left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      '  left join clzl_flex on clzl_flex.cldh=clzl.cldh'
      '  WHERE 1=1'
      '  and kfxxzl.jijie ='#39'23S'#39
      '  and ypzl.kfjd='#39'SMS'#39
      
        '  and kfxxzl.userdate>=convert(datetime,'#39'2022-01-01'#39')  and clzl.' +
        'userdate>=convert(datetime,'#39'2022-01-01'#39')  '
      '  union all'
      
        '  select  devtype,xieming,fd,jijie,kfjd,clzl_flex.cldhflex,CLZHZ' +
        'L.cldh1 clbh,clzhzl2.bwdh,clzhzl2.ywsm,devcode,MatDes,clzl.userd' +
        'ate,CLZHZL.zsdh csbh,clzhzl2.category,clzhzl2.NA,clzhzl2.CTS,clz' +
        'hzl2.ypdh'
      
        '  from ( select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.j' +
        'ijie,ypzl.kfjd,bwzl.bwdh,bwzl.ywsm,ypzls.clsl,clzhzl.cldh1 as cl' +
        'bh,kfxxzl.devcode ,clzl.ywpm MatDes,clzl.userdate,ypzls.csbh,xxz' +
        'lkf.category,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls ypzls'
      '  left join ypzl on ypzls.ypdh=ypzl.ypdh'
      '  inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        '  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.sh' +
        'ehao=ypzl.shehao'
      
        '  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.she' +
        'hao=ypzl.shehao'
      '  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      '  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      '  WHERE 1=1'
      '  and kfxxzl.jijie ='#39'23S'#39
      '  and ypzl.kfjd='#39'SMS'#39
      '  and kfxxzl.userdate>=convert(datetime,'#39'2022-01-01'#39')  '
      '  and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'left join clzl_flex on clzl_flex.cldh=clzl.cldh'
      
        'where   CLZHZL.SYL>0   and clzl.clzmlb='#39'N'#39' and clzl.userdate>=co' +
        'nvert(datetime,'#39'2022-01-01'#39')  )main'
      'left join clzl_flexs on  clzl_flexs.cldhflex=main.cldhflex'
      'left join zszl on zszl.zsdh=main.csbh'
      'left join clzl on main.CLBH=clzl.cldh'
      
        'left join ( select cs.zlbh,cs.clbh,cs.stage,CAST(substring (( se' +
        'lect '#39','#39' + cgzlss.cgno'
      
        #9#9#9#9#9'from cgzlss where cgzlss.zlbh=cs.zlbh and cgzlss.clbh=cs.cl' +
        'bh and cgzlss.stage=cs.stage'
      #9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000)) as cgno'
      
        #9#9#9'from cgzlss cs left join cgzl on cs.cgno = cgzl.cgno and cgzl' +
        '.gsbh ='#39'CDC'#39' group by cs.zlbh,cs.clbh,cs.stage '
      
        #9#9#9')cgzlss on cgzlss.clbh=main.clbh and cgzlss.zlbh=main.ypdh an' +
        'd cgzlss.stage=main.kfjd '
      
        'LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=' +
        #39'CDC'#39
      'LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.UserID'
      'where ZSZL_DEV.SamplePurchaser='#39'62010'#39
      
        'group by devtype,xieming,fd,jijie,kfjd,main.cldhflex,clzl_flexs.' +
        'cldhflexdes,main.clbh,bwdh,ywsm,devcode ,MatDes,main.userdate,ma' +
        'in.csbh,zszl.zsywjc,clzl.cldh,clzl.cltd,main.category,main.NA,ma' +
        'in.CTS'
      'order by main.clbh,devcode'
      ''
      ''
      ''
      ''
      '')
    Left = 312
    Top = 193
    object Query1SupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 6
    end
    object Query1SupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object Query1FlexNumber: TStringField
      FieldName = 'FlexNumber'
      FixedChar = True
      Size = 15
    end
    object Query1FlexDescripion: TStringField
      FieldName = 'FlexDescripion'
      FixedChar = True
      Size = 200
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query1ShoeName: TStringField
      FieldName = 'ShoeName'
      FixedChar = True
      Size = 50
    end
    object Query1devtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 15
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Developer: TStringField
      FieldName = 'Developer'
      FixedChar = True
    end
    object Query1Part: TStringField
      FieldName = 'Part'
      FixedChar = True
      Size = 40
    end
    object Query1MaterialNumber: TStringField
      FieldName = 'MaterialNumber'
      FixedChar = True
      Size = 15
    end
    object Query1MaterialDescription: TStringField
      FieldName = 'MaterialDescription'
      FixedChar = True
      Size = 200
    end
    object Query1MaterialBuildDay: TDateTimeField
      FieldName = 'MaterialBuildDay'
    end
    object Query1category: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
    object Query1HQDeveloperName: TStringField
      FieldName = 'HQDeveloperName'
      FixedChar = True
    end
    object Query1CTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object Query1PartName: TStringField
      FieldName = 'PartName'
      FixedChar = True
      Size = 8
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 241
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 264
    Top = 193
  end
end
