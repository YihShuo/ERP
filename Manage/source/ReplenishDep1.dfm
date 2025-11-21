object ReplenishDep: TReplenishDep
  Left = 451
  Top = 270
  Width = 870
  Height = 500
  Caption = 'ReplenishDep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 37
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
    end
    object Label2: TLabel
      Left = 352
      Top = 36
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label3: TLabel
      Left = 504
      Top = 36
      Width = 32
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 176
      Top = 38
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Caption = 'DepName:'
    end
    object Label12: TLabel
      Left = 640
      Top = 36
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 313
      Height = 25
      AutoSize = False
      Caption = #37096#38272#35036#26009#37329#38989#32113#35336#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 34
      Width = 89
      Height = 24
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 410
      Top = 34
      Width = 97
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 538
      Top = 34
      Width = 97
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 772
      Top = 26
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 264
      Top = 34
      Width = 89
      Height = 24
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 698
      Top = 33
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 862
    Height = 404
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DepID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#38272#32232#34399'|DepID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#38272#33521#25991#21517#31281'|DepName'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#38272#20013#25991#21517#31281'|DepMemo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            FieldName = 'ACCUS'
            ValueType = fvtSum
          end>
        Title.Caption = #35036#26009#32654#37329#37329#38989'|ACCUS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 133
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #37096#38272#35036#26009#37329#38989#32113#35336#34920
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 232
    Top = 160
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#FUSPrice'#39') is not null  '
      'begin   drop table #FUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice'
      'into #FUSPrice from (select CLZL.CLDH,'
      '                      (select top 1 USPrice from KCRKS'
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))  '
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))'
      '                         order by USERDATE  desc)  as USPrice,'
      '                      (select top 1 VNPrice from KCRKS  '
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))'
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))    '
      '                         order by USERDATE  desc)  as VNPrice'
      'from CLZL ) CLZL  '
      'where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '
      ' order by CLZL.CLDH  '
      ''
      
        'select FYACC.DepID,FYACC.DepName,FYACC.DepMemo,round(sum(FYACC.A' +
        'CCUS),2) as ACCUS  '
      
        'from (select LL.DepID,LL.DepName,LL.DepMemo,LL.CLBH,sum(LL.Qty*L' +
        'L.SYL*#FUSPrice.USPrice) as ACCUS'
      
        '      from (select KCLL.DepID,BDepartment.DepName,BDepartment.De' +
        'pMemo,KCLLS.Qty,isnull(CLZHZL.SYL,1) as SYL,'
      
        '                   case when CLZHZL.CLDH1 is null then KCLLS.CLB' +
        'H else CLZHZL.CLDH1 end as CLBH'
      '            from KCLLS'
      '            left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '            left join BDepartment on BDepartment.ID=KCLL.DepID'
      '            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '            left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCLL.CK' +
        'BH=KCZLS.CKBH'
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'Date,111)) between'
      '                  '#39'2009/04/04'#39' and '#39'2009/04/11'#39
      '                  and KCLL.CFMID<>'#39'NO'#39
      '                  and BDepartment.DepName like '#39'%%'#39
      '                  and KCLLS.Qty<>0'
      '                  and KCLLS.BLSB='#39'Y'#39
      '                  and BDepartment.GSBH='#39'VA12'#39
      '            ) LL  '
      '      left join #FUSPrice on #FUSPrice.CLBH=LL.CLBH '
      
        '      group by LL.DepID,LL.DepName,LL.DepMemo,LL.CLBH,#FUSPrice.' +
        'USPrice) FYACC'
      'group by FYACC.DepID,FYACC.DepName,FYACC.DepMemo'
      'order by FYACC.DepID')
    Left = 264
    Top = 160
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1ACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 160
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 168
    Top = 160
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
