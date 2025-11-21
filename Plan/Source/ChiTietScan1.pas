unit ChiTietScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fununit,
  DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, ComCtrls,Dialogs,
  Spin, Menus;

type
  TChiTietScan = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    SMZL: TQuery;
    UpdateSMZL: TUpdateSQL;
    SMZLSMNO: TFloatField;
    SMZLGXLB: TStringField;
    SMZLQty: TIntegerField;
    SMZLUSERID: TStringField;
    SMZLDepName: TStringField;
    SMZLYSBH: TStringField;
    Panel1: TPanel;
    btn_Save: TBitBtn;
    btn_Exit: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Ngay: TDateTimePicker;
    Label10: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    SMZLCTS: TIntegerField;
    SMZLtotQty: TIntegerField;
    btnChon: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Qtemp: TQuery;
    SMZLUserDate: TDateTimeField;
    SMZLXXCC: TStringField;
    SMDDSS: TQuery;
    SMZLCODEBAR: TStringField;
    Delete_SMNO: TLabeledEdit;
    Edit5: TEdit;
    SMZLScanDate: TDateTimeField;
    SMZLoldCTS: TIntegerField;
    SMZLOld: TQuery;
    DS2: TDataSource;
    UpdateSMZLOld: TUpdateSQL;
    SMZLOldSMNO: TFloatField;
    SMZLOldCODEBAR: TStringField;
    SMZLOldYSBH: TStringField;
    SMZLOldXXCC: TStringField;
    SMZLOldGXLB: TStringField;
    SMZLOldScanDate: TDateTimeField;
    SMZLOldUSERDATE: TDateTimeField;
    SMZLOldQty: TIntegerField;
    SMZLOldCTS2: TIntegerField;
    SMZLOldtotQty: TIntegerField;
    SMZLOldUSERID: TStringField;
    SMZLOldDepName: TStringField;
    SMZLOldoldCTS: TIntegerField;
    PopupMenu1: TPopupMenu;
    ChuyenTieng: TMenuItem;
    ChuyenDV: TMenuItem;
    Xoa: TMenuItem;
    btnCancel: TBitBtn;
    btnXoa: TButton;
    Edit6: TEdit;
    btnChuyen: TButton;
    Edit7: TEdit;
    editChuyen: TEdit;
    SMZLDDBH: TStringField;
    SMZLOldDDBH: TStringField;
    Gio: TDateTimePicker;
    DDBH: TLabeledEdit;
    Label4: TLabel;
    Size: TComboBox;

    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExitClick(Sender: TObject);
    procedure btnChonClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Delete_SMNOChange(Sender: TObject);
    procedure Delete_SMNOKeyPress(Sender: TObject; var Key: Char);
    procedure SMZLCalcFields(DataSet: TDataSet);
    procedure SMZLNewRecord(DataSet: TDataSet);
    procedure ChuyenTiengClick(Sender: TObject);
    procedure ChuyenDVClick(Sender: TObject);
    procedure XoaClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnXoaClick(Sender: TObject);
    procedure btnChuyenClick(Sender: TObject);
    procedure editChuyenChange(Sender: TObject);
    procedure editChuyenKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);

  private
   procedure Delete();
   procedure UpdateChuyenTieng();
   procedure UpdateChuyenDonVi();
    { Private declarations }
  public
    GXLB :String;
    DepName :String;
    GSBH :String;
    Dates : String;
    Hours :String;
    ID :String;
    procedure ShowDetail();
    { Public declarations }
  end;

var
  ChiTietScan: TChiTietScan;

implementation

uses ScanPerHour1, DSDonVi1;

{$R *.dfm}

procedure TChiTietScan.FormDestroy(Sender: TObject);
begin
  ChiTietScan := nil;
end;

procedure TChiTietScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action :=caFree;
end;

procedure TChiTietScan.ShowDetail();
begin
   with SMZL do
   begin
      active := false;
      sql.Clear;
      sql.Add(' select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMDDSS.GXLB, convert(smalldatetime,convert(varchar,SMZL.ScanDate,120)) as ScanDate, SMZL.USERDATE, SMDDSS.Qty as Qty, SMZL.CTS as CTS, SMZL.CTS*SMDDSS.Qty as totQty, ');
      sql.Add(' SMZL.USERID, BDepartment.DepName, SMZL.CTS as oldCTS ');
      sql.Add(' from SMZL ');
      sql.Add(' left join BDepartment on BDepartment.ID=SMZL.DepNo ');
      sql.Add(' left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
      sql.Add(' left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.Add(' where 1=1 ');
      sql.Add(' and SMDDSS.GXLB ='''+GXLB+'''' );
      sql.Add(' and BDepartment.DepName like'+''''+DepName+'%'+'''' );
      sql.Add(' and BDepartment.GSBH ='''+GSBH+'''');
      sql.add(' and SMZL.ScanDate between'  +''''+Dates+' '+Hours+':00:00'+''' and '+''''+Dates+' '+Hours+':59:59'' ');
      sql.Add(' order by SMNO ');
      //funcobj.WriteErrorLog(sql.Text);
      active := true;
   end;
   with SMZLOld do
   begin
      active := false;
      sql.Clear;
      sql.Add(' select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMDDSS.GXLB, convert(smalldatetime,convert(varchar,SMZLOld.ScanDate,120)) as ScanDate, SMZLOld.USERDATE, SMDDSS.Qty as Qty, SMZLOld.CTS as CTS, SMZLOld.CTS*SMDDSS.Qty as totQty, ');
      sql.Add(' SMZLOld.USERID, BDepartment.DepName, SMZLOld.CTS as oldCTS ');
      sql.Add(' from SMZLOld ');
      sql.Add(' left join BDepartment on BDepartment.ID=SMZLOld.DepNo ');
      sql.Add(' left join SMDDSS on SMDDSS.CODEBAR=SMZLOld.CODEBAR ');
      sql.Add(' left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.Add(' where 1=1 ');
      sql.Add(' and SMDDSS.GXLB ='''+GXLB+'''' );
      sql.Add(' and BDepartment.DepName like'+''''+DepName+'%'+'''' );
      sql.Add(' and BDepartment.GSBH ='''+GSBH+'''');
      sql.add(' and SMZLOld.ScanDate between'  +''''+Dates+' '+Hours+':00:00'+''' and '+''''+Dates+' '+Hours+':59:59'' ');
      sql.Add(' order by SMNO ');
      //funcobj.WriteErrorLog(sql.Text);
      active := true;
   end;
   Ngay.Date:= SMZL.fieldbyname('ScanDate').AsDateTime;
   Gio.Time:= SMZL.fieldbyname('ScanDate').AsDateTime;
   {if(formatdatetime('yyyy/MM/dd',Ngay.Date) <> formatdatetime('yyyy/MM/dd',NDate)) then
   begin
      //PopupMenu1.AutoPopup:=false;
      ChuyenTieng.Enabled:=false;
      ChuyenDV.Enabled:=false;
      Xoa.Enabled:=false;
   end else
   begin
      //PopupMenu1.AutoPopup:=true;
      ChuyenTieng.Enabled:=true;
      ChuyenDV.Enabled:=true;
      Xoa.Enabled:=true;
   end;}
end;

procedure TChiTietScan.btn_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TChiTietScan.btnChonClick(Sender: TObject);
begin
  if DSDonVi=nil then
    DSDonVi:=TDSDonVi.create(self);
  DSDonVi.show;
end;

procedure TChiTietScan.Delete();
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
          if SMDDSS.FieldByName('SB').asstring='2' then
          begin
            DifQty:=SMDDSS.fieldbyname('PerQty').value*SMDDSS.fieldbyname('CTS').value;
            active:=false;
            sql.Clear;
            sql.add('update SCBBSS ');
            sql.add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
            sql.add('where PRONO='+''''+ SMDDSS.fieldbyname('PRONO').asstring +'''');
            sql.add('      and SCBH='+''''+SMDDSS.fieldbyname('YSBH').asstring +'''');
            sql.add('      and XXCC='+''''+SMDDSS.fieldbyname('XXCC').asstring+'''');
            sql.add('      and GXLB='+''''+SMDDSS.fieldbyname('GXLB').asstring+'''');
            sql.add('update SCBBS ');
            sql.add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
            sql.add('where PRONo='+''''+ SMDDSS.fieldbyname('PRONO').asstring +'''');
            sql.add('      and SCBH='+''''+SMDDSS.fieldbyname('YSBH').asstring +'''');
            sql.add('      and GXLB='+''''+SMDDSS.fieldbyname('GXLB').asstring+'''');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
          end;
        end;
        SMDDSS.Active:=false;
        UpdateSMZL.apply(ukdelete);
        if SMZLOld.RecordCount > 0 then
        begin
          with SMZLOld do
          begin
            if SMZLOld.Locate('SMNO',SMZL.fieldbyname('SMNO').Value,[]) then
            UpdateSMZLOld.Apply(ukdelete);
          end;
        end;
        SMZLOld.Next;
      end;
   end;
end;
procedure TChiTietScan.UpdateChuyenTieng();
var i: integer;
begin
  SMZL.first;
  for i:=1 to SMZL.RecordCount do
  begin
    If SMZL.fieldbyname('oldCTS').value='0' then
    begin
      with SMZL do
      begin
        Edit;
        FieldByName('SCanDate').AsString := formatdatetime('yyyy/MM/dd',Ngay.Date)+' '+formatdatetime('HH:mm:ss',Gio.Time);
        FieldByName('USERDATE').AsString := formatdatetime('yyyy/MM/dd',Ngay.Date)+' '+formatdatetime('HH:mm:ss',Gio.Time);
        Post;
        UpdateSMZL.apply(ukmodify);
        if SMZLOld.RecordCount>0 then
        begin
          with SMZLOld do
          begin
            if SMZLOld.Locate('SMNO',SMZL.fieldbyname('SMNO').Value,[]) then
            begin
              Edit;
              SMZLOld.FieldByName('SCanDate').AsString := formatdatetime('yyyy/MM/dd',Ngay.Date)+' '+formatdatetime('HH:mm:ss',Gio.Time);
              SMZLOld.FieldByName('USERDATE').AsString := formatdatetime('yyyy/MM/dd',Ngay.Date)+' '+formatdatetime('HH:mm:ss',Gio.Time);
              Post;
              UpdateSMZLOld.Apply(ukmodify);
              Next;
            end;
            SMZLOld.Next;
          end;
        end;
      end;
      SMZL.Next;
    end else
    SMZL.Next;
  end;
end;

procedure TChiTietScan.UpdateChuyenDonVi();
begin
  with SMZL do
  begin
    Active:=false;
    sql.Clear;
    sql.Add(' update SMZL ');
    sql.Add(' set DepNO = '+''''+ID+'''');
    sql.Add(' from SMZL ');
    sql.Add(' inner join SMDDSS on SMDDSS.CODEBAR = SMZL.CODEBAR ');
    sql.Add(' inner join Bdepartment on SMZL.depno=Bdepartment.ID ');
    sql.Add(' where 1=1 ');
    sql.Add(' and ScanDate between'  +''''+Dates+' '+Hours+':00:00'+''' and '+''''+Dates+' '+Hours+':59:59'' ');
    sql.Add(' and SMDDSS.GXLB ='''+GXLB+'''' );
    sql.Add(' and DepName like '+''''+DepName+'%'+'''' );
    if  (Edit3.Text<>'') or (Edit4.Text<>'') then
    begin
      sql.Add(' and SMNO between '''+Edit3.text+''' and '+''''+Edit4.text+'''');
    end;
    if (DDBH.Text<>'') then
    begin
      sql.Add(' and DDBH like '''+DDBH.Text+'%'+''' ');
    end;
    if Size.Text <> 'ALL' then
    begin
      sql.add(' and SMDDSS.XXCC ='+''''+Size.Text+'''');
    end;

    sql.Add(' and SMZL.SB is null ');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
  end;
end;

procedure TChiTietScan.btn_SaveClick(Sender: TObject);
var i,a,k : integer;
    SMNO1, SMNO2 : string;
begin
  //DepName
  if Edit2.Visible = true then
  begin
    SMZL.First;
    if (Edit3.Text) > (Edit4.Text) then
    begin
      showmessage('Nhap lai SMNO !');
      abort;
    end;
    if Edit2.Text='' then
    begin
      showmessage('Nhap ten don vi moi !');
      btnCancel.Click;
      abort;
    end;
    UpdateChuyenDonVi();
    //ShowDetail();
  end;
  //time
  if (btnChuyen.Visible = true) or (editChuyen.Visible = true) then
  begin
    if(editChuyen.Text <> '') and (SMZL.RecordCount > 0) then
    begin
      If strtoint(editChuyen.Text) > SMZL.RecordCount then
      begin
        showmessage('Nhap lai so luong dong!');
        abort;
      end;
    end;
    UpdateChuyenTieng();
    //ShowDetail();
  end;
  // Delete
  If (Delete_SMNO.Visible= true) or (btnXoa.Visible= true) then
  begin
    SMZL.first;
    for i:=1 to SMZL.RecordCount do
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
            if (Qtemp.FieldByName('Qty_C').Value - Qtemp.FieldByName('Qty_S').Value >= 6) then
            begin
              Delete();
            end else
            begin
              Showmessage('YSBH:'+''''+SMZL.fieldbyname('YSBH').AsString+''',Size:'+''''+SMZL.fieldbyname('XXCC').asstring+''',Qty_C<Qty_S Can not Delete');
              abort;
            end;
          end else
          if SMZL.FieldByName('GXLB').AsString= 'S' then
          begin
            if (Qtemp.FieldByName('Qty_S').Value - Qtemp.FieldByName('Qty_A').Value >= 6) then
            begin
              Delete();
            end else
            begin
              Showmessage('YSBH:'+''''+SMZL.fieldbyname('YSBH').AsString+''',Size:'+''''+SMZL.fieldbyname('XXCC').asstring+''',Qty_S<Qty_A Can not Delete');
              abort;
            end;
          end else
          if SMZL.FieldByName('GXLB').AsString= 'A' then
          begin
            if (Qtemp.FieldByName('Qty_A').Value - Qtemp.FieldByName('Qty_F').Value >= 1) then
            begin
              Delete();
            end else
            begin
              Showmessage('YSBH:'+''''+SMZL.fieldbyname('YSBH').AsString+''',Size:'+''''+SMZL.fieldbyname('XXCC').asstring+''',Qty_A<Qty_F Can not Delete');
              abort;
            end;
          end else
          begin
            Delete();
          end;
        end;
      end;
      SMZL.Next;
    end;
  end;
  ShowDetail();
  editChuyen.Text:='';
  Delete_SMNO.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  edit5.Text:='0';
  edit6.Text:='0';
  edit7.Text:='0';
  Size.Text:='ALL';
  DDBH.Text:='';
  Label1.Visible:=false;
  Label2.Visible:=false;
  Label3.Visible:=false;
  Edit2.Visible:=false;
  Edit3.Visible:=false;
  Edit4.Visible:=false;
  Ngay.Visible:=false;
  Gio.Visible:=false;
  editChuyen.Visible:=false;
  Label6.Visible:=false;
  Label7.Visible:=false;
  Edit1.Visible:=false;
  btnChon.Visible:=false;
  Delete_SMNO.Visible:=false;
  edit5.Visible:=false;
  PopupMenu1.AutoPopup:=true;
  panel1.Visible:=false;
  btnChuyen.Visible:=false;
  edit7.Visible:=false;
  btnXoa.Visible:=false;
  editChuyen.Enabled:=true;
  Delete_SMNO.Enabled:=true;
  Label4.Visible:=false;
  Size.Visible:=false;
  DDBH.Visible:=false;
end;

procedure TChiTietScan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
  var i: integer;
begin
  if (SMZL.fieldbyname('CTS').value=0)  then
  begin
    DBGrideh1.canvas.Font.Color:=clred;
  end;
  if (SMZL.FieldByName('oldCTS').Value=0) then
  begin
    DBGrideh1.canvas.Font.Color:=clLime;
  end;
end;

procedure TChiTietScan.Delete_SMNOChange(Sender: TObject);
var i: integer;
begin
  if Delete_SMNO.Text = '' then
  begin
    SMZL.First;
    edit5.Text:='0';
    abort;
  end else
  begin
    edit5.Text:='0';
    If strtoint(Delete_SMNO.Text) > SMZL.RecordCount then
    begin
      showmessage('Nhap lai so luong!');
      Delete_SMNO.Text := '';
      abort;
    end;
    //////
    with SMZL do
    begin
      First;
      for i:=0 to strtoint(Delete_SMNO.Text)-1 do
      begin
        edit5.Text:= strtoint(edit5.Text)+ Fieldbyname('TotQty').Value;
        next;
      end;
    end;
  end;
end;

procedure TChiTietScan.Delete_SMNOKeyPress(Sender: TObject; var Key: Char);
var i: integer;
begin
  if key=#13 then
  begin
    SMZL.First;
    if Delete_SMNO.Text = '' then
    begin
      showmessage('Nhap so luong dong!');
      abort;
    end;
    for i:=1 to length(Delete_SMNO.Text) do
    begin
      if not (Delete_SMNO.Text[i] in ['0'..'9'])then
      begin
        showmessage('Nhap so!');
        abort;
      end;
    end;
    If strtoint(Delete_SMNO.Text) > SMZL.RecordCount then
    begin
      showmessage('Nhap lai so luong!');
      abort;
    end;
    //
    If messagedlg('Ban co chac muon  xoa '+' '+ Delete_SMNO.Text+' dong khong?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
    begin
      if SMZL.recordcount>0 then
      begin
        with SMZL do
        begin
          for i:=0 to strtoint(Delete_SMNO.Text)-1 do
          begin
            edit;
            fieldbyname('CTS').Value:=0;
            Next;
          end;
        end;
      end;
      //
      if SMZLOld.recordcount>0 then
      begin
        with SMZLOld do
        begin
          for i:=0 to strtoint(Delete_SMNO.Text)-1 do
          begin
            edit;
            fieldbyname('CTS').Value:=0;
            Next;
          end;
        end;
      end;
      Delete_SMNO.Enabled:=false;
    end;
  end;
end;

procedure TChiTietScan.SMZLCalcFields(DataSet: TDataSet);
begin
  with SMZL do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value ;
  end;
end;

procedure TChiTietScan.SMZLNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TChiTietScan.ChuyenTiengClick(Sender: TObject);
begin
  if messagedlg('YES:Chuyen tieng nhieu dong lien tiep, NO:Chuyen tieng tung dong khong lien tiep!',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    editChuyen.Enabled:=true;
    Ngay.Visible:=true;
    Gio.Visible:=true;
    editChuyen.Visible:=true;
    Label6.Visible:=true;
    Label7.Visible:=true;
    Edit1.Visible:=true;
    panel1.Visible:=true;
    PopupMenu1.AutoPopup:=false;
    btnChuyen.Visible:=false;
    edit7.Visible:=false;
    btn_Save.Left:=608;
    btnCancel.Left:=690;
    btn_Exit.Left:=772;
    panel1.Height:=60;
  end else
  begin
    Ngay.Visible:=true;
    Gio.Visible:=true;
    editChuyen.Visible:=false;
    Label6.Visible:=false;
    Label7.Visible:=true;
    Edit1.Visible:=false;
    panel1.Visible:=true;
    PopupMenu1.AutoPopup:=false;
    btnChuyen.Visible:=true;
    edit7.Visible:=true;
    panel1.Height:=60;
    btnChuyen.Left:=20;
    edit7.Left:=90;
    btn_Save.Left:=490;
    btnCancel.Left:=570;
    btn_Exit.Left:=650;
  end;
  with SMZL do
  begin
    if recordcount>0 then
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end
  end;
//
  with SMZLOld do
  begin
    if recordcount>0 then
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
  end;
end;

procedure TChiTietScan.ChuyenDVClick(Sender: TObject);
begin
  edit2.Clear;
  Label1.Visible:=true;
  Label2.Visible:=true;
  Label3.Visible:=true;
  Edit2.Visible:=true;
  Edit3.Visible:=true;
  Edit4.Visible:=true;
  btnChon.Visible:=true;
  panel1.Visible:=true;
  Delete_SMNO.Visible:=false;
  edit5.Visible:=false;
  PopupMenu1.AutoPopup:=false;
  label6.Visible:=false;
  editChuyen.Visible:=false;
  Label7.Visible:=false;
  Ngay.Visible:=false;
  Gio.Visible:=false;
  edit1.Visible:=false;
  editChuyen.Visible:=false;
  Label4.Visible:=true;
  DDBH.Visible:=true;
  Size.Visible:=true;
  panel1.Height:=60;
  label1.Top:=17;
  edit2.Top:=13;
  btnChon.Top:=13;
  label2.Top:=17;
  edit3.Top:=13;
  label3.Top:=15;
  edit4.Top:=13;
  DDBH.Top:=13;
  Size.Top:=13;
  Label4.Top:=15;
  btn_Save.Left:=780;
  btnCancel.Left:=860;
  btn_Exit.Left:=940;
end;

procedure TChiTietScan.XoaClick(Sender: TObject);
begin
  If messagedlg('YES: Xoa nhieu dong lien tiep, NO: Xoa tung dong khong lien tiep!',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    panel1.Visible:=true;
    Delete_SMNO.Enabled:=true;
    Delete_SMNO.Visible:=true;
    Edit5.Visible:=true;
    Delete_SMNO.Text:='';
    Edit5.Text:='0';
    btnXoa.Visible:=false;
    Edit6.Visible:=false;
    editChuyen.Visible:=false;
    panel1.Height:=50;
    Delete_SMNO.Top:=15;
    Edit5.Top:=13;
  end else
  begin
    panel1.Visible:=true;
    Delete_SMNO.Visible:=false;
    Edit5.Visible:=false;
    btnXoa.Visible:=true;
    Edit6.Visible:=true;
    editChuyen.Visible:=false;
    panel1.Height:=50;
    btnXoa.Top:=8;
    Edit6.Top:=12;
    btnXoa.Left:=10;
    Edit6.Left:=80;
  end;
  with SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    requestlive:=true;
    cachedupdates:=true;
  end;
  with SMZLOld do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  SMZL.First;
  PopupMenu1.AutoPopup:=false;
  btn_save.Left:=300;
  btnCancel.Left:=387;
  btn_Exit.Left:= 474;
end;

procedure TChiTietScan.btnCancelClick(Sender: TObject);
begin
  with SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  editChuyen.Text:='';
  Delete_SMNO.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  edit5.Text:='0';
  edit6.Text:='0';
  edit7.Text:='0';
  Size.Text:='ALL';
  DDBH.Text:='';
  Label1.Visible:=false;
  Label2.Visible:=false;
  Label3.Visible:=false;
  Label4.Visible:=false;
  Edit2.Visible:=false;
  Edit3.Visible:=false;
  Edit4.Visible:=false;
  Ngay.Visible:=false;
  Gio.Visible:=false;
  editChuyen.Visible:=false;
  Label6.Visible:=false;
  Label7.Visible:=false;
  Edit1.Visible:=false;
  btnChon.Visible:=false;
  Delete_SMNO.Visible:=false;
  Edit5.Visible:=false;
  panel1.Visible:=false;
  PopupMenu1.AutoPopup:=true;
  btnChuyen.Visible:=false;
  edit7.Visible:=false;
  //editChuyen.Enabled:=true;
  //Delete_SMNO.Enabled:=true;
  Size.Visible:=false;
  DDBH.Visible:=false;
  btnXoa.Visible:=false;
  edit6.Visible:=false;
end;

procedure TChiTietScan.btnXoaClick(Sender: TObject);
begin
  with SMZL do
  if fieldbyname('CTS').Value <>0 then
    begin
      edit6.Text:= strtoint(edit6.Text)+ Fieldbyname('TotQty').Value;
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('CTS').Value:=0;
      post;
    end else
    begin
      abort;
    end;
  with SMZLOld do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('CTS').Value:=0;
    post;
  end;
end;
procedure TChiTietScan.btnChuyenClick(Sender: TObject);
begin
  with SMZL do
  if fieldbyname('oldCTS').Value <>0 then
  begin
    edit7.Text:= strtoint(edit7.Text)+ Fieldbyname('TotQty').Value;
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('oldCTS').Value:=0;
    post;
  end else
  begin
    abort;
  end;
  with SMZLOld do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('oldCTS').Value:=0;
    post;
  end;
end;
procedure TChiTietScan.editChuyenChange(Sender: TObject);
var i: integer;
begin
  if (editChuyen.Text = '') then
  begin
    SMZL.First;
    edit1.Text:='0';
    abort;
  end else
  begin
    edit1.Text:='0';
    If strtoint(editChuyen.Text) > SMZL.RecordCount then
    begin
      showmessage('Nhap so luong dong nho hon hoac bang so luong da co!');
      editChuyen.Text:='';
      abort;
    end;
  end;
//
  with SMZL do
  begin
    First;
    for i:=0 to strtoint(editChuyen.Text)-1 do
    begin
      edit1.Text:=  strtoint(edit1.Text)+  Fieldbyname('TotQty').Value;
      next;
    end;
  end;
end;

procedure TChiTietScan.editChuyenKeyPress(Sender: TObject; var Key: Char);
var i: integer;
begin
  if key=#13 then
  begin
    SMZL.First;
    if editChuyen.Text = '' then
    begin
      showmessage('Nhap so luong dong!');
      abort;
    end;
    for i:=1 to length(editChuyen.Text) do
    begin
      if not (editChuyen.Text[i] in ['0'..'9'])then
      begin
        showmessage('Nhap so!');
        abort;
      end;
    end;
    If strtoint(editChuyen.Text) > SMZL.RecordCount then
    begin
      showmessage('Nhap lai so luong!');
      abort;
    end;
//
    if SMZL.recordcount>0 then
    begin
      with SMZL do
      begin
        for i:=0 to strtoint(editChuyen.Text)-1 do
        begin
          edit;
          fieldbyname('oldCTS').Value:=0;
          Next;
        end;
      end;
    end;
//
    if SMZLOld.recordcount>0 then
    begin
      with SMZLOld do
      begin
        for i:=0 to strtoint(editChuyen.Text)-1 do
        begin
          edit;
          fieldbyname('oldCTS').Value:=0;
          Next;
        end;
      end;
    end;
    editChuyen.Enabled:=false;
  end;
end;

procedure TChiTietScan.FormCreate(Sender: TObject);
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
  end;
end;

end.
