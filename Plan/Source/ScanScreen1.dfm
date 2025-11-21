object ScanScreen: TScanScreen
  Left = 305
  Top = 223
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'ScanScreen'
  ClientHeight = 730
  ClientWidth = 1016
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
    Width = 1016
    Height = 730
    Align = alClient
    Color = 15265791
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = #27161#26999#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object L1: TLabel
      Left = 32
      Top = 152
      Width = 25
      Height = 48
      Caption = '1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L2: TLabel
      Left = 32
      Top = 224
      Width = 25
      Height = 48
      Caption = '2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L3: TLabel
      Left = 32
      Top = 296
      Width = 25
      Height = 48
      Caption = '3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L4: TLabel
      Left = 32
      Top = 368
      Width = 25
      Height = 48
      Caption = '4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L5: TLabel
      Left = 32
      Top = 440
      Width = 25
      Height = 48
      Caption = '5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L6: TLabel
      Left = 32
      Top = 512
      Width = 25
      Height = 48
      Caption = '6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L7: TLabel
      Left = 32
      Top = 584
      Width = 25
      Height = 48
      Caption = '7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L8: TLabel
      Left = 32
      Top = 656
      Width = 25
      Height = 48
      Caption = '8'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit11: TEdit
      Left = 96
      Top = 152
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 'A2-M_12'
    end
    object Edit12: TEdit
      Left = 336
      Top = 152
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '2999'
    end
    object Edit13: TEdit
      Left = 560
      Top = 152
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '2999'
    end
    object Edit14: TEdit
      Left = 792
      Top = 152
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit23: TEdit
      Left = 560
      Top = 224
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '2999'
    end
    object Edit22: TEdit
      Left = 336
      Top = 224
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '2999'
    end
    object Edit24: TEdit
      Left = 792
      Top = 224
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Edit21: TEdit
      Left = 96
      Top = 224
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Text = 'A2-M_12'
    end
    object Edit31: TEdit
      Left = 96
      Top = 296
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = 'A2-M_12'
    end
    object Edit32: TEdit
      Left = 336
      Top = 296
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      Text = '2999'
    end
    object Edit33: TEdit
      Left = 560
      Top = 296
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Text = '2999'
    end
    object Edit34: TEdit
      Left = 792
      Top = 296
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object Edit41: TEdit
      Left = 96
      Top = 368
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = 'A2-M_12'
    end
    object Edit42: TEdit
      Left = 336
      Top = 368
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Text = '2999'
    end
    object Edit43: TEdit
      Left = 560
      Top = 368
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = '2999'
    end
    object Edit44: TEdit
      Left = 792
      Top = 368
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object Edit51: TEdit
      Left = 96
      Top = 440
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      Text = 'A2-M_12'
    end
    object Edit52: TEdit
      Left = 336
      Top = 440
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      Text = '2999'
    end
    object Edit53: TEdit
      Left = 560
      Top = 440
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Text = '2999'
    end
    object Edit54: TEdit
      Left = 792
      Top = 440
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object Panel2: TPanel
      Left = 64
      Top = 0
      Width = 905
      Height = 137
      Color = 12771042
      TabOrder = 20
      object Label2: TLabel
        Left = 72
        Top = 8
        Width = 92
        Height = 43
        Caption = 'UNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 72
        Top = 48
        Width = 90
        Height = 43
        Caption = #21934#20301
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 69
        Top = 94
        Width = 99
        Height = 42
        Alignment = taRightJustify
        Caption = 'DON VI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -35
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 272
        Top = 94
        Width = 154
        Height = 42
        Caption = 'KE HOACH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -35
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 296
        Top = 48
        Width = 90
        Height = 43
        Caption = #35336#21123
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 296
        Top = 8
        Width = 92
        Height = 43
        Caption = 'PLAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 496
        Top = 8
        Width = 138
        Height = 43
        Caption = 'ACTION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 512
        Top = 48
        Width = 90
        Height = 43
        Caption = #29986#37327
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 480
        Top = 94
        Width = 173
        Height = 42
        Caption = 'SAN LUONG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -35
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 718
        Top = 48
        Width = 135
        Height = 43
        Caption = #36948#25104#29575
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 732
        Top = 8
        Width = 115
        Height = 43
        Caption = 'RATE%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -43
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 743
        Top = 94
        Width = 94
        Height = 42
        Caption = 'DAT %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -35
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Button1: TButton
      Left = 16
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Button1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Button2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      Visible = False
      OnClick = Button2Click
    end
    object Edit61: TEdit
      Left = 96
      Top = 512
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      Text = 'A2-M_12'
    end
    object Edit62: TEdit
      Left = 336
      Top = 512
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      Text = '2999'
    end
    object Edit63: TEdit
      Left = 560
      Top = 512
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
      Text = '2999'
    end
    object Edit64: TEdit
      Left = 792
      Top = 512
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
    object Edit71: TEdit
      Left = 96
      Top = 584
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
      Text = 'A2-M_12'
    end
    object Edit72: TEdit
      Left = 336
      Top = 584
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
      Text = '2999'
    end
    object Edit73: TEdit
      Left = 560
      Top = 584
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 29
      Text = '2999'
    end
    object Edit74: TEdit
      Left = 792
      Top = 584
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
    end
    object Edit81: TEdit
      Left = 96
      Top = 656
      Width = 185
      Height = 51
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
      Text = 'A2-M_12'
    end
    object Edit82: TEdit
      Left = 336
      Top = 656
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
      Text = '2999'
    end
    object Edit83: TEdit
      Left = 560
      Top = 656
      Width = 153
      Height = 51
      BiDiMode = bdRightToLeft
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
      Text = '2999'
    end
    object Edit84: TEdit
      Left = 792
      Top = 656
      Width = 153
      Height = 51
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -43
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 34
    end
  end
  object DailyRep: TQuery
    OnCalcFields = DailyRepCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#DailyRep'#39') is not null  '
      '   begin   drop table #DailyRep end   '
      'select DepNo,1 as SB,Qty '
      'into  #DailyRep from SCBZCL '
      'where DepNo='#39'A120101'#39
      
        '      and convert(varchar,getdate(),111)=convert(varchar,BZDate,' +
        '111)'
      'insert into  #DailyRep '
      'select SMZL.DepNo,2 as SB,sum(SMZL.CTS*SMDDSS.Qty) as Qty'
      'from SMZL '
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR '
      'where SMZL.DepNO='#39'A120101'#39
      
        '      and convert(varchar,SMZL.ScanDate,111)=convert(varchar,get' +
        'date(),111) '
      'group by SMZL.DepNo'
      'select  #DailyRep.DepNo,Bdepartment.DepName '
      ',sum(case  when SB=1'
      ' then Qty  end) as '#39'1'#39
      ',sum(case  when SB=2'
      ' then Qty  end) as '#39'2'#39
      'from #DailyRep '
      'left join BDepartment on BDepartment.ID=#DailyRep.DepNo'
      'group by #DailyRep.DepNo,Bdepartment.DepName '
      'order by #DailyRep.DepNo,Bdepartment.DepName ')
    Left = 24
    Top = 40
    object DailyRepDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 50
    end
    object DailyRepDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DailyRepBDEDesigner1: TIntegerField
      FieldName = '1'
    end
    object DailyRepBDEDesigner2: TIntegerField
      FieldName = '2'
    end
    object DailyRepBFB: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'BFB'
      Calculated = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 8
  end
  object DepNO: TQuery
    SQL.Strings = (
      'select *'
      'from DepNo'
      'order by DepNo')
    Left = 72
    Top = 24
    object DepNODEPNO: TStringField
      FieldName = 'DEPNO'
      Size = 10
    end
    object DepNODEPNAME: TStringField
      FieldName = 'DEPNAME'
      Size = 50
    end
    object DepNOGXLB: TStringField
      FieldName = 'GXLB'
      Size = 1
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 64
  end
end
