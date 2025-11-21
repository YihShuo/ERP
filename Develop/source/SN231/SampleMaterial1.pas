unit SampleMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh,ehlibBDE;

type
  TSampleMaterial = class(TForm)
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
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1cldh: TStringField;
    Query1clbm: TStringField;
    Query1dycldh: TStringField;
    Query1ysbh: TStringField;
    Query1yszwsm: TStringField;
    Query1ysywsm: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1dwzwsm: TStringField;
    Query1dwywsm: TStringField;
    Query1clzmlb: TStringField;
    Query1lycc: TStringField;
    Query1xhcl: TStringField;
    Query1jkcl: TStringField;
    Query1gjlb: TStringField;
    Query1ckcldh: TStringField;
    Query1dzzhl: TFloatField;
    Query1xxbh: TStringField;
    Query1kfdh: TStringField;
    Query1cqdh: TStringField;
    Query1cltd: TStringField;
    Query1tyjh: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1pumadh: TStringField;
    Query1YN: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    Label6: TLabel;
    Query2: TQuery;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Query1cllb: TStringField;
    DBMemo2: TDBMemo;
    DBX2: TDBComboBox;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    ShowCK: TCheckBox;
    Combined1: TMenuItem;
    Button2: TButton;
    Label8: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure Combined1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    //procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    Function CheckIsRepeat(CH:string;EN:string):String;
  public
    { Public declarations }
  end;

var
  SampleMaterial: TSampleMaterial;

implementation

uses main1,SampleMaterial_Combinated1, SampleOrder_Mat1, QueryMM1, MaterialArticle1;

{$R *.dfm}

procedure TSampleMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSampleMaterial.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LBDH  from LBZLS where LB='+''''+'02'+'''' )   ;
    sql.add('order by LBDH ');
    active:=true;
    CBX2.Clear;
    DBX2.Clear;
    while not eof do
      begin
        CBX2.Items.add(fieldbyname('LBDH').asstring);
        DBX2.Items.add(fieldbyname('LBDH').asstring);
        next;
      end;
    active:=false;
    {sql.Clear;
    sql.add('select LBBH+'+''''+':'+''''+'+MEMO as LBXM   ');
    sql.add('from CLLBVN');
    active:=true;
    CBX1.Items.Clear;
    DBX1.Items.Clear;
    while not eof do
      begin
        CBX1.Items.add(fieldbyname('LBXM').AsString);
        DBX1.Items.add(fieldbyname('LBXM').AsString);
        next;
      end;
    active:=false; }
  end;
end;

procedure TSampleMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSampleMaterial.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TSampleMaterial.Button1Click(Sender: TObject);
begin
  if BB6.Enabled=true then bb6.Click;
  with Query1 do
  begin
    active:=false;
    sql.clear;
    if ShowCK.Checked=true then
      sql.add('select top 10 * from CLZL')
    else
      sql.add('select top 1000 * from CLZL');
    sql.add('where CLDH like ''V901%'' ');
    sql.add('and CLDH like '''+edit1.Text+'%'+'''');
    sql.add('and YWPM like');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    sql.add('and YWPM like');
    sql.add(''''+'%'+edit3.text+'%'+'''');
    // add search userid
    sql.Add('and userid like '''+edit4.Text+'%'+'''');
    //
    sql.add('and (YN='+''''+'2'+'''');
    sql.add('or YN='+''''+'3'+''''+')');
    sql.add('order by CLDH desc');
    active:=true;
  end;
  panel3.visible:=false;
  panel2.visible:=true;
  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
  DBEdit1.SetFocus;
  Edit1.Color:=clWindow;
end;

procedure TSampleMaterial.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    FieldByName('cllb').AsString:='V901';
    FieldByName('cldh').AsString:='auto';
  end;
  if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end else
  begin
      N1.Enabled:=false;
      N2.Enabled:=false;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBEdit1.SetFocus;
end;

procedure TSampleMaterial.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end else
  begin
      N1.Enabled:=false;
      N2.Enabled:=false;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBedit1.SetFocus;
end;

procedure TSampleMaterial.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  N1.Enabled:=false;
  N2.Enabled:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
  N1.Enabled:=false;
  N2.Enabled:=false;
end;

procedure TSampleMaterial.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TSampleMaterial.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TSampleMaterial.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TSampleMaterial.BBT4Click(Sender: TObject);
begin
query1.Last;
end;

procedure TSampleMaterial.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TSampleMaterial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TSampleMaterial.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TSampleMaterial.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;
//20141217檢查名稱是否重複
Function TSampleMaterial.CheckIsRepeat(CH:string;EN:string):String;
var iRes:string;
begin
   iRes:='';
   with Query2 do  //計算材料流水號
   begin
     active:=false;
     sql.Clear;
     sql.Add('select CLDH from CLZL ');
     sql.add('where CLDH like ''V901%'' ');
     sql.add('and ( YWPM='''+EN+''' or ZWPM='''+CH+''') and YWPM<>'''' and ZWPM<>'''' ');
     Active:=true;
     if RecordCount>0 then
     begin
       iRes:=FieldByName('CLDH').AsString;
       Edit1.Text:=iRes;
       Edit1.Color:=clyellow;
       Panel3.Show;
     end;
     Active:=false;
   end;
   result:=iRes;
end;
procedure TSampleMaterial.BB5Click(Sender: TObject);
var i:integer;
    a:string;
begin
  try
      query1.first;
      for i:=1 to query1.RecordCount do
        begin
          case query1.updatestatus of
            usinserted:
              begin
                {
                if ((query1.fieldbyname('cllb').isnull) or (query1.fieldbyname('dwbh').isnull)) then
                  begin
                    showmessage('Pls select material type first.');
                    abort;
                  end ;
                }
                if  CheckIsRepeat(Query1.fieldbyname('ZWPM').AsString,Query1.fieldbyname('YWPM').AsString)<>'' then
                begin
                    showmessage('Material has exists.');
                    exit;
                end;

                if (query1.fieldbyname('YWPM').isnull or query1.fieldbyname('ZWPM').isnull) then
                  begin
                    showmessage('Pls key material name first.');
                    abort;
                  end
                   else
                     begin
                       with query2 do    //計算材料流水號
                         begin
                           active:=false;
                           sql.Clear;
                           sql.Add('select CLDH from clzl');
                           sql.add(' where CLDH like '+''''+copy(query1.fieldbyname('CLLB').value,0,4)+'%'+'''');
                           sql.add('order by CLDH');
                           active:=true;
                           if recordcount >0 then
                             begin
                               last;
                               a:=fieldbyname('CLDH').AsString;
                               a:=copy(a,5,8);
                               a:=inttostr(strtoint(a)+1);
                               while length(a)<6 do
                                 begin
                                   a:='0'+a;
                                 end;
                             end
                               else
                                 begin
                                   a:='000001';
                                 end;
                           a:=query1.fieldbyname('CLLB').value+a;
                           active:=false;
                         end;
                       query1.edit;
                       query1.fieldbyname('CLDH').value:=a;
                       query1.fieldbyname('CLBM').value:='zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'+a;
                       query1.fieldbyname('CLLB').value:=copy(query1.fieldbyname('CLLB').value,0,4);
                       query1.fieldbyname('clzmlb').value:='N';
                       query1.fieldbyname('lycc').value:='N';
                       query1.fieldbyname('xhcl').value:='Y';
                       query1.fieldbyname('jkcl').value:='N';
                       query1.fieldbyname('gjlb').value:='000';
                       query1.fieldbyname('cqdh').value:='VN';
                       query1.FieldByName('userID').Value:=main.edit1.text;
                       query1.FieldByName('userdate').Value:=date;
                       if a<'W' then
                         begin
                           query1.FieldByName('YN').Value:='3';
                         end
                         else
                           begin
                             query1.FieldByName('YN').Value:='2';
                           end;
                       upsql1.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                 if query1.FieldByName('YN').value='0' then
                   begin
                     if query1.FieldByName('USERDATE').value>=date  then
                       begin
                        upsql1.Apply(ukdelete);
                       end
                       else
                         begin
                            showmessage(query1.fieldbyname('CLDH').value+' >1 days,can not delete.');
                         end;
                   end
                   else
                     begin
                       if ((query1.FieldByName('USERDATE').value>=(date-2)) or (formatdatetime('yyyy/MM/dd',date)<'2008/11/01')) then
                         begin
                           query1.edit;
                           query1.FieldByName('userID').Value:=main.edit1.text;
                           query1.FieldByName('userdate').Value:=date;
                           upsql1.apply(ukmodify);
                         end
                         else
                           begin
                             showmessage(query1.fieldbyname('CLDH').value+' >3 days,can not modify.');
                           end; 
                     end;
               end;
          end;
          query1.next;
        end;

    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    N1.Enabled:=false;
    N2.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleMaterial.DBGrid1ColEnter(Sender: TObject);
begin
{if dbgrid1.selectedfield.fieldname<>dbx1.datafield then
  begin
    dbx1.visible:=false;
  end; }
end;

procedure TSampleMaterial.N1Click(Sender: TObject);
begin
//if query1.CachedUpdates then
  begin
    with query2 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update CLZL ');
        sql.add('set TYJH='+''''+'Y'+'''');
        sql.add('where CLDH='+''''+query1.fieldbyname('CLDH').Value+'''');
        execsql;
      end;
    query1.Active:=false;
    query1.Active:=true;
  end;
end;

procedure TSampleMaterial.N2Click(Sender: TObject);
begin
//if query1.CachedUpdates then
  begin
    with query2 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update CLZL ');
        sql.add('set TYJH='+''''+'N'+'''');
        sql.add('where CLDH='+''''+query1.fieldbyname('CLDH').Value+'''');
        execsql;
      end;
    query1.Active:=false;
    query1.Active:=true;
  end;
end;

procedure TSampleMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  query1.fieldbyname('cldh').AsString='auto' then
  begin
    dbgrid1.canvas.font.color:=clgreen;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMaterial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  {
if Query1.cachedupdates then
  begin
    Dbx1.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid1.SelectedField.fieldname=dbx1.datafield) then
          begin
            dbx1.left:=rect.left+dbgrid1.left;
            dbx1.top:=rect.top+dbgrid1.Top;
            dbx1.width:=rect.right-rect.left;
            dbx1.height:=rect.bottom-rect.top;
            dbx1.visible:=true;
          end
          else
            dbx1.visible:=false;
      end;
  end
  else
    dbx1.visible:=false;   }

    
if Query1.cachedupdates then
  begin
    Dbx2.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid1.SelectedField.fieldname=dbx2.datafield) then
          begin
            dbx2.left:=rect.left+dbgrid1.left;
            dbx2.top:=rect.top+dbgrid1.Top;
            dbx2.width:=rect.right-rect.left;
            dbx2.height:=rect.bottom-rect.top;
            dbx2.visible:=true;
          end
          else
            dbx2.visible:=false;
      end;
  end
  else
    dbx2.visible:=false;

end;

procedure TSampleMaterial.FormDestroy(Sender: TObject);
begin
  SampleMaterial:=nil;
end;

procedure TSampleMaterial.Combined1Click(Sender: TObject);
begin
  if SampleMaterial_Combinated=nil then
     SampleMaterial_Combinated:=TSampleMaterial_Combinated.Create(self);
  SampleMaterial_Combinated.CLZHZLVN.Active:=true;   
  SampleMaterial_Combinated.show;
end;

procedure TSampleMaterial.Button2Click(Sender: TObject);
begin
        //QueryMM:=TQueryMM.Create(self);
        //QueryMM.Show;
       //SampleOrder_Mat:=TSampleOrder_Mat.Create(self);
       //SampleOrder_Mat.Show;
       MaterialArticle:=TMaterialArticle.Create(self);
       MaterialArticle.Show;
end;

end.


