unit ScanAdjust3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls,funUnit,
  ExtCtrls,comobj,dateutils, Spin;

type
  TScanAdjust2 = class(TForm)
    DBGridEh1: TDBGridEh;
    UpSMZL: TUpdateSQL;
    SMZL: TQuery;
    SMZLSMNO: TFloatField;
    SMZLDDBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLCODEBAR: TStringField;
    SMZLCTS: TIntegerField;
    SMZLDepNO: TStringField;
    SMZLDepName: TStringField;
    SMZLUSERDATE: TDateTimeField;
    SMZLUSERID: TStringField;
    SMZLTotQty: TIntegerField;
    SMZLYN: TStringField;
    SMZLoldCTS: TIntegerField;
    SMZLSB: TStringField;
    DS1: TDataSource;
    Qtemp: TQuery;
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
    SMZLScanDate: TDateTimeField;
    SMZL2: TQuery;
    SMZL2SMNO: TFloatField;
    SMZL2CODEBAR: TStringField;
    SMZL2CTS: TIntegerField;
    SMZL2DepNO: TStringField;
    SMZL2ScanDate: TDateTimeField;
    SMZL2USERDATE: TDateTimeField;
    SMZL2USERID: TStringField;
    SMZL2YN: TStringField;
    SMZL2SB: TStringField;
    SMZL2YSBH: TStringField;
    SMZL2PRONO: TStringField;
    SMZL2XXCC: TStringField;
    SMZL2PerQty: TIntegerField;
    SMZL2GXLB: TStringField;
    UpSMZLold: TUpdateSQL;
    SMZLold: TQuery;
    SMZLoldSMNO: TFloatField;
    SMZLoldCODEBAR: TStringField;
    SMZLoldCTS2: TIntegerField;
    SMZLoldDepNO: TStringField;
    SMZLoldScanDate: TDateTimeField;
    SMZLoldUSERDATE: TDateTimeField;
    SMZLoldUSERID: TStringField;
    SMZLoldYN: TStringField;
    DS2: TDataSource;
    SMZLYSBH: TStringField;
    Dep_New: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CBX4: TComboBox;
    CBX5: TComboBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    CB1: TRadioButton;
    CB2: TRadioButton;
    Edit4: TEdit;
    Dep: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    TIME: TDateTimePicker;
    DATE: TDateTimePicker;
    Edit7: TEdit;
    GroupBox2: TGroupBox;
    lbQty: TLabel;
    edtQtyDelete: TEdit;
    cbXoa: TCheckBox;
    Edit8: TEdit;
    sedtQty: TSpinEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMZLNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    //procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SMZLCalcFields(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure DepClick(Sender: TObject);
    procedure cbXoaClick(Sender: TObject);
    procedure edtQtyDeleteKeyPress(Sender: TObject; var Key: Char);
    procedure sedtQtyChange(Sender: TObject);
    procedure edtQtyDeleteChange(Sender: TObject);
  private
     procedure Delete();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanAdjust2: TScanAdjust2;
  NDate:TDate;

implementation

uses ScanAdjust2_Dep1, main1;

{$R *.dfm}

procedure TScanAdjust2.FormDestroy(Sender: TObject);
begin
  ScanAdjust2:=nil;
end;

procedure TScanAdjust2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TScanAdjust2.SMZLNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TScanAdjust2.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX4.Items.Add(fieldbyname('GX').asstring);
      next;
    end;
    CBX4.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select distinct CC from ddzls where LEFT(ddbh,1) in (''Y'',''Z'') order by CC desc');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX5.Items.Add(fieldbyname('CC').asstring);
      next;
    end;
    CBX5.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.date:=NDate;
    DTP2.time:=startoftheday(NDate);
    DTP3.date:=NDate;
    DTP4.time:=endoftheday(NDate);
  end;
end;

procedure TScanAdjust2.Button1Click(Sender: TObject);
begin
  If ( (formatdatetime('yyyy/MM/dd',DTP1.Date) <> formatdatetime('yyyy/MM/dd',NDate)) or (formatdatetime('yyyy/MM/dd',DTP3.Date) <> formatdatetime('yyyy/MM/dd',NDate)) )  then
  begin
    showmessage('Please select the current date !');
    abort;
  end;
  with SMZL do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select SMZL.SMNO,SMZL.CODEBAR,  SMZL.CTS,  SMZL.DepNO,  convert(smalldatetime,convert(varchar,SMZL.ScanDate,120)) as ScanDate ');
    sql.add(' ,convert(smalldatetime,convert(varchar,SMZL.USERDATE,120)) as USERDATE ,  SMZL.USERID,  SMZL.YN,  SMZL.SB,BDepartment.DepName,SMDDSS.DDBH,SMDD.YSBH,SMDDSS.GXLB');
    sql.add(' ,SMDDSS.XXCC,SMDDSS.XH,SMDDSS.Qty,SMZL.CTS as oldCTS ');
    sql.add(' from SMZL ');
    sql.add(' left join BDepartment on BDepartment.ID=SMZL.DepNo ');
    sql.add(' left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    sql.add(' left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
    sql.add(' where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add(' and SMDDSS.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add(' and SMDDSS.GXLB='+''''+CBX4.Text+'''');
    if CBX5.Text <> 'ALL' then
    begin
      sql.add(' and SMDDSS.XXCC='+''''+CBX5.Text+'''');
    end;
    sql.add(' and SMZL.ScanDate between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
    sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
    sql.add(' order by SMZL.SMNO,SMDDSS.GXLB,SMDDSS.DDBH,SMZL.CodeBar ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with SMZLold do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select smzlold.* ');
    sql.add(' from smzlold inner join smddss ');
    sql.add(' on smzlold.codebar=smddss.codebar ');
    sql.add(' inner join bdepartment ');
    sql.add(' on smzlold.depno=bdepartment.id ');
    sql.add(' where scandate between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
    sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
    sql.add('     and depname like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('     and SMDDSS.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('     and smddss.gxlb='+''''+CBX4.Text+'''');
    if CBX5.Text <> 'ALL' then
    begin
      sql.add('    and SMDDSS.XXCC='+''''+CBX5.Text+'''');
    end;
    sql.add(' order by smzlold.SMNO,SMDDSS.GXLB,SMDDSS.DDBH,SMZLOld.CodeBar');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  DATE.Date:= SMZL.fieldbyname('ScanDate').AsDateTime;
  TIME.Time:= SMZL.fieldbyname('ScanDate').AsDateTime;
  BB3.Enabled:=true;
  BB4.enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BB7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
  DATE.Visible:=false;
  TIME.Visible:=false;
  sedtQty.Visible:= false;
  edit4.Visible:= false;
  edit5.Visible:= false;
  edit6.Visible:= false;
  Label6.Visible:= false;
  Label7.Visible:= false;
  Label9.Visible:= false;
  Label10.Visible:= false;
  Label11.Visible:= false;
  CB1.Visible:=false;
  CB2.Visible:=false;
  Dep.Visible:=false;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  CB1.Checked:=false;
  CB2.Checked:=false;
  GroupBox1.Visible:=false;
  GroupBox2.Visible:=false;
end;

procedure TScanAdjust2.SMZLCalcFields(DataSet: TDataSet);
begin
  with SMZL do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value ;
  end;
end;

procedure TScanAdjust2.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TScanAdjust2.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMZL.fieldbyname('CTS').value=0 then
    DBGrideh1.canvas.Font.Color:=clred;
end;

procedure TScanAdjust2.BB6Click(Sender: TObject);
begin
  with SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  edtQtyDelete.Visible:=false;
  edtQtyDelete.Clear;
  lbQty.Visible:=false;
  groupbox2.Visible:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BB3.Enabled:=True;
  BB4.Enabled:=True;
  DATE.Visible:=false;
  TIME.Visible:=false;
  sedtQty.Visible:= false;
  edit4.Visible:= false;
  edit5.Visible:= false;
  edit6.Visible:= false;
  Label6.Visible:= false;
  Label7.Visible:= false;
  Label9.Visible:= false;
  Label10.Visible:= false;
  Label11.Visible:= false;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  CB1.Visible:=false;
  CB2.Visible:=false;
  Dep.Visible:=false;
  CB1.Checked:=false;
  CB2.Checked:=false;
  GroupBox1.Visible:=false;
  sedtQty.Visible:=false;
  edit8.Visible:=false;
  edit7.Visible:=false;
end;

//
procedure TScanAdjust2.Delete();
var i,difQty,a,k:integer;
begin
   case SMZL.updatestatus of
     usmodified:
      begin
        SMZL2.Active:=true;
        with Qtemp do
        begin
            active:=false;
            sql.Clear;
            sql.add('update SMDDSS ');
            sql.add('set okCTS=okCTS-'+''''+SMZL.fieldbyname('oldCTS').asstring+'''');
            sql.add('where CODEBAR='+''''+ SMZL.fieldbyname('CODEBAR').Value+'''');
            execsql;
            if SMZL2.FieldByName('SB').asstring='2' then
            begin
              DifQty:=SMZL2.fieldbyname('PerQty').value*SMZL2.fieldbyname('CTS').value;
              active:=false;
              sql.Clear;
              sql.add('update SCBBSS ');
              sql.Add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
              sql.add('where PRONo='+''''+ SMZL2.fieldbyname('PRONO').asstring +'''');
              sql.add('      and SCBH='+''''+SMZL2.fieldbyname('YSBH').asstring +'''');
              sql.add('      and XXCC='+''''+SMZL2.fieldbyname('XXCC').asstring+'''');
              sql.add('      and GXLB='+''''+SMZL2.fieldbyname('GXLB').asstring+'''');
              sql.add('update SCBBS ');
              sql.Add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
              sql.add('where PRONo='+''''+ SMZL2.fieldbyname('PRONO').asstring +'''');
              sql.add('      and SCBH='+''''+SMZL2.fieldbyname('YSBH').asstring +'''');
              sql.add('      and GXLB='+''''+SMZL2.fieldbyname('GXLB').asstring+'''');
              execsql;
            end;
        end;
        SMZL2.Active:=false;
        upSMZL.apply(ukdelete);
        if SMZLOld.RecordCount > 0 then
        begin
          with SMZLOld do
          begin
            if SMZLOld.Locate('SMNO',SMZL.fieldbyname('SMNO').Value,[]) then
               upSMZLOld.Apply(ukdelete);
          end;
        end;
        SMZLOld.Next;
      end;
   end;
end;
//

procedure TScanAdjust2.BB5Click(Sender: TObject);
var i,difQty,a,k:integer;
begin
     //Delete
     If (GroupBox1.Visible=false) or (GroupBox2.Visible=true) then
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
                   sql.Add(' left join (	select DDZL.DDBH,sum(isnull(YWBZPOS.Qty,0)) as Qty_F ');
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
                    abort;
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
                    abort;
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
                    abort;
                  end;
                end else
                  Delete();
            end;
         end;
         SMZL.Next;
       end;
     end;
     //Times
     If (CB1.Checked=true) and (sedtQty.Visible=true) then
     begin
        //Interger
        If (sedtQty.Text <> '') and (SMZL.RecordCount > 0) then
        begin
          If strtoint(sedtQty.Text) > SMZL.RecordCount then
          begin
            showmessage('Count_SMNO < Count_Depname, please reenter Count_SMNO!');
            abort;
          end;
        end;
        If sedtQty.Text = ''  then
        begin
          a:=SMZL.RecordCount;
        end else
        if sedtQty.Text <> '' then
        begin
          a:= strtoint(sedtQty.Text);
        end;
        with SMZL do
        begin
        First;
        SMZLold.First;
          for k:=1 to a do
          begin
            Edit;
            FieldByName('SCanDate').AsString := formatdatetime('yyyy/MM/dd',DATE.Date)+' '+formatdatetime('HH:mm:ss',TIME.Time);
            FieldByName('USERDATE').AsString := formatdatetime('yyyy/MM/dd',DATE.Date)+' '+formatdatetime('HH:mm:ss',TIME.Time);
            Post;
            upSMZL.apply(ukmodify);
            if SMZLold.RecordCount>0 then
            begin
               with SMZLold do
               begin
                  if SMZLold.Locate('SMNO',SMZL.fieldbyname('SMNO').Value,[]) then
                  begin
                    Edit;
                    SMZLold.FieldByName('SCanDate').AsString := formatdatetime('yyyy/MM/dd',DATE.Date)+' '+formatdatetime('HH:mm:ss',TIME.Time);
                    SMZLold.FieldByName('USERDATE').AsString := formatdatetime('yyyy/MM/dd',DATE.Date)+' '+formatdatetime('HH:mm:ss',TIME.Time);
                    Post;
                    upSMZLold.Apply(ukmodify);
                    Next;
                  end;
                  SMZLOld.Next;
               end;
            end;
            SMZL.Next;
          end;
        end;
     end else
     //Convert DepName
     If (CB2.Checked=true) and (Edit4.Visible=true) then
     begin
        SMZL.First;
        if (Edit5.Text) > (Edit6.Text) then
        begin
          showmessage('Please enter SMNO again,conditions SMNO_Start<SMNO_End !');
          abort;
        end;
        if (Edit5.Text = '') and (Edit6.Text <> '') then
        begin
          showmessage('Please enter SMNO_Start !');
          abort;
        end;
        if (Edit1.Text='') or (Edit4.Text='') then
        begin
          showmessage('Please enter Dep_Old and Dep_New again !');
          BB6.Click;
          abort;
        end;
        if (Edit5.Text='') and (Edit6.Text='') then
        begin
          if messagedlg('The system will convert All SMNO numbers from Dep_Old:'+''''+SMZL.fieldbyname('DepName').AsString+'''-->Dep_New:'+''''+Edit4.Text+'''',mtconfirmation,[mbYes,Mbno],0)=mrYes then
          begin
          end else exit;
        end;
        if Length(Edit1.Text) <> Length(SMZL.fieldbyname('DepName').AsString) then
        begin
          showmessage('Please enter the full DepName !');
          BB6.Click;
          abort;
        end;
        if  Edit2.Text = '' then
        begin
          if messagedlg('OrdNo is empty,the system will convert All OrdNo (DDBH)',mtconfirmation,[mbYes,Mbno],0)=mrYes then
          begin
          end else
          begin
            BB6.Click;
            exit;
          end;
        end;
        //
        with Dep_New do
        begin
          Active:=false;
          sql.Clear;
          sql.Add(' select ID from BDepartment ');
          sql.Add(' where DepName = '+''''+Edit4.Text+'''');
          Active:=true;
        end;
        if Dep_New.RecordCount=0 then
        begin
          showmessage('Please retype Dep_New !');
          BB6.Click;
          abort;
        end;
        if (Dep_New.fieldbyname('ID').asstring <> '') then
        begin
          with Qtemp do
          begin
            Active:=false;
            sql.Clear;
            sql.Add(' update SMZL ');
            sql.Add(' set DepNO = '+''''+Dep_New.fieldbyname('ID').asstring+'''');
            sql.Add(' from SMDDSS ');
            sql.Add(' inner join SMZL on SMDDSS.CODEBAR = SMZL.CODEBAR ');
            sql.Add(' inner join Bdepartment on SMZL.depno=Bdepartment.ID ');
            sql.Add(' where ScanDate between ');
            sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
            sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
            sql.Add(' and Bdepartment.DepName = '+''''+Edit1.Text+'''');
            if (Edit2.Text <> '') then
            sql.Add(' and DDBH like '+''''+Edit2.Text+'%'+'''');
            sql.add(' and SMDDSS.GXLB ='+''''+CBX4.Text+'''');
            if CBX5.Text <> 'ALL' then
            sql.add(' and SMDDSS.XXCC ='+''''+CBX5.Text+'''');
            if (Edit5.Text<>'') and (Edit6.Text<>'') then
            sql.Add(' and SMNO between '''+Edit5.text+''' and '+''''+Edit6.text+'''');
            sql.Add(' and SMZL.SB is null ');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
          end;
        end;
     end;
   Button1.Click;     //time SMZLold
   edtQtyDelete.Visible:=false;
   edtQtyDelete.Clear;
   lbQty.Visible:=false;
   groupbox2.Visible:=false;
   DATE.Visible:=false;
   TIME.Visible:=false;
   sedtQty.Visible:= false;
   edit4.Visible:= false;
   edit5.Visible:= false;
   edit6.Visible:= false;
   Label6.Visible:= false;
   Label7.Visible:= false;
   Label9.Visible:= false;
   Label10.Visible:= false;
   Label11.Visible:= false;
   SMZL.active:=false;
   SMZL.cachedupdates:=false;
   SMZL.requestlive:=false;
   SMZL.active:=true;
   BB5.Enabled:=false;
   BB6.Enabled:=false;
   GroupBox1.Visible:=false;
   CB1.Visible:=false;
   CB2.Visible:=false;
   edit7.Visible:=false;
   edit8.Visible:=false;
end;
//

procedure TScanAdjust2.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if SMZL.Active then
  begin
    if SMZL.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end else
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
    for   i:=1   to   SMZL.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=SMZL.fields[i-1].FieldName;
      end;
    SMZL.First;
    j:=2;
    while   not  SMZL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SMZL.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=SMZL.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      SMZL.Next;
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

procedure TScanAdjust2.BB4Click(Sender: TObject);
begin
  GroupBox1.Visible:=true;
  CB1.Visible:=true;
  CB2.Visible:=true;
  BB3.Enabled:=false;
  BB6.Enabled:=true;
  lbQty.Visible:= false;
  edtQtyDelete.Visible:= false;
  edit7.Visible:=false;
  edit8.Visible:=false;
  edit7.Text:='0';
  sedtqty.Text:='0';
end;

procedure TScanAdjust2.BB3Click(Sender: TObject);
begin
  If messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    if SMZL.recordcount>0 then
    begin
      with SMZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('CTS').Value:=0;
        post;
      end;
    end else
    begin
      messagedlg('This Record have Deatail data,can not delete!',mtwarning,[mbYes],0);
    end;
    //
    if SMZLOld.recordcount>0 then
    begin
      with SMZLOld do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('CTS').Value:=0;
        post;
      end;
    end;
    BB5.Enabled:=true;
  end else
  begin
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
    GroupBox2.Visible:=true;
    cbXoa.Visible:=true;
    cbXoa.Checked:=false;
    edtQtyDelete.Enabled:=true;
    BB5.Enabled:=false;
  end;
  edit8.Text:='0';
  BB6.Enabled:=true;
  BB4.Enabled:=false;
end;

procedure TScanAdjust2.DTP1Change(Sender: TObject);
begin
   DTP3.Date:=DTP1.Date;
end;

procedure TScanAdjust2.CB1Click(Sender: TObject);
var i:integer;
begin
  with SMZL do
  begin
    if recordcount>0 then
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end else
    begin
      messagedlg('This Record have Deatail data,can not modify!',mtwarning,[mbYes],0);
    end;
  end;
  //
  with SMZLold do
  begin
    if recordcount>0 then
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
  end;
  DATE.Visible:=true;
  TIME.Visible:=true;
  sedtQty.Visible:=true;
  Label6.Visible:=true;
  Label7.Visible:=true;
  BB5.enabled:=true;
  Label9.Visible:=false;
  Label10.Visible:=false;
  Label11.Visible:=false;
  Edit4.Visible:=false;
  Edit5.Visible:=false;
  Edit6.Visible:=false;
  Dep.Visible:=false;
  edit7.Visible:=true;
end;

procedure TScanAdjust2.CB2Click(Sender: TObject);
begin
   if SMZL.recordcount>0 then
   begin
     Label9.Visible:=true;
     Label10.Visible:=true;
     Label11.Visible:=true;
     Edit4.Visible:=true;
     Edit5.Visible:=true;
     Edit6.Visible:=true;
     Dep.Visible:=true;
     BB5.Enabled:=true;
     DATE.Visible:=false;
     TIME.Visible:=false;
     sedtQty.Visible:=false;
     Label6.Visible:=false;
     Label7.Visible:=false;
     edit7.Visible:=false;
   end else
   begin
     messagedlg('This Record have Deatail data,can not Convert!',mtwarning,[mbYes],0);
   end;
end;

procedure TScanAdjust2.DepClick(Sender: TObject);
begin
   ScanAdjust2_Dep:=TScanAdjust2_Dep.create(self);
   ScanAdjust2_Dep.show;
end;

procedure TScanAdjust2.cbXoaClick(Sender: TObject);
begin
  if cbXoa.Checked then
  begin
    edtQtyDelete.Visible:=true;
    lbQty.Visible:=true;
    edit8.Visible:=true;
  end else
  begin
    edtQtyDelete.Visible:=false;
    lbQty.Visible:=false;
    edit8.Visible:=false;
  end;
end;

procedure TScanAdjust2.edtQtyDeleteKeyPress(Sender: TObject;
  var Key: Char);
var i: integer;
begin
  if key=#13 then
  begin
    SMZL.First;
    if edtQtyDelete.Text = '' then
    begin
      showmessage('Please enter data!');
      abort;
    end;
    for i:=1 to length(sedtQty.Text) do
    begin
      if not (edtQtyDelete.Text[i] in ['0'..'9'])then
      begin
        showmessage('Please enter integer!');
        abort;
      end;
    end;
    If strtoint(edtQtyDelete.Text) > SMZL.RecordCount then
    begin
      showmessage('Qty > Count_SMNO, please reenter Qty!');
      abort;
    end;
    //
    If messagedlg('Do you really want to delete '+ edtQtyDelete.Text+' record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
    begin
      BB5.Enabled:=true;
      edtQtyDelete.Enabled:=false;
      if SMZL.recordcount>0 then
      begin
        with SMZL do
        begin
          for i:=0 to strtoint(edtQtyDelete.Text)-1 do
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
          for i:=0 to strtoint(edtQtyDelete.Text)-1 do
          begin
            edit;
            fieldbyname('CTS').Value:=0;
            Next;
          end;
        end;
      end;
    end;
  end;
end;

procedure TScanAdjust2.sedtQtyChange(Sender: TObject);
var i: integer;
begin
  if sedtQty.Text = '' then
  begin
    SMZL.First;
    edit7.Text:='0';
    abort;
  end else
  begin
    edit7.Text:='0';
    If strtoint(sedtQty.Text) > SMZL.RecordCount then
    begin
      showmessage('Qty > Count_SMNO, please reenter Qty!');
      abort;
    end;
    //////
    with SMZL do
    begin
      First;
      for i:=0 to strtoint(sedtQty.Text)-1 do
      begin
        edit7.Text:=  strtoint(edit7.Text)+  Fieldbyname('TotQty').Value;
        next;
      end;
    end;
  end;
end;

procedure TScanAdjust2.edtQtyDeleteChange(Sender: TObject);
var i: integer;
begin
  if edtQtyDelete.Text = '' then
  begin
    SMZL.First;
    edit8.Text:='0';
    abort;
  end else
  begin
    edit8.Text:='0';
    If strtoint(edtQtyDelete.Text) > SMZL.RecordCount then
    begin
      showmessage('Qty > Count_SMNO, please reenter Qty!');
      abort;
    end;
    //////
    with SMZL do
    begin
      First;
      for i:=0 to strtoint(edtQtyDelete.Text)-1 do
      begin
        edit8.Text:=  strtoint(edit8.Text)+  Fieldbyname('TotQty').Value;
        next;
      end;
    end;
  end;
end;

end.
