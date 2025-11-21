unit TEST1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls;

type
  TTEST = class(TForm)
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
    Panel2: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    rad: TRadioButton;
    Label4: TLabel;
    tmpQry: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TEST: TTEST;
  sdate,edate,ndate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TTEST.Button1Click(Sender: TObject);
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with query1 do
    begin
      active:=false;
      sql.clear;
      sql.add('select top 10 * from bdepartment');
      sql.add('where id like'''+edit1.Text+'%''');
      if rad.checked=true then
      begin
         sql.add('and convert(smalldatetime,convert(varchar,bdepartment.Userdate,111)) between ');
         sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      end;
      active:=true;
    end;
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    BB7.Enabled:=true;
    BBT1.Enabled:=true;
    BBT2.Enabled:=true;
    BBT3.Enabled:=true;
    BBT4.Enabled:=true;
    BBT5.Enabled:=true;
    BBT6.Enabled:=true;

end;

procedure TTEST.BB2Click(Sender: TObject);
var DepID:string;
begin

  if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
      if messagedlg('All the child department will be delete too!  Sure?',mtconfirmation,[mbyes,mbno],0)=mryes then
      begin
          with tmpQry do
          begin
              active:=false;
              sql.clear;
              sql.add('select * from BWorker where DepID like ');
              sql.add(''''+query1.FieldByName('ID').AsString+'%'+'''');
              sql.add('and GSBH='+''''+main.Edit2.Text+'''');
              active:=true;
              if tmpQry.recordcount>0 then
              begin
                  messagedlg('This department still stick Worker. Can not delete!',mtwarning,[mbyes,mbno],0);
                  abort;
              end;
              active:=false;
          end;
          with query1 do
          begin
              DepID:=query1.fieldbyname('ID').asstring;
              cachedupdates:=true;
              requestlive:=true;
              first;
              while not eof do
              begin
                  if DepID=copy(fieldbyname('ID').asstring,1,length(DepID)) then
                  begin
                      Edit;
                      fieldbyname('YN').Value:='0';
                      Post;
                  end;
                  next;
              end;
          end;
          bb5.enabled:=true;
          bb6.enabled:=true;
      end;
  end;
end;


procedure TTEST.BB3Click(Sender: TObject);
begin
 if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select ID from bdepartment ');
          sql.add('where ID='+''''+query1.FieldByName('ID').Value+'''');
          sql.add('      and userid=316503 ');
          active:=true;
          if query1.recordcount>0 then
          begin
            showmessage(' 請注意，成品已入庫.' +#13+'Pls pay attention, already produced');
            abort;
          end;
        end;
        with query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
      end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TTEST.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;
procedure TTEST.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

end.
