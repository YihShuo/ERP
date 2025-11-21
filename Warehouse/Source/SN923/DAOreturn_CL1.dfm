object DAOreturn_CL: TDAOreturn_CL
  Left = 575
  Top = 375
  Width = 838
  Height = 347
  BorderIcons = [biSystemMenu]
  Caption = 'DAOreturn_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 822
    Height = 308
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Vay Phom'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 814
        Height = 73
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 212
          Top = 8
          Width = 59
          Height = 20
          Caption = 'LastNM:'
        end
        object lbl2: TLabel
          Left = 26
          Top = 8
          Width = 45
          Height = 20
          Caption = 'LLNO:'
        end
        object Label1: TLabel
          Left = 21
          Top = 40
          Width = 48
          Height = 20
          Caption = 'Memo:'
        end
        object Label3: TLabel
          Left = 218
          Top = 40
          Width = 51
          Height = 20
          Caption = 'DepID:'
        end
        object Label6: TLabel
          Left = 704
          Top = 43
          Width = 9
          Height = 20
          Caption = '~'
        end
        object Button1: TButton
          Left = 581
          Top = 2
          Width = 82
          Height = 28
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object LastEdit: TEdit
          Left = 275
          Top = 4
          Width = 230
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object LLEdit: TEdit
          Left = 73
          Top = 4
          Width = 123
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CK1: TCheckBox
          Left = 521
          Top = 10
          Width = 41
          Height = 17
          Caption = 'All'
          TabOrder = 3
        end
        object MemoEdit: TEdit
          Left = 73
          Top = 36
          Width = 123
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object DepIDEdit: TEdit
          Left = 275
          Top = 36
          Width = 78
          Height = 28
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 5
        end
        object chk2: TCheckBox
          Left = 520
          Top = 42
          Width = 89
          Height = 17
          Caption = 'PlanDate'
          TabOrder = 6
        end
        object dtp1: TDateTimePicker
          Left = 613
          Top = 37
          Width = 87
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dtp2: TDateTimePicker
          Left = 717
          Top = 36
          Width = 87
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 814
        Height = 200
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgrdh1DblClick
        OnGetCellParams = dbgrdh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'MatNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'LAST'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'LLQTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'RKQTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Unit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'DepName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Phom'
      ImageIndex = 1
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 822
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 212
          Top = 8
          Width = 59
          Height = 20
          Caption = 'LastNM:'
        end
        object Label5: TLabel
          Left = 15
          Top = 8
          Width = 55
          Height = 20
          Caption = 'LastNo:'
        end
        object Button2: TButton
          Left = 479
          Top = 5
          Width = 73
          Height = 28
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button2Click
        end
        object LastNMEdit: TEdit
          Left = 275
          Top = 4
          Width = 198
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object LastNoEdit: TEdit
          Left = 73
          Top = 4
          Width = 123
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'VD'
        end
        object CheckBox1: TCheckBox
          Left = 559
          Top = 10
          Width = 129
          Height = 17
          Caption = 'Not yet stop'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
      object dbgrdh2: TDBGridEh
        Left = 0
        Top = 41
        Width = 822
        Height = 240
        Align = alClient
        DataSource = DS2
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
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgrdh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Title.Caption = 'MatNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'MatNM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 301
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select LTLLS.LLNO'
      '       ,LTLLS.CLBH'
      '       ,LTLLS.LLQTY'
      '       ,LTRKSS.QTY as RKQTY'
      '       ,CLZL.YWPM'
      '       ,CLZL.DWBH'
      '       ,LTLL.PlanDate'
      '       ,LTLL.DepID'
      '       ,LTLL.MEMO'
      '       ,BDepartment.DepName'
      'from LTLLS '
      'left join LTLL on LTLL.LLNO=LTLLS.LLNO '
      'left join BDepartment on BDepartment.ID=LTLL.DepID '
      'left join CLZL on LTLLS.CLBH=CLZL.CLDH '
      
        'left join (select ZLBH,CLBH,SUM(QTY) AS qty from LTRKS group by ' +
        'ZLBH,CLBH'
      
        '           ) LTRKSS on LTLLS.LLNO=LTRKSS.ZLBH and LTLLS.CLBH=LTR' +
        'KSS.CLBH'
      'where LTLLS.CLBH=CLZL.CLDH'
      '      and  LTLLS.LLNO like '#39'%'#39' '
      '      and CLZL.YWPM like '#39'%%'#39
      ' and  LTLL.DepID like '#39'A5%'#39' '
      ' and LTLLS.LLQTY>IsNull(LTRKSS.QTY,0) '
      'order by CLDH')
    Left = 424
    Top = 160
    object strngfldQuery1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 13
    end
    object strngfldQuery1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object crncyfldQuery1LLQTY: TCurrencyField
      FieldName = 'LLQTY'
      DisplayFormat = '#,##0.0'
    end
    object crncyfldQuery1RKQTY: TCurrencyField
      FieldName = 'RKQTY'
      DisplayFormat = '#,##0.0'
    end
    object strngfldQuery1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object strngfldQuery1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLDH,CLLB,YWPM,DWBH from CLZL where CLDH like'
      #39'VD%'#39
      'and YWPM like '
      #39'%%'#39
      'and (TYJH is null or TYJH='#39'N'#39')'
      'and YN<>'#39'2'#39
      'and CLDH like '#39'V%'#39'  '
      'order by CLDH')
    Left = 464
    Top = 160
    object Query2CLDH: TStringField
      DisplayWidth = 10
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query2YWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 464
    Top = 128
  end
end
