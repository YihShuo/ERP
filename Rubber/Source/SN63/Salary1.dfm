object Salary: TSalary
  Left = 353
  Top = 108
  Width = 979
  Height = 562
  Caption = 'Salary'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 16
      Caption = 'Salary Month'
    end
    object Label2: TLabel
      Left = 211
      Top = 16
      Width = 29
      Height = 16
      Caption = 'Dep:'
    end
    object cb1: TComboBox
      Left = 98
      Top = 8
      Width = 105
      Height = 24
      ItemHeight = 16
      TabOrder = 0
    end
    object Query: TButton
      Left = 400
      Top = 14
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = QueryClick
    end
    object Excel: TButton
      Left = 488
      Top = 14
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = ExcelClick
    end
    object cb2: TComboBox
      Left = 243
      Top = 8
      Width = 105
      Height = 24
      ItemHeight = 16
      TabOrder = 3
    end
    object ckbDate: TCheckBox
      Left = 67
      Top = 42
      Width = 17
      Height = 17
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 98
      Top = 37
      Width = 105
      Height = 24
      Date = 43416.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 43416.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 243
      Top = 36
      Width = 105
      Height = 24
      Date = 39219.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 39219.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 6
    end
  end
  object mat: TPageControl
    Left = 0
    Top = 65
    Width = 963
    Height = 458
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TOTCost'
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 955
        Height = 427
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
            FieldName = 'workno'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'name'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'target'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'reality'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'overcount'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'totcost'
            Footers = <>
            Width = 82
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Personal'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 955
        Height = 427
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = ANSI_CHARSET
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'inputday'
            Footers = <
              item
                ValueType = fvtCount
              end>
          end
          item
            EditButtons = <>
            FieldName = 'xiexing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'target'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'reality'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'overcount'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'totcost'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end>
      end
    end
  end
  object datashow: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select workoverreport.workno,people.name ,'
      '          sum(sqty) as target,sum(rqty) as reality,'
      '          sum(qty) as overcount,sum(qty*cost) as totcost, '
      '          CONVERT(char(7),inputdate,111) as ym'
      'from LIY_DD.dbo.workoverreport  workoverreport  '
      
        'left join LIY_DD.dbo.people people on workoverreport.workno=peop' +
        'le.workno'
      ' where CONVERT(char(7),inputdate,111)= '#39#39
      '      '
      
        'group by workoverreport.workno,people.name,CONVERT(char(7),input' +
        'date,111)')
    Left = 256
    Top = 232
    object datashowworkno: TStringField
      FieldName = 'workno'
      FixedChar = True
      Size = 10
    end
    object datashowname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 50
    end
    object datashowtarget: TIntegerField
      FieldName = 'target'
    end
    object datashowreality: TIntegerField
      FieldName = 'reality'
    end
    object datashowovercount: TIntegerField
      FieldName = 'overcount'
    end
    object datashowtotcost: TFloatField
      FieldName = 'totcost'
    end
    object datashowym: TStringField
      FieldName = 'ym'
      FixedChar = True
      Size = 7
    end
  end
  object qtemp: TQuery
    DatabaseName = 'DB'
    Left = 592
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = datashow
    Left = 224
    Top = 232
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select CONVERT(char(10),inputdate,111) as inputday,xiexing'
      '          ,sqty as target,rqty as reality,'
      '          qty as overcount,(qty*cost) as totcost'
      'from LIY_DD.dbo.workoverreport workoverreport   '
      
        'left join LIY_DD.dbo.people people on workoverreport.workno=peop' +
        'le.workno'
      ' where workoverreport.workno=:workno'
      '       and CONVERT(char(7),inputdate,111)=:ym'
      ''
      'order by inputdate')
    Left = 256
    Top = 263
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'workno'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'ym'
        ParamType = ptUnknown
        Size = 8
      end>
    object Query1inputday: TStringField
      FieldName = 'inputday'
      FixedChar = True
      Size = 10
    end
    object Query1xiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 30
    end
    object Query1target: TIntegerField
      FieldName = 'target'
    end
    object Query1reality: TIntegerField
      FieldName = 'reality'
    end
    object Query1overcount: TIntegerField
      FieldName = 'overcount'
    end
    object Query1totcost: TFloatField
      FieldName = 'totcost'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 224
    Top = 264
  end
  object Qtemp2: TQuery
    DatabaseName = 'DB'
    Left = 624
    Top = 8
  end
end
