object PlanSummary: TPlanSummary
  Left = 295
  Top = 175
  Width = 865
  Height = 466
  Caption = 'PlanSummary'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 857
    Height = 362
    Align = alClient
    DataSource = DS1
    EvenRowColor = clMenu
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
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'EnglishName'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Order_Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OKQTY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OutQty'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 61
      Height = 20
      Caption = 'BUYNO:'
    end
    object Label2: TLabel
      Left = 19
      Top = 7
      Width = 48
      Height = 20
      Caption = 'MJBH:'
    end
    object Label3: TLabel
      Left = 163
      Top = 46
      Width = 9
      Height = 20
      Caption = '~'
    end
    object Label4: TLabel
      Left = 279
      Top = 40
      Width = 57
      Height = 20
      Caption = 'Factory:'
      Visible = False
    end
    object Label5: TLabel
      Left = 171
      Top = 7
      Width = 87
      Height = 20
      Caption = 'Color Name:'
    end
    object Button1: TButton
      Left = 514
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object RYEdit1: TEdit
      Left = 71
      Top = 37
      Width = 90
      Height = 28
      Color = clYellow
      TabOrder = 1
    end
    object RYEdit2: TEdit
      Left = 175
      Top = 37
      Width = 90
      Height = 28
      Color = clYellow
      TabOrder = 2
    end
    object GSBHCombo: TComboBox
      Left = 345
      Top = 36
      Width = 72
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 3
      Text = 'VA12'
      Visible = False
      Items.Strings = (
        'VA12'
        'VB1'
        'VB2'
        'VB7')
    end
    object Edit1: TEdit
      Left = 71
      Top = 5
      Width = 90
      Height = 28
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 263
      Top = 5
      Width = 218
      Height = 28
      TabOrder = 5
    end
  end
  object Button2: TButton
    Left = 514
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select workplan.MJBH,colorclass.EnglishName,workplans.SIZE,sum(w' +
        'orkplans.QTY) Order_Qty,sum(workplans.OKQTY) OKQTY,sum(workplans' +
        '.OutQTY) OutQty from LIY_DD.dbo.WorkPlans WorkPlans'
      
        'left join LIY_DD.dbo.workplan workplan on workplan.workid = work' +
        'plans.workid'
      
        'left join LIY_DD.dbo.workplanss workplanss on workplanss.workid ' +
        '= workplans.workid'
      
        'left join LIY_DD.dbo.colorclass'#9'colorclass  on colorclass.ColorN' +
        'o=workplan.ColorNo'
      'left join LIY_ERP.dbo.ddzl ddzl on ddzl.DDBH = workplanss.DDBH'
      'where workplan.CQDH = '#39'HR2'#39
      'and workplan.MJBH = '#39'F23-013'#39
      'and workplan.ColorNo = '#39'107'#39
      'and ddzl.BUYNO > '#39'2405'#39' and ddzl.BUYNO < '#39'2409'#39
      'group by workplans.SIZE,workplan.MJBH,colorclass.EnglishName')
    Left = 232
    Top = 152
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object Query1EnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query1Order_Qty: TIntegerField
      FieldName = 'Order_Qty'
    end
    object Query1OKQTY: TIntegerField
      FieldName = 'OKQTY'
    end
    object Query1OutQty: TIntegerField
      FieldName = 'OutQty'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 184
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 265
    Top = 183
  end
end
