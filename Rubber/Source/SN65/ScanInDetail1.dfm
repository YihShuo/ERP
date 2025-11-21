object ScanInDetail: TScanInDetail
  Left = 300
  Top = 274
  Width = 744
  Height = 359
  Caption = 'ScanInDetail'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 736
    Height = 328
    Align = alClient
    DataSource = DS
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Ca'
        Footers = <>
        Title.Caption = #29677#21029'|Ca'
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        Title.Caption = #22411#39636'|Model ID'
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'EnglishName'
        Footers = <>
        Title.Caption = #38991#33394'|Color'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order NO'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footer.FieldName = 'qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'codebar'
        Footers = <>
        Title.Caption = #26781#30908'|Codebar'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'scandate'
        Footers = <>
        Title.Caption = #25475#25551#26085#26399'|scandate'
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'InOut'
        Footers = <>
        Title.Caption = #20837#20986'|InOut'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'Userid'
        Footers = <>
        Title.Caption = #20351#29992#32773'|Userid'
        Width = 54
      end>
  end
  object ScanQry: TQuery
    DatabaseName = 'DB'
    DataSource = DailyScanInStock.wsm
    SQL.Strings = (
      'select case when workscan.Class=0 then '#39'Ca 1'#39'  '
      '            when workscan.Class=1 then '#39'Ca 2'#39'  '
      '            when workscan.Class=2 then '#39'Ca 3'#39' end as Ca,'
      
        '       workscan.MJBH,colorclass.EnglishName,WorkPlanSS.DDBH,  wo' +
        'rkscan.*'
      'from LIY_DD.dbo.workscan workscan'
      
        'left join LIY_DD.dbo.workplans workplans on workplans.codebar=le' +
        'ft(workscan.codebar,(CHARINDEX('#39'-'#39',workscan.codebar)-1)) and wor' +
        'kplans.SNO=1  '
      
        'left join LIY_DD.dbo.colorclass'#9'colorclass  on colorclass.ColorN' +
        'o=workscan.ColorNo'
      
        'left join LIY_DD.dbo.WorkPlanSS WorkPlanSS on workplans.WorkID=W' +
        'orkPlanSS.WorkID'
      
        'where Convert(smalldatetime,convert(varchar,workscan.scandate,11' +
        '1))='#39'2016/10/26'#39' '
      '      and workscan.mjbh='#39'16F1-CT211Y-1A'#39
      '      and workscan.colorno='#39'0913'#39
      '      and  workscan.Class=0 '
      '      and workscan.SIZE='#39' 10.5'#39
      'order by workscan.scandate')
    Left = 288
    Top = 137
    object ScanQryprono: TFloatField
      FieldName = 'prono'
    end
    object ScanQrycodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
    object ScanQryscandate: TDateTimeField
      FieldName = 'scandate'
    end
    object ScanQryInOut: TStringField
      FieldName = 'InOut'
      FixedChar = True
      Size = 1
    end
    object ScanQryclass: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 1
    end
    object ScanQryUserid: TStringField
      FieldName = 'Userid'
      FixedChar = True
    end
    object ScanQryqty: TIntegerField
      FieldName = 'qty'
    end
    object ScanQryyn: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
    object ScanQryCa: TStringField
      FieldName = 'Ca'
      FixedChar = True
      Size = 4
    end
    object ScanQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object ScanQryEnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
    object ScanQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
  end
  object DS: TDataSource
    DataSet = ScanQry
    Left = 328
    Top = 137
  end
end
