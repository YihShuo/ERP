object RTOVWeeklyScheduler: TRTOVWeeklyScheduler
  Left = 375
  Top = 240
  Width = 529
  Height = 367
  Caption = 'RTOVWeeklyScheduler'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Tag = 1
    Left = 0
    Top = 0
    Width = 513
    Height = 329
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            ValueType = fvtCount
          end>
        Title.Caption = 'DDBH|'#35330#21934#34399
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = 'KHPO|'#23458#25142#32232#34399
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = 'ShipDate|'#20986#36008#26085
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'KCLLDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'KCLLDT|'#26448#26009#26085
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CutSD'
        Footers = <>
        Title.Caption = 'CutSD|'#35009#26039#19978#32218'( '#38283')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CutED'
        Footers = <>
        Title.Caption = 'CutED|'#35009#26039#19978#32218'('#32080')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SteSD'
        Footers = <>
        Title.Caption = 'SteSD|'#37341#36554#19978#32218'('#38283')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SteED'
        Footers = <>
        Title.Caption = 'SteED|'#37341#36554#19978#32218'('#32080')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'AseSD'
        Footers = <>
        Title.Caption = 'AseSD|'#25104#22411#19978#32218'('#38283')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'AseED'
        Footers = <>
        Title.Caption = 'AseED|'#25104#22411#19978#32218'('#32080')'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'Date|'#26356#26032#26085#26399
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end>
  end
  object DS1: TDataSource
    DataSet = query1
    Left = 216
    Top = 72
  end
  object query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from RTSSMDD'
      'where DDBH=:DDBH')
    Left = 180
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object query1FACTORY: TStringField
      FieldName = 'FACTORY'
      Origin = 'DB.RTSSMDD.FACTORY'
      FixedChar = True
      Size = 3
    end
    object query1KHPO: TStringField
      FieldName = 'KHPO'
      Origin = 'DB.RTSSMDD.KHPO'
      FixedChar = True
      Size = 11
    end
    object query1KCLLDT: TStringField
      FieldName = 'KCLLDT'
      Origin = 'DB.RTSSMDD.KCLLDT'
      FixedChar = True
      Size = 10
    end
    object query1CutSD: TStringField
      FieldName = 'CutSD'
      Origin = 'DB.RTSSMDD.CutSD'
      FixedChar = True
      Size = 10
    end
    object query1CutED: TStringField
      FieldName = 'CutED'
      Origin = 'DB.RTSSMDD.CutED'
      FixedChar = True
      Size = 10
    end
    object query1SteSD: TStringField
      FieldName = 'SteSD'
      Origin = 'DB.RTSSMDD.SteSD'
      FixedChar = True
      Size = 10
    end
    object query1SteED: TStringField
      FieldName = 'SteED'
      Origin = 'DB.RTSSMDD.SteED'
      FixedChar = True
      Size = 10
    end
    object query1AseSD: TStringField
      FieldName = 'AseSD'
      Origin = 'DB.RTSSMDD.AseSD'
      FixedChar = True
      Size = 10
    end
    object query1AseED: TStringField
      FieldName = 'AseED'
      Origin = 'DB.RTSSMDD.AseED'
      FixedChar = True
      Size = 10
    end
    object query1Mode: TStringField
      FieldName = 'Mode'
      Origin = 'DB.RTSSMDD.Mode'
      FixedChar = True
      Size = 10
    end
    object query1UserDate: TStringField
      FieldName = 'UserDate'
      Origin = 'DB.RTSSMDD.UserDate'
      FixedChar = True
      Size = 10
    end
    object query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Origin = 'DB.RTSSMDD.ShipDate'
    end
    object query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.RTSSMDD.YN'
      FixedChar = True
      Size = 1
    end
    object query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.RTSSMDD.DDBH'
      FixedChar = True
      Size = 15
    end
  end
end
