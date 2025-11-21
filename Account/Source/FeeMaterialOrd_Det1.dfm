object FeeMaterialOrd_Det: TFeeMaterialOrd_Det
  Left = 377
  Top = 227
  Width = 624
  Height = 364
  BorderIcons = [biSystemMenu]
  Caption = 'FeeMaterialOrd_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 616
    Height = 330
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 319
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 26
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 130
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = FeeMaterialOrd.DS1
    SQL.Strings = (
      
        'select KCLL.LLNO,BDepartment.DepName,KCLL.CFMDate,KCLLS.CLBH,CLZ' +
        'L.YWPM,'
      
        '       KCLLS.Qty,KCLLS.VNPrice,KCLLS.VNACC,KCLLS.SCBH,KCLLS.DFL,' +
        'KCLLS.BLSB,KCLLS.YYBH,SCBLYY.YWSM'
      '      from KCLLS '
      '      left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '      left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      '      left join BDepartment on BDepartment.ID=KCLL.DepID '
      '      left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between '
      '            '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '            and KCLL.CFMID<>'#39'NO'#39
      '            and KCLLS.SCBH='#39'VN-313B'#39
      'order by KCLLS.CLBH,KCLL.LLNO ')
    Left = 96
    Top = 32
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 32
  end
end
