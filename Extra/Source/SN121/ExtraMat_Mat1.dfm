object ExtraMat_Mat: TExtraMat_Mat
  Left = 618
  Top = 262
  Width = 761
  Height = 472
  BorderIcons = [biSystemMenu]
  Caption = 'ExtraMat_Mat'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 753
    Height = 441
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'All_Material'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 745
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 2
          Top = 16
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 194
          Top = 16
          Width = 92
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 656
          Top = 11
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 285
          Top = 12
          Width = 113
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = Edit2KeyPress
        end
        object EDIT1: TEdit
          Left = 82
          Top = 12
          Width = 110
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = EDIT1KeyPress
        end
        object Edit3: TEdit
          Left = 406
          Top = 12
          Width = 113
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 3
          OnKeyPress = Edit3KeyPress
        end
        object Edit4: TEdit
          Left = 530
          Top = 12
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 4
          OnKeyPress = Edit4KeyPress
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 49
        Width = 745
        Height = 361
        Align = alClient
        DataSource = DS1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'cldh'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ywpm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Width = 464
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dwbh'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Width = 53
            Visible = True
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'SR#_Material'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 745
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 4
          Top = 14
          Width = 66
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 392
          Top = 14
          Width = 59
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 195
          Top = 14
          Width = 73
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 590
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Edit5: TEdit
          Left = 72
          Top = 9
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit6: TEdit
          Left = 453
          Top = 9
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit7: TEdit
          Left = 269
          Top = 9
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 41
        Width = 745
        Height = 369
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 743
          Height = 367
          Align = alClient
          DataSource = DataSource1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridEh1DblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'cldh'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 345
            end
            item
              EditButtons = <>
              FieldName = 'bwbh'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 46
            end>
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from clzl'
      'order by CLDH')
    Left = 48
    Top = 200
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 96
    Top = 168
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select devcode,article,cldh,ywpm,bwbh,DWBH'
      ' from ('
      
        'select '#39'MOM'#39' as type,kfxxzl.devcode,ypzl.article,kfxxzl.xieming,' +
        'ypzls.bwbh,clzl.cldh,clzl.ywpm,kfxxzl.khdh,CLZL.DWBH from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and kfxxzl.devcode='#39'G19010-CT479J-16S01'#39 +
        ' and ypzl.kfjd='#39'CFM'#39
      'union'
      
        'select '#39'Child-1'#39' as type,kfxxzl.devcode,ypzl.article,kfxxzl.xiem' +
        'ing,ypzls.bwbh,clzhzl.cldh1,clzl.ywpm,kfxxzl.khdh,CLZL.DWBH from' +
        ' ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and kfxxzl.devcode='#39'G19010-CT479J-16S01'#39 +
        ' and ypzl.kfjd='#39'CFM'#39
      'union'
      
        'select '#39'Child-2'#39' as type,devcode,article,xieming,bwbh,clzhzl.cld' +
        'h1,clzl.ywpm,khdh,CLZL.DWBH from ('
      
        'select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.bwbh,clz' +
        'l.cldh,clzl.ywpm,kfxxzl.khdh,CLZL.DWBH from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      
        'where kfxxzl.khdh='#39'036'#39' and kfxxzl.devcode='#39'G19010-CT479J-16S01'#39 +
        ' and ypzl.kfjd='#39'CFM'#39')clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      ''
      ')a'
      'order by devcode,article,bwbh')
    Left = 96
    Top = 200
    object Query2devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query2article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2bwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 4
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
  end
end
