unit datainput_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, ExtCtrls, StdCtrls, DBCtrls,
  ComCtrls;

type
  TDataInput = class(TForm)
    Panel1: TPanel;
    Qtemp: TQuery;
    Label1: TLabel;
    cb1: TComboBox;
    Lname: TLabel;
    cb2: TComboBox;
    Label3: TLabel;
    UpdateSQL1: TUpdateSQL;
    dbn: TDBNavigator;
    seleb: TButton;
    Label2: TLabel;
    showdata: TQuery;
    DataSource1: TDataSource;
    dbg1: TDBGridEh;
    showdataworkno: TStringField;
    showdatainputdate: TDateTimeField;
    showdataxiexing: TStringField;
    showdatasqty: TIntegerField;
    showdatarqty: TIntegerField;
    showdataqty: TIntegerField;
    showdatacost: TFloatField;
    Edit1: TEdit;
    showdataMAXcount: TIntegerField;
    showdataTHIScount: TIntegerField;
    sd: TDateTimePicker;
    ed: TDateTimePicker;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure showdataAfterInsert(DataSet: TDataSet);
    procedure selectbClick(Sender: TObject);
    procedure cb2Change(Sender: TObject);
    procedure showdataTHIScountChange(Sender: TField);
    procedure showdataMAXcountChange(Sender: TField);
    procedure showdatasqtyChange(Sender: TField);
    procedure showdatarqtyChange(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
DataInput: TDataInput;
//var  sqtyar: array[1..9999] of integer;
//var  costar: array[1..9999] of double;
var p:integer;

Implementation

{$R *.dfm}



procedure TDataInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qtemp.Active:=false;
  showdata.Active:=false;
  action:=cafree;
end;

procedure TDataInput.FormCreate(Sender: TObject);
var  i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workno from people');
    active:=true;
    cb1.Items.Add('');
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('workno').asstring);
        next;
      end;

    active:=false;
    sql.Clear;
    sql.add('select mjbh as article');
//    sql.add('select mjbh+'+''''+'('+''''+'+lbdh+'+''''+')'+''''+' as article');
//    sql.add(',(isnull(pmw,1)*isnull(trm,1)*isnull(yields,1)) as sqty,cost');
    sql.Add(' from mjzl ');
    sql.add('  group by mjbh ');
    sql.add('  order by mjbh ');
    //memo1.text:=sql.text;
    active:=true;
    cb2.Items.Add('');
//    setlength(sqtyar,recordcount);
//    setlength(costar,recordcount);
    for i:=1 to recordcount do
      begin
        CB2.Items.Add(fieldbyname('article').asstring);
//        sqtyar[i]:=fieldbyname('sqty').Value;
//        costar[i]:=fieldbyname('cost').Value;
        next;
      end;
    active:=false;
  end;
  //showdata.Active:=True;
  sd.Date:=now;
  ed.Date:=now;

end;

procedure TDataInput.cb1Change(Sender: TObject);
begin
with Qtemp do
  begin
    if cb1.Text<>'' then
     begin
      active:=false;
      sql.Clear;
      sql.add('select name from people where workno='+''''+cb1.Text+'''');
      active:=true;
      Lname.Caption:=fieldbyname('name').Value;
    end;
    active:=false;
end;
end;

procedure TDataInput.showdataAfterInsert(DataSet: TDataSet);
begin
    showdata.FieldByName('workno').Value:=CB1.Text;
    showdata.FieldByName('inputdate').Value:=formatdatetime('yyyy/MM/dd',ed.Date);
    showdata.FieldByName('xiexing').Value:=cb2.text;
    showdata.FieldByName('Maxcount').Value:=strtoint(edit1.Text);
    showdata.FieldByName('xiexing').Value:=cb2.text;
end;




procedure TDataInput.selectbClick(Sender: TObject);
//var   sdate,edate :tdate;
var monthstr :string;
begin
//sdate:=cdt.Date;
//edate:=cdt.Date;
with showdata do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from workoverreport ');
    sql.Add('where inputdate BETWEEN'+''''+formatdatetime('yyyy/MM/dd',sd.date)+'''');
    sql.Add(' and '+''''+formatdatetime('yyyy/MM/dd',ed.date)+'''' );
    sql.add(' and workno like '+''''+'%'+cb1.Text+'%'+'''');
    sql.add(' and xiexing like '+''''+'%'+cb2.Text+'%'+'''');
    //memo1.Text:=sql.Text;
    //ExecSQL;
    active:=true;
  end;
  showdata.requestlive:=true;
  dbn.Visible:=true;
end;

procedure TDataInput.cb2Change(Sender: TObject);
begin
   p:=cb2.ItemIndex;
end;

procedure TDataInput.showdataTHIScountChange(Sender: TField);
begin
  with qtemp do
  begin
    sql.Clear;
    sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
    sql.Add(' from mjzl ');
    sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
    sql.Add('  and lbdh='+''''+inttostr(showdata.fieldbyname('maxcount').Value)+'''');
    active:=true;
    if not qtemp.Eof then
    begin
       showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
       showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end
    else
    begin
      sql.Clear;
      sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
      sql.Add(' from mjzl ');
      sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
      sql.Add('  and lbdh=(select max(lbdh) from mjzl where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+''''+')');
      active:=true;
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end;
  end;
end;

procedure TDataInput.showdataMAXcountChange(Sender: TField);
begin
  with qtemp do
  begin
    sql.Clear;
    sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
    sql.Add(' from mjzl ');
    sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
    sql.Add('  and lbdh='+''''+inttostr(showdata.fieldbyname('maxcount').Value)+'''');
    active:=true;
    if not qtemp.Eof then
    begin
       showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
       showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end
    else
    begin
      sql.Clear;
      sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
      sql.Add(' from mjzl ');
      sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
      sql.Add('  and lbdh=(select max(lbdh) from mjzl where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+''''+')');
      active:=true;
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end;
  end;
end;

procedure TDataInput.showdatasqtyChange(Sender: TField);
begin
  showdata.FieldByName('qty').value:=showdata.FieldByName('rqty').value-showdata.FieldByName('Sqty').value;
  if showdata.FieldByName('qty').value < 0 then
    showdata.FieldByName('qty').value := 0;
end;

procedure TDataInput.showdatarqtyChange(Sender: TField);
begin
  showdata.FieldByName('qty').value:=showdata.FieldByName('rqty').value-showdata.FieldByName('Sqty').value;
  if showdata.FieldByName('qty').value < 0 then
    showdata.FieldByName('qty').value := 0;
end;

end.
