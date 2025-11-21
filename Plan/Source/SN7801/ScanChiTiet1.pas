unit ScanChiTiet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fununit,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Buttons,
  ComCtrls;

type
  TScanChiTiet = class(TForm)
    Panel1: TPanel;
    DDBH: TLabeledEdit;
    Label4: TLabel;
    Size: TComboBox;
    DBGrid: TDBGridEh;
    SMZL: TQuery;
    DS: TDataSource;
    btnQuery: TButton;
    Panel2: TPanel;
    btnQuery1: TBitBtn;
    btnInsert: TBitBtn;
    btnDelete: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnExit: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    btnDel_All: TBitBtn;
    bbt6: TBitBtn;
    bbt5: TBitBtn;
    Qtemp: TQuery;
    updateSMZL: TUpdateSQL;
    SMZLSMNO: TFloatField;
    SMZLCODEBAR: TStringField;
    SMZLYSBH: TStringField;
    SMZLDDBH: TStringField;
    SMZLXXCC: TStringField;
    SMZLGXLB: TStringField;
    SMZLScanDate: TDateTimeField;
    SMZLUserDate: TDateTimeField;
    SMZLQty: TIntegerField;
    SMZLCTS: TIntegerField;
    SMZLtotQty: TIntegerField;
    SMZLUSERID: TStringField;
    SMZLDepName: TStringField;
    SMZLoldCTS: TIntegerField;
    SMZLID: TStringField;
    SMDDSS: TQuery;
    SMZLDepNO: TStringField;
    Label1: TLabel;
    BDelRec: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnQuery1Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnDel_AllClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEditButtonClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure DBGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    GXLB :String;
    DepName :String;
    GSBH :String;
    Dates : String;
    Hours :String;
    ID :String;

    procedure ShowDetail();
    procedure Delete();
    procedure DieuKienXoa();
    { Public declarations }
  end;

var
  ScanChiTiet: TScanChiTiet;
  NDate:TDate;

implementation

uses  main1, DSDonVi1, ChuyenGio1;

{$R *.dfm}

procedure TScanChiTiet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (btnSave.Enabled=true) and (btnCancel.Enabled=true) then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end else
    action:=caFree;
end;

procedure TScanChiTiet.FormDestroy(Sender: TObject);
begin
  ScanChiTiet:=nil;
end;

procedure TScanChiTiet.ShowDetail();
begin
  with SMZL do
  begin
    active := false;
    sql.Clear;
    sql.Add(' select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMDDSS.GXLB, convert(smalldatetime,convert(varchar,SMZL.ScanDate,120)) as ScanDate, SMZL.USERDATE, SMDDSS.Qty as Qty, SMZL.CTS as CTS, SMZL.CTS*SMDDSS.Qty as totQty, ');
    sql.Add(' SMZL.USERID, BDepartment.DepName, SMZL.CTS as oldCTS, BDepartment.ID as ID, SMZL.DepNo as DepNO');
    sql.Add(' from SMZL ');
    sql.Add(' left join BDepartment on BDepartment.ID=SMZL.DepNo ');
    sql.Add(' left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    sql.Add(' left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
    sql.Add(' where 1=1 ');
    sql.Add(' and SMDDSS.GXLB ='''+GXLB+'''' );
    sql.Add(' and SMDDSS.DDBH like'''+DDBH.Text+'%'+''' ');
    if ((Size.Text <> 'ALL') and (Size.Text <> '')) then
    begin
      sql.add(' and SMDDSS.XXCC ='+''''+Size.Text+'''');
    end;
    sql.Add(' and BDepartment.DepName like'+''''+DepName+'%'+''' ');
    sql.Add(' and BDepartment.GSBH ='''+GSBH+'''');
    sql.add(' and SMZL.ScanDate between'  +''''+Dates+' '+Hours+':00:00'+''' and '+''''+Dates+' '+Hours+':59:00'' ');
    sql.Add(' and SMZL.SB is null ');
    sql.Add(' order by SMNO ');
    active := true;
  end;
end;

procedure TScanChiTiet.btnExitClick(Sender: TObject);
begin
  close;
end;


procedure TScanChiTiet.btnCancelClick(Sender: TObject);
begin
  with SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DDBH.Text:='';
  Size.Text:='ALL';
  btnSave.Enabled:=false;
  btnCancel.Enabled:=false;
  btnDel_All.Enabled:=true;
  btnDelete.Enabled:=true;
  btnModify.Enabled:=true;
  DBGrid.Columns[6].ButtonStyle:=cbsNone;
  DBGrid.Columns[7].ButtonStyle:=cbsNone;
end;

procedure TScanChiTiet.btnModifyClick(Sender: TObject);
begin
  with SMZL do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  btnDel_All.Enabled:=false;
  btnDelete.Enabled:=false;
  btnSave.Enabled:=true;
  btnCancel.Enabled:=true;
  DBGrid.Columns[6].ButtonStyle:=cbsEllipsis;
  DBGrid.Columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TScanChiTiet.btnQuery1Click(Sender: TObject);
begin
  abort;
end;

procedure TScanChiTiet.btnQueryClick(Sender: TObject);
begin
    ShowDetail();
    if (main.edit1.Text=SMZL.FieldByName('USERID').AsString) and (formatdatetime('yyyy/MM/dd',SMZL.fieldbyname('ScanDate').AsDateTime)=formatdatetime('yyyy/MM/dd',NDate)) then
    begin
      btnModify.Enabled:=true;
      btnDelete.Enabled:=true;
      btnDel_All.Enabled:=true;
      btnSave.Enabled:=false;
      btnCancel.Enabled:=false;
    end else
    begin
      btnModify.Enabled:=false;
      btnDelete.Enabled:=false;
      btnDel_All.Enabled:=false;
    end;
end;

procedure TScanChiTiet.btnDel_AllClick(Sender: TObject);
begin
  If messagedlg('Ban chac chan co muon xoa tat ca khong ?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    SMZL.First;
    if SMZL.recordcount>0 then
    begin
      with SMZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        while not Eof do
        begin
          edit;
          fieldbyname('CTS').Value:=0;
          next;
        end;
      end;
    end;
    btnSave.Enabled:=true;
    btnCancel.Enabled:=true;
    btnDelete.Enabled:=false;
    btnModify.Enabled:=false;
  end;
end;

procedure TScanChiTiet.btnDeleteClick(Sender: TObject);
begin
  If messagedlg('Ban chac chan co muon xoa khong ?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    if SMZL.recordcount>0 then
    begin
      with SMZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('CTS').Value:=0;
      end;
    end;
    btnSave.Enabled:=true;
    btnCancel.Enabled:=true;
    btnDel_All.Enabled:=false;
    btnModify.Enabled:=false;
  end;
end;

procedure TScanChiTiet.FormCreate(Sender: TObject);
var i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct CC from ddzls where LEFT(ddbh,1) in (''Y'',''Z'') order by CC desc');
    active:=true;
    for i:=1 to recordcount do
    begin
      Size.Items.Add(fieldbyname('CC').asstring);
      next;
    end;
    Size.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
end;
procedure TScanChiTiet.DBGridEditButtonClick(Sender: TObject);
begin
  if (DBGrid.SelectedField.FieldName='DepName') then
  begin
    if  DSDonVi=nil then
      DSDonVi:=TDSDonVi.Create(self);
    DSDonVi.Show;
  end;
  if (DBGrid.SelectedField.FieldName='ScanDate') then
  begin
    if ChuyenGio=nil then
      ChuyenGio:=TChuyenGio.Create(self);
    ChuyenGio.show;
  end;
end;

procedure TScanChiTiet.Delete();
var i,difQty,a,k:integer;
begin
   case SMZL.updatestatus of
      usmodified:
      begin
        SMDDSS.Active:=true;
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('update SMDDSS ');
          sql.add('set okCTS=okCTS-'+''''+SMZL.fieldbyname('oldCTS').asstring+'''');
          sql.add('where CODEBAR='+''''+ SMZL.fieldbyname('CODEBAR').Value+'''');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;
        end;
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'SMZL'+''''+','+''''+SMZL.fieldbyname('CODEBAR').Value+'''');
          sql.add(','+''''+SMZL.fieldbyname('oldCTS').asstring+''''+','+''''+SMZL.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
        end;
        SMDDSS.Active:=false;
        UpdateSMZL.apply(ukdelete);
      end;
   end;
end;

procedure TScanChiTiet.DieuKienXoa();
var i: integer;
begin
  if SMZL.fieldbyname('CTS').value='0'then
  begin
    if SMZL.recordcount>0 then
    begin
      with Qtemp do
      begin
        Active:=false;
        sql.Clear;
        sql.Add(' select DDZL.DDBH,isnull(Sum(Qty_C),0) as Qty_C,isnull(Sum(Qty_S),0) as Qty_S,isnull(sum(Qty_A),0) as Qty_A,isnull(sum(Qty_F),0) as Qty_F ');
        sql.Add(' from DDZL  ');
        sql.Add(' left join (  select YSBH,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as Qty_C ');
        sql.Add('              from SMDDSS  left join SMDD ');
        sql.Add('              on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
        sql.Add('              where SMDDSS.DDBH like '+''''+SMZL.fieldbyname('YSBH').AsString+'%'+'''');
        sql.Add('              and SMDDSS.gxlb = ''C''');
        sql.Add('              and xxcc='+''''+SMZL.fieldbyname('XXCC').asstring+'''');
        sql.Add('              group by YSBH) SMDDSS_C on SMDDSS_C.YSBH=DDZL.DDBH ');
        sql.Add(' left join (  select YSBH,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as Qty_S ');
        sql.Add('              from SMDDSS  left join SMDD ');
        sql.Add('              on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
        sql.Add('              where SMDDSS.DDBH like '+''''+SMZL.fieldbyname('YSBH').AsString+'%'+'''');
        sql.Add('              and SMDDSS.gxlb = ''S''');
        sql.Add('              and xxcc='+''''+SMZL.fieldbyname('XXCC').asstring+'''');
        sql.Add('              group by YSBH) SMDDSS_S on SMDDSS_S.YSBH=DDZL.DDBH  ');
        sql.Add(' left join (  select YSBH,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as Qty_A ');
        sql.Add('              from SMDDSS  left join SMDD  ');
        sql.Add('              on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
        sql.Add('              where SMDDSS.DDBH like '+''''+SMZL.fieldbyname('YSBH').AsString+'%'+'''');
        sql.Add('              and SMDDSS.gxlb = ''A''');
        sql.Add('              and xxcc='+''''+SMZL.fieldbyname('XXCC').asstring+'''');
        sql.Add('              group by YSBH) SMDDSS_A on SMDDSS_A.YSBH=DDZL.DDBH ');
        sql.Add(' left join (	 select DDZL.DDBH,sum(isnull(YWBZPOS.Qty,0)) as Qty_F ');
        sql.Add('              from YWCP ');
        sql.Add('              left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.XH ');
        sql.Add('              left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPOS.DDCC ');
        sql.Add('              left join YWDD on YWDD.DDBH=YWCP.DDBH ');
        sql.Add('              left join DDZL on DDZL.DDBH=YWDD.YSBH ');
        sql.Add('              where  YWCP.InDate is not null ');
        sql.Add('              and YWCP.SB<>''2''');
        sql.Add('              and YWDD.YSBH like '+''''+SMZL.fieldbyname('YSBH').AsString+'%'+'''');
        sql.Add('              and ywbzpos.ddcc='+''''+SMZL.fieldbyname('XXCC').asstring+'''');
        sql.Add('              group by DDZL.DDBH ) SMDDSS_F on SMDDSS_F.DDBH=DDZL.DDBH ');
        sql.Add(' where DDZL.DDBH like '+''''+SMZL.fieldbyname('YSBH').AsString+'%'+'''');
        sql.Add(' group by DDZL.DDBH ');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
      If SMZL.FieldByName('GXLB').AsString= 'C' then
      begin
        if (Qtemp.FieldByName('Qty_C').Value - (SMZL.fieldbyname('oldCTS').Value*SMZL.fieldbyname('Qty').Value) >=  Qtemp.FieldByName('Qty_S').Value ) then
        begin
          Delete();
        end else
        begin
          Showmessage('YSBH: '+SMZL.fieldbyname('YSBH').AsString+' ,Size: '+SMZL.fieldbyname('XXCC').asstring+' ,Qty_C: '+Qtemp.fieldbyname('Qty_C').asstring+' ,Qty_S: '+Qtemp.fieldbyname('Qty_S').asstring+#13#10+'Qty_C<Qty_S Can not Delete');
          btnQuery.Click;
        end;
      end else
      if SMZL.FieldByName('GXLB').AsString= 'S' then
      begin
        if ( Qtemp.FieldByName('Qty_S').Value - (SMZL.fieldbyname('oldCTS').Value*SMZL.fieldbyname('Qty').Value) >= Qtemp.FieldByName('Qty_A').Value ) then
        begin
          Delete();
        end else
        begin
          Showmessage('YSBH: '+SMZL.fieldbyname('YSBH').AsString+' ,Size: '+SMZL.fieldbyname('XXCC').asstring+' ,Qty_S: '+Qtemp.fieldbyname('Qty_S').asstring+' ,Qty_A: '+Qtemp.fieldbyname('Qty_A').asstring+#13#10+'Qty_S<Qty_A Can not Delete');
          btnQuery.Click;
        end;
      end else
      if SMZL.FieldByName('GXLB').AsString= 'A' then
      begin
        if ( Qtemp.FieldByName('Qty_A').Value - (SMZL.fieldbyname('oldCTS').Value*SMZL.fieldbyname('Qty').Value) >= Qtemp.FieldByName('Qty_F').Value ) then
        begin
          Delete();
        end else
        begin
          Showmessage('YSBH: '+SMZL.fieldbyname('YSBH').AsString+' ,Size: '+SMZL.fieldbyname('XXCC').asstring+' ,Qty_A: '+Qtemp.fieldbyname('Qty_A').asstring+' ,Qty_F: '+Qtemp.fieldbyname('Qty_F').asstring+#13#10+'Qty_A<Qty_F Can not Delete');
          btnQuery.Click;
        end;
      end else
      begin
        Delete();
      end;
    end;
  end;
end;

procedure TScanChiTiet.btnSaveClick(Sender: TObject);
var i: integer;
begin
  SMZL.First;
  for i:=1 to SMZL.RecordCount do
  begin
    case SMZL.updatestatus of
      usmodified:
      begin
        if SMZL.FieldByName('CTS').value=0 then
        begin
          DieuKienXoa();
        end else
        begin
           updateSMZL.Apply(ukmodify);
        end;
      end;
    end;
    SMZL.Next;
  end;
  btnQuery.Click;
  DDBH.Text:='';
  Size.Text:='ALL';
  btnSave.Enabled:=false;
  btnCancel.Enabled:=false;
  DBGrid.Columns[6].ButtonStyle:=cbsNone;
  DBGrid.Columns[7].ButtonStyle:=cbsNone;
end;

procedure TScanChiTiet.DBGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMZL.fieldbyname('CTS').value=0 then
    DBGrid.canvas.Font.Color:=clred;
end;

procedure TScanChiTiet.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
