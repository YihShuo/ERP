object LastTrackRpt: TLastTrackRpt
  Left = 337
  Top = 250
  Width = 928
  Height = 477
  Caption = 'LastTrackRpt'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 438
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dep ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 75
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 204
          Top = 12
          Width = 68
          Height = 16
          Caption = 'Last Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 28
          Top = 15
          Width = 46
          Height = 16
          Caption = 'LastNo:'
        end
        object Label6: TLabel
          Left = 14
          Top = 41
          Width = 59
          Height = 16
          Caption = 'PlanDate:'
        end
        object Label7: TLabel
          Left = 206
          Top = 38
          Width = 66
          Height = 16
          Caption = 'DepName:'
        end
        object Edit2: TEdit
          Left = 76
          Top = 11
          Width = 115
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button2: TButton
          Left = 416
          Top = 12
          Width = 73
          Height = 44
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit3: TEdit
          Left = 274
          Top = 9
          Width = 127
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 77
          Top = 40
          Width = 116
          Height = 24
          Date = 39289.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 39289.406377673610000000
          TabOrder = 3
        end
        object Edit4: TEdit
          Left = 275
          Top = 36
          Width = 126
          Height = 24
          TabOrder = 4
        end
        object Button3: TButton
          Left = 502
          Top = 14
          Width = 73
          Height = 44
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button3Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 75
        Width = 904
        Height = 332
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 3
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dep NM'
      ImageIndex = 2
      object panel2: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 75
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 204
          Top = 12
          Width = 68
          Height = 16
          Caption = 'Last Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 28
          Top = 15
          Width = 46
          Height = 16
          Caption = 'LastNo:'
        end
        object Label4: TLabel
          Left = 8
          Top = 43
          Width = 59
          Height = 16
          Caption = 'PlanDate:'
        end
        object Label2: TLabel
          Left = 204
          Top = 41
          Width = 66
          Height = 16
          Caption = 'DepName:'
        end
        object EditMatNo: TEdit
          Left = 76
          Top = 11
          Width = 115
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btn1: TButton
          Left = 416
          Top = 12
          Width = 73
          Height = 44
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btn1Click
        end
        object EditMatNM: TEdit
          Left = 274
          Top = 9
          Width = 127
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object DTP3: TDateTimePicker
          Left = 77
          Top = 40
          Width = 116
          Height = 24
          Date = 39289.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 39289.406377673610000000
          TabOrder = 3
        end
        object Edit1: TEdit
          Left = 275
          Top = 36
          Width = 126
          Height = 24
          TabOrder = 4
        end
        object Button1: TButton
          Left = 502
          Top = 14
          Width = 73
          Height = 44
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button1Click
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 75
        Width = 904
        Height = 332
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 3
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh3DrawColumnCell
      end
    end
  end
  object DepIDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select LTLL.PlanDate,LTLL.DepName,LTLL.YWPM,LTLL.CLBH,'
      
        '       isnull(sum(case when LTLL.SIZ='#39' 10.5'#39' then Qty end),0) as' +
        ' '#39'[ 10.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 11.0'#39' then Qty end),0) as' +
        ' '#39'[ 11.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 11.5'#39' then Qty end),0) as' +
        ' '#39'[ 11.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 12.0'#39' then Qty end),0) as' +
        ' '#39'[ 12.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 12.5'#39' then Qty end),0) as' +
        ' '#39'[ 12.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 13.0'#39' then Qty end),0) as' +
        ' '#39'[ 13.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 13.5'#39' then Qty end),0) as' +
        ' '#39'[ 13.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'01.0'#39' then Qty end),0) as ' +
        #39'[01.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'01.5'#39' then Qty end),0) as ' +
        #39'[01.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'02.0'#39' then Qty end),0) as ' +
        #39'[02.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'02.5'#39' then Qty end),0) as ' +
        #39'[02.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'03.0'#39' then Qty end),0) as ' +
        #39'[03.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'03.5'#39' then Qty end),0) as ' +
        #39'[03.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'04.0'#39' then Qty end),0) as ' +
        #39'[04.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'04.5'#39' then Qty end),0) as ' +
        #39'[04.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'05.0'#39' then Qty end),0) as ' +
        #39'[05.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'05.5'#39' then Qty end),0) as ' +
        #39'[05.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'06.0'#39' then Qty end),0) as ' +
        #39'[06.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'06.5'#39' then Qty end),0) as ' +
        #39'[06.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'07.0'#39' then Qty end),0) as ' +
        #39'[07.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'07.5'#39' then Qty end),0) as ' +
        #39'[07.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'08.0'#39' then Qty end),0) as ' +
        #39'[08.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'08.5'#39' then Qty end),0) as ' +
        #39'[08.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'09.0'#39' then Qty end),0) as ' +
        #39'[09.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'09.5'#39' then Qty end),0) as ' +
        #39'[09.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'10.0'#39' then Qty end),0) as ' +
        #39'[10.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'10.5'#39' then Qty end),0) as ' +
        #39'[10.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'11.0'#39' then Qty end),0) as ' +
        #39'[11.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'11.5'#39' then Qty end),0) as ' +
        #39'[11.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'12.0'#39' then Qty end),0) as ' +
        #39'[12.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'12.5'#39' then Qty end),0) as ' +
        #39'[12.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'13.0'#39' then Qty end),0) as ' +
        #39'[13.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'13.5'#39' then Qty end),0) as ' +
        #39'[13.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'14.0'#39' then Qty end),0) as ' +
        #39'[14.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'15.0'#39' then Qty end),0) as ' +
        #39'[15.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'16.0'#39' then Qty end),0) as ' +
        #39'[16.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'17.0'#39' then Qty end),0) as ' +
        #39'[17.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'18.0'#39' then Qty end),0) as ' +
        #39'[18.0]'#39','
      '       sum(LTLL.Qty)as Total'
      
        'from (select LTLL.PlanDate,Bdepartment.DepName,CLZL.YWPM,LTLLS.C' +
        'LBH,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Qty'
      '      from LTLL'
      '      left join LTLLS on LTLL.LLNO=LTLLS.LLNO'
      
        '      left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=' +
        'LTLLSS.CLBH'
      '      left join CLZL on CLZL.CLDH=LTLLS.CLBH'
      '      left join Bdepartment on Bdepartment.ID=LTLL.DepID'
      '      where LTLL.PlanDate between '#39'2016-08-01'#39' and  '#39'2016-08-31'#39
      
        '      Group by LTLL.PlanDate,Bdepartment.DepName,CLZL.YWPM,LTLLS' +
        '.CLBH,LTLLSS.SIZ'
      '      '
      '      )LTLL'
      'Group by LTLL.PlanDate,LTLL.DepName,LTLL.YWPM,LTLL.CLBH')
    Left = 198
    Top = 192
  end
  object DS1: TDataSource
    DataSet = DepIDQry
    Left = 200
    Top = 223
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 160
  end
  object DepNMQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select LTLL.PlanDate,LTLL.DepName,LTLL.YWPM,LTLL.CLBH,'
      
        '       isnull(sum(case when LTLL.SIZ='#39' 10.5'#39' then Qty end),0) as' +
        ' '#39'[ 10.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 11.0'#39' then Qty end),0) as' +
        ' '#39'[ 11.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 11.5'#39' then Qty end),0) as' +
        ' '#39'[ 11.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 12.0'#39' then Qty end),0) as' +
        ' '#39'[ 12.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 12.5'#39' then Qty end),0) as' +
        ' '#39'[ 12.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 13.0'#39' then Qty end),0) as' +
        ' '#39'[ 13.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39' 13.5'#39' then Qty end),0) as' +
        ' '#39'[ 13.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'01.0'#39' then Qty end),0) as ' +
        #39'[01.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'01.5'#39' then Qty end),0) as ' +
        #39'[01.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'02.0'#39' then Qty end),0) as ' +
        #39'[02.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'02.5'#39' then Qty end),0) as ' +
        #39'[02.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'03.0'#39' then Qty end),0) as ' +
        #39'[03.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'03.5'#39' then Qty end),0) as ' +
        #39'[03.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'04.0'#39' then Qty end),0) as ' +
        #39'[04.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'04.5'#39' then Qty end),0) as ' +
        #39'[04.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'05.0'#39' then Qty end),0) as ' +
        #39'[05.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'05.5'#39' then Qty end),0) as ' +
        #39'[05.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'06.0'#39' then Qty end),0) as ' +
        #39'[06.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'06.5'#39' then Qty end),0) as ' +
        #39'[06.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'07.0'#39' then Qty end),0) as ' +
        #39'[07.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'07.5'#39' then Qty end),0) as ' +
        #39'[07.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'08.0'#39' then Qty end),0) as ' +
        #39'[08.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'08.5'#39' then Qty end),0) as ' +
        #39'[08.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'09.0'#39' then Qty end),0) as ' +
        #39'[09.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'09.5'#39' then Qty end),0) as ' +
        #39'[09.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'10.0'#39' then Qty end),0) as ' +
        #39'[10.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'10.5'#39' then Qty end),0) as ' +
        #39'[10.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'11.0'#39' then Qty end),0) as ' +
        #39'[11.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'11.5'#39' then Qty end),0) as ' +
        #39'[11.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'12.0'#39' then Qty end),0) as ' +
        #39'[12.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'12.5'#39' then Qty end),0) as ' +
        #39'[12.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'13.0'#39' then Qty end),0) as ' +
        #39'[13.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'13.5'#39' then Qty end),0) as ' +
        #39'[13.5]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'14.0'#39' then Qty end),0) as ' +
        #39'[14.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'15.0'#39' then Qty end),0) as ' +
        #39'[15.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'16.0'#39' then Qty end),0) as ' +
        #39'[16.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'17.0'#39' then Qty end),0) as ' +
        #39'[17.0]'#39', '
      
        '       isnull(sum(case when LTLL.SIZ='#39'18.0'#39' then Qty end),0) as ' +
        #39'[18.0]'#39','
      '       sum(LTLL.Qty)as Total'
      
        'from (select LTLL.PlanDate,Bdepartment.DepName,CLZL.YWPM,LTLLS.C' +
        'LBH,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Qty'
      '      from LTLL'
      '      left join LTLLS on LTLL.LLNO=LTLLS.LLNO'
      
        '      left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=' +
        'LTLLSS.CLBH'
      '      left join CLZL on CLZL.CLDH=LTLLS.CLBH'
      '      left join Bdepartment on Bdepartment.ID=LTLL.DepID'
      '      where LTLL.PlanDate between '#39'2016-08-01'#39' and  '#39'2016-08-31'#39
      
        '      Group by LTLL.PlanDate,Bdepartment.DepName,CLZL.YWPM,LTLLS' +
        '.CLBH,LTLLSS.SIZ'
      '      '
      '      )LTLL'
      'Group by LTLL.PlanDate,LTLL.DepName,LTLL.YWPM,LTLL.CLBH')
    Left = 270
    Top = 192
  end
  object DS3: TDataSource
    DataSet = DepNMQry
    Left = 272
    Top = 223
  end
end
