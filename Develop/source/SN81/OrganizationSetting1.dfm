object Organization1: TOrganization1
  Left = 560
  Top = 217
  Width = 842
  Height = 623
  Caption = 'Organization'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 596
    Align = alLeft
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 335
      Height = 594
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Indent = 19
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      RightClickSelect = True
      TabOrder = 0
      OnChange = TreeView1Change
    end
  end
  object Panel6: TPanel
    Left = 337
    Top = 0
    Width = 496
    Height = 596
    Align = alLeft
    TabOrder = 1
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 494
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 494
        Height = 32
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'UNSELECT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 33
      Width = 494
      Height = 562
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 206
        Height = 562
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 206
          Height = 72
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 206
            Height = 32
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'UNSELECTED USER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlBottom
          end
          object Edit1: TEdit
            Left = 5
            Top = 37
            Width = 193
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnChange = Edit1Change
          end
        end
        object StringGrid1: TStringGrid
          Left = 0
          Top = 72
          Width = 206
          Height = 490
          Align = alClient
          ColCount = 1
          DefaultColWidth = 200
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 1
        end
      end
      object Panel8: TPanel
        Left = 206
        Top = 0
        Width = 82
        Height = 562
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Button3: TButton
          Left = 8
          Top = 96
          Width = 65
          Height = 33
          Caption = '>>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 8
          Top = 136
          Width = 65
          Height = 33
          Caption = '<<<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 8
          Top = 320
          Width = 65
          Height = 33
          Caption = 'SAVE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button5Click
        end
      end
      object Panel4: TPanel
        Left = 288
        Top = 0
        Width = 206
        Height = 562
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 206
          Height = 72
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 206
            Height = 32
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'SELECTED USER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlBottom
          end
          object Edit2: TEdit
            Left = 5
            Top = 37
            Width = 193
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object StringGrid2: TStringGrid
          Left = 0
          Top = 72
          Width = 206
          Height = 490
          Align = alClient
          ColCount = 1
          DefaultColWidth = 200
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel11: TPanel
    Left = 833
    Top = 0
    Width = 1
    Height = 596
    Align = alClient
    TabOrder = 2
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=lvl123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LingYi;Data Source=192.168.23.246'
    Parameters = <>
    Left = 8
    Top = 8
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=lvl123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LingYi;Data Source=192.168.23.246'
    Parameters = <>
    Left = 344
    Top = 112
  end
  object ADOQuery3: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=lvl123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LingYi;Data Source=192.168.23.246'
    Parameters = <>
    Left = 632
    Top = 112
  end
  object ADOQUpdate: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=lvl123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LingYi;Data Source=192.168.23.246'
    Parameters = <>
    Left = 584
    Top = 392
  end
  object ADOQuery4: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=lvl123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LingYi;Data Source=192.168.23.246'
    Parameters = <>
    Left = 552
    Top = 392
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 40
    object Expand1: TMenuItem
      Caption = 'Expand'
      OnClick = Expand1Click
    end
    object Collapse1: TMenuItem
      Caption = 'Collapse'
      OnClick = Collapse1Click
    end
  end
end
