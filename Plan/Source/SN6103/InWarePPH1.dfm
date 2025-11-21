object InWarePPH: TInWarePPH
  Left = 328
  Top = 230
  Width = 1039
  Height = 480
  Caption = 'InWarePPH'
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
    Width = 1031
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 226
      Top = 33
      Width = 51
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 34
      Width = 74
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
    end
    object Label6: TLabel
      Left = 40
      Top = 60
      Width = 87
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'InDate:'
    end
    object Label8: TLabel
      Left = 246
      Top = 62
      Width = 20
      Height = 18
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 8
      Top = 4
      Width = 209
      Height = 25
      AutoSize = False
      Caption = #25104#21697#20837#24235'POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 502
      Top = 14
      Width = 150
      Height = 18
      AutoSize = False
      Caption = #39023#31034#29983#29986#21934#20301
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 502
      Top = 30
      Width = 163
      Height = 18
      AutoSize = False
      Caption = 'Show Production Dep'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 397
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 278
      Top = 30
      Width = 100
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 398
      Top = 54
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 83
      Top = 31
      Width = 142
      Height = 26
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 137
      Top = 59
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 269
      Top = 58
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 62
      Width = 14
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 486
      Top = 64
      Width = 147
      Height = 17
      Caption = 'Last In Date Time'
      TabOrder = 7
    end
    object CheckBox3: TCheckBox
      Left = 486
      Top = 31
      Width = 14
      Height = 17
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1031
    Height = 360
    Align = alClient
    DataSource = DataSource1
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #20992#27169#34399'|DaoMH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|InQty'
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #29983#29986#35506#21029'|DepName'
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'POH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = '8'#32026'|Tier'
        Width = 40
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWCP.DDBH,XXZL.DAOMH,DDZL.Article,DDZL.Pairs,YWCP.InQty,B' +
        'Department.DepName,SCXXCL.POH'
      '       ,Case '
      '              when POH>=1.5 then 1 '
      '              when POH>=1.25 and POH<1.5 then 2 '
      '              when POH>=1.13 and POH<1.25 then 3'
      '              when POH>=1.01 and POH<1.13 then 4'
      '              when POH>=0.86 and POH<1.0 then 5 '
      '              when POH>=0.75 and POH<0.85 then 6'
      '              when POH>=0.61 and POH<0.75 then 7 '
      '              when POH<0.61 then 8 '
      '              end  as T2    '
      'from ('
      'select YWCP.DDBH,SUM(Qty) as InQty,MAX(DepNO) as DepNO'
      'from YWCP'
      
        'where  Convert(smalldatetime,convert(varchar,YWCP.LastInDate,111' +
        ')) between '#39'2017/11/01'#39' and '#39'2017/11/30'#39
      'Group by YWCP.DDBH ) YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=YWCP.DepNO'
      
        'left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL))' +
        ' as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCX' +
        'XCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '           from SCXXCL '
      
        '           Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DD' +
        'ZL.XieXing and SCXXCL.SheHao=DDZL.SheHao'
      '')
    Left = 320
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 354
    Top = 232
  end
end
