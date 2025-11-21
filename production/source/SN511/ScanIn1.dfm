object ScanIn: TScanIn
  Left = -8
  Top = -8
  Width = 1936
  Height = 1056
  Caption = 'ScanIn'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1920
    Height = 153
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1633
      Height = 151
      Align = alClient
      BevelOuter = bvNone
      Color = 14737600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 202
        Top = 16
        Width = 111
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'WAREHOUSE:'
      end
      object Label2: TLabel
        Left = 328
        Top = 16
        Width = 153
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'PRODUCTION LINE:'
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 73
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Stoage:'
      end
      object Label4: TLabel
        Left = 208
        Top = 88
        Width = 145
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = #29983#29986#32026#21029'(TO-SX)'
      end
      object Label6: TLabel
        Left = 536
        Top = 88
        Width = 84
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Carton:'
      end
      object Label7: TLabel
        Left = 528
        Top = 112
        Width = 92
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Shoes:'
      end
      object Label8: TLabel
        Left = 113
        Top = 88
        Width = 72
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Location:'
      end
      object CBX1: TComboBox
        Left = 218
        Top = 40
        Width = 81
        Height = 28
        Style = csDropDownList
        CharCase = ecUpperCase
        Color = 16744703
        ItemHeight = 20
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 344
        Top = 40
        Width = 113
        Height = 28
        ReadOnly = True
        TabOrder = 1
        OnDblClick = Edit1DblClick
      end
      object Edit2: TEdit
        Left = 8
        Top = 112
        Width = 73
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 2
        Text = '0'
      end
      object CBX2: TComboBox
        Left = 232
        Top = 112
        Width = 73
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        ItemIndex = 0
        TabOrder = 3
        Text = 'A'
        Items.Strings = (
          'A'
          'B'
          'C'
          'D')
      end
      object Edit4: TEdit
        Left = 384
        Top = 88
        Width = 145
        Height = 63
        BevelInner = bvNone
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Color = 14737600
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -48
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 592
        Top = 16
        Width = 121
        Height = 28
        TabOrder = 5
        Visible = False
      end
      object BitBtn1: TBitBtn
        Left = 456
        Top = 40
        Width = 17
        Height = 28
        Caption = '...'
        TabOrder = 6
        OnClick = BitBtn1Click
      end
      object RYEdit: TEdit
        Left = 592
        Top = 48
        Width = 121
        Height = 28
        TabOrder = 7
        Visible = False
      end
      object Button4: TButton
        Left = 480
        Top = 40
        Width = 73
        Height = 25
        Caption = 'W N'
        TabOrder = 8
        OnClick = Button4Click
      end
      object StaticText1: TStaticText
        Left = 624
        Top = 88
        Width = 88
        Height = 24
        Caption = 'Show Gram'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object StaticText2: TStaticText
        Left = 624
        Top = 112
        Width = 88
        Height = 24
        Caption = 'Show Gram'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object KVBHEdit: TEdit
        Left = 112
        Top = 112
        Width = 73
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 11
        Text = '0'
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 6
        Width = 185
        Height = 73
        TabOrder = 12
        object RB1: TRadioButton
          Left = 4
          Top = 18
          Width = 161
          Height = 17
          Caption = 'Scan Carton'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RB1Click
        end
        object RB2: TRadioButton
          Left = 3
          Top = 44
          Width = 179
          Height = 17
          Caption = 'Scan Carton and Inbox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = RB1Click
        end
      end
      object Edit6: TEdit
        Left = 752
        Top = 16
        Width = 89
        Height = 28
        TabOrder = 13
        Visible = False
      end
      object CheckBox2: TCheckBox
        Left = 1488
        Top = 32
        Width = 137
        Height = 17
        Caption = 'Skip sgw<>rgw'
        TabOrder = 14
        Visible = False
      end
    end
    object Panel3: TPanel
      Left = 1634
      Top = 1
      Width = 285
      Height = 151
      Align = alRight
      BevelOuter = bvNone
      Color = 14737600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 72
        Width = 177
        Height = 24
        AutoSize = False
        Caption = 'SCAN BARCODE:'
      end
      object Button1: TButton
        Left = 8
        Top = 16
        Width = 81
        Height = 41
        Caption = 'Upload'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 96
        Top = 16
        Width = 81
        Height = 41
        Caption = 'Clear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 184
        Top = 16
        Width = 81
        Height = 41
        Caption = 'Exit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Edit3: TEdit
        Left = 8
        Top = 96
        Width = 265
        Height = 52
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -29
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = Edit3Enter
        OnKeyPress = Edit3KeyPress
      end
      object CheckBox1: TCheckBox
        Left = 184
        Top = 75
        Width = 105
        Height = 17
        Caption = 'Check Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object MSComm1: TMSComm
        Left = 240
        Top = 80
        Width = 32
        Height = 32
        ControlData = {
          2143341208000000ED030000ED03000001568A64000006000000010000040000
          00020000802500000000080000000000000000003F00000005000000}
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 153
    Width = 1920
    Height = 864
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1698
      Top = 1
      Height = 862
      Align = alRight
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1697
      Height = 862
      Align = alClient
      Color = 11927514
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      ParentFont = False
      PopupMenu = PopupMenu1
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
          FieldName = 'CARTONBAR'
          Footers = <
            item
              FieldName = 'CARTONBAR'
              ValueType = fvtCount
            end>
          ReadOnly = True
          Title.Caption = #22806#31665#32232#34399'|CARTONBAR'
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'YSBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #35330#21934#32232#34399'|YSBH'
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'SKU#|Article'
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'KHPO'
          Footers = <>
          Title.Caption = 'KHPO|KHPO'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          ReadOnly = True
          Title.Caption = #38795#21517'|XieMing'
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Title.Caption = #22283#23478'|Country'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'XH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #33394#34399'|XH'
          Width = 32
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.Caption = #38617#25976'|Qty'
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          ReadOnly = True
          Title.Caption = #37096#38272'|DepName'
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'CKBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #24288#21312'|CKBH'
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'KCBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20489#24235'|KCBH'
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'KVBH'
          Footers = <>
          Title.Caption = #20301#32622'|KVBH'
        end
        item
          EditButtons = <>
          FieldName = 'LPNBarCode'
          Footers = <>
          Title.Caption = 'UCC'#27161'|LPNBarCode'
        end
        item
          EditButtons = <>
          FieldName = 'INCS'
          Footers = <>
          ReadOnly = True
          Title.Caption = #27425#25976'|INCS'
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'INDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26085#24235#26085'|INDATE'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'rgw'
          Footers = <>
          ReadOnly = True
          Title.Caption = #37325#37327'|rgw'
        end
        item
          EditButtons = <>
          FieldName = 'INUSER'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20154#21729'|INUSER'
        end>
    end
    object rwin: TMemo
      Left = 493
      Top = 124
      Width = 185
      Height = 89
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'rwin')
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object Panel5: TPanel
      Left = 1701
      Top = 1
      Width = 218
      Height = 862
      Align = alRight
      Caption = 'RightPanel'
      TabOrder = 2
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 1
        Width = 216
        Height = 707
        Align = alClient
        Color = 11927514
        DataSource = DS2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDCC'
            Footers = <
              item
                FieldName = 'DDCC'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = #23610#30908'|DDCC'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'XXCC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #23610#30908'|XXCC'
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = #38617#25976'|Qty'
            Width = 28
          end
          item
            Color = 12320767
            EditButtons = <>
            FieldName = 'In_Qty'
            Footers = <
              item
                FieldName = 'In_Qty'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = #25475#25551'|In_Qty'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'InboxBar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #20839#30418#30908'|InboxBar'
            Width = 62
          end>
      end
      object DBGridEhKCLL: TDBGridEh
        Left = 1
        Top = 708
        Width = 216
        Height = 153
        Align = alBottom
        Color = 11927514
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|DDBH'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38617#25976'|Pairs'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CartonOK'
            Footers = <>
            Title.Caption = #31665#23376'OK|CartonOK'
            Width = 60
            WordWrap = True
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235'|Qty'
            Width = 39
          end
          item
            Color = 12320767
            EditButtons = <>
            FieldName = 'MatFlag'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38936#26009'OK|VT OK'
            Width = 52
          end>
      end
    end
  end
  object YWCP: TQuery
    CachedUpdates = True
    AfterDelete = YWCPAfterDelete
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select YWCP.*,XXZL.Article,XXZL.XieMing,BDepartment.DepName,'
      
        '          XXZL.XieXing,XXZL.SheHao,DDZL.DDGB,YWDD.YSBH,LBZLS.YWS' +
        'M as Country,ddzl.KHPO'
      'from YWCP'
      'left join YWDD  on YWCP.DDBH=YWDD.DDBH'
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      'left join lbzls on  LBZLS.LBDH=DDZL.DDGB and LBZLS.lb='#39'06'#39
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=YWCP.DepNO'
      'where YWCP.EXEDate is null '
      '         and YWCP.CartonBar='#39'AAAA'#39
      'order by  YWCP.CartonBar')
    UpdateObject = UpYWCP
    Left = 208
    Top = 209
    object YWCPCARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      FixedChar = True
    end
    object YWCPDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWCPCARTONNO: TIntegerField
      FieldName = 'CARTONNO'
    end
    object YWCPXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object YWCPQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object YWCPSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object YWCPCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object YWCPDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object YWCPKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object YWCPINCS: TSmallintField
      FieldName = 'INCS'
      DisplayFormat = '##,#0'
    end
    object YWCPINDATE: TDateTimeField
      FieldName = 'INDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWCPOUTCS: TSmallintField
      FieldName = 'OUTCS'
      DisplayFormat = '##,#0'
    end
    object YWCPOUTDATE: TDateTimeField
      FieldName = 'OUTDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWCPINSPECTCS: TIntegerField
      FieldName = 'INSPECTCS'
      DisplayFormat = '##,#0'
    end
    object YWCPINSPECTDATE: TDateTimeField
      FieldName = 'INSPECTDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWCPEXEDATE: TDateTimeField
      FieldName = 'EXEDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWCPMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
    object YWCPUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWCPUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWCPYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWCPArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWCPXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWCPDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object YWCPLastInDate: TDateTimeField
      FieldName = 'LastInDate'
    end
    object YWCPCON_NO: TStringField
      FieldName = 'CON_NO'
      FixedChar = True
    end
    object YWCPDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object YWCPXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YWCPSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object YWCPsgw: TFloatField
      FieldName = 'sgw'
    end
    object YWCPrgw: TFloatField
      FieldName = 'rgw'
    end
    object YWCPINUSER: TStringField
      FieldName = 'INUSER'
      FixedChar = True
      Size = 10
    end
    object YWCPKVBH: TStringField
      FieldName = 'KVBH'
      FixedChar = True
      Size = 5
    end
    object YWCPLPNBarCode: TStringField
      FieldName = 'LPNBarCode'
      FixedChar = True
    end
    object YWCPYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object YWCPCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object YWCPKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = YWCP
    Left = 208
    Top = 241
  end
  object YWBZPOS: TQuery
    CachedUpdates = True
    AfterOpen = YWBZPOSAfterOpen
    OnNewRecord = YWBZPOSNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select YWBZPOS.DDBH,YWBZPOS.DDCC,(YWBZPOS.Qty-isnull(YWDDSDZ.Qty' +
        ',0)) as Qty,ZLZLS.XXCC,0 as In_Qty,YWCPLH.InboxBar'
      'from YWBZPOS'
      'left join YWDD on YWBZPOS.DDBH=YWDD.DDBH'
      'left join DDZl on DDZl.DDBH=YWDD.YSBH'
      
        'left join ZLZLS on ZLZLS.ZLCC=YWBZPOS.DDCC and DDZL.ZLBH=ZLZLS.Z' +
        'LBH'
      
        'left join YWDDSDZ on  YWDDSDZ.DDCC=YWBZPOS.DDCC   and YWDDSDZ.Ca' +
        'rtonBar=:CartonBar'
      'left join YWCPLH on YWCPLH.XXCC=ZLZLS.XXCC '
      
        '           and YWCPLH.XieXing=DDZL.XieXing and YWCPLH.SheHao=DDZ' +
        'L.SheHao'
      '           and YWCPLH.GBBH=:GBBH'
      'where YWBZPOS.DDBH=:DDBH'
      '         and YWBZPOS.XH=:XH'
      ''
      'order by  YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.DDCC')
    UpdateObject = UpYWBZPOS
    Left = 608
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CartonBar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GBBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'XH'
        ParamType = ptUnknown
        Size = 4
      end>
    object YWBZPOSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOSDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOSXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOSQty: TIntegerField
      FieldName = 'Qty'
    end
    object YWBZPOSIn_Qty: TIntegerField
      FieldName = 'In_Qty'
    end
    object YWBZPOSInboxBar: TStringField
      FieldName = 'InboxBar'
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = YWBZPOS
    Left = 640
    Top = 217
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 208
  end
  object YWCP2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,YWCP.XH,YWCP.Qty,Y' +
        'WCP.SB,YWCP.CKBH,YWCP.DepNO,'
      
        #9'   YWCP.KCBH,YWCP.INCS,YWCP.INDATE,YWCP.LastInDate,YWCP.OUTCS,Y' +
        'WCP.OUTDATE,YWCP.INSPECTCS,'
      
        #9'   YWCP.INSPECTDATE,YWCP.EXEDATE,YWCP.MEMO,YWCP.CON_NO,YWCP.USE' +
        'RID,YWCP.USERDATE,YWCP.YN,'
      
        #9'   isnull(YWCP.sgw,0) as sgw,isnull(YWCP.rgw,0) as rgw,isnull(Y' +
        'WCP.ogw,0) as ogw,'
      
        #9'   XXZL.Article,XXZL.XieMing,YWBZPO.YWQty,BDepartment.DepName,X' +
        'XZL.XieXing,XXZL.SheHao,DDZL.DDGB,YWCP.LPNBarCode,YWDD.YSBH,'
      '     LBZLS.YWSM as Country'
      'from YWCP'
      'left join YWDD  on YWCP.DDBH=YWDD.DDBH'
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      'left join lbzls on  LBZLS.LBDH=DDZL.DDGB and LBZLS.lb='#39'06'#39
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=YWCP.DepNO'
      'left join (select DDBH,XH,sum(Qty) as YWQty from YWBZPOS'
      
        '             group by DDBH,XH) YWBZPO on YWBZPO.DDBH=YWCP.DDBH a' +
        'nd YWBZPO.XH=YWCP.XH'
      
        'where  DDZL.ShipDate>GetDate()-90 and YWCP.EXEDate is null and y' +
        'wcp.USERDATE > '#39'20130101'#39'   '
      'order by  YWCP.CartonBar')
    Left = 240
    Top = 209
    object YWCP2CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      FixedChar = True
    end
    object YWCP2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWCP2CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
    end
    object YWCP2XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object YWCP2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object YWCP2SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object YWCP2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object YWCP2DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object YWCP2KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object YWCP2INCS: TSmallintField
      FieldName = 'INCS'
    end
    object YWCP2INDATE: TDateTimeField
      FieldName = 'INDATE'
    end
    object YWCP2OUTCS: TSmallintField
      FieldName = 'OUTCS'
    end
    object YWCP2OUTDATE: TDateTimeField
      FieldName = 'OUTDATE'
    end
    object YWCP2INSPECTCS: TIntegerField
      FieldName = 'INSPECTCS'
    end
    object YWCP2INSPECTDATE: TDateTimeField
      FieldName = 'INSPECTDATE'
    end
    object YWCP2EXEDATE: TDateTimeField
      FieldName = 'EXEDATE'
    end
    object YWCP2MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
    object YWCP2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWCP2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object YWCP2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWCP2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWCP2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWCP2YWQty: TIntegerField
      FieldName = 'YWQty'
    end
    object YWCP2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object YWCP2LastInDate: TDateTimeField
      FieldName = 'LastInDate'
    end
    object YWCP2CON_NO: TStringField
      FieldName = 'CON_NO'
      FixedChar = True
    end
    object YWCP2DDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object YWCP2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YWCP2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object YWCP2sgw: TFloatField
      FieldName = 'sgw'
    end
    object YWCP2rgw: TFloatField
      FieldName = 'rgw'
    end
    object YWCP2LPNBarCode: TStringField
      FieldName = 'LPNBarCode'
      FixedChar = True
    end
    object YWCP2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object YWCP2Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
  end
  object UpYWBZPOS: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPOS'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  DDCC = :DDCC,'
      '  Qty = :Qty,'
      '  CTS = :CTS,'
      '  MEMO = :MEMO,'
      '  CTQ = :CTQ,'
      '  CTZ = :CTZ,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH and'
      '  DDCC = :OLD_DDCC')
    InsertSQL.Strings = (
      'insert into YWBZPOS'
      
        '  (DDBH, XH, DDCC, Qty, CTS, MEMO, CTQ, CTZ, USERDATE, USERID, Y' +
        'N)'
      'values'
      
        '  (:DDBH, :XH, :DDCC, :Qty, :CTS, :MEMO, :CTQ, :CTZ, :USERDATE, ' +
        ':USERID, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from YWBZPOS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH and'
      '  DDCC = :OLD_DDCC')
    Left = 672
    Top = 217
  end
  object UpYWCP: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCP'
      'set'
      '  SB = :SB,'
      '  CKBH = :CKBH,'
      '  DepNO = :DepNO,'
      '  KCBH = :KCBH,'
      '  INCS = :INCS,'
      '  INDATE = :INDATE,'
      '  LastInDate = :LastInDate,'
      '  rgw = :rgw,'
      '  INUser =:INUser'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    InsertSQL.Strings = (
      'insert into YWCP'
      '  (SB, CKBH, DepNO, KCBH, INCS, INDATE, LastInDate, rgw)'
      'values'
      '  (:SB, :CKBH, :DepNO, :KCBH, :INCS, :INDATE, :LastInDate, :rgw)')
    DeleteSQL.Strings = (
      'delete from YWCP'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    Left = 208
    Top = 273
  end
  object PopupMenu1: TPopupMenu
    Left = 172
    Top = 210
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Import1: TMenuItem
      Caption = 'Import'
      OnClick = Import1Click
    end
  end
  object GBBH: TQuery
    AfterOpen = GBBHAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select distinct GBBH'
      'from YWCPLH'
      'where XieXing=:XieXing'
      '         and SheHao=:SheHao'
      '         and GBBH=:DDGB')
    Left = 568
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDGB'
        ParamType = ptUnknown
      end>
  end
  object ScanCheck: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ywcp.cartonbar,scan.*,(case when scan.INqty < scan.Aqty t' +
        'hen 1 else 0 end) as ScanFG'
      
        'from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.' +
        'cts,ok.okcts,ok.Aqty,sum(YWBZPOS.qty) as INqty'#9'   '
      #9'  from ywcp'
      
        #9'  left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh ' +
        '=ywcp.xh'
      
        #9'  left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,su' +
        'm(qty * okcts) as Aqty from smddss'
      #9#9#9'     where ddbh like '#39'YV1310-0112%'#39' and smddss.gxlb = '#39'A'#39
      #9#9#9#9' group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc'
      #9'  where ywcp.ddbh = '#39'YV1310-0112'#39' and lastindate is not null'
      
        'group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,o' +
        'k.Aqty) as scan'
      'left join ywcp on YWCP.DDBH = scan.DDBH and YWCP.XH = scan.XH'
      
        'where ywcp.CARTONBAR = '#39'YV1310-0112 0008'#39' and (case when scan.IN' +
        'qty < scan.Aqty then 1 else 0 end) = '#39'0'#39
      '')
    Left = 624
    Top = 49
    object ScanCheckddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object ScanCheckXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object ScanCheckPagQty: TIntegerField
      FieldName = 'PagQty'
    end
    object ScanCheckxxcc: TStringField
      FieldName = 'xxcc'
      FixedChar = True
      Size = 6
    end
    object ScanCheckcts: TIntegerField
      FieldName = 'cts'
    end
    object ScanCheckokcts: TIntegerField
      FieldName = 'okcts'
    end
    object ScanCheckAqty: TIntegerField
      FieldName = 'Aqty'
    end
    object ScanCheckINqty: TIntegerField
      FieldName = 'INqty'
    end
    object ScanCheckScanFG: TIntegerField
      FieldName = 'ScanFG'
    end
    object ScanCheckFlag: TStringField
      FieldName = 'Flag'
    end
  end
  object GetGram: TQuery
    DatabaseName = 'DB'
    Left = 656
    Top = 49
  end
  object FirstInCheck: TQuery
    DatabaseName = 'DB'
    Left = 593
    Top = 49
  end
  object YWCPExe: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 209
  end
  object YPCPMat: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.Pairs,COUNT(ISNULL(YWCP.CartonNo,0))as Car' +
        'tonOK,SUM(IsNull(YWCP.Qty,0)) as Qty,'#39'N'#39' as MatFlag,DDZL.Flag'
      'from DDZL'
      'left join YWDD on YWDD.YSBH=DDZL.DDBH'
      'left join YWCP on YWCP.DDBH=YWDD.DDBH and YWCP.SB=1'
      'where 1=2'
      'Group by DDZL.DDBH,DDZL.Pairs,DDZL.Flag')
    UpdateObject = UpYWCPMat
    Left = 319
    Top = 209
    object YPCPMatDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YPCPMatPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object YPCPMatCartonOK: TIntegerField
      FieldName = 'CartonOK'
    end
    object YPCPMatQty: TIntegerField
      FieldName = 'Qty'
    end
    object YPCPMatMatFlag: TStringField
      FieldName = 'MatFlag'
      FixedChar = True
      Size = 1
    end
    object YPCPMatFlag: TStringField
      FieldName = 'Flag'
      FixedChar = True
      Size = 1
    end
  end
  object UpYWCPMat: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCP'
      'set'
      '  SB = :SB,'
      '  CKBH = :CKBH,'
      '  DepNO = :DepNO,'
      '  KCBH = :KCBH,'
      '  INCS = :INCS,'
      '  INDATE = :INDATE,'
      '  LastInDate = :LastInDate,'
      '  rgw = :rgw,'
      '  INUser =:INUser'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    InsertSQL.Strings = (
      'insert into YWCP'
      '  (SB, CKBH, DepNO, KCBH, INCS, INDATE, LastInDate, rgw)'
      'values'
      '  (:SB, :CKBH, :DepNO, :KCBH, :INCS, :INDATE, :LastInDate, :rgw)')
    DeleteSQL.Strings = (
      'delete from YWCP'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    Left = 320
    Top = 273
  end
  object DS3: TDataSource
    DataSet = YPCPMat
    Left = 320
    Top = 241
  end
  object Qtemp1: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 240
  end
  object Qtemp2: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 280
  end
end
