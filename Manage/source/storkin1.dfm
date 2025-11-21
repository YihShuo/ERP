object storkin: Tstorkin
  Left = 230
  Top = 227
  Width = 680
  Height = 337
  Caption = 'StorkIn'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 664
    Height = 301
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ddbh'
        Footers = <
          item
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|ddbh'
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footers = <
          item
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|qty'
      end
      item
        EditButtons = <>
        FieldName = 'ckbh'
        Footers = <>
        Title.Caption = #20837#24235#20489'|ckbh'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'kcbh'
        Footers = <>
        Title.Caption = #29983#29986#24288'|kcbh'
      end
      item
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        Title.Caption = #32371#24235#21934#20301'|depname'
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'lastindate'
        Footers = <>
        Title.Caption = #26368#24460#20837#24235#26085'|lastindate'
      end
      item
        EditButtons = <>
        FieldName = 'exedate'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|exedate'
      end>
  end
  object DataSource1: TDataSource
    DataSet = q1
    Left = 152
    Top = 88
  end
  object q1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select ddbh,qty,ckbh,kcbh,depname,lastindate,exedate from ywcp'
      'left join bdepartment on ywcp.depno=bdepartment.id'
      ' where lastindate is not null')
    Left = 192
    Top = 88
    object q1ddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object q1qty: TIntegerField
      FieldName = 'qty'
    end
    object q1ckbh: TStringField
      FieldName = 'ckbh'
      FixedChar = True
      Size = 4
    end
    object q1kcbh: TStringField
      FieldName = 'kcbh'
      FixedChar = True
      Size = 10
    end
    object q1depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object q1lastindate: TDateTimeField
      FieldName = 'lastindate'
    end
    object q1exedate: TDateTimeField
      FieldName = 'exedate'
    end
  end
end
