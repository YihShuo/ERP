unit SETRSL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh, DateUtils, ShellApi, IniFiles;

type
  TSETRSL = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    CLZL: TQuery;
    DS1: TDataSource;
    UpRSTlist: TUpdateSQL;
    CLZLcldh: TStringField;
    CLZLcllb: TStringField;
    CLZLzwpm: TStringField;
    CLZLywpm: TStringField;
    CLZLdwbh: TStringField;
    CLZLDCYN: TStringField;
    CLZLPDYN: TStringField;
    CLZLDCDate: TDateTimeField;
    CLZLDCFilePage: TStringField;
    CLZLPDDate: TDateTimeField;
    CLZLPDFilePage: TStringField;
    CLZLUpdateDate: TDateTimeField;
    CLZLzsywjc: TStringField;
    CLZLUpdateID: TStringField;
    CLZLCreateID: TStringField;
    CLZLCreateDate: TDateTimeField;
    PC1: TPageControl;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    CLZLcqdh: TStringField;
    CLZLzsdh: TStringField;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    clbh: TLabel;
    Label3: TLabel;
    CLDHEdit: TEdit;
    Button1: TButton;
    ZSYWJCEdit: TEdit;
    CB1: TComboBox;
    Label1: TLabel;
    CLZLDCCFMDate: TDateTimeField;
    CLZLPDCFMDate: TDateTimeField;
    CLZLDCCFMID: TStringField;
    CLZLPDCFMID: TStringField;
    CLZLDCCFM: TStringField;
    CLZLPDCFM: TStringField;
    CBX1: TCheckBox;
    CLZLPDUpdateID: TStringField;
    CLZLPDUpdateDate: TDateTimeField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CLZLUpdateID2: TStringField;
    CLZLUpdateDate2: TDateTimeField;
    CLZLID: TFloatField;
    CLZLGSBH: TStringField;
    DBGrid4: TDBGridEh;
    PopupMenu1: TPopupMenu;
    mun1: TMenuItem;
    CheckBox3: TCheckBox;
    Label2: TLabel;
    YWPMEdit: TEdit;
    CLZLMemo: TStringField;
    CLZLGender: TStringField;
    CLZLPDFilePageT2: TStringField;
    mun2: TMenuItem;
    MonthEdit: TEdit;
    MonthLabel: TLabel;
    KidsCKbox: TCheckBox;
    N1: TMenuItem;
    mun3: TMenuItem;
    N2: TMenuItem;
    mun4: TMenuItem;
    YWPMEdit1: TEdit;
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure DBGrid3CellClick(Column: TColumnEh);
    procedure DBGrid4CellClick(Column: TColumnEh);
    procedure CB1Change(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure mun1Click(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure CheckBox3Click(Sender: TObject);
    procedure mun2Click(Sender: TObject);
    procedure SetClick(Sender: TObject);
  private
    DCFilePath: string;
    PDFilePath: string;
    { Private declarations }
    procedure ReadIni();
    procedure DeleteRSLFile(fn:string);
  public     
    InsertMatList: string;
    { Public declarations }

  end;

var
  SETRSL: TSETRSL;


implementation

uses main1, SETRSL_CL1, SETRSL_ZS1, FunUnit, FileTransClient1;

{$R *.dfm}
procedure TSETRSL.ReadIni();
  var MyIni :Tinifile;
      AppDir:string;
begin
  DCFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\DC\';                    // 先設定上傳的檔案路徑
  PDFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\PD\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCFilePath:=MyIni.ReadString('RSL','Bom_N472_DCFilePath','');
      PDFilePath:=MyIni.ReadString('RSL','Bom_N472_PDFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSETRSL.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSETRSL.FormCreate(Sender: TObject);
begin
  InsertMatList := '';
  PC1.ActivePage:=TS1;
  ReadIni();
  Button1Click(nil);
end;


procedure TSETRSL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
  begin
    action:=cafree;
  end
end;

procedure TSETRSL.FormDestroy(Sender: TObject);
begin
  SETRSL:=nil;
end;

procedure TSETRSL.Button1Click(Sender: TObject);
begin
  if ( not CheckBox1.Checked ) and ( not CheckBox2.Checked ) then
  begin
    ShowMessage('need to check tw or vn !!!');
    abort;
  end;

  if PC1.ActivePage = TS1 then                    //  1. RSL OK
  begin
    with CLZL do
    begin
      active:=false;
      sql.clear;
      sql.add('select clzl.cldh, clzl.cllb, rstlist.zsdh, zszl.zsywjc, clzl.ywpm, clzl.zwpm, clzl.dwbh, clzl.cqdh, ');
      sql.add('       rstlist.DCYN, rstlist.PDYN,rstlist.ID, rstlist.DCCFMDate, rstlist.DCCFMID, rstlist.PDCFMDate, ');
      sql.add('       rstlist.PDCFMID, rstlist.DCDate, rstlist.PDDate, rstlist.DCFilePage, rstlist.PDFilePage, ');
      sql.add('       rstlist.createID, rstlist.createDate, rstlist.DCUpdateID, rstlist.DCUpdateDate, rstlist.PDUpdateID, ');
      sql.add('       rstlist.PDUpdateDate, rstlist.DCCFM, rstlist.PDCFM, rstlist.UpdateID, rstlist.UpdateDate,rstlist.GSBH, ');
      sql.add('       rstlist.Memo,rstlist.Gender,rstlist.PDFilePageT2 ');
      sql.add('from clzl                                       ');
      sql.add('left join clzl_dev on clzl_dev.cldh=clzl.cldh   ');
      sql.add('left join rstlist on clzl.cldh = rstlist.cldh   ');
      sql.add('left join zszl on rstlist.zsdh = zszl.zsdh      ');
      sql.add('left join zszl_dev on zszl_dev.zsdh = zszl.zsdh and zszl_dev.gsbh = ''' + main.Edit2.Text + '''');
      sql.add('where clzl.cldh like ''' + CLDHEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit.Text + '%''');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit1.Text + '%''');
      sql.add('      and isnull(zszl.zsywjc,'''') like ''%' + ZSYWJCEdit.Text + '%'' ');
      // add GSBH
      sql.add('      and rstlist.gsbh='''+main.Edit2.Text+'''');
      //
      sql.add('      and ((rstlist.DCYN = ''Y'' and rstlist.DCYN = rstlist.DCCFM and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',isnull(DCDate, ''2050-10-10'')),112), 6) > left(convert(varchar, getdate(),112), 6)) ');
      sql.add('      or  (rstlist.PDYN = ''Y'' and rstlist.PDYN = rstlist.PDCFM and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',isnull(PDDate, ''2050-10-10'')),112), 6) > left(convert(varchar, getdate(),112), 6))) ');
      if ( CheckBox1.Checked ) and ( not CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''TW''                        ')
      else if ( not CheckBox1.Checked ) and ( CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''VN''                        ');

      if CheckBox3.Checked then
        sql.add('    and (rstlist.UpdateID = ''' + main.Edit1.Text + ''' OR zszl_dev.SamplePurchaser = ''' + main.Edit1.Text + ''')');
      if CBX1.Checked then
      begin
        sql.add('    and (( rstlist.DCYN = ''Y'' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',DCDate), 112), 6) = left(convert(varchar, getdate(),112), 6)  )  ');
        sql.add('    or  ( rstlist.PDYN = ''Y'' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',PDDate), 112), 6) = left(convert(varchar, getdate(),112), 6)  )) ');
      end;
      sql.add('order by clzl.cldh ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    BB2.Enabled := false;
    BB4.Enabled := false;
  end
  else if PC1.ActivePage = TS2 then                 // 2. RSL DCFilePage is empty
  begin
    with CLZL do
    begin
      active:=false;
      sql.clear;
      sql.add('select clzl.cldh, clzl.cllb, rstlist.zsdh, zszl.zsywjc, clzl.ywpm, clzl.zwpm, clzl.dwbh, clzl.cqdh, ');
      sql.add('       rstlist.DCYN, rstlist.PDYN,rstlist.ID, rstlist.DCCFMDate, rstlist.DCCFMID, rstlist.PDCFMDate, ');
      sql.add('       rstlist.PDCFMID, rstlist.DCDate, rstlist.PDDate, rstlist.DCFilePage, rstlist.PDFilePage, ');
      sql.add('       rstlist.createID, rstlist.createDate, rstlist.DCUpdateID, rstlist.DCUpdateDate, rstlist.PDUpdateID, ');
      sql.add('       rstlist.PDUpdateDate, rstlist.DCCFM,  rstlist.PDCFM, rstlist.UpdateID, rstlist.UpdateDate, ');
      sql.add('       rstlist.GSBH, rstlist.Memo,rstlist.Gender,rstlist.PDFilePageT2 ');
      sql.add('from clzl                                                   ');
      sql.add('left join rstlist on clzl.cldh = rstlist.cldh               ');
      sql.add('left join zszl on rstlist.zsdh = zszl.zsdh                  ');
      sql.add('left join zszl_dev on zszl_dev.zsdh = zszl.zsdh and zszl_dev.gsbh = ''' + main.Edit2.Text + '''');
      sql.add('where rstlist.dcyn = ''Y''                                     ');
      //
      sql.Add('      and rstlist.GSBH='''+main.edit2.text+'''');
      //
      sql.add('      and clzl.cldh like ''' + CLDHEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit1.Text + '%'' ');
      sql.add('      and isnull(zszl.zsywjc,'''') like ''%' + ZSYWJCEdit.Text + '%''');

      if ( CheckBox1.Checked ) and ( not CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''TW''                        ')
      else if ( not CheckBox1.Checked ) and ( CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''VN''                        ');

      if CheckBox3.Checked then
        sql.add('    and (rstlist.UpdateID = ''' + main.Edit1.Text + ''' OR zszl_dev.SamplePurchaser = ''' + main.Edit1.Text + ''')');
      if CB1.ItemIndex = 0 then
      begin
        sql.add('    and (rstlist.DCDate is null or rstlist.DCFilePage is null or left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',DCDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ) ');
      end
      else if CB1.ItemIndex = 1 then
      begin
        sql.add('    and (rstlist.DCFilePage is not null and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',DCDate),112), 6) > left(convert(varchar, getdate(),112), 6) ) ');
        sql.add('    and rstlist.DCCFM = ''N''                             ');
      end
      else if CB1.ItemIndex = 3 then
      begin
        sql.add('    and ISNULL(rstlist.Memo, '''') = ''''');
      end;
      if KidsCKbox.Checked=true then
        sql.add('    and left(ISNULL(rstlist.Gender, ''ZZZ''),3) = ''KID''');
      sql.add('order by clzl.cldh                                        ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    BB2.Enabled := true;
    BB4.Enabled := true;
  end
  else if PC1.ActivePage = TS3 then                 // 3. RSL PDFilePage is empty
  begin
    with CLZL do
    begin
      active:=false;
      sql.clear;
      sql.add('select clzl.cldh, clzl.cllb, rstlist.zsdh, zszl.zsywjc, clzl.ywpm, clzl.zwpm, clzl.dwbh, clzl.cqdh, ');
      sql.add('       rstlist.DCYN, rstlist.PDYN,rstlist.ID, rstlist.DCCFMDate, rstlist.DCCFMID, rstlist.PDCFMDate, ');
      sql.add('       rstlist.PDCFMID, rstlist.DCDate, rstlist.PDDate, rstlist.DCFilePage, rstlist.PDFilePage, ');
      sql.add('       rstlist.createID, rstlist.createDate, rstlist.DCUpdateID, rstlist.DCUpdateDate, rstlist.PDUpdateID, ');
      sql.add('       rstlist.PDUpdateDate, rstlist.DCCFM,  rstlist.PDCFM, rstlist.UpdateID, rstlist.UpdateDate,rstlist.gsbh, ');
      sql.add('       rstlist.Memo,rstlist.Gender,rstlist.PDFilePageT2 ');
      sql.add('from clzl                                                   ');
      sql.add('left join rstlist on clzl.cldh = rstlist.cldh               ');
      sql.add('left join zszl on rstlist.zsdh = zszl.zsdh                  ');
      sql.add('left join zszl_dev on zszl_dev.zsdh = zszl.zsdh and zszl_dev.gsbh = ''' + main.Edit2.Text + '''');
      sql.add('where rstlist.PDYN = ''Y''                                  ');
      //
      sql.Add('      and rstlist.gsbh='''+main.edit2.text+'''');
      //
      sql.add('      and clzl.cldh like ''' + CLDHEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit1.Text + '%'' ');
      sql.add('      and isnull(zszl.zsywjc,'''') like ''%' + ZSYWJCEdit.Text + '%''');

      if ( CheckBox1.Checked ) and ( not CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''TW''                        ')
      else if ( not CheckBox1.Checked ) and ( CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''VN''                        ');

      if CheckBox3.Checked then
        sql.add('    and (rstlist.UpdateID = ''' + main.Edit1.Text + ''' OR zszl_dev.SamplePurchaser = ''' + main.Edit1.Text + ''')');
      if CB1.ItemIndex = 0 then
      begin
        sql.add('    and  (rstlist.PDDate is null or (rstlist.PDFilePage is null and rstlist.PDFilePageT2 is null ) or (rstlist.PDFilePageT2 is null and IsNull(rstlist.Gender,'''')=''KIDS'') ');
        sql.add('    or left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ) ');
      end
      else if CB1.ItemIndex = 1 then
      begin
        sql.add('    and ((rstlist.PDFilePage is not null or rstlist.PDFilePageT2 is not null) and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',PDDate),112), 6) > left(convert(varchar, getdate(),112), 6) ) ');
        sql.add('    and rstlist.PDCFM = ''N''                               ');
      end
      else if CB1.ItemIndex = 2 then
      begin
        sql.add('    and ISNULL(rstlist.Memo, '''') = ''''');
      end;
      if KidsCKbox.Checked=true then
        sql.add('    and left(ISNULL(rstlist.Gender, ''ZZZ''),3) = ''KID''');
      sql.add('order by clzl.cldh                                          ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    BB2.Enabled := true;
    BB4.Enabled := true;
  end
  else
  begin
    with CLZL do                                   // 4. RSL DCDate or PDDate is expired
    begin
      active:=false;
      sql.clear;
      sql.add('select clzl.cldh, clzl.cllb, rstlist.zsdh, zszl.zsywjc, clzl.ywpm, clzl.zwpm, clzl.dwbh, clzl.cqdh, ');
      sql.add('       rstlist.DCYN, rstlist.PDYN,rstlist.ID, rstlist.DCCFMDate, rstlist.DCCFMID, rstlist.PDCFMDate, ');
      sql.add('       rstlist.PDCFMID, rstlist.DCDate, rstlist.PDDate, rstlist.DCFilePage, rstlist.PDFilePage, ');
      sql.add('       rstlist.createID, rstlist.createDate, rstlist.DCUpdateID, rstlist.DCUpdateDate, rstlist.PDUpdateID, ');
      sql.add('       rstlist.PDUpdateDate, rstlist.DCCFM,  rstlist.PDCFM, rstlist.UpdateID, rstlist.UpdateDate, ');
      sql.add('       rstlist.GSBH, rstlist.Memo,rstlist.Gender,rstlist.PDFilePageT2 ');
      sql.add('from clzl                                                                        ');
      sql.add('left join rstlist on clzl.cldh = rstlist.cldh   ');
      sql.add('left join zszl on rstlist.zsdh = zszl.zsdh      ');
      sql.add('left join zszl_dev on zszl_dev.zsdh = zszl.zsdh and zszl_dev.gsbh = ''' + main.Edit2.Text + '''');
      sql.add('where (( rstlist.DCYN = rstlist.DCCFM and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',DCDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ) ');
      sql.add('      or  ( rstlist.PDYN = rstlist.PDCFM and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ))');
      //
      sql.Add('      and rstlist.gsbh='''+main.Edit2.Text+'''');
      //
      sql.add('      and clzl.cldh like ''' + CLDHEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit.Text + '%'' ');
      sql.add('      and clzl.ywpm like ''%' + YWPMEdit1.Text + '%'' ');
      sql.add('      and isnull(zszl.zsywjc,'''') like ''%' + ZSYWJCEdit.Text + '%'' ');

      if ( CheckBox1.Checked ) and ( not CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''TW''                        ')
      else if ( not CheckBox1.Checked ) and ( CheckBox2.Checked ) then
        sql.add('    and clzl.cqdh = ''VN''                        ');

      if CheckBox3.Checked then
        sql.add('    and (rstlist.UpdateID = ''' + main.Edit1.Text + ''' OR zszl_dev.SamplePurchaser = ''' + main.Edit1.Text + ''')');

      sql.add('order by clzl.cldh                              ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    BB2.Enabled := false;
    BB4.Enabled := false;
  end;

  CLZL.requestlive:=false;
  CLZL.cachedupdates:=false;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BBT6.Enabled:=true;
  dbgrid2.columns[0].ButtonStyle:=cbsNone;
  dbgrid2.columns[2].ButtonStyle:=cbsNone;
  dbgrid2.columns[11].ButtonStyle:=cbsNone;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  dbgrid3.columns[11].ButtonStyle:=cbsNone;

end;


procedure TSETRSL.BB2Click(Sender: TObject);
begin
  CLZL.RequestLive := true;
  CLZL.CachedUpdates := true;
  CLZL.Insert;
  BB4.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;

  if PC1.ActivePage = TS2 then
  begin
    dbgrid2.columns[0].ButtonStyle := cbsEllipsis;
    dbgrid2.columns[2].ButtonStyle := cbsEllipsis;
    dbgrid2.columns[11].ButtonStyle := cbsEllipsis;
  end;
  if PC1.ActivePage = TS3 then
  begin
    dbgrid3.columns[0].ButtonStyle := cbsEllipsis;
    dbgrid3.columns[2].ButtonStyle := cbsEllipsis;
    dbgrid3.columns[11].ButtonStyle := cbsEllipsis;
    dbgrid3.columns[12].ButtonStyle:=cbsEllipsis;
  end;
end;

procedure TSETRSL.BB4Click(Sender: TObject);
begin

  CLZL.RequestLive:=true;
  CLZL.CachedUpdates:=true;
  CLZL.Edit;
  BB2.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  mun1.Enabled:=true;
  mun2.Enabled:=true;
  mun3.Enabled:=true;
  mun4.Enabled:=true;
  if PC1.ActivePage = TS2 then
  begin
    dbgrid2.columns[2].ButtonStyle:=cbsEllipsis;
    dbgrid2.columns[11].ButtonStyle:=cbsEllipsis;
  end;
  if PC1.ActivePage = TS3 then
  begin
    dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
    dbgrid3.columns[11].ButtonStyle:=cbsEllipsis;
    dbgrid3.columns[12].ButtonStyle:=cbsEllipsis;
  end;

end;

procedure TSETRSL.BB6Click(Sender: TObject);
begin
  CLZL.active:=false;
  CLZL.requestlive:=false;
  CLZL.cachedupdates:=false;
  CLZL.active:=true;
  mun1.Enabled:=false;
  mun2.Enabled:=false;
  mun3.Enabled:=false;
  mun4.Enabled:=false;
  BB2.Enabled:=true;
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  dbgrid2.columns[0].ButtonStyle:=cbsNone;
  dbgrid2.columns[2].ButtonStyle:=cbsNone;
  dbgrid2.columns[11].ButtonStyle:=cbsNone;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  dbgrid3.columns[11].ButtonStyle:=cbsNone;
  dbgrid3.columns[12].ButtonStyle:=cbsNone;
  InsertMatList := '';
end;

procedure TSETRSL.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    CLZL.first;
    for i:=1 to CLZL.RecordCount do
    begin

      if CLZL.fieldbyname('ZSDH').isnull  then
      begin
        CLZL.Next;
        Continue;
      end;

      case CLZL.updatestatus of
      usinserted:                                                     //    insert mode
      begin
        CLZL.Edit;
        CLZL.fieldbyname('DCCFM').value := 'N';
        CLZL.fieldbyname('PDCFM').value := 'N';
        CLZL.fieldbyname('CreateID').value := main.Edit1.Text;
        CLZL.fieldbyname('CreateDate').value := now;
        //
        CLZL.FieldByName('GSBH').Value:=main.Edit2.Text;
        //

        if PC1.ActivePage = TS2 then
        begin
          CLZL.fieldbyname('DCUpdateID').value := main.Edit1.Text;
          CLZL.fieldbyname('DCUpdateDate').value := now;
        end
        else if PC1.ActivePage = TS3 then
        begin
          CLZL.fieldbyname('PDUpdateID').value := main.Edit1.Text;
          CLZL.fieldbyname('PDUpdateDate').value := now;
        end;

        CLZL.fieldbyname('UpdateID').value := main.Edit1.Text;
        CLZL.fieldbyname('UpdateDate').value := now;
        UpRSTlist.apply(ukinsert);
      end;

      usmodified:      //     modify mode
      begin
        if CLZL.fieldbyname('createID').isnull then                 // rstlist 尚未有資料, 需新增
        begin
          CLZL.Edit;
          CLZL.fieldbyname('DCCFM').value := 'N';
          CLZL.fieldbyname('PDCFM').value := 'N';
          CLZL.fieldbyname('CreateID').value := main.Edit1.Text;
          CLZL.fieldbyname('CreateDate').value := now;
          //
          CLZL.FieldByName('GSBH').Value:=main.Edit2.Text;
          //

          if PC1.ActivePage = TS2 then
          begin
            CLZL.fieldbyname('DCUpdateID').value := main.Edit1.Text;
            CLZL.fieldbyname('DCUpdateDate').value := now;
          end
          else if PC1.ActivePage = TS3 then
          begin
            CLZL.fieldbyname('PDUpdateID').value := main.Edit1.Text;
            CLZL.fieldbyname('PDUpdateDate').value := now;
          end;

          CLZL.fieldbyname('UpdateID').value := main.Edit1.Text;
          CLZL.fieldbyname('UpdateDate').value := now;
          UpRSTlist.apply(ukinsert);
        end else
        begin
          CLZL.edit;                                                 // 修改資料
          if PC1.ActivePage = TS2 then
          begin
            CLZL.fieldbyname('DCCFM').value := 'N';
            CLZL.fieldbyname('DCUpdateID').value := main.Edit1.Text;
            CLZL.fieldbyname('DCUpdateDate').value := now;
            //
            CLZL.FieldByName('GSBH').Value:=main.Edit2.Text;
            //Delete DC RSL file
            if ((CLZL.FieldByName('DCFilepage').OldValue<>null) and (CLZL.FieldByName('DCFilepage').AsString='')) then
            begin
              DeleteRSLFile(CLZL.FieldByName('DCFilepage').OldValue);
              CLZL.FieldByName('DCFilepage').Value:=null;
            end;
            //
          end
          else if PC1.ActivePage = TS3 then
          begin
            CLZL.fieldbyname('PDCFM').value := 'N';
            CLZL.fieldbyname('PDUpdateID').value := main.Edit1.Text;
            CLZL.fieldbyname('PDUpdateDate').value := now;
            //
            CLZL.FieldByName('GSBH').Value:=main.Edit2.Text;
            //Delete PD RSL file
            if ((CLZL.FieldByName('PDFilepage').OldValue<>null) and (CLZL.FieldByName('PDFilepage').AsString='')) then
            begin
              DeleteRSLFile(CLZL.FieldByName('PDFilepage').OldValue);
              CLZL.FieldByName('PDFilepage').Value:=null;
            end;
            if ((CLZL.FieldByName('PDFilepageT2').OldValue<>null) and (CLZL.FieldByName('PDFilepageT2').AsString='')) then
            begin
              DeleteRSLFile(CLZL.FieldByName('PDFilepageT2').OldValue);
              CLZL.FieldByName('PDFilepageT2').Value:=null;
            end;
            //
          end;

          CLZL.fieldbyname('UpdateID').value := main.Edit1.Text;
          CLZL.fieldbyname('UpdateDate').value := now;
          //
          CLZL.FieldByName('GSBH').Value:=main.Edit2.Text;
          //
          UpRSTlist.apply(ukmodify);
        end;
      end;
      end; // end of case
      CLZL.Next;
    end;   // end of for

    CLZL.active:=false;
    CLZL.requestlive:=false;
    CLZL.cachedupdates:=false;
    CLZL.active:=true;
    BB2.Enabled:=true;
    BB4.Enabled:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    dbgrid2.columns[0].ButtonStyle:=cbsNone;
    dbgrid2.columns[2].ButtonStyle:=cbsNone;
    dbgrid2.columns[11].ButtonStyle:=cbsNone;
    dbgrid3.columns[0].ButtonStyle:=cbsNone;
    dbgrid3.columns[2].ButtonStyle:=cbsNone;
    dbgrid3.columns[11].ButtonStyle:=cbsNone;
    dbgrid3.columns[12].ButtonStyle:=cbsNone;
    InsertMatList := '';
    mun1.Enabled:=false;
    mun2.Enabled:=false;
    mun3.Enabled:=false;
    mun4.Enabled:=false;
    showmessage('Succeed');
  except
    on E:Exception do
    begin
      showmessage('have wrong');
      funcObj.WriteErrorLog(E.Message);
    end;
  end;

end;


procedure TSETRSL.CB1Change(Sender: TObject);
begin
  Button1Click(nil);
end;

procedure TSETRSL.PC1Change(Sender: TObject);
begin
  Button1Click(nil);

  if PC1.ActivePage = TS1 then
  begin
    CBX1.Visible := true;
    MonthEdit.Visible:=true;
    MonthLabel.Visible:=true;
    Label1.Visible := false;
    CB1.Visible := false;
  end
  else if  PC1.ActivePage = TS2 then
  begin
    CBX1.Visible := false;
    MonthEdit.Visible:=false;
    MonthLabel.Visible:=false;
    Label1.Visible := true;
    CB1.Visible := true;
  end
  else if PC1.ActivePage = TS3 then
  begin
    CBX1.Visible := false;
    MonthEdit.Visible:=false;
    MonthLabel.Visible:=false;
    Label1.Visible := true;
    CB1.Visible := true;
  end
  else
  begin
    CBX1.Visible := false;
    MonthEdit.Visible:=false;
    MonthLabel.Visible:=false;
    Label1.Visible := false;
    CB1.Visible := false;
  end;

end;


procedure TSETRSL.DBGrid1CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGrid1.SelectedField.FieldName = 'DCFilePage') and (not CLZL.FieldByName('DCFilePage').isnull) then
  begin
    path:= pchar( DCFilePath + string(CLZL.FieldByName('DCFilePage').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid1.SelectedField.FieldName = 'PDFilePage') and (not CLZL.FieldByName('PDFilePage').isnull) then
  begin
    path:= pchar( PDFilePath + string(CLZL.FieldByName('PDFilePage').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path ,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid1.SelectedField.FieldName = 'PDFilePageT2') and (not CLZL.FieldByName('PDFilePageT2').isnull) then
  begin
    path:= pchar( PDFilePath + string(CLZL.FieldByName('PDFilePageT2').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path ,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TSETRSL.DBGrid2CellClick(Column: TColumnEh);
var
  DownloadObj: TFileTransClient;
  TempText, FileExt: string;
  Path: PChar;
  i: integer;
begin
  if (DBGrid2.SelectedField.FieldName = 'DCFilePage') and (not CLZL.FieldByName('DCFilePage').isnull) then
  begin
    DownloadObj := TFileTransClient.Create();
    if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
      CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
    FileExt := '';
    TempText := CLZL.FieldByName('DCFilePage').AsString;
    for i := Length(TempText) downto 1 do
    begin
      if (TempText[i] <> '.') then
        FileExt := TempText[i] + FileExt
      else begin
        FileExt := '.' + FileExt;
        Break;
      end;
    end;
    DownloadObj.down(CLZL.FieldByName('DCFilePage').AsString, 'QC\' + main.Edit2.Text + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\Temp' + FileExt);
    Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\Temp' + FileExt);
    if FileExists(Path)=true then
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TSETRSL.DBGrid3CellClick(Column: TColumnEh);
var
  DownloadObj: TFileTransClient;
  TempText, FileExt: string;
  Path: PChar;
  i: integer;
begin
  if (DBGrid3.SelectedField.FieldName = 'PDFilePage') and (not CLZL.FieldByName('PDFilePage').isnull) then
  begin
    DownloadObj := TFileTransClient.Create();
    if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
      CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
    FileExt := '';
    TempText := CLZL.FieldByName('PDFilePage').AsString;
    for i := Length(TempText) downto 1 do
    begin
      if (TempText[i] <> '.') then
        FileExt := TempText[i] + FileExt
      else begin
        FileExt := '.' + FileExt;
        Break;
      end;
    end;
    DownloadObj.down(CLZL.FieldByName('PDFilePage').AsString, 'QC\' + main.Edit2.Text + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\' + CLZL.FieldByName('PDFilePage').AsString);
    Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + CLZL.FieldByName('PDFilePage').AsString);
    if FileExists(Path)=true then
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid3.SelectedField.FieldName = 'PDFilePageT2') and (not CLZL.FieldByName('PDFilePageT2').isnull) then
  begin
    DownloadObj := TFileTransClient.Create();
    if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
      CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
    FileExt := '';
    TempText := CLZL.FieldByName('PDFilePageT2').AsString;
    for i := Length(TempText) downto 1 do
    begin
      if (TempText[i] <> '.') then
        FileExt := TempText[i] + FileExt
      else begin
        FileExt := '.' + FileExt;
        Break;
      end;
    end;
    DownloadObj.down(CLZL.FieldByName('PDFilePageT2').AsString, 'QC\' + main.Edit2.Text + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\' + CLZL.FieldByName('PDFilePageT2').AsString);
    Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + CLZL.FieldByName('PDFilePageT2').AsString);
    if FileExists(Path)=true then
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TSETRSL.DBGrid4CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGrid4.SelectedField.FieldName = 'DCFilePage') and (not CLZL.FieldByName('DCFilePage').isnull) then
  begin
    path:= pchar( DCFilePath + string(CLZL.FieldByName('DCFilePage').value) );
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid4.SelectedField.FieldName = 'PDFilePage') and (not CLZL.FieldByName('PDFilePage').isnull) then
  begin
    path:= pchar( PDFilePath + string(CLZL.FieldByName('PDFilePage').value) );
    ShellExecute(Handle, nil, path ,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TSETRSL.DBGrid2EditButtonClick(Sender: TObject);
var
  UploadObj: TFileTransClient;
  p, SaveFN, Response, FileString: string;
begin

  if DBGrid2.SelectedField.FieldName = 'cldh' then
  begin
    SETRSL_CL:=TSETRSL_CL.create(self);
    SETRSL_CL.show;
  end;

  if DBGrid2.SelectedField.FieldName = 'zsdh' then
  begin
    SETRSL_ZS:=TSETRSL_ZS.create(self);
    SETRSL_ZS.show;
  end;

  if DBGrid2.SelectedField.FieldName = 'DCFilePage' then
  begin
    if Opendialog1.Execute then
    begin
      // 輸入 fileName 後上傳資料
      p := StringReplace(ExtractFileName(OpenDialog1.FileName), ExtractFileExt(OpenDialog1.FileName), '', [rfReplaceAll]);
      if InputQuery('Input the FileName', Opendialog1.FileName, p) then
      begin
        if (p = '') then
        begin
          ShowMessage('FileName cannot be empty !!!');
          Exit;
        end;

        UploadObj := TFileTransClient.Create();
        SaveFN := p + ExtractFileExt(OpenDialog1.FileName);
        FileString := UploadObj.List('QC\' + main.Edit2.Text + '\RSL\');

        // check file exists
        if Pos(SaveFN, FileString) > 0 then
        begin
          if MessageDlg('Override RSL File', mtCustom, [mbYes,mbNo], 0) = mrYes then
          begin
            //上傳
            Response := UploadObj.put(OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
            if Pos(',', Response) > 0 then  //fail
            begin
              ShowMessage(Response);
            end
            else begin
              CLZL.Edit;
              CLZL.FieldByName('DCFilePage').Value := SaveFN;
              ShowMessage(Response);
            end;
          end
          else begin
            ShowMessage('File name exists!');
          end;
        end
        else begin
          Response := UploadObj.put(Opendialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
          if Pos(',', Response) > 0 then  //fail
          begin
            ShowMessage(Response);
          end
          else begin
            CLZL.Edit;
            CLZL.FieldByName('DCFilePage').Value := SaveFN;
            ShowMessage(Response);
          end;
        end;
        UploadObj.Free;
      end;
    end;
  end;
end;

procedure TSETRSL.DBGrid3EditButtonClick(Sender: TObject);
var
  UploadObj: TFileTransClient;
  p, SaveFN, Response, FileString, RSLFieldName: string;
begin

  if dbgrid3.selectedfield.fieldname='cldh' then
  begin
    SETRSL_CL:=TSETRSL_CL.create(self);
    SETRSL_CL.show;
  end;

  if dbgrid3.selectedfield.fieldname='zsdh' then
  begin
    SETRSL_ZS:=TSETRSL_ZS.create(self);
    SETRSL_ZS.show;
  end;

  if ((DBGrid3.SelectedField.FieldName = 'PDFilePage') or (DBGrid3.SelectedField.FieldName = 'PDFilePageT2')) then
  begin
    RSLFieldName:=DBGrid3.SelectedField.FieldName;
    if Opendialog1.Execute then
    begin
      // 輸入 fileName 後上傳資料
      p := StringReplace(ExtractFileName(OpenDialog1.FileName), ExtractFileExt(OpenDialog1.FileName), '', [rfReplaceAll]);
      if InputQuery('Input the FileName', OpenDialog1.FileName, p) then
      begin
        if (p = '') then
        begin
          ShowMessage('FileName cannot be empty !!!');
          Exit;
        end;

        UploadObj := TFileTransClient.Create();
        SaveFN := p + ExtractFileExt(Opendialog1.FileName);
        FileString := UploadObj.List('QC\' + main.Edit2.Text + '\RSL\');

        // check file exists
        if Pos(SaveFN, FileString) > 0 then
        begin
          if MessageDlg('Override RSL File', mtCustom, [mbYes,mbNo], 0) = mrYes then
          begin
            //上傳
            Response := UploadObj.put(OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
            if Pos(',', Response) > 0 then  //fail
            begin
              ShowMessage(Response);
            end
            else begin
              CLZL.Edit;
              CLZL.FieldByName(RSLFieldName).Value := SaveFN;
              ShowMessage(Response);
            end;
          end
          else begin
            ShowMessage('File name exists!');
          end;
        end
        else begin
          //上傳
          Response := UploadObj.put(OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
          if Pos(',', Response) > 0 then  //fail
          begin
            ShowMessage(Response);
          end
          else begin
            CLZL.Edit;
            CLZL.FieldByName(RSLFieldName).value := SaveFN;
            ShowMessage(Response);
          end;
        end;
        UploadObj.Free;
      end;
    end;
  end;
end;

procedure TSETRSL.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
var YY,MM,DD:Word;
begin

  if  not CLZL.FieldByName('DCDate').isnull then
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('DCDate').Value, 11) )  <=  FormatDateTime('yyyymm', now ) then
      dbgrid1.canvas.font.color:=clFuchsia;

  if  not CLZL.FieldByName('PDDate').isnull then
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('PDDate').Value, 11) )  <=  FormatDateTime('yyyymm', now ) then
      dbgrid1.canvas.font.color:=clFuchsia;
end;


procedure TSETRSL.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if CLZL.Active then
  begin
    if CLZL.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end
  else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   CLZL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CLZL.fields[i-1].FieldName;
    end;
    CLZL.First;
    j:=2;
    while  not  CLZL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CLZL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CLZL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CLZL.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  except
  on   F:Exception   do
    showmessage(F.Message);
  end;
end;

procedure TSETRSL.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if  (((not CLZL.FieldByName('PDDate').isnull) and (not CLZL.FieldByName('PDFilePage').isnull)))  or (((not CLZL.FieldByName('PDDate').isnull) and (not CLZL.FieldByName('PDFilePageT2').isnull)))  then
  begin
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('PDDate').Value, 11) )  <  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid3.canvas.font.color:=clFuchsia;
    end;
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('PDDate').Value, 12) )  <  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid3.canvas.font.color:=clRed;
    end;
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('PDDate').Value, 12) )  >  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid3.canvas.font.color:=clblue;
    end;
  end;
end;

procedure TSETRSL.DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if  ((not CLZL.FieldByName('DCDate').isnull) and (not CLZL.FieldByName('DCFilePage').isnull)) then
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('DCDate').Value, 11) )  <  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid2.canvas.font.color:=clFuchsia;
    end;
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('DCDate').Value, 12) )  <  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid2.canvas.font.color:=clRed;
    end;
    if FormatDateTime('yyyymm', IncMonth(CLZL.FieldByName('DCDate').Value, 12) )  >  FormatDateTime('yyyymm', now )   then
    begin
      DBGrid2.canvas.font.color:=clblue;
    end;
end;

procedure TSETRSL.mun1Click(Sender: TObject);
begin
  CLZL.Edit;
  if (PC1.ActivePage = TS2) then
    CLZL.FieldByName('DCFilePage').Value := Null
  else if (PC1.ActivePage = TS3) then
    CLZL.FieldByName('PDFilePage').Value := Null;
  CLZL.Post;
end;

procedure TSETRSL.PC1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  if (BB5.Enabled) then
  begin
    ShowMessage('Pls save data first.');
    AllowChange := false;
  end;
end;

procedure TSETRSL.DeleteRSLFile(fn:string);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
begin
   UploadObj := TFileTransClient.Create();
   //先檢查是否擋案存在 先刪除
   if fn<>'' then
     Response := UploadObj.delete(fn,'QC\'+main.Edit2.Text+'\RSL\', false);
   //刪除
   if pos(',', Response) > 0 then  //fail
   begin
     showmessage(Response);
   end else
   begin
   end;
   UploadObj.Free;
end;

procedure TSETRSL.CheckBox3Click(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TSETRSL.mun2Click(Sender: TObject);
begin
  CLZL.Edit;
  if (PC1.ActivePage = TS3) then
    CLZL.FieldByName('PDFilePageT2').Value := Null;
  CLZL.Post;
end;

procedure TSETRSL.SetClick(Sender: TObject);
  var
    i: integer;
    bm: Tbookmark;
    bookmarklist: TBookmarkListEh;
    SetVal,FieldName: string;
begin
  bm := CLZL.GetBookmark;
  bookmarklist := DBGrid3.SelectedRows;

  if (TMenuItem(Sender).Name = 'mun4') then
  begin
    SetVal := '';
    FieldName:='Memo';
  end else if (TMenuItem(Sender).Name = 'mun3') then
  begin
    FieldName:='Memo';
    if (DBGrid3.SelectedRows.Count > 0) then
    begin
      if InputQuery('Memo', 'SET MEMO TO ...', SetVal) then
      begin
        if SetVal = '' then Exit;
      end
      else begin
        Exit;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
      Exit;
    end;
  end;

  try
    if (DBGrid3.SelectedRows.Count > 0) then
    begin
      for i:=0 to bookmarklist.Count-1 do
      begin
        CLZL.GotoBookmark(Pointer(bookmarklist[i]));
        CLZL.Edit;
        CLZL.FieldByName(FieldName).Value := SetVal;
        CLZL.Post;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
    end;
  finally
    CLZL.GotoBookmark(bm);
    CLZL.FreeBookmark(bm);
  end;
end;
end.
