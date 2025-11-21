unit LabelFinished_Scan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DBTables, DB,
  DBCtrls;

type
  TLabelFinished_Scan = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Edit1: TEdit;
    SCSMRKS: TQuery;
    DS2: TDataSource;
    UpSCSMRKS: TUpdateSQL;
    SCLH: TQuery;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    SCSMRK: TQuery;
    UpSCSMRK: TUpdateSQL;
    DS1: TDataSource;
    SCSMRKDDBH: TStringField;
    SCSMRKCTNO: TStringField;
    SCSMRKQty: TIntegerField;
    SCSMRKUSERDate: TDateTimeField;
    SCSMRKUSERID: TStringField;
    SCSMRKYN: TStringField;
    DBText2: TDBText;
    TDDXXZL: TTable;
    SCSMRKSDDBH: TStringField;
    SCSMRKSCTNO: TStringField;
    SCSMRKSLHLabel: TStringField;
    SCSMRKSXXCC: TStringField;
    SCSMRKSQty: TIntegerField;
    SCSMRKSLHXH: TStringField;
    Label2: TLabel;
    procedure Panel3Enter(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BB3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure SCSMRKSAfterOpen(DataSet: TDataSet);
    procedure SCLHAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelFinished_Scan: TLabelFinished_Scan;

implementation

uses LabelFinished1;

{$R *.dfm}

procedure TLabelFinished_Scan.Panel3Enter(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TLabelFinished_Scan.Panel3Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TLabelFinished_Scan.FormCreate(Sender: TObject);
begin
SCSMRK.active:=true;
SCSMRK.Last;
SCSMRKS.active:=true;
SCSMRKS.Last;
label2.Caption:=inttostr(SCSMRK.RecordCount);
TDDXXZL.Active:=true;
//SCLH.Active:=true;
end;

procedure TLabelFinished_Scan.Edit1KeyPress(Sender: TObject;
  var Key: Char);
var a,s:string;
i:integer;
begin
if key=#13 then
  begin
    if trim(edit1.Text)='' then
      begin
        abort;
      end;
    s:=trim(edit1.text);
    if TDDXXZL.Locate('DDBH',vararrayof([trim(copy(s,0,pos(' ',s)-1))]),[]) then
      begin 
        SCSMRK.last;
        SCSMRK.append;
        SCSMRK.fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
        SCSMRK.fieldbyname('CTNO').Value:=trim(copy(s,pos(' ',s)+1,length(s)-pos(' ',s)));
        SCSMRK.fieldbyname('Qty').Value:=0;
        SCSMRK.fieldbyname('USERDate').Value:=date;
        SCSMRK.post;
        UpSCSMRK.Apply(ukinsert);
        edit1.Text:='';
      end
      else
        begin
          if SCSMRK.recordcount=0 then
            begin
            //  showmessage('Pls scan Carton first.');
              edit1.Text:='';
              abort;
            end
            else
              begin
                with SCLH do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('select  * from SCLH ');
                    sql.add('where LHLabel='+''''+trim(edit1.Text)+'''');
                    sql.add(' and DDBH='+''''+SCSMRK.fieldbyname('DDBH').Value+'''');
                    active:=true;
                  end;
                if SCLH.recordcount>0 then
                  begin
                    i:=SCSMRKS.RecordCount;
                    a:=inttostr(i+1);
                    if length(a)=1 then
                      begin
                        a:='0'+a;
                      end;
                    SCSMRKS.append;
                    SCSMRKS.FieldByName('DDBH').Value:=SCSMRK.FieldByName('DDBH').Value;
                    SCSMRKS.FieldByName('CTNO').Value:=SCSMRK.FieldByName('CTNO').Value;
                    SCSMRKS.FieldByName('LHLabel').Value:=trim(edit1.Text);
                    SCSMRKS.FieldByName('XXCC').Value:=SCLH.fieldbyname('XXCC').value;
                    SCSMRKS.FieldByName('Qty').Value:=1  ;
                    SCSMRKS.FieldByName('LHXH').Value:=a;
                    SCSMRKS.post;
                    UpSCSMRKS.apply(ukinsert);
                    with SCSMRK do
                      begin
                        edit;
                        fieldbyname('Qty').Value:=SCSMRKS.RecordCount;
                        UpSCSMRK.Apply(ukmodify);
                      end;
                    edit1.Text:='';
                  end
                  else
                    begin
                   //   showmessage('NO inbox label model for order .');
                      edit1.Text:='';
                      abort;
                    end;
              end;
        end;
      label2.Caption:=inttostr(SCSMRK.RecordCount);
  end;



{if key=#13 then
  begin
    with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select  * from SCLH ');
        sql.add('where LHLabel='+''''+trim(edit1.Text)+'''');
        sql.add(' and DDBH='+''''+LabelFinished.DDZL.fieldbyname('DDBH').Value+'''');
        active:=true;
      end;
    if query1.recordcount>0 then
      begin
        if SCWX.recordcount=0 then
          begin
            showmessage('Pls scan carton first.');
            edit1.Text:='';
            abort;
          end
          else
            begin
              if SCWXLH.recordcount=0 then
                begin
                  a:='01';
                end
                else
                  begin
                    SCWXLH.Last;
                    a:=SCWXLH.fieldbyname('LHXH').Value;
                    i:=strtoint(a);
                    i:=i+1;
                    a:=inttostr(i);
                    while length(a)=1 do
                      begin
                        a:='0'+a;
                      end;
                  end;
              SCWXLH.append;
              SCWXLH.FieldByName('DDBH').Value:=SCWX.fieldbyname('DDBH').Value;
              SCWXLH.FieldByName('WXXH').Value:=SCWX.fieldbyname('XH').Value;
              SCWXLH.FieldByName('XXCC').Value:=query1.fieldbyname('XXCC').Value;
              SCWXLH.FieldByName('LHXH').Value:=a;
              SCWXLH.FieldByName('LHLabel').Value:=trim(edit1.Text);
              UpSCWXLH.Apply(ukinsert);
              SCWXLH.Active:=false;
              SCWXLH.Active:=true;
              SCWXLH.Last;
              edit1.Text:='';
            end;
      end
      else
        begin
          if SCWX.recordcount=0 then
            begin
              a:='0001';
            end
            else
              begin
                SCWX.Last;
                a:=SCWX.fieldbyname('XH').Value;
                i:=strtoint(a);
                i:=i+1;
                a:=inttostr(i);
                while length(a)<4 do
                  begin
                    a:='0'+a;
                  end;
              end;
          SCWX.Append;
          SCWX.FieldByName('DDBH').Value:=LabelFinished.DDZL.fieldbyname('DDBH').value;
          SCWX.FieldByName('XH').Value:=a;
          SCWX.FieldByName('WXLabel').Value:=trim(edit1.Text);
          SCWX.FieldByName('USERDATE').Value:=formatdatetime('yyyy/mm/dd',date);
          UpSCWX.Apply(ukinsert);
          SCWX.Active:=false;
          SCWX.Active:=true;
          SCWX.Last;
          edit1.Text:='';
        end;
  end;  }
end;

procedure TLabelFinished_Scan.BB3Click(Sender: TObject);
begin
if SCSMRKS.recordcount=0 then
  begin
    UpSCSMRK.Apply(ukdelete);
    SCSMRK.delete;
  end
  else
    begin
      SCSMRKS.First;
      while not SCSMRKS.eof do
        begin
          UpSCSMRKS.Apply(ukdelete);
          SCSMRKS.Delete;
        end;
      UpSCSMRK.Apply(ukdelete);
      SCSMRK.delete;
    end;
  Label2.caption:=inttostr(SCSMRK.RecordCount);
end;

procedure TLabelFinished_Scan.BitBtn2Click(Sender: TObject);
begin
if SCSMRKS.recordcount>0 then
  begin
    UpSCSMRKS.Apply(ukdelete);
    SCSMRKS.Delete;
    SCSMRK.Edit;
    SCSMRK.FieldByName('Qty').Value:=SCSMRKS.RecordCount;
    UpSCSMRK.Apply(ukmodify);
  end;
end;

procedure TLabelFinished_Scan.Label1Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TLabelFinished_Scan.DBText1Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TLabelFinished_Scan.BB7Click(Sender: TObject);
begin
close;
end;

procedure TLabelFinished_Scan.SCSMRKSAfterOpen(DataSet: TDataSet);
begin
//label2.Caption:=inttostr(SCWXLH.RecordCount);
end;

procedure TLabelFinished_Scan.SCLHAfterOpen(DataSet: TDataSet);
begin
//showmessage(inttostr(SCLH.RecordCount));
end;

end.
