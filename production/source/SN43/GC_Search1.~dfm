object GC_Search: TGC_Search
  Left = 192
  Top = 145
  Width = 374
  Height = 347
  Caption = 'GC_Search'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 300
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 354
      Height = 128
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 47
        Height = 22
        Caption = 'Order'
      end
      object Label2: TLabel
        Left = 17
        Top = 64
        Width = 31
        Height = 22
        Caption = 'Part'
      end
      object DBText1: TDBText
        Left = 80
        Top = 95
        Width = 145
        Height = 17
        DataField = 'ywsm'
        DataSource = DataSource1
      end
      object Edit1: TEdit
        Left = 78
        Top = 12
        Width = 145
        Height = 30
        TabOrder = 0
        OnChange = Edit1Change
      end
      object CB1: TDBLookupComboboxEh
        Left = 80
        Top = 60
        Width = 145
        Height = 30
        Color = clScrollBar
        EditButtons = <>
        KeyField = 'bwbh'
        ListField = 'bwbh'
        ListSource = DataSource1
        TabOrder = 1
        Visible = True
      end
      object Button1: TButton
        Left = 236
        Top = 58
        Width = 110
        Height = 31
        Caption = 'Query'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 129
      Width = 354
      Height = 170
      Align = alClient
      DataSource = DataSource2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = #24494#36575#27491#40657#39636
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DLNO'
          Width = 213
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 256
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DISTINCT bwzl.ywsm,CutDispatchSS_GC.bwbh FROM CutDispatch' +
        'SS_GC'
      'left join bwzl on CutDispatchSS_GC.bwbh=bwzl.bwdh'
      'where 1 = 1'
      'And ZLBH like '#39'%sl2004-0003a%'#39
      'Order by BWBH ')
    Left = 104
    Top = 216
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DISTINCT DLNO FROM CutDispatchSS_GC'
      'WHERE ZLBH = '#39'dv2103-0600'#39
      'AND BWBH='#39'A002'#39)
    Left = 144
    Top = 216
    object Query2DLNO: TStringField
      FieldName = 'DLNO'
      Origin = 'DB.CutDispatchSS.DLNO'
      FixedChar = True
      Size = 12
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 144
    Top = 256
  end
end
