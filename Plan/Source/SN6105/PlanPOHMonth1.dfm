object PlanPOHMonth: TPlanPOHMonth
  Left = 243
  Top = 241
  Width = 1016
  Height = 480
  Caption = 'PlanPOHMonth'
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
    Width = 1008
    Height = 49
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 199
      Top = 17
      Width = 20
      Height = 18
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 11
      Top = 17
      Width = 73
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label1: TLabel
      Left = 331
      Top = 17
      Width = 73
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
    end
    object Button1: TButton
      Left = 539
      Top = 9
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 619
      Top = 9
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 14
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 224
      Top = 14
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 3
    end
    object RYEdit: TEdit
      Left = 408
      Top = 13
      Width = 121
      Height = 26
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1008
    Height = 400
    Align = alClient
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 49
    Width = 1008
    Height = 400
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #21046#36896#25351#20196'|SCBH'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #22411#20307'|XieMing'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = #22411#34399'|ARTICLE'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #23458#25142#35330#21934#25976'|Pairs'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'PRS'
        Footers = <>
        Title.Caption = #21934#20301'('#38617')|PRS'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #29983#29986#35506#21029'|DepName'
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Title.Caption = #25104#22411#29986#29983#26085#26399'|SCDate'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Begin_Cutting'
        Footers = <>
        Title.Caption = #26399#21021#24235#23384'|Begin_Cutting'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Begin_Stitching'
        Footers = <>
        Title.Caption = #26399#21021#24235#23384'|Begin_Stitching'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'Begin_Assembly'
        Footers = <>
        Title.Caption = #26399#21021#24235#23384'|Begin_Assembly'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'Before_Cutting'
        Footers = <>
        Title.Caption = #26412#26399#25237#20837'|Before_Cutting'
      end
      item
        EditButtons = <>
        FieldName = 'Before_Stitching'
        Footers = <>
        Title.Caption = #26412#26399#25237#20837'|Before_Stitching'
      end
      item
        EditButtons = <>
        FieldName = 'Before_Assembly'
        Footers = <>
        Title.Caption = #26412#26399#25237#20837'|Before_Assembly'
      end
      item
        EditButtons = <>
        FieldName = 'Cutting'
        Footers = <>
        Title.Caption = #26412#26399#36681#20986'|Cutting'
      end
      item
        EditButtons = <>
        FieldName = 'Stitching'
        Footers = <>
        Title.Caption = #26412#26399#36681#20986'|Stitching'
      end
      item
        EditButtons = <>
        FieldName = 'Assembly'
        Footers = <>
        Title.Caption = #26412#26399#36681#20986'|Assembly'
      end
      item
        EditButtons = <>
        FieldName = 'Final_Cutting'
        Footers = <>
        Title.Caption = #26399#26411#24235#23384'|Final_Cutting'
      end
      item
        EditButtons = <>
        FieldName = 'Final_Stitching'
        Footers = <>
        Title.Caption = #26399#26411#24235#23384'|Final_Stitching'
      end
      item
        EditButtons = <>
        FieldName = 'Final_Assembly'
        Footers = <>
        Title.Caption = #26399#26411#24235#23384'|Final_Assembly'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'POH'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'T1'
        Footers = <>
        Width = 54
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select SCBB.SCBH,XXZL.XieMing,DDZL.ARTICLE,DDZL.Pairs,'#39'PRS'#39' as P' +
        'RS,BDepartment.DepName,RIGHT(Convert(varchar,SCBB.MinSCDate,111)' +
        ',5)+'#39'-'#39'+RIGHT(Convert(varchar,SCBB.MaxSCDate,111),5) as SCDate'
      '       ,IsNull(Begin_SCBB.Begin_Cutting,0) as Begin_Cutting '
      '       ,IsNull(Begin_SCBB.Begin_Stitching,0) as Begin_Stitching'
      #9'   ,IsNull(Begin_SCBB.Begin_Assembly,0) as Begin_Assembly '
      
        #9'   ,SCBB.Before_Cutting,SCBB.Before_Stitching,SCBB.Before_Assem' +
        'bly'
      #9'   ,SCBB.Cutting,SCBB.Stitching,SCBB.Assembly'
      
        '       ,IsNull(Begin_SCBB.Begin_Cutting,0) +SCBB.Before_Cutting-' +
        'SCBB.Cutting as Final_Cutting'
      
        #9'   ,IsNull(Begin_SCBB.Begin_Stitching,0) +SCBB.Before_Stitching' +
        '-SCBB.Stitching as Final_Stitching'
      
        #9'   ,IsNull(Begin_SCBB.Begin_Assembly,0) +SCBB.Before_Assembly-S' +
        'CBB.Assembly as Final_Assembly'
      '       ,SCXXCL.POH,case when SCXXCL.POH >=1.25 then 1'
      '            when SCXXCL.POH >=1.0 and SCXXCL.POH< 1.25 then 2'
      '            when SCXXCL.POH >= 0.75 and SCXXCL.POH<1.0 then 3'
      '            when SCXXCL.POH<0.75 then 4 end as T1'
      'from ('
      'Select SCBH'
      
        '       ,IsNull(Max(Case when GXLB='#39'C'#39' and LB='#39'Before'#39' then Qty e' +
        'nd),0) as Before_Cutting'
      
        #9'   ,IsNull(Max(Case when GXLB='#39'S'#39' and LB='#39'Before'#39'then Qty end),' +
        '0) as Before_Stitching'
      
        #9'   ,IsNull(Max(Case when GXLB='#39'A'#39' and LB='#39'Before'#39' then Qty end)' +
        ',0) as Before_Assembly'
      
        '       ,IsNull(Max(Case when GXLB='#39'C'#39' and LB='#39'After'#39' then Qty en' +
        'd),0) as Cutting'
      
        #9'   ,IsNull(Max(Case when GXLB='#39'S'#39' and LB='#39'After'#39'then Qty end),0' +
        ') as Stitching'
      
        #9'   ,IsNull(Max(Case when GXLB='#39'A'#39' and LB='#39'After'#39' then Qty end),' +
        '0) as Assembly'
      
        #9'   ,Max(DepNo) as DepNo,Max(MinSCDate) as MinSCDate,Max(MaxSCDa' +
        'te) as MaxSCDate'
      'from ( '
      ''
      
        'Select SMDD.YSBH as SCBH,SMDD.GXLB,'#39'Before'#39' as LB,null as DepNo,' +
        'null as MaxSCDate,null as MinSCDate,Sum(SMDDSS.Qty*CTS) as Qty '
      'From SMDDSS'
      
        'Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B'
      
        'where SMDDSS.UserDate between '#39'2021/02/01'#39' and '#39'2021/02/28'#39'  and' +
        ' SMDDSS.GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      'Group By SMDD.YSBH,SMDD.GXLB'
      'union all'
      'Select * from ('
      
        'select SCBBS.SCBH, SCBBS.GXLB,'#39'After'#39' as LB,Max(SCBB.DepNo) as D' +
        'epNo,Max(SCBB.SCDate) as MaxSCDate,Min(SCBB.SCDate) as MinSCDate' +
        ',Sum(SCBBS.Qty) as Qty'
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNo'
      
        'where SCBB.SCDate between '#39'2021/02/01'#39' and '#39'2021/02/28'#39'    and G' +
        'XLB in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      'Group by SCBBS.SCBH, SCBBS.GXLB) SCBB'
      ') SCBB'
      'where 1=1 and SCBB.SCBH='#39'Y2104-0022'#39
      'Group by SCBB.SCBH) SCBB'
      'left join ('
      #9'Select SCBH  '
      
        #9#9'   ,IsNull(Max(Case when GXLB='#39'C'#39' and LB='#39'Before'#39' then Qty end' +
        '),0)-IsNull(Max(Case when GXLB='#39'C'#39' and LB='#39'After'#39' then Qty end),' +
        '0) as Begin_Cutting'
      
        #9#9'   ,IsNull(Max(Case when GXLB='#39'S'#39' and LB='#39'Before'#39' then Qty end' +
        '),0)-IsNull(Max(Case when GXLB='#39'S'#39' and LB='#39'After'#39' then Qty end),' +
        '0) as Begin_Stitching'
      
        #9#9'   ,IsNull(Max(Case when GXLB='#39'A'#39' and LB='#39'Before'#39' then Qty end' +
        '),0)-IsNull(Max(Case when GXLB='#39'A'#39' and LB='#39'After'#39' then Qty end),' +
        '0) as Begin_Assembly'
      #9'from ('
      
        #9#9'Select SMDD.YSBH as SCBH,SMDD.GXLB,'#39'Before'#39' as LB,Sum(SMDDSS.Q' +
        'ty*CTS) as Qty '
      #9#9'From SMDDSS'
      
        #9#9'Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.G' +
        'XLB'
      
        #9#9'where SMDDSS.UserDate <'#39'2021/02/01'#39' and SMDDSS.GXLB in ('#39'A'#39','#39'C' +
        #39','#39'S'#39')'
      #9#9'Group By SMDD.YSBH,SMDD.GXLB'
      #9#9'union all'
      #9#9'Select * from ('
      
        #9#9'select SCBBS.SCBH, SCBBS.GXLB,'#39'After'#39' as LB,Sum(SCBBS.Qty) as ' +
        'Qty'
      #9#9'from SCBBS'
      #9#9'left join SCBB on SCBB.ProNo=SCBBS.ProNo'
      #9#9'where SCBB.SCDate <'#39'2021/02/01'#39' and GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39')  '
      #9#9'Group by SCBBS.SCBH, SCBBS.GXLB ) SCBB'
      #9#9'where SCBH in ('
      #9#9#9'Select SCBH from ('
      #9#9#9'Select SMDD.YSBH as SCBH'
      #9#9#9'From SMDDSS'
      
        #9#9#9'Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.' +
        'GXLB'
      
        #9#9#9'where SMDDSS.UserDate between '#39'2021/02/01'#39' and '#39'2021/02/28'#39'  ' +
        ' and SMDDSS.GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      #9#9#9'Group By SMDD.YSBH'
      #9#9#9'union all'
      #9#9#9'Select * from ('
      #9#9#9'select SCBBS.SCBH'
      #9#9#9'from SCBBS'
      #9#9#9'left join SCBB on SCBB.ProNo=SCBBS.ProNo'
      
        #9#9#9'where SCBB.SCDate between '#39'2021/02/01'#39' and '#39'2021/02/28'#39'    an' +
        'd GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      #9#9#9'Group by SCBBS.SCBH ) SCBB'
      #9#9#9' )SCBB  Group by SCBH'
      #9#9')'
      #9') SCBB where 1=1 and SCBH='#39'Y2104-0022'#39
      #9'Group by SCBH  '
      ') Begin_SCBB on Begin_SCBB.SCBH=SCBB.SCBH '
      'left join DDZL on DDZL.DDBH=SCBB.SCBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo'
      
        'left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.B' +
        'ZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCX' +
        'XCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '           from SCXXCL '
      
        '           Group by XieXing,SheHao,BZLB) SCXXCL on SCXXCL.XieXin' +
        'g=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BDe' +
        'partment.BZLB ')
    Left = 448
    Top = 200
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1PRS: TStringField
      FieldName = 'PRS'
      FixedChar = True
      Size = 3
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1SCDate: TStringField
      FieldName = 'SCDate'
      FixedChar = True
      Size = 21
    end
    object Query1Begin_Cutting: TFloatField
      FieldName = 'Begin_Cutting'
    end
    object Query1Begin_Stitching: TFloatField
      FieldName = 'Begin_Stitching'
    end
    object Query1Begin_Assembly: TFloatField
      FieldName = 'Begin_Assembly'
    end
    object Query1Before_Cutting: TFloatField
      FieldName = 'Before_Cutting'
    end
    object Query1Before_Stitching: TFloatField
      FieldName = 'Before_Stitching'
    end
    object Query1Before_Assembly: TFloatField
      FieldName = 'Before_Assembly'
    end
    object Query1Cutting: TFloatField
      FieldName = 'Cutting'
    end
    object Query1Stitching: TFloatField
      FieldName = 'Stitching'
    end
    object Query1Assembly: TFloatField
      FieldName = 'Assembly'
    end
    object Query1Final_Cutting: TFloatField
      FieldName = 'Final_Cutting'
    end
    object Query1Final_Stitching: TFloatField
      FieldName = 'Final_Stitching'
    end
    object Query1Final_Assembly: TFloatField
      FieldName = 'Final_Assembly'
    end
    object Query1POH: TFloatField
      FieldName = 'POH'
    end
    object Query1T1: TIntegerField
      FieldName = 'T1'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 480
    Top = 200
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 512
    Top = 200
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh2
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#38795#24288#26376#29983#29986#29986#37327#32113#35336#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 416
    Top = 200
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B446174655D0D0A5C706172207D0D0A00}
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39' 192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\' +
        'sql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER'
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 448
    Top = 232
  end
end
