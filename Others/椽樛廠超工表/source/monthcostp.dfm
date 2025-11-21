object monthcost: Tmonthcost
  Left = 280
  Top = 216
  Width = 870
  Height = 500
  Caption = 'Salary'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Salary Month'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Dep:'
    end
    object cb1: TComboBox
      Left = 88
      Top = 8
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object Query: TButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = QueryClick
    end
    object Excel: TButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      OnClick = ExcelClick
    end
    object cb2: TComboBox
      Left = 235
      Top = 8
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object mat: TPageControl
    Left = 0
    Top = 57
    Width = 854
    Height = 405
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TOTCost'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 846
        Height = 377
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'workno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'target'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reality'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'overcount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totcost'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Personal'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 846
        Height = 377
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        TitleFont.Height = -11
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
    DatabaseName = 'dd'
    SQL.Strings = (
      'select workoverreport.workno,people.name ,'
      '          sum(sqty) as target,sum(rqty) as reality,'
      '          sum(qty) as overcount,sum(qty*cost) as totcost, '
      '          CONVERT(char(7),inputdate,111) as ym'
      'from workoverreport  '
      'left join people on workoverreport.workno=people.workno'
      ' where CONVERT(char(7),inputdate,111)= '#39#39
      '      '
      
        'group by workoverreport.workno,people.name,CONVERT(char(7),input' +
        'date,111)')
    Left = 256
    Top = 136
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
    DatabaseName = 'dd'
    Left = 592
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = datashow
    Left = 224
    Top = 136
  end
  object Query1: TQuery
    DatabaseName = 'dd'
    DataSource = DataSource1
    SQL.Strings = (
      'select CONVERT(char(10),inputdate,111) as inputday,xiexing'
      '          ,sqty as target,rqty as reality,'
      '          qty as overcount,(qty*cost) as totcost'
      'from workoverreport  '
      'left join people on workoverreport.workno=people.workno'
      ' where workoverreport.workno=:workno'
      '       and CONVERT(char(7),inputdate,111)=:ym'
      ''
      'order by inputdate')
    Left = 256
    Top = 167
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
    Top = 168
  end
  object Qtemp2: TQuery
    DatabaseName = 'dd'
    Left = 624
    Top = 8
  end
end
