object Outsole: TOutsole
  Left = 493
  Top = 332
  Width = 964
  Height = 481
  BorderIcons = [biSystemMenu]
  Caption = 'Detail Report Outsole'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 442
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 946
      Height = 440
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
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'YSBH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #21046#20196#32232#34399'|YSBH'
        end
        item
          EditButtons = <>
          FieldName = 'XXCC'
          Footers = <>
          Title.Caption = #35330#21934#34399#30908'| XXCC'
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'OUTSOLE'
          Footers = <>
          Title.Caption = #22823#24213#34399#30908'|OUTSOLE'
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #32317#25976#37327'| Qty'
        end
        item
          EditButtons = <>
          FieldName = 'InQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #20837#24235#24235#23384#25976#37327'| InQty'
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'LastInQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #20837#24235#27424#25976#37327'|LastInQty'
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'OutQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #20986#24235#25976#37327'|OutQty'
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'LastOutQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #20986#36008#27424#25976#37327'|LastOutQty'
          Width = 90
        end>
    end
    object Button1: TButton
      Left = 672
      Top = 6
      Width = 78
      Height = 32
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = QRReport.DS1
    SQL.Strings = (
      
        'SELECT B.ZLBH as YSBH,A.XXCC,A.GJCCs as OUTSOLE,sum(B.Qty) as Qt' +
        'y ,sum (b.InQTy) as InQty, SUM ( b.LastInQty) as LastInQty  ,SUM' +
        ' ( b.OutQty) as OutQty , sum (b.LastOutQty) as LastOutQty'
      
        'FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) A' +
        'S GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (se' +
        'lect XieXing  from DDZL where DDBH=:YSBH ) AND gjlb = '#39'101'#39') A'
      
        'INNER JOIN ( SELECT b.ZLBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,' +
        'a.QRCode,a.Qty,a.SCCX ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum' +
        '(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum' +
        '(Qty)-sum(ROut)) as LastOutQty'
      'FROM TB_DD.dbo.SMDDScanOut a'
      'INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH'
      
        'INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.' +
        'SheHao'
      'where a.YSBH=:YSBH'
      
        'GROUP BY b.ZLBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCo' +
        'de, a.Qty, a.SCCX'
      ') B ON A.GJCC = B.SCCX'
      'group by ZLBH,XXCC,GJCC,A.GJCCs'
      ' ORDER BY XXCC'
      ''
      '')
    Left = 144
    Top = 56
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YSBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YSBH'
        ParamType = ptUnknown
      end>
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1OUTSOLE: TStringField
      FieldName = 'OUTSOLE'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'Qty'
    end
    object Query1InQty: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'InQty'
    end
    object Query1LastInQty: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'LastInQty'
    end
    object Query1OutQty: TIntegerField
      FieldName = 'OutQty'
    end
    object Query1LastOutQty: TIntegerField
      FieldName = 'LastOutQty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 48
  end
end
