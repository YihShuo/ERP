object KiemtraKCRKCX: TKiemtraKCRKCX
  Left = 194
  Top = 18
  Width = 1002
  Height = 684
  Caption = 'KiemtraKCRKCX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 282
    Width = 986
    Height = 7
    Cursor = crVSplit
    Align = alTop
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 60
      Height = 24
      Caption = 'Check'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 20
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label3: TLabel
      Left = 240
      Top = 19
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label4: TLabel
      Left = 339
      Top = 20
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object Label12: TLabel
      Left = 467
      Top = 19
      Width = 35
      Height = 16
      Caption = 'CLBH'
    end
    object CBX1: TComboBox
      Left = 160
      Top = 17
      Width = 65
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 11
      TabOrder = 0
      Text = '2017'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX2: TComboBox
      Left = 280
      Top = 17
      Width = 49
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 6
      TabOrder = 1
      Text = '07'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button1: TButton
      Left = 632
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CKBox: TComboBox
      Left = 384
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
    end
    object MatNoEdit: TEdit
      Left = 506
      Top = 13
      Width = 119
      Height = 24
      TabOrder = 4
    end
    object Button4: TButton
      Left = 724
      Top = 14
      Width = 77
      Height = 27
      Caption = 'Xoa Lai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 986
    Height = 96
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 19
      Top = 19
      Width = 34
      Height = 20
      Caption = 'Year'
    end
    object Label6: TLabel
      Left = 9
      Top = 49
      Width = 45
      Height = 20
      Caption = 'Month'
    end
    object Label11: TLabel
      Left = 523
      Top = 15
      Width = 44
      Height = 20
      Caption = 'CKBH'
    end
    object iYear: TEdit
      Left = 58
      Top = 15
      Width = 57
      Height = 28
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object iMonth: TEdit
      Left = 56
      Top = 45
      Width = 57
      Height = 28
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 120
      Top = -1
      Width = 177
      Height = 89
      Caption = 'KCLL'
      TabOrder = 2
      object Label7: TLabel
        Left = 13
        Top = 22
        Width = 55
        Height = 20
        Caption = 'STDate'
      end
      object Label8: TLabel
        Left = 10
        Top = 55
        Width = 58
        Height = 20
        Caption = 'EDDate'
      end
      object KCLL_ST: TEdit
        Left = 72
        Top = 21
        Width = 89
        Height = 28
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object KCLL_ED: TEdit
        Left = 72
        Top = 53
        Width = 89
        Height = 28
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 312
      Top = -1
      Width = 177
      Height = 89
      Caption = 'KCRK'
      TabOrder = 3
      object Label9: TLabel
        Left = 13
        Top = 22
        Width = 55
        Height = 20
        Caption = 'STDate'
      end
      object Label10: TLabel
        Left = 13
        Top = 54
        Width = 58
        Height = 20
        Caption = 'EDDate'
      end
      object KCRK_ST: TEdit
        Left = 72
        Top = 21
        Width = 89
        Height = 28
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object KCRK_ED: TEdit
        Left = 72
        Top = 53
        Width = 89
        Height = 28
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object CKBH: TEdit
      Left = 576
      Top = 12
      Width = 81
      Height = 28
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object KCRKCX: TEdit
      Left = 576
      Top = 44
      Width = 121
      Height = 28
      Enabled = False
      ReadOnly = True
      TabOrder = 5
      Text = 'KCRKCX'
      Visible = False
    end
    object Button2: TButton
      Left = 720
      Top = 32
      Width = 75
      Height = 25
      Caption = 'KCLLS'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 824
      Top = 32
      Width = 75
      Height = 25
      Caption = 'JGZLS'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 145
    Width = 986
    Height = 137
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 984
      Height = 135
      Align = alClient
      DataSource = DS1
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
      FooterRowCount = 1
      ParentFont = False
      PopupMenu = Popup1
      ReadOnly = True
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
          FieldName = 'CLDH'
          Footer.FieldName = 'CLDH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CKBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 441
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          Color = clMenuBar
          EditButtons = <>
          FieldName = 'RemQty'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 335
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'LastRem'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'RKQty'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'LLQty'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'JGRK'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'JGCK'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'JGCKTemp'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'HGBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'LBBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'zsqm'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 106
        end
        item
          EditButtons = <>
          FieldName = 'KCBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 289
    Width = 337
    Height = 357
    Align = alLeft
    Caption = 'Panel4'
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 1
      Top = 220
      Width = 335
      Height = 5
      Cursor = crVSplit
      Align = alTop
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 225
      Width = 335
      Height = 131
      Align = alClient
      DataSource = DS4
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
      FooterRowCount = 1
      ParentFont = False
      ReadOnly = True
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
          FieldName = 'KCYEAR'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KCMONTH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'HG_Qty'
          Footers = <>
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 335
      Height = 219
      Align = alTop
      DataSource = DS2
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
      FooterRowCount = 1
      ParentFont = False
      ReadOnly = True
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KCYEAR'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KCMONTH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'HG_Qty'
          Footers = <>
        end>
    end
  end
  object Panel5: TPanel
    Left = 337
    Top = 289
    Width = 649
    Height = 357
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 4
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 272
      Height = 355
      Align = alLeft
      Caption = 'Panel7'
      TabOrder = 0
      object Splitter6: TSplitter
        Left = 1
        Top = 161
        Width = 270
        Height = 8
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 169
        Width = 270
        Height = 185
        Align = alClient
        DataSource = DS9
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup7
        ReadOnly = True
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
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'UsdQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
      object DBGridEh8: TDBGridEh
        Left = 1
        Top = 1
        Width = 270
        Height = 160
        Align = alTop
        DataSource = DS3
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup2
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'UsdQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
    end
    object Panel8: TPanel
      Left = 273
      Top = 1
      Width = 375
      Height = 355
      Align = alClient
      Caption = 'Panel8'
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 1
        Top = 248
        Width = 373
        Height = 8
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter4: TSplitter
        Left = 1
        Top = 168
        Width = 373
        Height = 8
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter5: TSplitter
        Left = 1
        Top = 81
        Width = 373
        Height = 7
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 256
        Width = 373
        Height = 98
        Align = alClient
        DataSource = DS8
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup6
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 1
        Top = 176
        Width = 373
        Height = 72
        Align = alTop
        DataSource = DS7
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup5
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
      object DBGridEh6: TDBGridEh
        Left = 1
        Top = 88
        Width = 373
        Height = 80
        Align = alTop
        DataSource = DS6
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup4
        ReadOnly = True
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
      object DBGridEh7: TDBGridEh
        Left = 1
        Top = 1
        Width = 373
        Height = 80
        Align = alTop
        DataSource = DS5
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup3
        ReadOnly = True
        SumList.Active = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select clzl.zsdh,CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,' +
        'RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL with (nolock) '
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      
        '           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR' +
        '='#39'2017'#39
      '           and KCMONTH='#39'08'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      
        'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS ' +
        'with (nolock)  '
      
        '           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKN' +
        'O where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)' +
        ')>='
      '           '#39'2017/09/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2017/09/30'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      
        'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ' +
        'with (nolock)   '
      
        '           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LL' +
        'NO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)' +
        ')>='
      '           '#39'2017/09/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2017/09/30'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VA12'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS w' +
        'ith (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        '>='
      '           '#39'2017/09/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2017/09/30'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2017/09/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2017/09/30'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2017/09/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2017/09/30'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<'#39'2017/09/01'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      '           group by JGZLS.ZMLB '
      '           union all'
      '           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '           '#39'2017/09/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2017/09/30'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.SCBH='#39'JJJJJJJJJJ'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VA12'#39'           '
      '           group by KCLLS.CLBH'
      '           ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      ''
      ''
      'select * from ('
      ''
      
        'select CLHG.HGBH,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(#CLZLKC' +
        '.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isn' +
        'ull(#CLZLKC.LastRem,0) as LastRem,'
      
        '       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) ' +
        'as LLQty,'
      
        '       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZ' +
        'LKC.JGCK,2),0) as JGCK,'
      
        '       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCB' +
        'H,KCZLS.CKBH,'
      
        '       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.R' +
        'KQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC' +
        '.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty'
      'from #CLZLKC '
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH '
      'left join zszl on zszl.zsdh=clzl.zsdh '
      'left join (select * from KCZLS   where CKBH='#39'VA12'#39
      '                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'VA' +
        '12'#39' '
      'left join CLHG on CLHG.CLBH=#CLZLKC.CLDH  '
      
        '  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null ' +
        'and #CLZLKC.LLQty is null '
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      'and KCZLS.CKBH like '#39'VA12%'#39
      'and #CLZLKC.CLDH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      
        'and (isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQ' +
        'ty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.J' +
        'GRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0))>0'
      ') Warehouse'
      'left join ('
      'select CLDH,Sum(RemQty) as RemQty from ('
      
        'select KCCLMONTH.KCYEAR  as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONT' +
        'H.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB ,null as CNO,Sum(KCCLMO' +
        'NTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCCL' +
        'MONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KCCLMONTH_' +
        'HG as KCCLMONTH'
      
        'left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty ' +
        'from KCRKCX as  KCRKCX where KCRKCX.RKNO='#39'2017'#39'  and KCRKCX.CGBH' +
        '='#39'08'#39'  and KCRKCX.CKBH='#39'VA12'#39' Group by RKNO,CLDH,CGBH,RKSB,CKBH ' +
        ' ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR '
      
        '            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLM' +
        'ONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCL' +
        'MONTH.CKBH '
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'08'#39' and KCC' +
        'LMONTH.CKBH='#39'VA12'#39' --and KCCLMONTH.CLBH='#39'C030004097'#39
      
        'Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLM' +
        'ONTH.CLBH'
      'having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0'
      'union all'
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as Usd' +
        'Qty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KC' +
        'RKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  ' +
        'KCRKCX as KCRKCX where KCRKCX.RKSB<>'#39'JGRK'#39' Group by RKNO,CLDH,CG' +
        'BH,RKSB  )  '
      
        '           KCRKCX on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRK' +
        'S.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB'
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between '#39'2017/09/01'#39' and '#39'2017/09/30'#39'  and KCRK.CKBH='#39'VA12'#39'  '
      'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO'
      'having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0'
      'Union all'
      
        'select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,'#39'JGRK'#39' a' +
        's RKSB,null as CNO,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQ' +
        'ty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as R' +
        'emQty from JGZLS'
      'inner join JGZL on JGZL.JGNO=JGZLS.JGNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from K' +
        'CRKCX as  KCRKCX where KCRKCX.RKSB='#39'JGRK'#39'  Group by RKNO,CLDH,CG' +
        'BH,RKSB  )   '
      
        '           KCRKCX on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZL' +
        'S.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB='#39'JGRK'#39
      
        'where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZL.CFMID1<>'#39'NO'#39' and JGZL.CKB' +
        'H='#39'VA12'#39' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1' +
        ',111)) between '#39'2017/09/01'#39' and '#39'2017/09/30'#39'  '
      'Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB '
      'having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ) KCRKS'
      'Group by CLDH ) KCRKS on KCRKS.CLDH=Warehouse.CLDH'
      
        'where Round(convert(float,KCRKS.RemQty),4)<>Round(convert(float,' +
        'Warehouse.Qty),4)'
      '')
    Left = 272
    Top = 144
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '0.00'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '0.00'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '0.00'
    end
    object Query1JGRK: TCurrencyField
      FieldName = 'JGRK'
      DisplayFormat = '0.00'
    end
    object Query1JGCK: TFloatField
      FieldName = 'JGCK'
      DisplayFormat = '0.00'
    end
    object Query1JGCKTemp: TFloatField
      FieldName = 'JGCKTemp'
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object Query1CLDH_1: TStringField
      FieldName = 'CLDH_1'
      FixedChar = True
      Size = 15
    end
    object Query1RemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 144
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 144
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=LIY_ERP;Data Source=192.168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 728
    Top = 192
  end
  object KCLLS: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select JGZLS.JGNO as LLNO,JGZLS.CLBH,'#39'JGCK'#39' as  DFL,JGZLS.ZMLB a' +
        's  SCBH,(JGZLS.Qty*JGDet.Qty)  as Qty,Sum(KCRKCX.RKQty) as CXRKQ' +
        'ty,Max(KCRKCX.USERID) as USERID,Max(KCRKCX.USERDATE) as USERDATE' +
        ',Max(KCRKCX.YN) as YN from JGZLS '
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        'left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS,JGZ' +
        'L where JGZLS.JGNO=JGZL.JGNO and JGZL.CFMID1<>'#39'NO'#39' and JGZL.CFMD' +
        'ate1>='#39'2017/05/01'#39'  and   JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39') JGDet on JGDe' +
        't.JGNO=JGZLS.JGNO  and JGDet.CLBH=JGZLS.CLBH '
      
        'left join KCRKCX on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JGZLS' +
        '.CLBH and KCRKCX.DFL='#39'JGCK'#39' and KCRKCX.SCBH=JGZLS.ZMLB'
      
        'where JGZL.CFMID1<>'#39'NO'#39' and JGZL.CFMDate1>='#39'2017/05/01'#39' and JGZL' +
        'S.ZMLB<>'#39'ZZZZZZZZZZ'#39' '
      
        'Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGDet.Qty  h' +
        'aving (JGZLS.Qty*JGDet.Qty)>Sum(IsNull(KCRKCX.RKQty,0))')
    Left = 768
    Top = 192
  end
  object KCRKCXQry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 768
    Top = 224
  end
  object EXEQry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 768
    Top = 256
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH ,KCCLMONTH.CLBH,KCCLMO' +
        'NTH.Qty ,KCCLMONTH_HG.Qty as HG_Qty from KCCLMONTH'
      'left join ('
      
        '  select KCYEAR,KCMONTH,CKBH,CLBH,Sum(Qty) as Qty from KCCLMONTH' +
        '_HG'
      '  where KCYEAR='#39'2017'#39' and KCMONTH='#39'08'#39'  --and CKBH='#39'VA12'#39
      '  Group by KCYEAR,KCMONTH,CKBH,CLBH )'
      
        ' KCCLMONTH_HG on KCCLMONTH_HG.KCYEAR=KCCLMONTH.KCYEAR and KCCLMO' +
        'NTH_HG.KCMONTH=KCCLMONTH.KCMONTH and KCCLMONTH_HG.CKBH=KCCLMONTH' +
        '.CKBH and KCCLMONTH_HG.CLBH=KCCLMONTH.CLBH'
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'08'#39'  --and ' +
        'KCCLMONTH.CKBH='#39'VA12'#39
      '      and KCCLMONTH_HG.Qty<>KCCLMONTH.Qty')
    Left = 200
    Top = 344
    object Query2KCYEAR: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query2KCMONTH: TStringField
      DisplayWidth = 10
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query2CLBH: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2Qty: TCurrencyField
      DisplayWidth = 6
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object Query2HG_Qty: TCurrencyField
      DisplayWidth = 7
      FieldName = 'HG_Qty'
      DisplayFormat = '0.00'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 232
    Top = 344
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH' +
        '.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HG' +
        'LB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as U' +
        'sdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty '
      'from KCCLMONTH_HG as KCCLMONTH '
      
        'left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty ' +
        'from  KCRKCX where KCRKCX.RKNO='#39'2017'#39'   and KCRKCX.CGBH='#39'08'#39'   G' +
        'roup by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMO' +
        'NTH.KCYEAR '
      
        '            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLM' +
        'ONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCL' +
        'MONTH.CKBH   '
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'08'#39' and KCC' +
        'LMONTH.CKBH='#39'VA12'#39' --and KCCLMONTH.CLBH='#39'H100001010'#39' --and KCRKC' +
        'X.CLDH='#39'H100001010'#39
      
        'Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLM' +
        'ONTH.CLBH '
      'having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))<0 ')
    Left = 456
    Top = 344
    object Query3RKNO: TStringField
      DisplayWidth = 6
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query3CLDH: TStringField
      DisplayWidth = 11
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object Query3CGBH: TStringField
      DisplayWidth = 4
      FieldName = 'CGBH'
      FixedChar = True
      Size = 4
    end
    object Query3RKSB: TStringField
      DisplayWidth = 4
      FieldName = 'RKSB'
      FixedChar = True
      Size = 4
    end
    object Query3CNO: TIntegerField
      DisplayWidth = 5
      FieldName = 'CNO'
    end
    object Query3HGLB: TStringField
      DisplayWidth = 6
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query3RKQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RKQty'
      DisplayFormat = '0.00'
    end
    object Query3UsdQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'UsdQty'
      DisplayFormat = '0.00'
    end
    object Query3RemQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 488
    Top = 344
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH ,KCCLMONTH.CLBH,KCCLMO' +
        'NTH.Qty ,KCCLMONTH_HG.Qty as HG_Qty from KCCLMONTH'
      'left join ('
      
        '  select KCYEAR,KCMONTH,CKBH,CLBH,Sum(Qty) as Qty from KCCLMONTH' +
        '_HG'
      '  where KCYEAR='#39'2017'#39' and KCMONTH='#39'08'#39'  --and CKBH='#39'VA12'#39
      '  Group by KCYEAR,KCMONTH,CKBH,CLBH )'
      
        ' KCCLMONTH_HG on KCCLMONTH_HG.KCYEAR=KCCLMONTH.KCYEAR and KCCLMO' +
        'NTH_HG.KCMONTH=KCCLMONTH.KCMONTH and KCCLMONTH_HG.CKBH=KCCLMONTH' +
        '.CKBH and KCCLMONTH_HG.CLBH=KCCLMONTH.CLBH'
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'08'#39'  --and ' +
        'KCCLMONTH.CKBH='#39'VA12'#39
      '      and KCCLMONTH_HG.Qty<>KCCLMONTH.Qty')
    Left = 200
    Top = 464
    object StringField1: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      DisplayWidth = 10
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CurrencyField1: TCurrencyField
      DisplayWidth = 6
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object CurrencyField2: TCurrencyField
      DisplayWidth = 7
      FieldName = 'HG_Qty'
      DisplayFormat = '0.00'
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 232
    Top = 464
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRKCX.* from KCRKCX '
      
        'left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.' +
        'CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH'
      
        'where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)' +
        ') between '#39'2017/07/01'#39' and '#39'2017/09/30'#39'   --and KCRKCX.CKBH='#39'VA1' +
        '2'#39
      '      and KCRKCX.DFL<>'#39'JGCK'#39
      '      and KCLLS.LLNO is null     ')
    Left = 712
    Top = 320
    object Query5LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query5CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query5DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query5SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query5LLQty: TCurrencyField
      FieldName = 'LLQty'
    end
    object Query5RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query5CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object Query5CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query5RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 5
    end
    object Query5RKQty: TCurrencyField
      FieldName = 'RKQty'
    end
    object Query5USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query5USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query5YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query5CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 5
    end
    object Query5VNPrice: TFloatField
      FieldName = 'VNPrice'
    end
    object Query5VNACC: TFloatField
      FieldName = 'VNACC'
    end
    object Query5HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 744
    Top = 320
  end
  object Query6: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRKCX.* from KCRKCX '
      
        'left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.' +
        'CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH'
      
        'where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)' +
        ') between '#39'2017/07/01'#39' and '#39'2017/09/30'#39'   --and KCRKCX.CKBH='#39'VA1' +
        '2'#39
      '      and KCRKCX.DFL<>'#39'JGCK'#39
      '      and KCLLS.LLNO is null     ')
    Left = 712
    Top = 408
    object StringField4: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField5: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object StringField7: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'LLQty'
    end
    object StringField8: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField9: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 5
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'RKQty'
    end
    object StringField12: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField13: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField14: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 5
    end
    object FloatField1: TFloatField
      FieldName = 'VNPrice'
    end
    object FloatField2: TFloatField
      FieldName = 'VNACC'
    end
    object StringField15: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS6: TDataSource
    DataSet = Query6
    Left = 744
    Top = 408
  end
  object Query7: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRKCX.* from KCRKCX '
      
        'left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.' +
        'CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH'
      
        'where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)' +
        ') between '#39'2017/07/01'#39' and '#39'2017/09/30'#39'   --and KCRKCX.CKBH='#39'VA1' +
        '2'#39
      '      and KCRKCX.DFL<>'#39'JGCK'#39
      '      and KCLLS.LLNO is null     ')
    Left = 712
    Top = 488
    object StringField16: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField17: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField18: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object StringField19: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'LLQty'
    end
    object StringField20: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField21: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object StringField22: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object StringField23: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 5
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'RKQty'
    end
    object StringField24: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField25: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField26: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 5
    end
    object FloatField3: TFloatField
      FieldName = 'VNPrice'
    end
    object FloatField4: TFloatField
      FieldName = 'VNACC'
    end
    object StringField27: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS7: TDataSource
    DataSet = Query7
    Left = 744
    Top = 488
  end
  object Query8: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRKCX.* from KCRKCX '
      
        'left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.' +
        'CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH'
      
        'where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)' +
        ') between '#39'2017/07/01'#39' and '#39'2017/09/30'#39'   --and KCRKCX.CKBH='#39'VA1' +
        '2'#39
      '      and KCRKCX.DFL<>'#39'JGCK'#39
      '      and KCLLS.LLNO is null     ')
    Left = 712
    Top = 568
    object StringField28: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField29: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField30: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object StringField31: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'LLQty'
    end
    object StringField32: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField33: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object StringField34: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object StringField35: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 5
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'RKQty'
    end
    object StringField36: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField37: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField38: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 5
    end
    object FloatField5: TFloatField
      FieldName = 'VNPrice'
    end
    object FloatField6: TFloatField
      FieldName = 'VNACC'
    end
    object StringField39: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS8: TDataSource
    DataSet = Query8
    Left = 744
    Top = 568
  end
  object Popup1: TPopupMenu
    Left = 344
    Top = 145
    object XoaKCRKCX1: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = XoaKCRKCX1Click
    end
    object InSQL5: TMenuItem
      Caption = 'In SQL'
      OnClick = InSQL5Click
    end
  end
  object Popup2: TPopupMenu
    Left = 528
    Top = 345
    object MenuItem1: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem1Click
    end
    object SQLPrint1: TMenuItem
      Caption = 'In SQL '
      OnClick = SQLPrint1Click
    end
  end
  object Popup3: TPopupMenu
    Left = 768
    Top = 321
    object MenuItem2: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem2Click
    end
    object InSQL1: TMenuItem
      Caption = 'In SQL '
      OnClick = InSQL1Click
    end
  end
  object Popup4: TPopupMenu
    Left = 776
    Top = 409
    object MenuItem3: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem3Click
    end
    object InSQL2: TMenuItem
      Caption = 'In SQL '
      OnClick = InSQL2Click
    end
  end
  object Popup5: TPopupMenu
    Left = 776
    Top = 489
    object MenuItem4: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem4Click
    end
    object InSQL3: TMenuItem
      Caption = 'In SQL '
      OnClick = InSQL3Click
    end
  end
  object Popup6: TPopupMenu
    Left = 776
    Top = 569
    object MenuItem5: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem5Click
    end
    object InSQL4: TMenuItem
      Caption = 'In SQL '
      OnClick = InSQL4Click
    end
  end
  object Query9: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH' +
        '.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HG' +
        'LB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as U' +
        'sdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty '
      'from KCCLMONTH_HG as KCCLMONTH '
      
        'left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty ' +
        'from  KCRKCX where KCRKCX.RKNO='#39'2017'#39'   and KCRKCX.CGBH='#39'08'#39'   G' +
        'roup by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMO' +
        'NTH.KCYEAR '
      
        '            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLM' +
        'ONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCL' +
        'MONTH.CKBH   '
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'08'#39' and KCC' +
        'LMONTH.CKBH='#39'VA12'#39' --and KCCLMONTH.CLBH='#39'H100001010'#39' --and KCRKC' +
        'X.CLDH='#39'H100001010'#39
      
        'Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLM' +
        'ONTH.CLBH '
      'having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))<0 ')
    Left = 448
    Top = 528
    object StringField40: TStringField
      DisplayWidth = 6
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField41: TStringField
      DisplayWidth = 11
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object StringField42: TStringField
      DisplayWidth = 4
      FieldName = 'CGBH'
      FixedChar = True
      Size = 4
    end
    object StringField43: TStringField
      DisplayWidth = 4
      FieldName = 'RKSB'
      FixedChar = True
      Size = 4
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 5
      FieldName = 'CNO'
    end
    object StringField44: TStringField
      DisplayWidth = 6
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object CurrencyField9: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RKQty'
      DisplayFormat = '0.00'
    end
    object CurrencyField10: TCurrencyField
      DisplayWidth = 10
      FieldName = 'UsdQty'
      DisplayFormat = '0.00'
    end
    object CurrencyField11: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
  end
  object DS9: TDataSource
    DataSet = Query9
    Left = 480
    Top = 528
  end
  object Popup7: TPopupMenu
    Left = 520
    Top = 529
    object MenuItem6: TMenuItem
      Caption = 'Xoa KCRKCX'
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = 'In SQL '
      OnClick = MenuItem7Click
    end
  end
end
