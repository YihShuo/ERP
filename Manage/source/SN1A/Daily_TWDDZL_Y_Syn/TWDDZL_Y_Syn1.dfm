object TWDDZL_Y_Syn: TTWDDZL_Y_Syn
  Left = 578
  Top = 354
  Width = 267
  Height = 109
  Caption = 'TWDDZL_Y_Syn'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RunBtn: TButton
    Left = 64
    Top = 24
    Width = 113
    Height = 25
    Caption = 'UploadDDZL_YN'
    TabOrder = 0
    OnClick = RunBtnClick
  end
  object ADOConn: TADOConnection
    CommandTimeout = 15000
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=LIY_ERP;Data Source=127.0.0.1;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=GIZWOW68VILII7G;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 17
  end
  object ADODDZL_Y: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 15000
    Parameters = <>
    SQL.Strings = (
      
        'select  SMZL.*  ,SMDD.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,isn' +
        'ull(SMDDSS.Qty,0)*SMZL.CTS as Qty'
      
        '         ,BDepartment.GSBH,convert(varchar,SMZL.ScanDate,111) as' +
        ' ScanDate2'
      'from SMZL'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      
        'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B '
      'left join BDepartment on BDepartment.ID=SMZL.DepNo'
      'where SMZL.SB is null'
      'and SMDD.YSBH is not null'
      'order by  SMZL.CODEBAR,SMZL.SCANDATE')
    Left = 56
    Top = 17
  end
end
