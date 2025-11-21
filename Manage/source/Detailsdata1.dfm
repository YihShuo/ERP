object DetailsData: TDetailsData
  Left = 230
  Top = 274
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'DetailsData'
  ClientHeight = 336
  ClientWidth = 739
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 739
    Height = 336
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
        FieldName = 'LLNO'
        Footers = <
          item
            FieldName = 'LLNO'
            ValueType = fvtCount
          end>
        Title.Caption = #20986#26448#26009#21934'|LLNO'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #38936#26009#37096#38272'|DepName'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 290
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729'|USPrice'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #37329#38989'|USACC'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Title.Caption = #35036#26009'|BLSB'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|SCBH'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30332#26009#26085'|CFMDate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 221
      end>
  end
  object q1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kclls.llno,BDepartment.depname,kclls.clbh,clzl.ywpm,clzl.' +
        'dwbh,kclls.qty,'
      
        'isnull(cwdj.usprice,0) as usprice,(isnull(cwdj.usprice,0)*isnull' +
        '(kclls.qty,0)) as usacc,'
      'isnull(kclls.blsb,'#39'N'#39'),kclls.scbh,clzl.zwpm'
      ' from kclls'
      'left join kcll on kclls.llno=kcll.llno'
      'left join clzl on kclls.clbh=clzl.cldh'
      'left join BDepartment on kcll.depid=BDepartment.id'
      
        'left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate)' +
        ' and djmonth=month(cfmdate)'
      'where kclls.scbh='#39'abc'#39
      '      and year(kcll.cfmdate)=1800 and month(cfmdate)=1'
      '      and substring(KCLL.DepId,1,1)<>'#39'R'#39
      '      and kclls.scbh<>'#39'ZZZZZZZZZZ'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and KCLLS.Qty<>0')
    Left = 248
    Top = 56
    object q1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object q1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object q1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object q1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object q1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object q1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object q1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object q1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object q1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object q1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object q1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object q1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = q1
    Left = 288
    Top = 56
  end
end
