unit RSLChemical1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls, Mask, ExtCtrls, GridsEh, DBGridEh,
  DB, DBTables, comobj ;

type
  TRSLChemical = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    CB1: TComboBox;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    DBMemo2: TDBMemo;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BBModify: TBitBtn;
    BBSave: TBitBtn;
    BBCancel: TBitBtn;
    BBExit: TBitBtn;
    BBQuery: TBitBtn;
    BBFirst: TBitBtn;
    BBPrior: TBitBtn;
    BBNext: TBitBtn;
    BBLast: TBitBtn;
    bbt5: TBitBtn;
    bbExcel: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    Query1CLDH: TStringField;
    Query1CLLB: TStringField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1DCYN: TStringField;
    Query1PDYN: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BBExitClick(Sender: TObject);
    procedure BBQueryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBFirstClick(Sender: TObject);
    procedure BBPriorClick(Sender: TObject);
    procedure BBNextClick(Sender: TObject);
    procedure BBLastClick(Sender: TObject);
    procedure BBModifyClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BBSaveClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RSLChemical: TRSLChemical;
 

implementation

uses main1;

{$R *.dfm}

procedure TRSLChemical.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       action:=cafree;
end;

procedure TRSLChemical.FormDestroy(Sender: TObject);
begin
        RSLChemical:=nil;
end;

procedure TRSLChemical.BBExitClick(Sender: TObject);
begin
  close;
end;

procedure TRSLChemical.BBQueryClick(Sender: TObject);
begin
  panel3.visible:=true;
  edit1.SetFocus;
end;

procedure TRSLChemical.Button1Click(Sender: TObject);
begin
   with query1 do
   begin
      active:=false;
      sql.clear;
      sql.add('SELECT CLDH, CLLB, ZWPM, YWPM, DWBH, DCYN, PDYN, USERID, USERDATE');
      sql.add('FROM CLZL');
      SQL.ADD('WHERE ((CLDH LIKE ''W%'') or (CLDH like ''U%''))');
      SQL.Add('AND ((YN=''2'') or (YN=''3'')) ');
      sql.add('AND CLDH LIKE '+''''+ edit1.Text+'%'+'''');
      sql.add('AND YWPM LIKE '+''''+'%'+ edit2.Text +'%'+'''');
      sql.add('AND YWPM LIKE '+''''+'%'+ edit3.Text +'%'+'''');
      sql.add('AND (TYJH IS NULL OR TYJH<>''Y'')');
      if cb1.Text='DC' then
        sql.add('AND DCYN=''Y''');
      if cb1.Text='PD' then
        sql.Add(' AND PDYN=''Y''');
      sql.add('ORDER BY CLDH');
      active:=true;
   end;
   panel3.Visible:=false;
   bbModify.enabled:=true;
   bbExcel.Enabled:=true;
  
end;

procedure TRSLChemical.BBFirstClick(Sender: TObject);
begin
  query1.First;
end;

procedure TRSLChemical.BBPriorClick(Sender: TObject);
begin
  query1.Prior;
end;

procedure TRSLChemical.BBNextClick(Sender: TObject);
begin
  query1.Next;
end;

procedure TRSLChemical.BBLastClick(Sender: TObject);
begin
  query1.Last;
end;

procedure TRSLChemical.BBModifyClick(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    query1.Edit;
  end;
  bbSave.enabled:=true;
  bbCancel.enabled:=true;
end;

procedure TRSLChemical.BBCancelClick(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bbSave.enabled:=false;
  bbCancel.Enabled:=false;
end;

procedure TRSLChemical.BBSaveClick(Sender: TObject);
var i:integer;
begin
    try
      query1.first;
      for i:=1 to query1.RecordCount do
      begin
        case query1.UpdateStatus of
        usmodified:
        begin
          query1.edit;
          query1.FieldByName('USERID').VALUE:=main.edit1.Text;
          query1.FieldByName('USERDATE').Value:=now();
          updatesql1.Apply(ukmodify);
        end;
      end;
      query1.next;
    end;
    showmessage('Save successful');
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.RequestLive:=false;
    query1.Active:=true;
    bbSave.Enabled:=false;
    bbCancel.Enabled:=false;
    except
      messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
end;

procedure TRSLChemical.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if  (query1.FieldByName('DCYN').Value = 'Y') and  (query1.FieldByName('PDYN').Value = 'Y') then
      DBGridEh1.canvas.font.color:=clBlue;

  if  (query1.FieldByName('DCYN').Value = 'N') and  (query1.FieldByName('PDYN').Value = 'Y') then
      DBGridEh1.canvas.font.color:=clGreen;

  if  (query1.FieldByName('DCYN').Value = 'Y') and  (query1.FieldByName('PDYN').Value = 'N') then
      DBGridEh1.canvas.font.color:=clFuchsia;
end;

procedure TRSLChemical.bbExcelClick(Sender: TObject);
var  eclApp,WorkBook:olevariant;
      i,j:integer;
begin
       
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
