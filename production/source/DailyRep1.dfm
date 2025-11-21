object DailyRep: TDailyRep
  Left = 259
  Top = 167
  Width = 800
  Height = 500
  Caption = 'DailyRep'
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
    Width = 792
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 384
      Top = 40
      Width = 61
      Height = 20
      Caption = 'Process:'
    end
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 41
      Height = 20
      Caption = 'From:'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
    end
    object Label4: TLabel
      Left = 208
      Top = 40
      Width = 22
      Height = 20
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 264
      Top = 96
      Width = 54
      Height = 20
      Caption = 'DepNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 464
      Top = 32
      Width = 81
      Height = 28
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'C'
        'S'
        'A'
        'O'
        'W'
        'I'
        'L'
        'Y'
        'Z')
    end
    object Edit2: TEdit
      Left = 72
      Top = 88
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 640
      Top = 80
      Width = 105
      Height = 41
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 640
      Top = 24
      Width = 105
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 32
      Width = 121
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 240
      Top = 32
      Width = 121
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 5
    end
    object ListBox1: TDBLookupComboBox
      Left = 344
      Top = 88
      Width = 281
      Height = 28
      KeyField = 'ID'
      ListField = 'ID;DepName'
      ListSource = DSDep
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 482
    Height = 337
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SCDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bzQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lack_Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'person'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 482
    Top = 129
    Width = 310
    Height = 337
    Align = alRight
    TabOrder = 2
    object Image1: TImage
      Left = 8
      Top = 184
      Width = 41
      Height = 41
      Picture.Data = {
        07544269746D61704E0A0000424D4E0A00000000000036040000280000002800
        000027000000010008000000000018060000CE0E0000CE0E0000000100000000
        0000000000008080800000008000008080000080000080800000800000008000
        80004080800040400000FF80000080400000FF00400000408000FFFFFF00C0C0
        C0000000FF0000FFFF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF
        0000FFFF8000FF8080008000FF004080FF00FF0080000000100000A000004600
        200006C12800F7BF40005681000000009900F7BF00004600000000003400F7BF
        06004600060000003000FBBFBC00F8BF0000460010000000D100E01900000000
        0600000050005B004C005B0068005B00FC0061004C005B00F80046002A00E119
        F80046004C005B000000000068005B00A500E5194C005B0044005B0033003200
        000000006C005B005A00E51914003CC36C005B0031000000E8005B009000E719
        F000E61904005B003800B2824F00B2820000B2828A00E0198E00E019F000E619
        000000005400B282D300E01954000000D4005B005000E1195400B2821400B282
        2500E11944000000140000000100FEFF0300FFFF0A00030000000000C0000046
        E000E7190400A58100000000330000009800FBBF04000000DE00E719E000E719
        6B004600330000003F000002980000007800A58138004600A0004600CA005B00
        040000002C000000C8005B00740046002C000002DC0000007000A58148004600
        A2004600400000008300F7BF20004600010003007600F7BF010000007D000000
        20000000480046005000030044004600580046006D00568172000A0048000300
        C0000000720000007400EE1F7F003085EF0037030000672F0800000016005720
        C200729EFE00FD555600E6FDFF00182D0000600F00004485500027015300600F
        01003E9F0A00E14A2700D0005E002F3C0A007406EE003E9F0E00AE85DC003E9F
        0000848550002701EC0014050000000002009204000000003E00C6850000AE85
        0000010000000000D0000000BA00507F2700537F18008F0F3F00F4856E002701
        64003F0100000000F4000000E4000000880000008F00000018003F01DF000202
        CF00005C8F0000F318006100880000000A00537F88002979EA003E9F3E00FF05
        4C00AC11AF00EA0ED200CF0000008F00000018006100880000000A0053008800
        2900EA003E003E00FF001A9C0A00AF00EA00D200290000005E001A9C0E001A9C
        0000C81F0000C00E000000001A00AE85F000537FC800D70D3F00F0C0D0000000
        D7002044D70000F3C8006300D000537FD0002979A6001A9C1A00CA086A00537F
        3800EF0F3F000000EF00000038004078EF0000F338005E00E800537FE8002979
        CE000E9B0E006E137A000000B0000000B7000000F000C078B70000F3F0005F00
        B000537FB00029799A00029A02007E138A00A079A70000F3E0005F00A0000000
        9600537FA0002979C200F698F600FF05D800821396008613A2009213AE00A613
        BA00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001010101010101010101010
        1010101010101010101010000000000000000000000000000000001010101010
        1010101010101010101010101010101010101010100000000000000000000000
        0000101010101010101010101010101010101010101010101010101010100000
        0000000000000000001010101010101010101010101010101010101010101010
        1010101010101000000000000000000210101010101010101010101010101010
        1010101010101010101010101010101000000000000002021010101010101010
        1010101010101010101010101010101010101010101010100000000000020210
        1010101010101010101010101010101010101010101010101010101010101010
        1000000002020210101010101010100E0E101010101010101010101010101010
        10101010101010101000000002020210101010101010100E0E0E0E1010101010
        101010101010101010101010101010101000000202020210101010101010100E
        0E0E0E0E0E101010101010101010101010101010101010101000000202020210
        101010101010100E0E0E0E0E0E0E101010101010101010101010101010101010
        1000000202020210101010101010100E0E0E0E0E0E0E0E0E1010101010101010
        10101010101010101000000202020210101010101010100E0E0E0E0E0E0E0E0E
        0E0E10101010101010101010101010101000000202020210101010101010100E
        0E0E0E0E0E0E0E0E0E0E0E101010101010101010101010101000000202020210
        101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E1010101010101010101010
        1000000202020210101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E10
        10101010101010101000000202020210101010101010100E0E0E0E0E0E0E0E0E
        0E0E0E0E0E0E0E0E0E101010101010101000000202020210101010101010100E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E1010101010101000000202020210
        101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E101010101010
        1000000202020210101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
        0E101010101010101000000202020210101010101010100E0E0E0E0E0E0E0E0E
        0E0E0E0E0E0E0E1010101010101010101000000202020210101010101010100E
        0E0E0E0E0E0E0E0E0E0E0E0E0E10101010101010101010101000000202020210
        101010101010100E0E0E0E0E0E0E0E0E0E0E0E10101010101010101010101010
        1000000202020210101010101010100E0E0E0E0E0E0E0E0E0E0E101010101010
        10101010101010101000000202020210101010101010100E0E0E0E0E0E0E0E0E
        101010101010101010101010101010101000000202020210101010101010100E
        0E0E0E0E0E0E1010101010101010101010101010101010101000000202020210
        101010101010100E0E0E0E0E0E10101010101010101010101010101010101010
        1000000202020210101010101010100E0E0E0E10101010101010101010101010
        10101010101010101000000202020202101010101010100E0E10101010101010
        1010101010101010101010101010101000000002020202021010101010101010
        1010101010101010101010101010101010101010101010100000000202020202
        0210101010101010101010101010101010101010101010101010101010101000
        0000000002020202020210101010101010101010101010101010101010101010
        1010101010100000000000000202020202020210101010101010101010101010
        1010101010101010101010101000000000000000000202020202020202101010
        1010101010101010101010101010101010101000000000000000000000000202
        0202020202020202020202020202020202020202020202020202000000000000
        0000000000000002020202020202020202020202020202020202020202020202
        0200000000000000000000000000000000020202020202020202020202020202
        0202020202020200000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 308
      Height = 168
      Align = alTop
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 16
        Top = 1
        Width = 291
        Height = 166
        Align = alRight
        DataSource = DS2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Time'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCBH'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProQty'
            Width = 62
            Visible = True
          end>
      end
    end
    object DBGrid3: TDBGrid
      Left = 56
      Top = 169
      Width = 253
      Height = 167
      Align = alRight
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'XXCC'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 85
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    BeforeOpen = Query1BeforeOpen
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,'
      ' isnull(sum(SCBBS.Qty),0) as Qty,SCBZCL.Qty as bzQty'
      'from SCBB  left join SCBBS'
      'on SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo'
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      'where SCBBS.YN<>'#39'3'#39
      'group by SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty'
      
        'Order by  SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty' +
        ' ')
    Left = 448
    Top = 200
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 15
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1bzQty: TIntegerField
      FieldName = 'bzQty'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1Lack_Qty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lack_Qty'
      DisplayFormat = '##,#0.0'
      Calculated = True
    end
    object Query1person: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'person'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
    end
    object NN2: TMenuItem
      Caption = 'Excel'
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
  object TDep: TTable
    DatabaseName = 'DB'
    TableName = 'dbo.BDepartment'
    Left = 496
    Top = 121
  end
  object DSDep: TDataSource
    DataSet = TDep
    Left = 456
    Top = 121
  end
  object scbbs: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select SCBB.SCDate,SCBB.ProNo,'
      
        '(convert(varchar(2),SCBB.SCClock)+'#39':'#39'+convert(varchar(2),SCBB.SC' +
        'Minute)) as Time,SCBBS.SCBH,'
      'isnull(SCBBS.Qty,0) as ProQty'
      'from SCBB,SCBBS'
      'where SCBB.ProNo=SCBBS.ProNo'
      'and SCBB.SCDate=:SCdate'
      'and SCBB.DepNo=:DepNo'
      '')
    Left = 665
    Top = 138
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'SCDate'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'DepNo'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DS2: TDataSource
    DataSet = scbbs
    Left = 697
    Top = 138
  end
  object SCBBSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select XXCC,Qty'
      'from SCBBSS'
      'where SCBH=:SCBH'
      'and ProNo=:ProNo')
    Left = 704
    Top = 369
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ProNo'
        ParamType = ptUnknown
        Size = 11
      end>
    object SCBBSSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCBBSS.XXCC'
      FixedChar = True
      Size = 5
    end
    object SCBBSSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCBBSS.Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS3: TDataSource
    DataSet = SCBBSS
    Left = 752
    Top = 369
  end
  object SaveDialog1: TSaveDialog
    Left = 776
    Top = 40
  end
end
