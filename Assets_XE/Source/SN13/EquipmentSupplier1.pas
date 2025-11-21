unit EquipmentSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables,
  Mask, DBCtrls, Comobj, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh, Vcl.Menus;

type
  TEquipmentSupplier = class(TForm)
    TSCD_ZSZL: TQuery;
    UpSQL: TUpdateSQL;
    TSCDDS: TDataSource;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ZSDHEdit: TEdit;
    ZSJC_YWEdit: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    TmpQuery: TQuery;
    Label4: TLabel;
    LB1_MemoEdit: TEdit;
    Label7: TLabel;
    AuthCEEdit: TEdit;
    Label8: TLabel;
    AuthZSDHEdit: TEdit;
    Splitter1: TSplitter;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    ZSJC_ZWEdit: TEdit;
    BBTT2: TBitBtn;
    BBTT1: TBitBtn;
    TSCD_ZSZLzsdh: TStringField;
    TSCD_ZSZLzsjc_yw: TStringField;
    TSCD_ZSZLzsjc_zw: TStringField;
    TSCD_ZSZLzsjc_vw: TStringField;
    TSCD_ZSZLzsqm_yw: TStringField;
    TSCD_ZSZLzsqm_zw: TStringField;
    TSCD_ZSZLzsqm_vw: TStringField;
    TSCD_ZSZLtybh: TStringField;
    TSCD_ZSZLyjdz: TStringField;
    TSCD_ZSZLfpdz: TStringField;
    TSCD_ZSZLdh: TStringField;
    TSCD_ZSZLfzr: TStringField;
    TSCD_ZSZLllr: TStringField;
    TSCD_ZSZLcz: TStringField;
    TSCD_ZSZLtybh_1: TStringField;
    TSCD_ZSZLemail: TStringField;
    TSCD_ZSZLLB1: TBooleanField;
    TSCD_ZSZLLB2: TBooleanField;
    TSCD_ZSZLLB3: TBooleanField;
    TSCD_ZSZLLB1_Memo: TStringField;
    TSCD_ZSZLLB2_Memo: TStringField;
    TSCD_ZSZLLB3_Memo: TStringField;
    TSCD_ZSZLMemo: TStringField;
    TSCD_ZSZLAuthCE: TBooleanField;
    TSCD_ZSZLAuthCE_Memo: TStringField;
    TSCD_ZSZLAuthZSDH: TBooleanField;
    TSCD_ZSZLAuthZSDH_Memo: TStringField;
    TSCD_ZSZLIsZSDH: TBooleanField;
    TSCD_ZSZLUSERID: TStringField;
    TSCD_ZSZLUSERDATE: TDateTimeField;
    TSCD_ZSZLYN: TStringField;
    btnSyn: TBitBtn;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    TSCD_ZSZLTYJH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure btnSynClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    Ndate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentSupplier: TEquipmentSupplier;

implementation
  uses main1, EquipmentSupplier_Sup1 , EquipmentSupplier_Brand1, EquipmentSupplier_LB1, FunUnit;
{$R *.dfm}

procedure TEquipmentSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentSupplier.FormDestroy(Sender: TObject);
begin
  EquipmentSupplier:=nil;
end;

procedure TEquipmentSupplier.N1Click(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' update TSCD_ZSZL ');
    sql.Add(' set TYJH = ''Y'',UserID='''+main.Edit1.Text+''',UserDate=getdate() ');
    sql.Add(' where ZSDH = '''+TSCD_ZSZL.FieldByName('ZSDH').AsString+''' ');
    execsql;
  end;
  button1.Click;
end;

procedure TEquipmentSupplier.N2Click(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' update TSCD_ZSZL ');
    sql.Add(' set TYJH = ''N'',UserID='''+main.Edit1.Text+''',UserDate=getdate() ');
    sql.Add(' where ZSDH = '''+TSCD_ZSZL.FieldByName('ZSDH').AsString+''' ');
    execsql;
  end;
  button1.Click;
end;

procedure TEquipmentSupplier.Button1Click(Sender: TObject);
begin
  //
  with TSCD_ZSZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_ZSZL.zsdh,TSCD_ZSZL.zsjc_yw,TSCD_ZSZL.zsjc_zw,TSCD_ZSZL.zsjc_vw,TSCD_ZSZL.zsqm_yw,TSCD_ZSZL.zsqm_zw,TSCD_ZSZL.zsqm_vw,TSCD_ZSZL.tybh,TSCD_ZSZL.yjdz,TSCD_ZSZL.fpdz,TSCD_ZSZL.dh,TSCD_ZSZL.fzr ');
    SQL.Add('       ,TSCD_ZSZL.llr, TSCD_ZSZL.cz, TSCD_ZSZL.tybh,TSCD_ZSZL.email,IsNull(TSCD_ZSZL.LB1,0) as LB1,IsNull(TSCD_ZSZL.LB2,0) as LB2,IsNull(TSCD_ZSZL.LB3,0) as LB3 ');
    SQL.Add('       ,TSCD_ZSZL.LB1_Memo ,TSCD_ZSZL.LB2_Memo, TSCD_ZSZL.LB3_Memo, TSCD_ZSZL.Memo');
    SQL.Add('       ,TSCD_ZSZL.AuthCE, TSCD_ZSZL.AuthCE_Memo, TSCD_ZSZL.AuthZSDH , TSCD_ZSZL.AuthZSDH_Memo, TSCD_ZSZL.IsZSDH,TSCD_ZSZL.TYJH,TSCD_ZSZL.USERID,TSCD_ZSZL.USERDATE,TSCD_ZSZL.YN ');
    SQL.Add('from TSCD_ZSZL ');
    SQL.Add('where 1=1 ');
    if ZSDHEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
    if ZSJC_YWEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.zsjc_yw like ''%'+ZSJC_YWEdit.Text+'%'' ');
    if ZSJC_ZWEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.zsjc_zw like ''%'+ZSJC_ZWEdit.Text+'%'' ');
    if LB1_MemoEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.LB1_Memo like ''%'+LB1_MemoEdit.Text+'%'' ');
    if AuthCEEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.AuthCE_Memo like ''%'+AuthCEEdit.Text+'%'' ');
    if AuthZSDHEdit.Text<>'' then
    SQL.Add(' and TSCD_ZSZL.AuthZSDH_Memo like ''%'+AuthZSDHEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  Panel3.Visible:=false;
  //
end;

procedure TEquipmentSupplier.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TEquipmentSupplier.BB2Click(Sender: TObject);
begin
  with TSCD_ZSZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BBTT1.Visible:=true;
  BBTT2.Visible:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[9].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipmentSupplier.BB4Click(Sender: TObject);
begin
  with TSCD_ZSZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BBTT1.Visible:=true;
  BBTT2.Visible:=true;  
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[9].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipmentSupplier.BB3Click(Sender: TObject);
begin
  with TSCD_ZSZL do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEquipmentSupplier.DBGridEh1EditButtonClick(Sender: TObject);
begin
  //
  if DBGridEh1.selectedfield.fieldname='zsdh'  then
  begin
    BBTT1.Click;
  end;
  if DBGridEh1.selectedfield.fieldname='LB1_Memo'  then
  begin
    BBTT2.Click;
  end;
  if DBGridEh1.selectedfield.fieldname='AuthCE_Memo'  then
  begin
    EquipmentSupplier_Brand:=TEquipmentSupplier_Brand.Create(self);
    EquipmentSupplier_Brand.LB:=1;
    EquipmentSupplier_Brand.LoadBrand();
    EquipmentSupplier_Brand.ShowModal();
  end;
  if DBGridEh1.selectedfield.fieldname='AuthZSDH_Memo'  then
  begin
    EquipmentSupplier_Brand:=TEquipmentSupplier_Brand.Create(self);
    EquipmentSupplier_Brand.LB:=2;
    EquipmentSupplier_Brand.LoadBrand();
    EquipmentSupplier_Brand.ShowModal();
  end;
  //
end;

procedure TEquipmentSupplier.BB6Click(Sender: TObject);
begin

  with TSCD_ZSZL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  BBTT2.Visible:=false;
  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.columns[8].ButtonStyle:=cbsNone;
  DBGridEh1.columns[9].ButtonStyle:=cbsNone;

end;

procedure TEquipmentSupplier.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  try
    TSCD_ZSZL.first;
    for i:=1 to TSCD_ZSZL.RecordCount do
    begin
        case TSCD_ZSZL.updatestatus of
          usinserted:
            begin
              if TSCD_ZSZL.fieldbyname('ZSDH').isnull then
              begin
                TSCD_ZSZL.delete;
              end else
              begin
               TSCD_ZSZL.edit;
               TSCD_ZSZL.FieldByName('userID').Value:=main.edit1.text;
               TSCD_ZSZL.FieldByName('userdate').Value:=Ndate;
               UpSQL.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if TSCD_ZSZL.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                 if (NDate-TSCD_ZSZL.FieldByName('USERDATE').value)<=720  then
                 begin
                    if TSCD_ZSZL.fieldbyname('YN').value='0'then
                    begin
                      with TmpQuery do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'TSCD_ZSZL'+''''+','+''''+TSCD_ZSZL.fieldbyname('ZSDH').Value+'''');
                        sql.add(','''+TSCD_ZSZL.fieldbyname('ZSDH').Value+''','''+TSCD_ZSZL.fieldbyname('USERID').Value+''',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                      end;
                      UpSQL.apply(ukdelete);
                    end else
                    begin
                        TSCD_ZSZL.edit;
                        TSCD_ZSZL.FieldByName('userID').Value:=main.edit1.text;
                        TSCD_ZSZL.FieldByName('userdate').Value:=Ndate;
                        UpSQL.apply(ukmodify);
                    end;
                 end else
                 begin
                    showmessage('Date>720, can not modify.');
                 end;
               end;
             end;
        end;
        TSCD_ZSZL.next;
    end;
    TSCD_ZSZL.active:=false;
    TSCD_ZSZL.cachedupdates:=false;
    TSCD_ZSZL.requestlive:=false;
    TSCD_ZSZL.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    BBTT1.Visible:=false;
    BBTT2.Visible:=false;
    DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.columns[7].ButtonStyle:=cbsNone;
    DBGridEh1.columns[8].ButtonStyle:=cbsNone;
    DBGridEh1.columns[9].ButtonStyle:=cbsNone;
    Showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //

end;

procedure TEquipmentSupplier.FormCreate(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TEquipmentSupplier.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TSCD_ZSZL.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TEquipmentSupplier.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  TSCD_ZSZL.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for  i:=0  to TSCD_ZSZL.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=TSCD_ZSZL.fields[i].FieldName;
      end;
      TSCD_ZSZL.First;
      j:=2;
      while   not   TSCD_ZSZL.Eof   do
        begin
          for   i:=0   to  TSCD_ZSZL.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=TSCD_ZSZL.Fields[i].AsString;
          end;
        TSCD_ZSZL.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TEquipmentSupplier.BBTT1Click(Sender: TObject);
begin
    EquipmentSupplier_Sup:=TEquipmentSupplier_Sup.Create(self);
    EquipmentSupplier_Sup.Show();
end;

procedure TEquipmentSupplier.BBTT2Click(Sender: TObject);
begin
    EquipmentSupplier_LB:=TEquipmentSupplier_LB.Create(self);
    EquipmentSupplier_LB.Show();
end;

procedure TEquipmentSupplier.btnSynClick(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select *   from zszl  ');
    sql.Add('where yn=''2'' and (TYJH<>''Y'' or TYJH is NULL)');
    sql.Add('and zsdh not in (select zsdh from tscd_zszl )');
    active:=true;
  end;
  if TmpQuery.RecordCount>0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert TSCD_ZSZL(zsdh,zsjc_yw,zsqm_yw,yjdz,dh,tybh,userid,USERDATE) ');
      sql.Add('select zsdh,zsjc,zsqm,yjdz,dh,tybh,'''+main.edit1.text+''',getdate()');
      sql.Add('where yn=''2'' and (TYJH<>''Y'' or TYJH is NULL)');
      sql.Add('and zsdh not in (select zsdh from tscd_zszl )');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage ( 'Syn Success');
  end else
  begin
    showmessage ( 'No record new supplier');
  end;

end;

end.
