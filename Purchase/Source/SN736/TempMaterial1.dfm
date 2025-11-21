object TempMaterial: TTempMaterial
  Left = 541
  Top = 291
  Width = 1305
  Height = 675
  Caption = 'TempMaterial'
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 630
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1285
      Height = 72
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 432
        Top = 24
        Width = 63
        Height = 25
        Caption = 'MatNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 22
        Width = 68
        Height = 25
        Caption = 'Season'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 240
        Top = 22
        Width = 52
        Height = 25
        Caption = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 502
        Top = 20
        Width = 121
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 640
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 832
        Top = 32
        Width = 145
        Height = 17
        Caption = 'Not Classification'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object Button2: TButton
        Left = 736
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object Edit2: TEdit
        Left = 91
        Top = 20
        Width = 121
        Height = 33
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Edit3: TEdit
        Left = 299
        Top = 20
        Width = 121
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 73
      Width = 1285
      Height = 556
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1283
        Height = 554
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'jijie'
            Footers = <>
            Title.Caption = 'Season'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'kfjd'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Width = 146
          end
          item
            EditButtons = <>
            FieldName = 'cltd'
            Footers = <>
            Title.Caption = 'Class'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 126
          end
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footers = <>
            Title.Caption = 'MatNO'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Description'
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 313
    Top = 249
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select a.*,zszl.zsywjc from ('
      
        'select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article ,clzl.' +
        'cldh,clzl.ywpm,clzl.cltd,ypzls.csbh from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and ypzl.kfjd like '#39'%'#39'  and kfxxzl.jijie' +
        '='#39'17S'#39' and clzl.cldh like  '#39'V%'#39'   '
      'and  (clzl.cltd is  null or clzl.cltd ='#39#39') '
      'union'
      
        'select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article,clzhzl' +
        '.cldh1,clzl.ywpm,clzl.cltd,ypzls.csbh from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and ypzl.kfjd like '#39'%'#39'  and kfxxzl.jijie' +
        '='#39'17S'#39' and clzl.cldh like  '#39'V%'#39' '
      'and  (clzl.cltd is  null or clzl.cltd ='#39#39') '
      'union'
      
        'select jijie,kfjd,devcode,article,clzhzl.cldh1,clzl.ywpm,clzl.cl' +
        'td,csbh from ('
      
        'select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article,clzl.c' +
        'ldh,clzl.ywpm,ypzls.csbh from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and ypzl.kfjd like '#39'%'#39' and kfxxzl.jijie=' +
        #39'17S'#39' )clzhzl2 '
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'where  clzl.cldh like  '#39'V%'#39' '
      'and  (clzl.cltd is  null or clzl.cltd ='#39#39' ) '
      ')a'
      'left join zszl on zszl.zsdh=a.csbh'
      'order by jijie,kfjd,devcode')
    Left = 313
    Top = 297
    object Query1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query1kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1cltd: TStringField
      FieldName = 'cltd'
      FixedChar = True
      Size = 50
    end
    object Query1csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
  end
end
