object Failed_Cartons_Input_ID: TFailed_Cartons_Input_ID
  Left = 531
  Top = 287
  Width = 905
  Height = 675
  Caption = 'Failed_Cartons_Input_ID'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 57
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 305
      Top = 15
      Width = 21
      Height = 25
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 489
      Top = 15
      Width = 54
      Height = 25
      Caption = 'SCBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtID: TEdit
      Left = 329
      Top = 12
      Width = 152
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnlQuery: TPanel
      Left = 727
      Top = 7
      Width = 73
      Height = 43
      Caption = 'Query'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = pnlQueryClick
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 2
      Width = 289
      Height = 41
      TabOrder = 2
      object RB1: TRadioButton
        Left = 12
        Top = 16
        Width = 125
        Height = 14
        Caption = 'Hour Inspect'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 140
        Top = 17
        Width = 121
        Height = 14
        Caption = 'Daily Inspect'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Edit1: TEdit
      Left = 543
      Top = 12
      Width = 174
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object gdDepRyList: TDBGrid
    Left = 0
    Top = 57
    Width = 889
    Height = 579
    Align = alClient
    Color = clGradientInactiveCaption
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gdDepRyListDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrdQty'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InsQty'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DefQty'
        Width = 91
        Visible = True
      end>
  end
  object qry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select WOPR_MA.ID, WOPR_MA.SCBH,WOPR_MA.PrdQty,WOPR_MA.InsQty,WO' +
        'PR_MA.DefQty,WOPR_MA.Result,BDepartment.DepName'
      'From WOPR_MA'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      'where WOPR_MA.GSBH = '#39'VA12'#39' and WOPR_MA.GXLB='#39'HI'#39'  '
      '  and WOPR_MA.PrdQty<>0 '
      '  and WOPR_MA.Result='#39'F'#39
      '')
    Left = 166
    Top = 175
    object qryID: TStringField
      FieldName = 'ID'
      Origin = 'DB.WOPR_MA.ID'
      FixedChar = True
      Size = 10
    end
    object qrySCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.WOPR_MA.SCBH'
      FixedChar = True
      Size = 15
    end
    object qryPrdQty: TSmallintField
      FieldName = 'PrdQty'
      Origin = 'DB.WOPR_MA.PrdQty'
    end
    object qryInsQty: TSmallintField
      FieldName = 'InsQty'
      Origin = 'DB.WOPR_MA.InsQty'
    end
    object qryDefQty: TSmallintField
      FieldName = 'DefQty'
      Origin = 'DB.WOPR_MA.DefQty'
    end
    object qryResult: TStringField
      FieldName = 'Result'
      Origin = 'DB.WOPR_MA.Result'
      FixedChar = True
      Size = 1
    end
    object qryDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 165
    Top = 208
  end
end
