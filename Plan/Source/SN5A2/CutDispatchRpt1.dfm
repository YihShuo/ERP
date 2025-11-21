object CutDispatchRpt: TCutDispatchRpt
  Left = 325
  Top = 61
  Width = 1066
  Height = 909
  Caption = 'CutDispatchRpt'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1050
    Height = 870
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Daily Report'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 104
          Top = 25
          Width = 32
          Height = 16
          Caption = 'Date:'
        end
        object Label7: TLabel
          Left = 459
          Top = 26
          Width = 66
          Height = 16
          Caption = 'DepName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 16
          Width = 89
          Height = 20
          AutoSize = False
          Caption = #29983#29986#26178#27841#34920
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #26032#32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 468
          Top = 12
          Width = 58
          Height = 16
          AutoSize = False
          Caption = #37096#38272#21517#31281':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 108
          Top = 8
          Width = 37
          Height = 16
          AutoSize = False
          Caption = #26085#26399':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 344
          Top = 25
          Width = 24
          Height = 16
          Caption = #26847#21029
        end
        object Label14: TLabel
          Left = 334
          Top = 25
          Width = 45
          Height = 16
          Caption = 'Factory'
        end
        object Label15: TLabel
          Left = 344
          Top = 9
          Width = 24
          Height = 16
          Caption = #26847#21029
        end
        object Button3: TButton
          Left = 666
          Top = 8
          Width = 73
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object DTP3: TDateTimePicker
          Left = 142
          Top = 11
          Width = 89
          Height = 24
          Date = 39219.000000000000000000
          Format = 'yyyy-MM-dd'
          Time = 39219.000000000000000000
          DateMode = dmUpDown
          ImeName = 'Chinese (Traditional) - New Phonetic'
          TabOrder = 0
        end
        object Button5: TButton
          Left = 748
          Top = 8
          Width = 73
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button5Click
        end
        object DTP4: TDateTimePicker
          Left = 242
          Top = 10
          Width = 89
          Height = 24
          Date = 39219.000000000000000000
          Format = 'yyyy-MM-dd'
          Time = 39219.000000000000000000
          DateMode = dmUpDown
          ImeName = 'Chinese (Traditional) - New Phonetic'
          TabOrder = 3
        end
        object XuongCB2: TComboBox
          Left = 384
          Top = 11
          Width = 75
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 4
          OnChange = XuongCB2Change
        end
        object DepNMEdit2: TComboBox
          Left = 528
          Top = 12
          Width = 129
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1042
        Height = 790
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ImeName = 'Chinese (Traditional) - New Phonetic'
        PopupMenu = PopupMenu
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            Title.Caption = #26085#26399'|ScanDate'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #37096#38272#32232#34399'|ID'
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footer.FieldName = 'DepName'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #37096#38272#21517#31281'|DepName'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'CutNum'
            Footer.FieldName = 'CutNum'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #27966#24037#20992#25976'|CutNum'
          end
          item
            EditButtons = <>
            FieldName = 'okCutNum'
            Footer.FieldName = 'okCutNum'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #22577#24037#20992#25976'|okCutNum'
            Width = 88
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tracking List'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 273
        Top = 73
        Width = 5
        Height = 766
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 188
          Top = 11
          Width = 17
          Height = 16
          Caption = 'To'
        end
        object Label3: TLabel
          Left = 134
          Top = 54
          Width = 66
          Height = 16
          Caption = 'DepName:'
        end
        object Label4: TLabel
          Left = 333
          Top = 46
          Width = 45
          Height = 16
          Caption = 'OrdNO:'
        end
        object Label5: TLabel
          Left = 6
          Top = 53
          Width = 45
          Height = 16
          Caption = 'Factory'
        end
        object Label8: TLabel
          Left = 16
          Top = 37
          Width = 24
          Height = 16
          Caption = #26847#21029
        end
        object Label10: TLabel
          Left = 135
          Top = 40
          Width = 58
          Height = 16
          AutoSize = False
          Caption = #37096#38272#21517#31281':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object DTP1: TDateTimePicker
          Left = 85
          Top = 8
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 0
        end
        object Button1: TButton
          Left = 544
          Top = 37
          Width = 81
          Height = 33
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object ZLBHEdit: TEdit
          Left = 382
          Top = 42
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 214
          Top = 7
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 1
        end
        object Button2: TButton
          Left = 632
          Top = 36
          Width = 81
          Height = 33
          Caption = 'Excel'
          TabOrder = 4
          OnClick = Button2Click
        end
        object GroupBox1: TGroupBox
          Left = 320
          Top = 1
          Width = 273
          Height = 33
          TabOrder = 5
          object RB1: TRadioButton
            Left = 8
            Top = 11
            Width = 41
            Height = 17
            Caption = 'All'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RB2: TRadioButton
            Left = 64
            Top = 11
            Width = 89
            Height = 17
            Caption = 'No CutNum'
            Color = clAqua
            ParentColor = False
            TabOrder = 1
          end
          object RB3: TRadioButton
            Left = 176
            Top = 11
            Width = 89
            Height = 17
            Caption = 'OKCutNum'
            Color = clGreen
            ParentColor = False
            TabOrder = 2
          end
        end
        object XuongCB1: TComboBox
          Left = 54
          Top = 41
          Width = 75
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 6
          OnChange = ange
        end
        object DepNMEdit1: TComboBox
          Left = 203
          Top = 41
          Width = 129
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 7
        end
        object PlanDateCK: TCheckBox
          Left = 2
          Top = 11
          Width = 81
          Height = 17
          Caption = 'PlanDate:'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 273
        Height = 766
        Align = alLeft
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ImeName = 'Chinese (Traditional) - New Phonetic'
        PopupMenu = PopupMenu
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = #35330#21934'|ZLBH'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #26028#20992'|DAOMH'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article|'#22411#39636
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Title.Caption = 'SR#|DEVCODE'
            Width = 145
          end>
      end
      object PageControl2: TPageControl
        Left = 278
        Top = 73
        Width = 764
        Height = 766
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 2
        OnChange = PageControl2Change
        object TabSheet3: TTabSheet
          Caption = 'Part'
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 756
            Height = 735
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
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ImeName = 'Chinese (Traditional) - New Phonetic'
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object Splitter2: TSplitter
            Left = 0
            Top = 481
            Width = 756
            Height = 5
            Cursor = crVSplit
            Align = alTop
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 756
            Height = 481
            Align = alTop
            DataSource = DS2
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ImeName = 'Chinese (Traditional) - New Phonetic'
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'BWBH'
                Footers = <>
                Title.Caption = #37096#20301'ID|BWBH'
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'YWSM'
                Footers = <>
                Title.Caption = #37096#20301'|YWSM'
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'ZWSM'
                Footers = <>
                Title.Caption = #37096#20301#20013#25991'|ZWSM'
                Width = 57
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
                Title.Caption = #26448#26009#25551#36848'|YWPM'
                Width = 391
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'okQty'
                Footers = <>
                Title.Caption = #38617#25976'|okQty'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'SIZE'
                Footers = <>
                Title.Caption = #23610#30908'|SIZE'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'XXCC'
                Footers = <>
                Title.Caption = #23610#30908'|XXCC'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'CutNum'
                Footers = <>
                Title.Caption = #35009#26039'|CutNum'
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'okCutNum'
                Footers = <>
                Title.Caption = #35009#26039'|okCutNum'
                Width = 65
              end>
          end
          object DBGrid2: TDBGridEh
            Left = 0
            Top = 486
            Width = 756
            Height = 249
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
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            PopupMenu = PopupMenu2
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ListNo'
                Footers = <>
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'DemandDate'
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'DemandTime'
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'MaterialID'
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 250
              end
              item
                EditButtons = <>
                FieldName = 'ZWPM'
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 250
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Unit'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'RY_Begin'
                Footers = <>
                Title.Caption = 'RY'
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'LotNO'
                Footers = <>
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                Width = 200
              end
              item
                EditButtons = <>
                FieldName = 'IssuanceUsage'
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'RemarkS'
                Footers = <>
                Width = 200
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                Width = 100
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Tua#'
          ImageIndex = 2
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 0
            Width = 792
            Height = 509
            Align = alClient
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
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ImeName = 'Chinese (Traditional) - New Phonetic'
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
          end
        end
      end
    end
  end
  object CutDisQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select CutDispatchZL.ZLBH as ZLBH,CutDispatchZL.BWBH,BWZL.YWSM,B' +
        'WZL.ZWSM,CutDispatchZL.CLBH,CLZL.YWPM,CutDispatchZL.SIZE,CutDisp' +
        'atchZL.XXCC,CutDispatchZL.Qty,'
      
        '       case when CutDispatchZL.piece <> 0 then CutDispatchS.okCu' +
        'tNum*CutDispatchZL.Layer/CutDispatchZL.piece else 0 end as okQty' +
        ',CutDispatchS.CutNum,CutDispatchS.okCutNum '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS where CutDispatchS.ZLBH=:ZLBH' +
        ' Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join CLZL on CLZL.cldh=CutDispatchZL.CLBH'
      'left join BWZL on BWZL.BWDH=CutDispatchZL.BWBH'
      'where CutDispatchZL.ZLBH=:ZLBH')
    Left = 392
    Top = 168
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object CutDisQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutDisQryBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object CutDisQryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object CutDisQryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object CutDisQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CutDisQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CutDisQrySIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutDisQryXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object CutDisQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object CutDisQryokQty: TIntegerField
      FieldName = 'okQty'
    end
    object CutDisQryCutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object CutDisQryokCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
  end
  object DS2: TDataSource
    DataSet = CutDisQry
    Left = 392
    Top = 200
  end
  object PopupMenu: TPopupMenu
    Left = 248
    Top = 200
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object RYCutQry: TQuery
    AfterScroll = RYCutQryAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH as ZL' +
        'BH_NO '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join DDZL on DDZL.DDBH=CutDispatchZL.ZLBH  '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao '
      'left join '
      ' ( select  CutDispatchZL.ZLBH from CutDispatchZL '
      
        '  left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okC' +
        'utNum) as okCutNum from CutDispatchS Group by ZLBH,BWBH,SIZE) '
      
        '        CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and' +
        ' CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=Cut' +
        'DispatchS.SIZE'
      
        '  where  IsNull(CutDispatchS.okCutNum,0)<CutDispatchZL.CutNum an' +
        'd CutDispatchZL.ZLBH like '#39'%'#39'  '
      
        '  Group by CutDispatchZL.ZLBH  ) CutDispatchZL_NO on CutDispatch' +
        'ZL_NO.ZLBH=CutDispatchZL.ZLBH'
      'where CutDispatchZL.ZLBH like '#39'%'#39' '
      'Group by CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH')
    Left = 288
    Top = 168
    object RYCutQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object RYCutQryDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object RYCutQryZLBH_NO: TStringField
      FieldName = 'ZLBH_NO'
      FixedChar = True
      Size = 15
    end
    object RYCutQryARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object RYCutQryDEVCODE: TStringField
      FieldName = 'DEVCODE'
    end
  end
  object DS1: TDataSource
    DataSet = RYCutQry
    Left = 288
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 168
  end
  object DailyQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CutDispatch.*,CutScan.okCutNum from ('
      
        'select Convert(varchar,CutDispatch.PlanDate,111) as ScanDate,BDe' +
        'partment.ID,BDepartment.DepName,sum(CutNum) as CutNum from CutDi' +
        'spatchS'
      'Left join CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO'
      'Left join BDepartment on BDepartment.ID=CutDispatch.DepID'
      
        'where CutDispatch.PlanDate between '#39'2017/01/12'#39' and '#39'2019/02/12'#39 +
        ' '
      
        'Group by Convert(varchar,CutDispatch.PlanDate,111),BDepartment.I' +
        'D,BDepartment.DepName'
      ') CutDispatch'
      'Left join ('
      
        '  select Convert(varchar,CutDispatchS.ScanDate,111) as ScanDate,' +
        'BDepartment.ID,Sum(okCutNum) as okCutNum from CutDispatchS'
      '  Left join CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO  '
      '  Left join BDepartment on BDepartment.ID=CutDispatch.DepID'
      
        '  where CutDispatchS.ScanDate between '#39'2017/01/12'#39' and '#39'2019/02/' +
        '12'#39' '
      
        '  Group by Convert(varchar,CutDispatchS.ScanDate,111),BDepartmen' +
        't.ID,BDepartment.DepName'
      
        ' ) CutScan on CutDispatch.ScanDate=CutScan.ScanDate and CutDispa' +
        'tch.ID=CutScan.ID ')
    Left = 168
    Top = 168
    object DailyQueryScanDate: TStringField
      FieldName = 'ScanDate'
      FixedChar = True
      Size = 30
    end
    object DailyQueryID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object DailyQueryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DailyQueryCutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object DailyQueryokCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
  end
  object DS3: TDataSource
    DataSet = DailyQuery
    Left = 168
    Top = 200
  end
  object CutDisSDetQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM'
      
        '      ,Max(case when CutDis.SIZE='#39'06.0'#39' then CutOK end) as '#39'06.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'07.0'#39' then CutOK end) as '#39'07.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'08.0'#39' then CutOK end) as '#39'08.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'09.0'#39' then CutOK end) as '#39'09.0' +
        #39
      '      ,Sum(Qty) as Pairs'
      
        'from (  select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,BWZL.YWSM,B' +
        'WZL.ZWSM,CutDispatchZL.SIZE,CutDispatchZL.Qty,case when IsNull(C' +
        'utDispatchS.okCutNum,0)>=CutDispatchZL.CutNum  then '#39'OK'#39' else '#39#39 +
        ' end as CutOK  '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS where CutDispatchS.ZLBH = '#39'Y1' +
        '806-0827'#39'  Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join CLZL on CLZL.cldh=CutDispatchZL.CLBH'
      'left join BWZL on BWZL.BWDH=CutDispatchZL.BWBH'
      'where CutDispatchZL.ZLBH = '#39'Y1806-0827'#39' ) CutDis'
      'Group by CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM')
    Left = 360
    Top = 168
  end
  object DS4: TDataSource
    DataSet = CutDisSDetQry
    Left = 360
    Top = 200
  end
  object SMDDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM'
      
        '      ,Max(case when CutDis.SIZE='#39'06.0'#39' then CutOK end) as '#39'06.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'07.0'#39' then CutOK end) as '#39'07.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'08.0'#39' then CutOK end) as '#39'08.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'09.0'#39' then CutOK end) as '#39'09.0' +
        #39
      '      ,Sum(Qty) as Pairs'
      
        'from (  select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,BWZL.YWSM,B' +
        'WZL.ZWSM,CutDispatchZL.SIZE,CutDispatchZL.Qty,case when IsNull(C' +
        'utDispatchS.okCutNum,0)>=CutDispatchZL.CutNum  then '#39'OK'#39' else '#39#39 +
        ' end as CutOK  '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS where CutDispatchS.ZLBH = '#39'Y1' +
        '806-0827'#39'  Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join CLZL on CLZL.cldh=CutDispatchZL.CLBH'
      'left join BWZL on BWZL.BWDH=CutDispatchZL.BWBH'
      'where CutDispatchZL.ZLBH = '#39'Y1806-0827'#39' ) CutDis'
      'Group by CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM')
    Left = 425
    Top = 168
  end
  object DS5: TDataSource
    DataSet = SMDDQry
    Left = 425
    Top = 200
  end
  object Track: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select MRCardS.ListNo, MRCard.DemandDate, MRCard.DemandTime, Mat' +
        'erialID, CLZL.YWPM, CLZL.ZWPM, CLZL.DWBH, '
      
        '       RY_Begin, LotNO, Usage, CAST(dbo.fSignsToNoSigns(MRCard.R' +
        'emark) AS VARCHAR(50)) Remark, IssuanceUsage, MRCardS.Remark Rem' +
        'arkS, MRCardS.UserID, MRCardS.UserDate'
      'from MRCardS'
      'left join MRCard on MRCard.ListNo=MRCardS.ListNo'
      'inner join CLZL on CLZL.CLDH=MRCardS.MaterialID'
      'where MRCardS.RY_Begin=:ZLBH and MRCardS.MaterialID=:CLBH')
    Left = 364
    Top = 764
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object TrackListNo: TStringField
      FieldName = 'ListNo'
    end
    object TrackDemandDate: TDateTimeField
      FieldName = 'DemandDate'
    end
    object TrackDemandTime: TStringField
      FieldName = 'DemandTime'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'MaterialID'
    end
    object TrackYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object TrackZWPM: TStringField
      FieldName = 'ZWPM'
      Size = 200
    end
    object TrackDWBH: TStringField
      FieldName = 'DWBH'
    end
    object StringField6: TStringField
      FieldName = 'RY_Begin'
    end
    object TrackLotNO: TStringField
      FieldName = 'LotNO'
      Size = 50
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object StringField9: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'IssuanceUsage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object TrackRemarkS: TStringField
      FieldName = 'RemarkS'
      Size = 200
    end
    object TrackUserID: TStringField
      FieldName = 'UserID'
    end
    object TrackUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = Track
    Left = 388
    Top = 764
  end
  object PopupMenu2: TPopupMenu
    Left = 368
    Top = 800
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
end
