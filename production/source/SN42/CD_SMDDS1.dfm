object CD_SMDDS: TCD_SMDDS
  Left = 702
  Top = 264
  Width = 321
  Height = 483
  Caption = 'CD_SMDDS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 40
    Width = 313
    Height = 412
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #27161#26999#39636
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = #24494#36575#27491#40657#39636
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 40
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Button2: TButton
      Left = 732
      Top = 5
      Width = 65
      Height = 29
      Caption = 'Print'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 11
      Top = 8
      Width = 89
      Height = 28
      Caption = 'Copy'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object SMDDS: TQuery
    DatabaseName = 'DB'
    DataSource = CutDispatch.DCDDetail
    SQL.Strings = (
      
        '    select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.B' +
        'WBH,CutDispatchZL.SIZE,CutDispatchZL.XXCC,CutDispatchZL.CLBH,Cut' +
        'DispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from ('
      
        #9'Select SMDD.DDBH,ZLBH,BWBH,SIZE,CutDispatchZL.XXCC,CLBH,SMDDS.Q' +
        'ty from CutDispatchZL '
      
        #9'left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB='#39'C' +
        #39
      
        #9'left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispa' +
        'tchZL.SIZE '
      #9'where 1=1   '
      #9' and CutDispatchZL.ZLBH=:ZLBH'
      #9' and CutDispatchZL.CLBH=:CLBH'
      #9' and CutDispatchZL.SIZE=:SIZE'
      #9' and CutDispatchZL.BWBH=:BWBH'
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
      #9'  and CutDisPatchS.ZLBH=:ZLBH'
      #9'  and CutDisPatchS.CLBH=:CLBH'
      #9'  and CutDisPatchS.SIZE=:SIZE'
      #9'  and CutDisPatchS.BWBH=:BWBH'
      
        #9'  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BW' +
        'BH,CutDisPatchS.SIZE,CutDisPatchS.CLBH '
      
        #9' ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and Cut' +
        'DisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispa' +
        'tchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPa' +
        'tchS.CLBH=CutDispatchZL.CLBH'
      #9' where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ')
    Left = 222
    Top = 248
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
      end
      item
        DataType = ftUnknown
        Name = 'SIZE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BWBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIZE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BWBH'
        ParamType = ptUnknown
      end>
    object SMDDSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object SMDDSSIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object SMDDSXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMDDSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object SMDDSQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMDDSDQty: TIntegerField
      FieldName = 'DQty'
    end
  end
  object DS1: TDataSource
    DataSet = SMDDS
    Left = 222
    Top = 281
  end
end
