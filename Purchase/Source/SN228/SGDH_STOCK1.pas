unit SGDH_STOCK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls, comobj, Menus, GridsEh, DBGridEh, ehlibBDE, ComCtrls;

type
  TSGDH_Stock = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Panel4: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Query2: TQuery;
    Edit3: TEdit;
    DBMemo2: TDBMemo;
    tempQ: TQuery;
    Query1cldh: TStringField;
    Query1ID: TStringField;
    Query1QTY: TFloatField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1DEPNAME: TStringField;
    Label7: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    //procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SGDH_Stock: TSGDH_Stock;

implementation

uses main1, Choice_CLBH1;

{$R *.dfm}

procedure TSGDH_Stock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.', mtwarning, [mbyes], 0);
    action := canone;
  end
  else
    action := Cafree;
end;

procedure TSGDH_Stock.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSGDH_Stock.BB1Click(Sender: TObject);
begin
  panel3.Visible := true;
  edit1.SetFocus;
end;

procedure TSGDH_Stock.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active := false;
    sql.clear;
    sql.add('select SGDH_Stock.*,clzl.ywpm,clzl.zwpm,BDepartment.DEPNAME from SGDH_Stock');
    sql.add('left join clzl on SGDH_Stock.cldh = clzl.cldh');
    sql.add('left join BDepartment on BDepartment.ID = SGDH_Stock.ID');
    sql.add('where BDepartment.SGDH_ID is not null ');
    sql.add('and SGDH_Stock.CLDH like ');
    sql.add('''' + edit1.Text + '%' + '''');
    sql.add('and clzl.YWPM like');
    sql.add('''%' + edit2.text + '%''');
    sql.add('and clzl.YWPM like');
    sql.add('''%' + edit3.text + '%''');
    sql.add('and BDepartment.DEPNAME like ''%' + edit4.text + '%''');
    sql.add('order by SGDH_Stock.CLDH,BDepartment.DEPNAME');
    active := true;
  end;
  panel3.visible := false;
  panel2.visible := true;
  bb2.enabled := true;
  bb3.enabled := true;
  bb4.enabled := true;
  bb5.enabled := false;
  bb6.enabled := false;
  bb7.enabled := true;
  DBEdit1.SetFocus;
end;

procedure TSGDH_Stock.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates := true;
    requestlive := true;                                                     
    Insert;                                                    
    Query1.FieldByName('ID').ReadOnly := false;
    Query1.FieldByName('cldh').ReadOnly := false;
  end;
  bb5.enabled := true;
  bb6.enabled := true;
  DBGrid1.Columns[0].ButtonStyle := cbsEllipsis;
  DBGrid1.Columns[2].ButtonStyle := cbsEllipsis;
  DBEdit1.SetFocus;
end;

procedure TSGDH_Stock.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates := true;
    requestlive := true;
    query1.edit;
    Query1.FieldByName('ID').ReadOnly := true;
    Query1.FieldByName('cldh').ReadOnly := true;
  end;
  bb5.enabled := true;
  bb6.enabled := true;
  DBGrid1.Columns[0].ButtonStyle := cbsEllipsis;
  DBGrid1.Columns[2].ButtonStyle := cbsEllipsis;
  DBedit1.SetFocus;
end;

procedure TSGDH_Stock.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active := false;
    cachedupdates := false;
    requestlive := false;
    active := true;
  end;
  bb5.enabled := false;
  bb6.enabled := false;
  DBGrid1.Columns[0].ButtonStyle := cbsnone;
  DBGrid1.Columns[2].ButtonStyle := cbsnone;
end;

procedure TSGDH_Stock.bbt6Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  //     xlsFileName:string;
  i, j: integer;
begin
  if query1.active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to query1.fieldcount - 1 do
      begin
        eclApp.Cells(1, i + 1) := query1.fields[i].FieldName;
      end;

      query1.First;
      j := 2;
      while not query1.Eof do
      begin
        for i := 0 to query1.fieldcount - 1 do
        begin
          eclApp.Cells(j, i + 1) := query1.Fields[i].Value;
        end;
        query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible := True;
    except
      on F: Exception do
        showmessage(F.Message);
    end;
  end;
end;

procedure TSGDH_Stock.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edit2.SetFocus;
end;

procedure TSGDH_Stock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edit3.SetFocus;
end;

procedure TSGDH_Stock.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    button1click(nil);
end;

procedure TSGDH_Stock.BB5Click(Sender: TObject);
var
  i: integer;
  a: string;
begin
  try
    query1.first;
    for i := 1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
          begin
            if ((query1.fieldbyname('cldh').isnull) or (query1.fieldbyname('ID').isnull)) then
            begin
              showmessage('Pls select cldh or ID first.');
              abort;
            end
            else
            begin
              //  check material name exist.
              with tempQ do
              begin
                active := false;
                sql.Clear;
                sql.Add('select * from SGDH_Stock where cldh = ''' + trim(query1.fieldbyname('cldh').Value) + ''' and ID = ''' +
                  trim(query1.fieldbyname('ID').Value) + '''');
                active := true;
                if tempQ.RecordCount >= 1 then
                begin
                  showmessage('Material name has exist!');
                  abort;
                end
                else
                begin
                  query1.edit;
                  query1.FieldByName('userID').Value := main.edit1.text;
                  query1.FieldByName('userdate').Value := date;
                  upsql1.apply(ukinsert);
                end;
              end;
            end;
          end;
        usmodified:
          begin
            query1.edit;
            query1.FieldByName('userID').Value := main.edit1.text;
            query1.FieldByName('userdate').Value := date;
            upsql1.apply(ukmodify);
          end;
      end;
      query1.next;
    end;

    query1.active := false;
    query1.cachedupdates := false;
    query1.requestlive := false;
    query1.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
    DBGrid1.Columns[1].ButtonStyle := cbsnone;
  except
    Messagedlg('Have wrong,can not save!', mtwarning, [mbyes], 0);
  end;

end;

procedure TSGDH_Stock.FormDestroy(Sender: TObject);
begin
  SGDH_Stock := nil;
end;

procedure TSGDH_Stock.DBGrid1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  Choice_CLBH := TChoice_CLBH.create(self);
  Choice_CLBH.show;
  Choice_CLBH.Label1.Caption := 'ID';
  Choice_CLBH.Label2.Caption := 'DEPNAME';
end;

procedure TSGDH_Stock.DBGrid1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  Choice_CLBH := TChoice_CLBH.create(self);
  Choice_CLBH.show;
  Choice_CLBH.DBGrid2.Visible := false;
end;

end.
