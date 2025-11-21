object SampleOrder_Mat: TSampleOrder_Mat
  Left = 254
  Top = 301
  Width = 1218
  Height = 493
  Caption = 'SampleOrder_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1202
    Height = 41
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
      Top = 12
      Width = 55
      Height = 20
      Caption = 'Mat No:'
    end
    object Label3: TLabel
      Left = 173
      Top = 11
      Width = 56
      Height = 20
      Caption = 'English:'
    end
    object CLDHEdit: TEdit
      Left = 64
      Top = 10
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = YWPMEditKeyDown
    end
    object Button1: TButton
      Left = 872
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object YWPMEdit: TEdit
      Left = 233
      Top = 9
      Width = 632
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = YWPMEditKeyDown
    end
    object StopCK: TCheckBox
      Left = 976
      Top = 6
      Width = 97
      Height = 19
      Caption = 'Stop no show'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      WordWrap = True
    end
    object SplitCK: TCheckBox
      Left = 976
      Top = 24
      Width = 65
      Height = 17
      Caption = 'Split=*'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object SRDetailCK: TCheckBox
      Left = 1040
      Top = 24
      Width = 81
      Height = 17
      Caption = 'SR# Deltail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1202
    Height = 414
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object Panel4: TPanel
      Left = 329
      Top = 1
      Width = 872
      Height = 412
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 870
        Height = 346
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
        FooterFont.Height = -13
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
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footers = <
              item
                FieldName = 'cldh'
                ValueType = fvtCount
              end>
            Title.Caption = #26448#26009#32232#34399'|Mat No'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #33521#25991#21697#21517'|English'
            Width = 490
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301'|Unit'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Title.Caption = #24288#21312'|Loc'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'UseCount'
            Footers = <>
            Title.Caption = #27425#25976'|Used'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'TYJH'
            Footers = <>
            Title.Caption = #20572#29992'|Stop'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'zsdh'
            Footers = <>
            Title.Caption = #24288#21830'NO.|Sup No.'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #24288#21830'|Supplier'
            Width = 71
          end>
      end
      object Panel2: TPanel
        Left = 1
        Top = 347
        Width = 870
        Height = 64
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object YWPMDBEdit: TDBEdit
          Left = 8
          Top = 34
          Width = 857
          Height = 24
          DataField = 'ywpm'
          DataSource = DS1
          TabOrder = 0
        end
        object ZWPMDBEdit: TDBEdit
          Left = 8
          Top = 4
          Width = 857
          Height = 24
          DataField = 'zwpm'
          DataSource = DS1
          TabOrder = 1
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 412
      Align = alLeft
      TabOrder = 1
      object DBGridEh3: TDBGridEh
        Left = 1
        Top = 1
        Width = 326
        Height = 410
        Align = alClient
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = #23395#21029'|Sea'
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = #38283#30332#20195#30908'|SR'
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = #37327#29986#20195#30908'|SKU'
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = #38542#27573'|Stage'
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 46
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = #24288#21830'|SupID'
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Caption = #38283#30332'|FD'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.Caption = #27171#21697#21934#34399'|Sample Order'
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 93
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = MatQry
    Left = 424
    Top = 128
  end
  object MatQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 20 Cldh,zwpm,ywpm,dwbh,CQDH,CLZL.TYJH,YPZLS.UseCount,' +
        'zszl.zsdh,zszl.ZSYWJC from CLZL '
      'left join ( '
      'select CLBH,Count(CLBH) as UseCount from ( '
      
        'select CLBH  from YPZLS,YPZL where YPZL.YPDH=YPZLS.YPDH and YPZL' +
        '.UserDate>='#39'20130209'#39' '
      'union all '
      'select Clzhzl.CLDH1 as CLBH from YPZLS '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH '
      'inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  '
      'where YPZL.UserDate>='#39'20130209'#39' '
      ') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH'
      'left join zszl on zszl.zsdh=clzl.zsdh'
      
        'where CLDH like '#39'%%'#39' and ((Substring(CLDH,1,3)='#39'V90'#39') or CLZL.YN' +
        '=1 ) '
      
        'and YWPM like '#39'%43" 0300447-DAYBREAK PINK 12OZ POLY CANVAS (T) +' +
        'WHITE 18P SLENDER (V) +CEMENT (V)%'#39' '
      ' and (CLZL.TYJH='#39'N'#39' or CLZL.TYJH='#39#39' or CLZL.TYJH is null)'
      'order by YPZLS.UseCount desc')
    Left = 424
    Top = 160
    object MatQrycldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object MatQryzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object MatQryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MatQrydwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object MatQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object MatQryTYJH: TStringField
      FieldName = 'TYJH'
      FixedChar = True
      Size = 1
    end
    object MatQryUseCount: TIntegerField
      FieldName = 'UseCount'
    end
    object MatQryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object MatQryZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object ArticleQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.' +
        'KFJD,kfxxzl.JiJie,kfxxzl.FD,ypzlS.CSBH'
      '  from  ypzlS'
      '  left join ypzl on ypzlS.YPDH=ypzl.YPDH'
      
        '  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.She' +
        'Hao=ypzl.SheHao'
      '  WHERE ypzlS.CLBH=:CLDH  and kfxxzl.khdh='#39'036'#39
      'UNION ALL'
      
        'select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.' +
        'KFJD,kfxxzl.JiJie,kfxxzl.FD,ypzlS.CSBH'
      '  from  ypzlS'
      '  left join ypzl on ypzlS.YPDH=ypzl.YPDH'
      
        '  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.She' +
        'Hao=ypzl.SheHao'
      '  left join CLZHZL on CLZHZL.cldh=ypzls.clbh'
      '  WHERE CLZHZL.cldh1=:CLDH   and kfxxzl.khdh='#39'036'#39
      'order by  JiJie DESC'
      ''
      ''
      '')
    Left = 144
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object ArticleQryCLBH: TStringField
      DisplayLabel = 'Mat.ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ArticleQryYPDH: TStringField
      DisplayLabel = 'Sample Order'
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object ArticleQryKFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object ArticleQryJiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object ArticleQryFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object ArticleQryCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object ArticleQrydevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object ArticleQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ArticleQry
    Left = 145
    Top = 172
  end
  object PopupMenu1: TPopupMenu
    Left = 233
    Top = 178
    object Excel: TMenuItem
      Caption = 'Excel'
      OnClick = ExcelClick
    end
  end
end
