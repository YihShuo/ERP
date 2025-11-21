unit DDZLXXCCp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables,
  ExcelImportp, Comobj;

type
  TDDZLXXCC = class(TForm)
    Panel3: TPanel;
    bb2: TBitBtn;
    bb3: TBitBtn;
    bb4: TBitBtn;
    bb5: TBitBtn;
    bb6: TBitBtn;
    bb7: TBitBtn;
    bb8: TBitBtn;
    bb9: TBitBtn;
    bb10: TBitBtn;
    BitBtn12: TBitBtn;
    DDZL_ODsGrid: TDBGridEh;
    XXCCDS: TDataSource;
    DDZL_ODs: TQuery;
    UPDDZL_ODs: TUpdateSQL;
    bbt6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn12Click(Sender: TObject);
    procedure DDZL_ODsAfterOpen(DataSet: TDataSet);
    procedure bb4Click(Sender: TObject);
    procedure bb6Click(Sender: TObject);
    procedure bb5Click(Sender: TObject);
    procedure bb7Click(Sender: TObject);
    procedure bb10Click(Sender: TObject);
    procedure bb9Click(Sender: TObject);
    procedure bb8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DDZLXXCC: TDDZLXXCC;

implementation
  uses main1;
{$R *.dfm}

procedure TDDZLXXCC.FormShow(Sender: TObject);
begin
  DDZL_ODs.Active:=true;
end;

procedure TDDZLXXCC.FormDestroy(Sender: TObject);
begin
  DDZLXXCC:=nil;
end;

procedure TDDZLXXCC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DDZL_ODs.Active:=false;
end;

procedure TDDZLXXCC.BitBtn12Click(Sender: TObject);
begin
  Close;
end;

procedure TDDZLXXCC.DDZL_ODsAfterOpen(DataSet: TDataSet);
begin
  if DDZL_ODs.RecordCount>0 then
  begin
    bb7.Enabled:=true;
    bb8.Enabled:=true;
    bb9.Enabled:=true;
    bb10.Enabled:=true;
  end else
  begin
    bb7.Enabled:=false;
    bb8.Enabled:=false;
    bb9.Enabled:=false;
    bb10.Enabled:=false;
  end;
end;

procedure TDDZLXXCC.bb4Click(Sender: TObject);
begin
  with DDZL_ODs do
    begin
      cachedupdates:=true;
      requestlive:=true;
      Edit;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  DDZL_ODsGrid.Columns[0].ReadOnly:=true;  //DDBH
end;

procedure TDDZLXXCC.bb6Click(Sender: TObject);
begin
   with DDZL_ODs do
   begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
   end;
   bb5.Enabled:=false;
   bb6.Enabled:=false;

end;

procedure TDDZLXXCC.bb5Click(Sender: TObject);
var i:integer;
begin
    //
    DDZL_ODs.first;
    for i:=1 to DDZL_ODs.RecordCount do
    begin
      case DDZL_ODs.updatestatus of
         usmodified:
          begin

              DDZL_ODs.Edit;
              DDZL_ODs.FieldByName('USERID').AsString:=main.edit1.text;
              DDZL_ODs.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
              DDZL_ODs.Post;
              UPDDZL_ODs.apply(ukModify);
          end;
      end;
      DDZL_ODs.Next;
    end;
    //
    with DDZL_ODs do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
end;

procedure TDDZLXXCC.bb7Click(Sender: TObject);
begin
  DDZL_ODs.First;
end;

procedure TDDZLXXCC.bb10Click(Sender: TObject);
begin
  DDZL_ODs.Last;
end;

procedure TDDZLXXCC.bb9Click(Sender: TObject);
begin
  DDZL_ODs.Next;
end;

procedure TDDZLXXCC.bb8Click(Sender: TObject);
begin
  DDZL_ODs.Next;
end;

procedure TDDZLXXCC.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if  DDZL_ODs.active  then
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
      for   i:=0   to   DDZL_ODs.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=DDZL_ODs.fields[i].FieldName;
      end;
      DDZL_ODs.First;
      j:=2;
      while  not DDZL_ODs.Eof   do
      begin
        for   i:=0   to  DDZL_ODs.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=DDZL_ODs.Fields[i].Value;
        end;
        DDZL_ODs.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.
