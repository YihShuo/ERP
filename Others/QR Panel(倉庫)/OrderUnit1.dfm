object OrderUnit: TOrderUnit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Order'
  ClientHeight = 610
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1264
    Height = 610
    Align = alClient
    Color = clBtnFace
    Ctl3D = True
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -32
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'KHPO'
        Title.Caption = 'PO#'
        Title.Color = clWhite
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGNO'
        Title.Color = clAqua
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Title.Caption = 'Order No.'
        Title.Color = clWhite
        Width = 167
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ARTICLE'
        Title.Caption = 'Article'
        Title.Color = clWhite
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pairs'
        Title.Color = clWhite
        Width = 88
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ShipDate'
        Title.Caption = 'GAC.'
        Title.Color = clWhite
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Assemble'
        Title.Color = clWhite
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ADate'
        Title.Caption = 'Plan Date.'
        Title.Color = clWhite
        Width = 146
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DepName'
        Title.Caption = 'Lean.'
        Title.Color = clWhite
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Xuong'
        Title.Caption = 'Factory'
        Title.Color = clWhite
        Width = 113
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = 'Usage'
        Title.Color = clWhite
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCNO'
        Title.Color = clWhite
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DepMemo'
        Title.Color = clWhite
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Title.Caption = 'Country'
        Title.Color = clWhite
        Width = 150
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Connection = mainform.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select B.SCNO,B.CGNO,DDZL.KHPO,B.ZLBH,B.Qty,DDZL.ARTICLE,DDZL.Pa' +
        'irs,DDZL.ShipDate,SCZLDate.Assemble,SCZLDate.ADate,BDepartment.D' +
        'epName,BDepartment.DepMemo,BDepartment.Xuong '
      'from KCRKScan_RFSS A'
      
        'left join KCRKScan_RFSSS B on A.SCNO=B.SCNO and A.CLBH=B.CLBH an' +
        'd A.Pack=B.Pack'
      'left join DDZL on DDZL.DDBH=B.ZLBH'
      
        'left join XXZL on XXZL.XieXIng=DDZL.XieXIng and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH'
      'Left join BDepartment on BDepartment.ID=SCZLDate.Assemble'
      'where A.barcode='#39'2023060180C0300023091'#39)
    Left = 112
    Top = 214
    object ADOQuery1KHPO: TStringField
      FieldName = 'KHPO'
      Size = 30
    end
    object ADOQuery1SCNO: TStringField
      FieldName = 'SCNO'
      Size = 11
    end
    object ADOQuery1CGNO: TStringField
      FieldName = 'CGNO'
      Size = 11
    end
    object ADOQuery1ZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object ADOQuery1Qty: TFloatField
      FieldName = 'Qty'
    end
    object ADOQuery1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object ADOQuery1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object ADOQuery1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object ADOQuery1Assemble: TStringField
      FieldName = 'Assemble'
      Size = 10
    end
    object ADOQuery1ADate: TDateTimeField
      FieldName = 'ADate'
    end
    object ADOQuery1DepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object ADOQuery1DepMemo: TStringField
      FieldName = 'DepMemo'
      Size = 50
    end
    object ADOQuery1Xuong: TStringField
      FieldName = 'Xuong'
      Size = 4
    end
    object ADOQuery1YWSM: TStringField
      FieldName = 'YWSM'
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 158
  end
end
