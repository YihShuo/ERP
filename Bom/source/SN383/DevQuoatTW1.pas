unit DevQuoatTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, DBTables, Buttons, ExtCtrls, Comobj;

type
  TDevQuoatTW = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    CLZLQry: TQuery;
    UpCLZL: TUpdateSQL;
    DS1: TDataSource;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    MatNMEEdit: TEdit;
    MatNMCEdit: TEdit;
    Button3: TButton;
    CLBHEdit: TEdit;
    CB2: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGridEh;
    CLZLQryCLBH: TStringField;
    CLZLQryYWPM: TStringField;
    CLZLQryZWPM: TStringField;
    CLZLQryCQDH: TStringField;
    CLZLQryDWBH: TStringField;
    CLZLQrysamplePrice: TFloatField;
    CLZLQryUSERID: TStringField;
    CLZLQryUSERDATE: TDateTimeField;
    CLZLQryZSJC: TStringField;
    CLZLQryYN: TStringField;
    CLZLQryZSBH: TStringField;
    CLZLQryGSBH: TStringField;
    CLZLQrySeason: TStringField;
    MineCK: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevQuoatTW: TDevQuoatTW;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TDevQuoatTW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDevQuoatTW.FormDestroy(Sender: TObject);
begin
  DevQuoatTW:=nil;
end;

procedure TDevQuoatTW.Button3Click(Sender: TObject);
begin
   if ((CLBHEdit.Text='') and (MineCK.Checked=false))  then
   begin
     Showmessage('Please input Mat No!');
     Exit;
   end;
   with CLZLQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.CQDH,CLZL.DWBH,MaterialCBD.samplePrice,MaterialCBD.GSBH,');
     SQL.Add('       MaterialCBD.Season,MaterialCBD.USERID,MaterialCBD.USERDATE,MaterialCBD.YN ,CLZL.ZSDH as ZSBH,ZSZL.ZSJC ');
     SQL.Add('from CLZL');
     SQL.Add('Left Join MaterialCBD ON MaterialCBD.CLBH=CLZL.CLDH  ');
     SQL.Add('Left Join MaterialCBDFilter on MaterialCBDFilter.CLBH=CLZL.CLDH and MaterialCBDFilter.GSBH='''+main.Edit2.Text+'''  ');
     SQL.Add('Left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH ');
     SQL.Add('where CLZL.CLDH like '''+CLBHEdit.Text+'%'' ');
     sql.add('and CLZL.YWPM like '+''''+'%'+MatNMEEdit.Text+'%'+'''');
     sql.add('and CLZL.ZWPM like '+''''+'%'+MatNMCEdit.Text+'%'+'''');
     if CB2.ItemIndex=1 then
     begin
      sql.Add('and (MaterialCBD.SamplePrice is null ) ');
     end;
     if CB2.ItemIndex=2 then
     begin
      sql.Add('and (MaterialCBD.SamplePrice is not null) ');
     end;
     if CheckBox1.Checked=false then
      sql.Add('and CLZL.CQDH<>''TW'' ');
     if CheckBox2.Checked=false then
      sql.Add('and CLZL.CQDH<>''VN'' ');
     if MineCK.Checked=true then
      sql.Add('and MaterialCBD.USERID='''+main.Edit1.Text+''' ');
     SQL.Add('order by CLZL.CLDH ');
     Active:=true;
   end;
   BBT6.Enabled:=true;
end;

procedure TDevQuoatTW.BB4Click(Sender: TObject);
begin
  if CLZLQry.Active=true then
  begin
    with CLZLQry do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
  end;
end;

procedure TDevQuoatTW.BB6Click(Sender: TObject);
begin
  with CLZLQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TDevQuoatTW.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  with CLZLQry do
  begin
    First;
    for i:=1 to RecordCount do
    begin
      case updatestatus of
       usmodified:
       if FieldByName('GSBH').AsString<>'' then
       begin
         UpCLZL.Apply(ukmodify);
       end else
       begin
         Edit;
         FieldByname('Season').Value:='18F';
         FieldByname('GSBH').Value:=main.Edit2.Text;
         FieldByName('USERID').Value:=main.Edit1.Text;
         FieldByName('USERDATE').Value:=Date();
         FieldByName('YN').Value:='1';
         Post;
         UpCLZL.Apply(ukinsert);
       end;
      end;
      Next;
    end;
  end;
  //
  CLZLQry.active:=false;
  CLZLQry.cachedupdates:=false;
  CLZLQry.requestlive:=false;
  CLZLQry.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
end;

procedure TDevQuoatTW.bbt6Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
    if  CLZLQry.active  then
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
        for   i:=0   to   CLZLQry.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=CLZLQry.fields[i].FieldName;
        end;

        CLZLQry.First;
        j:=2;
        while   not   CLZLQry.Eof   do
        begin
          for   i:=0   to  CLZLQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CLZLQry.Fields[i].Value;
          end;
        CLZLQry.Next;
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

procedure TDevQuoatTW.BB7Click(Sender: TObject);
begin
  close;
end;

end.
