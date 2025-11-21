object Directory_LeaveRuler: TDirectory_LeaveRuler
  Left = 0
  Top = 0
  Caption = 'Directory_LeaveRuler'
  ClientHeight = 621
  ClientWidth = 1189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 105
    Width = 1189
    Height = 516
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20241#20551#25490#31243
      object Splitter1: TSplitter
        Left = 841
        Top = 0
        Width = 4
        Height = 485
        ExplicitLeft = 920
        ExplicitTop = 47
        ExplicitHeight = 329
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 841
        Height = 485
        Align = alLeft
        DataSource = DS1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FYear'
            Footers = <>
            Title.Caption = 'N'#259'm|'#24180#24230
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footer.FieldName = 'ID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'S'#7889' th'#7867'|'#24037#34399
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Caption = 'T'#234'n|'#22995#21517
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Title.Caption = 'EngName|'#33521#25991#22995#21517
            Width = 114
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DutyDate'
            Footers = <>
            Title.Caption = 'DutyDate| '#21040#32887#26085
            Width = 79
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Nation'
            Footers = <>
            Title.Caption = 'Nation|'#22283#21029
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Airport'
            Footers = <>
            Title.Caption = 'Airport|'#25152#23660#27231#22580
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Kilometer'
            Footers = <>
            Title.Caption = #20844#37324'Kilometer|'#21934#31243
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Kilometer2'
            Footers = <>
            Title.Caption = #20844#37324'Kilometer|'#20358#22238
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            Title.Caption = 'Department|'#25152#23660#24288#21312'-'#21934#20301
            Width = 109
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            Title.Caption = 'Position|'#32887#21209
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HolidayTimes'
            Footers = <>
            Title.Caption = 'S'#7889' k'#7923' ngh'#7881'|'#27425#25976
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days'
            Footers = <>
            Title.Caption = 'Days|'#27599#26799#22825#25976
            Width = 41
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TotHoliDays'
            Footers = <>
            Title.Caption = 'TotHoliDays|'#24180#24230#21487#20241#22825#25976
            Width = 41
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HisHoliDays'
            Footers = <>
            Title.Caption = 'HisHoliDays|'#24180#24230#20241#20551#22825#25976
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RemHoliDays'
            Footers = <>
            Title.Caption = 'RemHoliDays|'#21097#39192#22825#25976
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#27491#24120#36215
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#27491#24120#36804
            Width = 54
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#23526#38555#36215
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#23526#38555#36804
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#25490#20241#22825#25976
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#27491#24120#22825#25976
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#35531#20551#22825#25976
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo1'
            Footers = <>
            Title.Caption = 'l'#7847'n 1'#31532#19968#27425#20241#20551'|'#20633#35387
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#27491#24120#36215
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#27491#24120#36804
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#23526#38555#36215
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#27491#24120#36804
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo2'
            Footers = <>
            Title.Caption = 'l'#7847'n 2'#31532#20108#27425#20241#20551'|'#20633#35387
            Width = 94
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#27491#24120#36215
            Width = 56
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#27491#24120#36804
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#23526#38555#36215
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#27491#24120#36804
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo3'
            Footers = <>
            Title.Caption = 'l'#7847'n 3'#31532#19977#27425#20241#20551'|'#20633#35387
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#27491#24120#36215
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#27491#24120#36804
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#23526#38555#36215
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#27491#24120#36804
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo4'
            Footers = <>
            Title.Caption = 'l'#7847'n 4'#31532#22235#27425#20241#20551'|'#20633#35387
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#27491#24120#36215
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#27491#24120#36804
            Width = 58
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#23526#38555#36215
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#23526#38555#36804
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 81
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#24448'/'#25490#20241#22825#25976
            Width = 86
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo5'
            Footers = <>
            Title.Caption = 'l'#7847'n 5'#31532#20116#27425#20241#20551'|'#20633#35387
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#27491#24120#36215
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#27491#24120#36804
            Width = 52
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#23526#38555#36215
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#23526#38555#36804
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#24448'/'#35370#33322#29677
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo6'
            Footers = <>
            Title.Caption = 'l'#7847'n 6'#31532#20845#27425#20241#20551'|'#20633#35387
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#20241#20551#36215
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#20241#20551#36804
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#23526#38555#36215
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#23526#38555#36804
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo7'
            Footers = <>
            Title.Caption = 'l'#7847'n 7'#31532#19971#27425#20241#20551'|'#20633#35387
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_SDate8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#27491#24120#36215
            Width = 52
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plan_EDate8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#27491#24120#36804
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDate8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#23526#38555#36215
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDate8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#23526#38555#36804
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PlanNumber8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#24448'/'#36820#33322#29677
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HoliDays8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#25490#20241#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#27491#24120#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExtendDays8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#35531#20551#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo8'
            Footers = <>
            Title.Caption = 'l'#7847'n 8'#31532#20843#27425#20241#20551'|'#20633#35387
            Width = 65
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel1: TPanel
        Left = 845
        Top = 0
        Width = 336
        Height = 485
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 321
          Width = 334
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 2
          ExplicitTop = 225
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 334
          Height = 71
          Align = alTop
          TabOrder = 0
          object BB2: TBitBtn
            Left = 5
            Top = 5
            Width = 68
            Height = 49
            Hint = 'Insert one New Record'
            Caption = 'Th'#234'm'#26032#22686
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333FF33333333FF333993333333300033377F3333333777333993333333
              300033F77FFF3333377739999993333333333777777F3333333F399999933333
              33003777777333333377333993333333330033377F3333333377333993333333
              3333333773333333333F333333333333330033333333F33333773333333C3333
              330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
              333333333337733333FF3333333C333330003333333733333777333333333333
              3000333333333333377733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
            OnClick = BB2Click
          end
          object BB4: TBitBtn
            Left = 125
            Top = 5
            Width = 68
            Height = 49
            Hint = 'Delete one Record'
            Caption = 'Xo'#769'a'#21034#38500
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              300033FFFFFF3333377739999993333333333777777F3333333F399999933333
              3300377777733333337733333333333333003333333333333377333333333333
              3333333333333333333F333333333333330033333F33333333773333C3333333
              330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
              333333377F33333333FF3333C333333330003333733333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = BB4Click
          end
          object BB3: TBitBtn
            Left = 71
            Top = 5
            Width = 58
            Height = 49
            Hint = 'Modify Current'
            Caption = 'S'#7917'a'#20462#25913
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
            OnClick = BB3Click
          end
          object BB5: TBitBtn
            Left = 191
            Top = 5
            Width = 69
            Height = 49
            Hint = 'Save Current'
            Caption = 'L'#432'u'#20786#23384
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 3
            OnClick = BB5Click
          end
          object BB6: TBitBtn
            Left = 259
            Top = 5
            Width = 62
            Height = 49
            Hint = 'Cancel'
            Caption = 'Hu'#777'y'#21462#28040
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 4
            OnClick = BB6Click
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 72
          Width = 334
          Height = 249
          Align = alTop
          DataSource = DS2
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleParams.MultiTitle = True
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FYear'
              Footers = <>
              Title.Caption = 'N'#259'm|'#24180#24230
              Width = 41
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID'
              Footers = <>
              Title.Caption = 'S'#7889' th'#7867'|'#24037#34399
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO'
              Footer.FieldName = 'NO'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'NO|'#31532#24190#27425
              Width = 38
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'memo'
              Footers = <>
              Title.Caption = 'Memo|'#20633#35387#35498#26126
              Width = 74
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IsAllow'
              Footers = <>
              Title.Caption = 'Han che|'#33021#21542#25552#21069
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Plan_SDate'
              Footers = <>
              Title.Caption = 'KH Ng'#224'y b'#7855't '#273#7847'u ngh'#7881'|'#27491#24120#25490#20241#36215
              Width = 52
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Plan_EDate'
              Footers = <>
              Title.Caption = 'KH Ng'#224'y b'#7855't '#273#7847'u ngh'#7881'|'#27491#24120#25490#20241#36804
              Width = 54
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Plan_Days'
              Footer.FieldName = 'Plan_Days'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Plan_Days|'#21487#20241#22825#25976
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TrafficfeeDate'
              Footers = <>
              Title.Caption = 'TrafficfeeDate|'#35036#21161#20132#36890#36027#26085#26399
              Width = 60
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'SDate'
              Footers = <>
              Title.Caption = 'Ng'#224'y b'#7855't '#273#7847'u ngh'#7881'|'#23526#38555#20241#20551#36215
              Width = 53
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'EDate'
              Footers = <>
              Title.Caption = 'Ng'#224'y b'#7855't '#273#7847'u ngh'#7881'|'#23526#38555#20241#20551#36804
              Width = 54
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'Days'
              Footer.FieldName = 'Days'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'S'#244#769' nga'#768'y|'#25490#20241#22825#25976
              Width = 44
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'RegularDays'
              Footer.FieldName = 'RegularDays'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'S'#244#769' nga'#768'y|'#27491#24120#22825#25976
              Width = 43
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'ExtendDays'
              Footer.FieldName = 'ExtendDays'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'S'#244#769' nga'#768'y|'#35531#20551#22825#25976
              Width = 42
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'Type'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Type|'#39006#22411
              Width = 64
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'LNO'
              Footers = <>
              Title.Caption = 'S'#244#769' phi'#234#769'u|'#20241#20551#21934#34399
              Width = 82
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              ReadOnly = True
              Title.Caption = #30003#35531#20154#20633#35387'|Remark'
              Width = 105
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Remark1'
              Footers = <>
              ReadOnly = True
              Title.Caption = #30003#35531#20154#20633#35387'|Remark1'
              Width = 105
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 324
          Width = 334
          Height = 160
          Align = alClient
          DataSource = DS5
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 2
          TitleParams.MultiTitle = True
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LB'
              Footers = <>
              Title.Caption = 'Loai| '#35498#26126
              Width = 121
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RLTimes'
              Footers = <>
              Title.Caption = 'NO|'#26799#27425
              Width = 46
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Type'
              Footers = <>
              Title.Caption = 'Type|'#39006#22411
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Days'
              Footers = <>
              Title.Caption = 'Days|'#22825#25976
              Width = 46
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StartDate'
              Footers = <>
              Title.Caption = 'StartDate|'#20241#20551#36215
              Width = 83
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EndDate'
              Footers = <>
              Title.Caption = 'EndDate|'#20241#20551#36804
              Width = 86
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20303#23478#27231#22580#37324#31243
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 841
        Height = 485
        Align = alLeft
        DataSource = DS3
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        FrozenCols = 7
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu3
        ShowHint = False
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footer.FieldName = 'ID'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'S'#7889' th'#7867'|'#24037#34399
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'T'#234'n|'#22995#21517
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Nation'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nation|'#22283#21029
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Position|'#32887#21209
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BirthPlace'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Place|'#25142#31821#22320
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BirthProvince'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Province|'#22320#22336
            Width = 111
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'City'
            Footers = <>
            Title.Caption = 'City|'#20303#23478
            Width = 65
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'AirPort'
            Footers = <>
            PickList.Strings = (
              #26691#22290
              #21488#20013
              #39640#38596)
            Title.Caption = 'AirPort|'#27231#22580
            Width = 68
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'Kilometer'
            Footers = <>
            Title.Caption = 'kilometer|'#20303#23478'-'#27231#22580#20844#37324#25976
            Width = 67
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'Trafficfee'
            Footers = <>
            Title.Caption = 'Traffice Fee|'#35036#21161#20132#36890#36027
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #32887#21209#20241#20551#27425#25976
      ImageIndex = 2
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 849
        Height = 485
        Align = alLeft
        DataSource = DS4
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        FrozenCols = 7
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu4
        ShowHint = False
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ID|'#32887#21209#32232#30908
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NID'
            Footers = <>
            KeyList.Strings = (
              'TW'
              'CN'
              'PH'
              'IN')
            PickList.Strings = (
              #21488#28771
              #20013#22283
              #33778#24459#36051
              #21360#23612)
            Title.Caption = 'Nation|'#22283#31821
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Caption = 'Name|'#32887#21209
            Width = 95
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HolidayTimes'
            Footers = <>
            Title.Caption = 'HolidayTimes|'#20241#20551#27425#25976
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Days'
            Footers = <>
            Title.Caption = 'Days|'#27599#26799#22825#25976
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IntervalDays'
            Footers = <>
            Title.Caption = 'IntervalDays|'#38291#38548#22825#25976
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1189
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 192
      Top = 10
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = 'S'#7889' th'#7867#24037#34399':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 383
      Top = 12
      Width = 89
      Height = 16
      Alignment = taRightJustify
      Caption = 'H'#7885' v'#224' t'#234'n'#22995#21517':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 61
      Height = 16
      Alignment = taRightJustify
      Caption = 'N'#259'm'#24180#24230':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 73
      Width = 88
      Height = 16
      Caption = 'Qu'#7889'c t'#7883'ch'#22283#31821':'
    end
    object Label8: TLabel
      Left = 182
      Top = 41
      Width = 81
      Height = 16
      Caption = 'Ch'#7913'c v'#7909#32887#21209':'
    end
    object Label10: TLabel
      Left = 401
      Top = 41
      Width = 71
      Height = 16
      Caption = #272#417'n v'#7883#21934#20301':'
    end
    object Button2: TButton
      Left = 687
      Top = 66
      Width = 98
      Height = 25
      Caption = 'Truy v'#7845'n'#26597#35426
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object ED_ID: TEdit
      Left = 267
      Top = 7
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ED_Name: TEdit
      Left = 475
      Top = 7
      Width = 93
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button3: TButton
      Left = 359
      Top = 7
      Width = 18
      Height = 23
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 791
      Top = 66
      Width = 98
      Height = 25
      Caption = 'Tinh'#20241#20551#26799#27425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 99
      Top = 65
      Width = 582
      Height = 29
      TabOrder = 5
      object RB11: TRadioButton
        Left = 450
        Top = 6
        Width = 94
        Height = 17
        Caption = 'Toa'#768'n B'#244#803#20840#37096
        TabOrder = 0
        Visible = False
      end
      object RB12: TRadioButton
        Left = 7
        Top = 7
        Width = 100
        Height = 17
        Hint = 'TW'
        Caption = #272'a'#768'i Loan'#21488#28771
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RB13: TRadioButton
        Left = 112
        Top = 7
        Width = 332
        Height = 17
        Hint = 'CN'
        Caption = 'Trung Qu'#7889'c'#20013#22283'+Philippines'#33778#24459#36051'+Indonesia'#21360#23612
        TabOrder = 2
      end
    end
    object Edit5: TEdit
      Left = 264
      Top = 37
      Width = 113
      Height = 24
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 475
      Top = 37
      Width = 93
      Height = 24
      TabOrder = 7
    end
    object FYearCombo: TComboBox
      Left = 75
      Top = 6
      Width = 98
      Height = 24
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 8
      Text = '2023'
      Items.Strings = (
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object Button4: TButton
      Left = 687
      Top = 35
      Width = 98
      Height = 25
      Caption = #21488#31821'Excel'#36664#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 791
      Top = 35
      Width = 98
      Height = 25
      Caption = #38520#31821'Excel'#36664#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 895
      Top = 66
      Width = 106
      Height = 25
      Caption = #38520#31821#35036#21161#20132#36890#36027
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button6Click
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 121
  end
  object QSearch: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    Left = 304
    Top = 120
  end
  object TempQry: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    Left = 304
    Top = 184
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 64
    Top = 120
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = Query1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'Select IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39') as FYear,Certi' +
        'ficate.ID,Directory_Nationality.Name as Nation, Certificate.Duty' +
        'Date, Certificate.Name, Certificate.EngName, Certificate.Gender,' +
        ' Directory.Airport, Certificate.BirthPlace,'
      
        '       Directory.Kilometer,Directory.Kilometer*2 as Kilometer2,D' +
        'irectory_Factory.Name+'#39'-'#39'+Directory_Department.Name as Departmen' +
        't,'
      '       Directory_Position.Name as Position,'#39#39' as Memo, '
      
        #9'      Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Di' +
        'rectory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end' +
        ' as HolidayTimes, Directory_Position.Days as Days,'
      
        '       Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Di' +
        'rectory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end' +
        ' * Directory_Position.Days as TotHoliDays,IsNull(Directory_Leave' +
        'Ruler_All.HisDays,0) as  HisHoliDays,'
      
        #9'      (Case when Count(Directory_LeaveRuler.NO)>0 then  Count(D' +
        'irectory_LeaveRuler.NO) else Directory_Position.HolidayTimes  en' +
        'd * Directory_Position.Days)-IsNull(Directory_LeaveRuler_All.His' +
        'Days,0) as RemHoliDays '
      
        '    ,Max(CASE WHEN No=1 then Plan_SDate end) as Plan_SDate1,Max(' +
        'CASE WHEN No=1 then Plan_EDate end) as Plan_EDate1,Max(CASE WHEN' +
        ' No=1 then SDate end) as SDate1,Max(CASE WHEN No=1 then EDate en' +
        'd) as EDate1'
      
        '    ,Max(CASE WHEN No=1 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber1,Max(CASE WHEN No=1 then HoliDays end)  as Ho' +
        'liDays1'
      
        '    ,Max(CASE WHEN No=1 then Directory_LeaveRuler.Days end)  as ' +
        'Days1,Max(CASE WHEN No=1 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays1,Max(CASE WHEN No=1 then Directory_LeaveRuler.' +
        'memo end)  as Memo1'
      
        '    ,Max(CASE WHEN No=2 then Plan_SDate end) as Plan_SDate2,Max(' +
        'CASE WHEN No=2 then Plan_EDate end) as Plan_EDate2,Max(CASE WHEN' +
        ' No=2 then SDate end) as SDate2,Max(CASE WHEN No=2 then EDate en' +
        'd) as EDate2'
      
        '    ,Max(CASE WHEN No=2 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber2,Max(CASE WHEN No=2 then HoliDays end)  as Ho' +
        'liDays2'
      
        '    ,Max(CASE WHEN No=2 then Directory_LeaveRuler.Days end)  as ' +
        'Days2,Max(CASE WHEN No=2 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays2,Max(CASE WHEN No=2 then Directory_LeaveRuler.' +
        'memo end)  as Memo2'
      
        '    ,Max(CASE WHEN No=3 then Plan_SDate end) as Plan_SDate3,Max(' +
        'CASE WHEN No=3 then Plan_EDate end) as Plan_EDate3,Max(CASE WHEN' +
        ' No=3 then SDate end) as SDate3,Max(CASE WHEN No=3 then EDate en' +
        'd) as EDate3'
      
        '    ,Max(CASE WHEN No=3 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber3,Max(CASE WHEN No=3 then HoliDays end)  as Ho' +
        'liDays3'
      
        '    ,Max(CASE WHEN No=3 then Directory_LeaveRuler.Days end)  as ' +
        'Days3,Max(CASE WHEN No=3 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays3,Max(CASE WHEN No=3 then Directory_LeaveRuler.' +
        'memo end)  as Memo3'
      
        '    ,Max(CASE WHEN No=4 then Plan_SDate end) as Plan_SDate4,Max(' +
        'CASE WHEN No=4 then Plan_EDate end) as Plan_EDate4,Max(CASE WHEN' +
        ' No=4 then SDate end) as SDate4,Max(CASE WHEN No=4 then EDate en' +
        'd) as EDate4'
      
        '    ,Max(CASE WHEN No=4 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber4,Max(CASE WHEN No=4 then HoliDays end)  as Ho' +
        'liDays4'
      
        '    ,Max(CASE WHEN No=4 then Directory_LeaveRuler.Days end)  as ' +
        'Days4,Max(CASE WHEN No=4 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays4,Max(CASE WHEN No=4 then Directory_LeaveRuler.' +
        'memo end)  as Memo4'
      
        '    ,Max(CASE WHEN No=5 then Plan_SDate end) as Plan_SDate5,Max(' +
        'CASE WHEN No=5 then Plan_EDate end) as Plan_EDate5,Max(CASE WHEN' +
        ' No=5 then SDate end) as SDate5,Max(CASE WHEN No=5 then EDate en' +
        'd) as EDate5'
      
        '    ,Max(CASE WHEN No=5 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber5,Max(CASE WHEN No=5 then HoliDays end)  as Ho' +
        'liDays5'
      
        '    ,Max(CASE WHEN No=5 then Directory_LeaveRuler.Days end)  as ' +
        'Days5,Max(CASE WHEN No=5 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays5,Max(CASE WHEN No=5 then Directory_LeaveRuler.' +
        'memo end)  as Memo5'
      
        '    ,Max(CASE WHEN No=6 then Plan_SDate end) as Plan_SDate6,Max(' +
        'CASE WHEN No=6 then Plan_EDate end) as Plan_EDate6,Max(CASE WHEN' +
        ' No=6 then SDate end) as SDate6,Max(CASE WHEN No=6 then EDate en' +
        'd) as EDate6'
      
        '    ,Max(CASE WHEN No=6 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber6,Max(CASE WHEN No=6 then HoliDays end)  as Ho' +
        'liDays6'
      
        '    ,Max(CASE WHEN No=6 then Directory_LeaveRuler.Days end)  as ' +
        'Days6,Max(CASE WHEN No=6 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays6,Max(CASE WHEN No=6 then Directory_LeaveRuler.' +
        'memo end)  as Memo6'
      
        '    ,Max(CASE WHEN No=7 then Plan_SDate end) as Plan_SDate7,Max(' +
        'CASE WHEN No=7 then Plan_EDate end) as Plan_EDate7,Max(CASE WHEN' +
        ' No=7 then SDate end) as SDate7,Max(CASE WHEN No=7 then EDate en' +
        'd) as EDate7'
      
        '    ,Max(CASE WHEN No=7 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber7,Max(CASE WHEN No=7 then HoliDays end)  as Ho' +
        'liDays7'
      
        '    ,Max(CASE WHEN No=7 then Directory_LeaveRuler.Days end)  as ' +
        'Days7,Max(CASE WHEN No=7 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays7,Max(CASE WHEN No=7 then Directory_LeaveRuler.' +
        'memo end)  as Memo7'
      
        '    ,Max(CASE WHEN No=8 then Plan_SDate end) as Plan_SDate8,Max(' +
        'CASE WHEN No=8 then Plan_EDate end) as Plan_EDate8,Max(CASE WHEN' +
        ' No=8 then SDate end) as SDate8,Max(CASE WHEN No=8 then EDate en' +
        'd) as EDate8'
      
        '    ,Max(CASE WHEN No=8 then GoPlaneNumber+'#39'/'#39'+BackPlaneNumber e' +
        'nd)  as PlanNumber8,Max(CASE WHEN No=8 then HoliDays end)  as Ho' +
        'liDays8'
      
        '    ,Max(CASE WHEN No=8 then Directory_LeaveRuler.Days end)  as ' +
        'Days8,Max(CASE WHEN No=8 then Directory_LeaveRuler.ExtendDays en' +
        'd)  as ExtendDays8,Max(CASE WHEN No=8 then Directory_LeaveRuler.' +
        'memo end)  as Memo8'
      #9'   ,Directory.Sequence'
      'from Certificate '
      ' left join Directory on Directory.ID=Certificate.ID '
      ' left join ('
      
        '  Select IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39') as FYear,Dir' +
        'ectory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRule' +
        'r.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Min(Directory_Leave' +
        'Ruler.SDate) as SDate,'
      
        '         Max(Directory_LeaveRuler.EDate) as EDate,Max(WF_Regular' +
        'Leave.GoPlaneNumber) as GoPlaneNumber,Max(WF_RegularLeave.BackPl' +
        'aneNumber) as BackPlaneNumber,'
      
        '         Sum(WF_RegularLeave.Days)-Sum(IsNull(WF_RegularLeave.Ex' +
        'tendDays,0))  as HoliDays, Directory_LeaveRuler.Plan_Days as Day' +
        's,'
      
        '         Min(WF_RegularLeave.ExtendStartDate) as ExtendStartDate' +
        ',Max(WF_RegularLeave.ExtendEndDate) as ExtendEndDate,Sum(WF_Regu' +
        'larLeave.ExtendDays) as ExtendDays, '
      
        '         Max(Directory_LeaveRuler.memo) as Memo,Max(Directory_Le' +
        'aveRuler.LNO) as LNO'
      '  from  Directory_LeaveRuler '
      
        '  Left join [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLea' +
        've on WF_RegularLeave.FYear=Directory_LeaveRuler.FYear and WF_Re' +
        'gularLeave.ID=Directory_LeaveRuler.ID and WF_RegularLeave.RLTime' +
        's=Directory_LeaveRuler.NO and WF_RegularLeave.flowflag='#39'Z'#39
      
        '  Group by  IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39'),Directory' +
        '_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan' +
        '_SDate,Directory_LeaveRuler.Plan_EDate,Directory_LeaveRuler.Plan' +
        '_Days '
      
        '  ) Directory_LeaveRuler on Directory_LeaveRuler.ID = Directory.' +
        'ID  and Directory_LeaveRuler.FYear='#39'2023'#39' '
      ' Left join ('
      
        '   Select IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39') as FYear,ID' +
        ', Sum( DATEDIFF(day,SDate,EDate)+1)-Sum(IsNull(ExtendDays,0)) as' +
        ' HisDays'
      '   from Directory_LeaveRuler '
      '   where SDate is not null and EDate is not null'
      '   Group by IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39'),ID'
      
        ' ) Directory_LeaveRuler_All on Directory_LeaveRuler_All.ID=Certi' +
        'ficate.ID and Directory_LeaveRuler_All.FYear='#39'2023'#39' '
      
        ' Left join Directory_Factory on Directory_Factory.FID=Directory.' +
        'FID'
      
        ' Left join Directory_Department on Directory_Department.DID=Dire' +
        'ctory.DID'
      
        ' left join Directory_Position on Certificate.NID = Directory_Pos' +
        'ition.NID and Directory.PID = Directory_Position.PID'
      
        ' left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      'Where Certificate.NID<>'#39'VN'#39' and IsNull(Certificate.Resigned,0)=0'
      ' and Certificate.NID='#39'TW'#39' '
      
        'Group by IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39'),Certificate.' +
        'ID,Directory_Nationality.Name ,Certificate.DutyDate, Certificate' +
        '.Name, Certificate.EngName, Certificate.Gender, Directory.Airpor' +
        't, '
      
        '     Certificate.BirthPlace, Directory.Kilometer,Directory_Facto' +
        'ry.Name, Directory_Department.Name '
      '         ,Directory_Position.Name'
      
        #9'     ,Directory_Position.HolidayTimes,Directory_Position.Days,D' +
        'irectory_LeaveRuler_All.HisDays'
      '         ,Directory.Sequence'
      
        'order by IsNull(Directory_LeaveRuler.FYear, '#39'2023'#39'),Directory.Se' +
        'quence')
    Left = 16
    Top = 184
    object Query1FYear: TStringField
      FieldName = 'FYear'
    end
    object Query1DutyDate: TDateTimeField
      FieldName = 'DutyDate'
    end
    object Query1ID: TStringField
      FieldName = 'ID'
    end
    object Query1Name: TStringField
      FieldName = 'Name'
    end
    object Query1EngName: TWideStringField
      FieldName = 'EngName'
      Size = 30
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      Size = 3
    end
    object Query1Nation: TWideStringField
      FieldName = 'Nation'
      Size = 15
    end
    object Query1Airtport: TStringField
      FieldName = 'Airport'
      Size = 10
    end
    object Query1BirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 30
    end
    object Query1Kilometer: TFloatField
      FieldName = 'Kilometer'
    end
    object Query1Kilometer2: TFloatField
      FieldName = 'Kilometer2'
      ReadOnly = True
    end
    object Query1Position: TWideStringField
      FieldName = 'Position'
    end
    object Query1Department: TStringField
      FieldName = 'Department'
      ReadOnly = True
      Size = 61
    end
    object Query1HolidayTimes: TSmallintField
      FieldName = 'HolidayTimes'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      ReadOnly = True
      Size = 1
    end
    object Query1Days: TSmallintField
      FieldName = 'Days'
    end
    object Query1TotHoliDays: TIntegerField
      FieldName = 'TotHoliDays'
      ReadOnly = True
    end
    object Query1HisHoliDays: TIntegerField
      FieldName = 'HisHoliDays'
      ReadOnly = True
    end
    object Query1RemHoliDays: TIntegerField
      FieldName = 'RemHoliDays'
      ReadOnly = True
    end
    object Query1Plan_SDate1: TDateTimeField
      FieldName = 'Plan_SDate1'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate1: TDateTimeField
      FieldName = 'Plan_EDate1'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate1: TDateTimeField
      FieldName = 'SDate1'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate1: TDateTimeField
      FieldName = 'EDate1'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber1: TStringField
      FieldName = 'PlanNumber1'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays1: TIntegerField
      FieldName = 'HoliDays1'
      ReadOnly = True
    end
    object Query1Days1: TIntegerField
      FieldName = 'Days1'
      ReadOnly = True
    end
    object Query1ExtendDays1: TIntegerField
      FieldName = 'ExtendDays1'
      ReadOnly = True
    end
    object Query1Memo1: TStringField
      FieldName = 'Memo1'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate2: TDateTimeField
      FieldName = 'Plan_SDate2'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate2: TDateTimeField
      FieldName = 'Plan_EDate2'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate2: TDateTimeField
      FieldName = 'SDate2'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate2: TDateTimeField
      FieldName = 'EDate2'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber2: TStringField
      FieldName = 'PlanNumber2'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays2: TIntegerField
      FieldName = 'HoliDays2'
      ReadOnly = True
    end
    object Query1Days2: TIntegerField
      FieldName = 'Days2'
      ReadOnly = True
    end
    object Query1ExtendDays2: TIntegerField
      FieldName = 'ExtendDays2'
      ReadOnly = True
    end
    object Query1Memo2: TStringField
      FieldName = 'Memo2'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate3: TDateTimeField
      FieldName = 'Plan_SDate3'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate3: TDateTimeField
      FieldName = 'Plan_EDate3'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate3: TDateTimeField
      FieldName = 'SDate3'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate3: TDateTimeField
      FieldName = 'EDate3'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber3: TStringField
      FieldName = 'PlanNumber3'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays3: TIntegerField
      FieldName = 'HoliDays3'
      ReadOnly = True
    end
    object Query1Days3: TIntegerField
      FieldName = 'Days3'
      ReadOnly = True
    end
    object Query1ExtendDays3: TIntegerField
      FieldName = 'ExtendDays3'
      ReadOnly = True
    end
    object Query1Memo3: TStringField
      FieldName = 'Memo3'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate4: TDateTimeField
      FieldName = 'Plan_SDate4'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate4: TDateTimeField
      FieldName = 'Plan_EDate4'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate4: TDateTimeField
      FieldName = 'SDate4'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate4: TDateTimeField
      FieldName = 'EDate4'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber4: TStringField
      FieldName = 'PlanNumber4'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays4: TIntegerField
      FieldName = 'HoliDays4'
      ReadOnly = True
    end
    object Query1Days4: TIntegerField
      FieldName = 'Days4'
      ReadOnly = True
    end
    object Query1ExtendDays4: TIntegerField
      FieldName = 'ExtendDays4'
      ReadOnly = True
    end
    object Query1Memo4: TStringField
      FieldName = 'Memo4'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate5: TDateTimeField
      FieldName = 'Plan_SDate5'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate5: TDateTimeField
      FieldName = 'Plan_EDate5'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate5: TDateTimeField
      FieldName = 'SDate5'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate5: TDateTimeField
      FieldName = 'EDate5'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber5: TStringField
      FieldName = 'PlanNumber5'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays5: TIntegerField
      FieldName = 'HoliDays5'
      ReadOnly = True
    end
    object Query1Days5: TIntegerField
      FieldName = 'Days5'
      ReadOnly = True
    end
    object Query1ExtendDays5: TIntegerField
      FieldName = 'ExtendDays5'
      ReadOnly = True
    end
    object Query1Memo5: TStringField
      FieldName = 'Memo5'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate6: TDateTimeField
      FieldName = 'Plan_SDate6'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate6: TDateTimeField
      FieldName = 'Plan_EDate6'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate6: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'SDate6'
      DisplayFormat = 'MM/DD'
      Calculated = True
    end
    object Query1EDate6: TDateTimeField
      FieldName = 'EDate6'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber6: TStringField
      FieldName = 'PlanNumber6'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays6: TIntegerField
      FieldName = 'HoliDays6'
      ReadOnly = True
    end
    object Query1Days6: TIntegerField
      FieldName = 'Days6'
      ReadOnly = True
    end
    object Query1ExtendDays6: TIntegerField
      FieldName = 'ExtendDays6'
      ReadOnly = True
    end
    object Query1Memo6: TStringField
      FieldName = 'Memo6'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate7: TDateTimeField
      FieldName = 'Plan_SDate7'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate7: TDateTimeField
      FieldName = 'Plan_EDate7'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate7: TDateTimeField
      FieldName = 'SDate7'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate7: TDateTimeField
      FieldName = 'EDate7'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber7: TStringField
      FieldName = 'PlanNumber7'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays7: TIntegerField
      FieldName = 'HoliDays7'
      ReadOnly = True
    end
    object Query1Days7: TIntegerField
      FieldName = 'Days7'
      ReadOnly = True
    end
    object Query1ExtendDays7: TIntegerField
      FieldName = 'ExtendDays7'
      ReadOnly = True
    end
    object Query1Memo7: TStringField
      FieldName = 'Memo7'
      ReadOnly = True
      Size = 50
    end
    object Query1Plan_SDate8: TDateTimeField
      FieldName = 'Plan_SDate8'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1Plan_EDate8: TDateTimeField
      FieldName = 'Plan_EDate8'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1SDate8: TDateTimeField
      FieldName = 'SDate8'
      DisplayFormat = 'MM/DD'
    end
    object Query1EDate8: TDateTimeField
      FieldName = 'EDate8'
      ReadOnly = True
      DisplayFormat = 'MM/DD'
    end
    object Query1PlanNumber8: TStringField
      FieldName = 'PlanNumber8'
      ReadOnly = True
      Size = 31
    end
    object Query1HoliDays8: TIntegerField
      FieldName = 'HoliDays8'
      ReadOnly = True
    end
    object Query1Days8: TIntegerField
      FieldName = 'Days8'
      ReadOnly = True
    end
    object Query1ExtendDays8: TIntegerField
      FieldName = 'ExtendDays8'
      ReadOnly = True
    end
    object Query1Memo8: TStringField
      FieldName = 'Memo8'
      ReadOnly = True
      Size = 50
    end
    object Query1Sequence: TIntegerField
      FieldName = 'Sequence'
    end
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    OnNewRecord = Query2NewRecord
    DataSource = DS1
    Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'FYear'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select  Directory_LeaveRuler.*,WF_RegularLeave.Remark,WF_Regular' +
        'Leave.Remark1,Directory_LeaveRuler.Days-IsNull(Directory_LeaveRu' +
        'ler.ExtendDays,0) as RegularDays,WF_RegularLeave.Type'
      'from Directory_LeaveRuler  '
      
        'left join [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave' +
        ' on WF_RegularLeave.LNO=Directory_LeaveRuler.LNO'
      
        'where Directory_LeaveRuler.ID=:ID and Directory_LeaveRuler.FYear' +
        ' =:FYear')
    Left = 64
    Top = 184
    object Query2FYear: TStringField
      FieldName = 'FYear'
    end
    object Query2ID: TStringField
      FieldName = 'ID'
    end
    object Query2NO: TSmallintField
      FieldName = 'NO'
    end
    object Query2memo: TStringField
      FieldName = 'memo'
      Size = 50
    end
    object Query2IsAllow: TBooleanField
      FieldName = 'IsAllow'
    end
    object Query2Plan_SDate: TDateTimeField
      FieldName = 'Plan_SDate'
      DisplayFormat = 'MM/DD'
    end
    object Query2Plan_EDate: TDateTimeField
      FieldName = 'Plan_EDate'
      DisplayFormat = 'MM/DD'
    end
    object Query2SDate: TDateTimeField
      FieldName = 'SDate'
      OnChange = Query2SDateChange
      DisplayFormat = 'MM/DD'
    end
    object Query2EDate: TDateTimeField
      FieldName = 'EDate'
      DisplayFormat = 'MM/DD'
    end
    object Query2Plan_Days: TIntegerField
      FieldName = 'Plan_Days'
    end
    object Query2RegularDays: TIntegerField
      FieldName = 'RegularDays'
      ReadOnly = True
    end
    object Query2ExtendDays: TIntegerField
      FieldName = 'ExtendDays'
    end
    object Query2Days: TIntegerField
      FieldName = 'Days'
    end
    object Query2LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query2Remark: TWideStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query2TrafficfeeDate: TDateTimeField
      FieldName = 'TrafficfeeDate'
      DisplayFormat = 'MM/DD'
    end
    object Query2Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
    end
    object Query2Remark1: TWideStringField
      FieldName = 'Remark1'
      Size = 100
    end
  end
  object Query3: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query3AfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'Select Directory.ID,Certificate.Name,Directory_Nationality.Name ' +
        'as Nation,Directory_Position.Name as Position,Certificate.BirthP' +
        'lace,Certificate.BirthProvince,Directory.City,Directory.AirPort,' +
        'Directory.Kilometer,Directory.Trafficfee'
      'from Certificate '
      ' left join Directory on Directory.ID=Certificate.ID'
      
        ' left join Directory_Position on Certificate.NID = Directory_Pos' +
        'ition.NID and Directory.PID = Directory_Position.PID'
      
        ' left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      'Where Certificate.NID<>'#39'VN'#39' and IsNull(Certificate.Resigned,0)=0'
      'and Directory.ID = '#39'21191'#39' '
      ' and Certificate.NID='#39'TW'#39' '
      'order by Directory.Sequence')
    Left = 112
    Top = 184
    object Query3ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query3Name: TWideStringField
      FieldName = 'Name'
      Size = 5
    end
    object Query3Nation: TWideStringField
      FieldName = 'Nation'
      Size = 15
    end
    object Query3Position: TWideStringField
      FieldName = 'Position'
    end
    object Query3BirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 30
    end
    object Query3BirthProvince: TWideStringField
      FieldName = 'BirthProvince'
      Size = 30
    end
    object Query3City: TStringField
      FieldName = 'City'
      Size = 10
    end
    object Query3AirPort: TStringField
      FieldName = 'AirPort'
      Size = 10
    end
    object Query3Kilometer: TFloatField
      FieldName = 'Kilometer'
    end
    object Query3Trafficfee: TFloatField
      FieldName = 'Trafficfee'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 112
    Top = 120
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 112
    Top = 304
    object Modify1: TMenuItem
      Caption = 'Modify'#20462#25913
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'#20786#23384
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'#21462#28040
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object U_Query3: TMyADOUpdateSQL
    DataSet = Query3
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'City'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Airport'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Kilometer'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Trafficfee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE Directory'
      'SET'
      '  City =:City,'
      '  Airport =:Airport,'
      '  Kilometer =:Kilometer,'
      '  Trafficfee =:Trafficfee'
      'WHERE'
      '  ID = :OLD_ID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <>
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <>
    SQLModify = 
      'UPDATE Directory'#13#10'SET'#13#10'  City =:City,'#13#10'  Airport =:Airport,'#13#10'  K' +
      'ilometer =:Kilometer,'#13#10'  Trafficfee =:Trafficfee'#13#10'WHERE'#13#10'  ID = ' +
      ':OLD_ID'
    Left = 112
    Top = 240
  end
  object Query4: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query4AfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'Select Directory_Position.*,Directory_Nationality.Name as Nation' +
        ' '
      'from Directory_Position'
      
        'left join Directory_Nationality on Directory_Nationality.NID=Dir' +
        'ectory_Position.NID'
      'where Directory_Position.NID<>'#39'VN'#39)
    Left = 169
    Top = 184
    object Query4PID: TStringField
      FieldName = 'PID'
      Size = 3
    end
    object Query4NID: TStringField
      FieldName = 'NID'
      Size = 3
    end
    object Query4Name: TWideStringField
      FieldName = 'Name'
    end
    object Query4HolidayTimes: TSmallintField
      FieldName = 'HolidayTimes'
    end
    object Query4IntervalDays: TSmallintField
      FieldName = 'IntervalDays'
    end
    object Query4Days: TSmallintField
      FieldName = 'Days'
    end
    object Query4UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query4UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query4YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query4Nation: TWideStringField
      FieldName = 'Nation'
      Size = 15
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 169
    Top = 120
  end
  object PopupMenu4: TPopupMenu
    AutoHotkeys = maManual
    Left = 168
    Top = 304
    object Insert2: TMenuItem
      Caption = 'Insert'#26032#22686
      Enabled = False
      OnClick = Insert2Click
    end
    object Modify2: TMenuItem
      Caption = 'Modify'#20462#25913
      Enabled = False
      OnClick = Modify2Click
    end
    object Delete2: TMenuItem
      Caption = 'Delete'#21034#38500
      Enabled = False
      OnClick = Delete2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Save2: TMenuItem
      Caption = 'Save'#20786#23384
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'#21462#28040
      Enabled = False
      OnClick = Cancel2Click
    end
  end
  object U_Query4: TMyADOUpdateSQL
    DataSet = Query4
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'NID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'HolidayTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'IntervalDays'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_PID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE Directory_Position '
      'SET'
      '  NID=:NID,'
      '  Name=:Name,'
      '  HolidayTimes =:HolidayTimes,'
      '  Days=:Days,'
      '  IntervalDays=:IntervalDays,'
      '  UserID=:UserID,'
      '  UserDate=GetDate()'
      'WHERE'
      '  PID = :OLD_PID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_PID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'Delete from Directory_Position '
      'WHERE'
      '  PID = :OLD_PID')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'PID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'HolidayTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'IntervalDays'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      ' Insert into Directory_Position'
      
        '  (PID, NID , Name, HolidayTimes, Days, IntervalDays, UserID, Us' +
        'erDate, YN) '
      ' Values '
      
        '  (:PID, :NID , :Name, :HolidayTimes, :Days, :IntervalDays, :Use' +
        'rID, :UserDate, :YN) ')
    SQLDelete = 'Delete from Directory_Position '#13#10'WHERE'#13#10'  PID = :OLD_PID'
    SQLInsert = 
      ' Insert into Directory_Position'#13#10'  (PID, NID , Name, HolidayTime' +
      's, Days, IntervalDays, UserID, UserDate, YN) '#13#10' Values '#13#10'  (:PID' +
      ', :NID , :Name, :HolidayTimes, :Days, :IntervalDays, :UserID, :U' +
      'serDate, :YN) '
    SQLModify = 
      'UPDATE Directory_Position '#13#10'SET'#13#10'  NID=:NID,'#13#10'  Name=:Name,'#13#10'  H' +
      'olidayTimes =:HolidayTimes,'#13#10'  Days=:Days,'#13#10'  IntervalDays=:Inte' +
      'rvalDays,'#13#10'  UserID=:UserID,'#13#10'  UserDate=GetDate()'#13#10'WHERE'#13#10'  PID' +
      ' = :OLD_PID'
    Left = 168
    Top = 240
  end
  object U_Query2: TMyADOUpdateSQL
    DataSet = Query2
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'IsAllow'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Plan_SDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Plan_EDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Plan_Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ExtendDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'EDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'LNO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'memo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'TrafficfeeDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_FYear'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_NO'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE Directory_LeaveRuler'
      'SET'
      '  IsAllow= :IsAllow,'
      '  Plan_SDate =:Plan_SDate,'
      '  Plan_EDate =:Plan_EDate ,'
      '  Plan_Days=:Plan_Days,'
      '  Days =:Days,'
      '  ExtendDays =:ExtendDays,'
      '  SDate =:SDate,'
      '  EDate =:EDate ,'
      '  LNO =:LNO,'
      '  memo =:memo,'
      '  TrafficfeeDate=:TrafficfeeDate,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'WHERE '
      'FYear =:OLD_FYear and'
      'ID = :OLD_ID  and'
      'NO =:OLD_NO')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_FYear'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_NO'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM Directory_LeaveRuler'
      'WHERE '
      'FYear =:OLD_FYear and'
      'ID = :OLD_ID  and'
      'NO =:OLD_NO')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'FYear'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'NO'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'IsAllow'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Plan_SDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Plan_EDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Plan_Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ExtendDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'EDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'LNO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'Memo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'TrafficfeeDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO Directory_LeaveRuler '
      
        '   (FYear, ID, NO,  IsAllow,  Plan_SDate,  Plan_EDate, Plan_Days' +
        ',  Days, ExtendDays,  SDate,  EDate, LNO,  Memo, TrafficfeeDate,' +
        '  UserID, UserDate, YN) '
      'VALUES '
      
        '   (:FYear, :ID, :NO,  :IsAllow,  :Plan_SDate,  :Plan_EDate,  :P' +
        'lan_Days,  :Days, :ExtendDays,  :SDate,  :EDate, :LNO,  :Memo, :' +
        'TrafficfeeDate, :UserID, :UserDate, :YN) ')
    SQLDelete = 
      'DELETE FROM Directory_LeaveRuler'#13#10'WHERE '#13#10'FYear =:OLD_FYear and'#13 +
      #10'ID = :OLD_ID  and'#13#10'NO =:OLD_NO'
    SQLInsert = 
      'INSERT INTO Directory_LeaveRuler '#13#10'   (FYear, ID, NO,  IsAllow, ' +
      ' Plan_SDate,  Plan_EDate, Plan_Days,  Days, ExtendDays,  SDate, ' +
      ' EDate, LNO,  Memo, TrafficfeeDate,  UserID, UserDate, YN) '#13#10'VAL' +
      'UES '#13#10'   (:FYear, :ID, :NO,  :IsAllow,  :Plan_SDate,  :Plan_EDat' +
      'e,  :Plan_Days,  :Days, :ExtendDays,  :SDate,  :EDate, :LNO,  :M' +
      'emo, :TrafficfeeDate, :UserID, :UserDate, :YN) '
    SQLModify = 
      'UPDATE Directory_LeaveRuler'#13#10'SET'#13#10'  IsAllow= :IsAllow,'#13#10'  Plan_S' +
      'Date =:Plan_SDate,'#13#10'  Plan_EDate =:Plan_EDate ,'#13#10'  Plan_Days=:Pl' +
      'an_Days,'#13#10'  Days =:Days,'#13#10'  ExtendDays =:ExtendDays,'#13#10'  SDate =:' +
      'SDate,'#13#10'  EDate =:EDate ,'#13#10'  LNO =:LNO,'#13#10'  memo =:memo,'#13#10'  Traff' +
      'icfeeDate=:TrafficfeeDate,'#13#10'  UserID = :UserID,'#13#10'  UserDate = GE' +
      'TDATE()'#13#10'WHERE '#13#10'FYear =:OLD_FYear and'#13#10'ID = :OLD_ID  and'#13#10'NO =:' +
      'OLD_NO'
    Left = 64
    Top = 240
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 249
    Top = 120
  end
  object Query5: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    OnNewRecord = Query2NewRecord
    DataSource = DS2
    Parameters = <
      item
        Name = 'LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      
        'Select  WF_RegularLeaves.LNO,Case when LB='#39'1'#39' then '#39#22312#22320#20241#20551#20998#26085#26399#39' els' +
        'e '#39#21512#20341#26799#27425#20241#20551#39' end as LB,WF_RegularLeaves.RLTimes,WF_RegularLeaves.T' +
        'ype,WF_RegularLeaves.Days,WF_RegularLeaves.StartDate,WF_RegularL' +
        'eaves.EndDate'
      'from [EEP].[LingYi].[dbo].[WF_RegularLeaves] WF_RegularLeaves'
      'where WF_RegularLeaves.LNO=:LNO')
    Left = 248
    Top = 184
    object Query5LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query5LB: TStringField
      FieldName = 'LB'
      ReadOnly = True
      Size = 14
    end
    object Query5RLTimes: TIntegerField
      FieldName = 'RLTimes'
    end
    object Query5Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query5Days: TIntegerField
      FieldName = 'Days'
    end
    object Query5StartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object Query5EndDate: TDateTimeField
      FieldName = 'EndDate'
    end
  end
end
