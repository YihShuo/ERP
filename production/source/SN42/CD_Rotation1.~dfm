object CD_Rotation: TCD_Rotation
  Left = 483
  Top = 346
  Width = 1014
  Height = 443
  Caption = 'CD_Rotation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 43
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 41
      Height = 28
      AutoSize = False
      Caption = 'ZLBH'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 168
      Top = 7
      Width = 49
      Height = 28
      AutoSize = False
      Caption = 'BWBH'
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 488
      Top = 7
      Width = 49
      Height = 28
      AutoSize = False
      Caption = 'SIZE'
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 320
      Top = 7
      Width = 49
      Height = 28
      AutoSize = False
      Caption = 'YWSM'
      Layout = tlCenter
    end
    object ZLBHEdit: TEdit
      Left = 64
      Top = 8
      Width = 97
      Height = 28
      TabOrder = 0
    end
    object Button1: TButton
      Left = 624
      Top = 7
      Width = 89
      Height = 28
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object BWBHEdit: TEdit
      Left = 224
      Top = 7
      Width = 81
      Height = 28
      TabOrder = 2
    end
    object Button2: TButton
      Left = 721
      Top = 6
      Width = 89
      Height = 28
      Caption = 'Copy'
      TabOrder = 3
      OnClick = Button2Click
    end
    object SIZEEdit: TEdit
      Left = 528
      Top = 7
      Width = 81
      Height = 28
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 816
      Top = 14
      Width = 105
      Height = 17
      Caption = 'Qty>DQty'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object YWSMEdit: TEdit
      Left = 376
      Top = 7
      Width = 105
      Height = 28
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 43
    Width = 1006
    Height = 369
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 287
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footers = <>
        Width = 51
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '    select ZLBH,BWBH,SIZE,XXCC,CLBH,YWPM,ZWPM,YWSM,ZWSM,SUM(Qty)' +
        ' as Qty,SUM(DQty) as DQty from ('
      
        '    select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.B' +
        'WBH,CutDispatchZL.SIZE,CutDispatchZL.XXCC,CutDispatchZL.CLBH,Cut' +
        'DispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty,CLZL.ZWPM,CLZ' +
        'L.YWPM,BWZL.ZWSM,BWZL.YWSM from ('
      
        #9'Select SMDD.DDBH,ZLBH,BWBH,SIZE,CutDispatchZL.XXCC,CLBH,SMDDS.Q' +
        'ty from CutDispatchZL '
      
        #9'left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB='#39'C' +
        #39
      
        #9'left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispa' +
        'tchZL.SIZE '
      #9'where 1=1'
      #9' ) CutDispatchZL'
      #9' left join ('
      
        #9'  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH' +
        ',CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as D' +
        'Qty from CutDisPatchS'
      
        #9'  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.D' +
        'LNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BW' +
        'BH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE ' +
        'and CutDispatchS.SIZE=CutDispatchSS.SIZE'
      #9'  where 1=1'
      
        #9'  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BW' +
        'BH,CutDisPatchS.SIZE,CutDisPatchS.CLBH '
      
        #9' ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and Cut' +
        'DisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispa' +
        'tchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPa' +
        'tchS.CLBH=CutDispatchZL.CLBH'
      #9' LEFT JOIN BWZL ON BWZL.BWDH = CutDispatchZL.BWBH'
      #9' LEFT JOIN CLZL ON CLZL.CLDH = CutDispatchZL.CLBH'
      
        #9' where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) )'#9' CutDisp' +
        'atchZL'
      #9' Group by ZLBH,BWBH,SIZE,XXCC,CLBH,YWPM,ZWPM,YWSM,ZWSM')
    Left = 16
    Top = 136
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1DQty: TIntegerField
      FieldName = 'DQty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 104
  end
end
