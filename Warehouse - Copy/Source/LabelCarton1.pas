unit LabelCarton1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  dateutils,comobj, Menus;

type
  TLabelCarton = class(TForm)
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
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    ZLList: TQuery;
    ZLListZLBH: TStringField;
    ZLListArticle: TStringField;
    ZLListXieMing: TStringField;
    ZLListPairs: TIntegerField;
    ZLListETD: TDateTimeField;
    ZLListShipDate: TDateTimeField;
    ZLListCSD: TDateTimeField;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    ZLListUSERID2: TStringField;
    ZLListUSERDATE2: TDateTimeField;
    ZLListCTQty: TIntegerField;
    Cartton: TQuery;
    UpCode: TUpdateSQL;
    DBGrid2: TDBGrid;
    DS2: TDataSource;
    CarttonCODENO: TStringField;
    BBT7: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    E1: TEdit;
    Label6: TLabel;
    E2: TEdit;
    Label7: TLabel;
    E3: TEdit;
    Label8: TLabel;
    E4: TEdit;
    Label9: TLabel;
    E5: TEdit;
    Label10: TLabel;
    E6: TEdit;
    Pop1: TPopupMenu;
    Divide1: TMenuItem;
    Button2: TButton;
    Label11: TLabel;
    E7: TEdit;
    Label12: TLabel;
    E8: TEdit;
    Label13: TLabel;
    E9: TEdit;
    Label14: TLabel;
    E10: TEdit;
    Label15: TLabel;
    E11: TEdit;
    Label16: TLabel;
    E12: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZLListAfterScroll(DataSet: TDataSet);
    procedure bbt5Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure Divide1Click(Sender: TObject);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure E3KeyPress(Sender: TObject; var Key: Char);
    procedure E4KeyPress(Sender: TObject; var Key: Char);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure E6KeyPress(Sender: TObject; var Key: Char);
    procedure E1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure E2Exit(Sender: TObject);
    procedure E3Exit(Sender: TObject);
    procedure E4Exit(Sender: TObject);
    procedure E5Exit(Sender: TObject);
    procedure E6Exit(Sender: TObject);
    procedure E7Exit(Sender: TObject);
    procedure E8Exit(Sender: TObject);
    procedure E9Exit(Sender: TObject);
    procedure E10Exit(Sender: TObject);
    procedure E11Exit(Sender: TObject);
    procedure E12Exit(Sender: TObject);
    procedure E7KeyPress(Sender: TObject; var Key: Char);
    procedure E8KeyPress(Sender: TObject; var Key: Char);
    procedure E9KeyPress(Sender: TObject; var Key: Char);
    procedure E10KeyPress(Sender: TObject; var Key: Char);
    procedure E11KeyPress(Sender: TObject; var Key: Char);
    procedure E12KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelCarton: TLabelCarton;   
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TLabelCarton.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end ;
end;

procedure TLabelCarton.BB1Click(Sender: TObject);
begin

panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TLabelCarton.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with ZLList do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZLDate.*,DDZL.XieXing,DDZL.SheHao,DDZL.ShipDate,XXZL.XieMing,XXZL.Article ,DDZL.Pairs');
    sql.add('from SCZLDate');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZLDate.ZLBH');
    sql.add('left join DDZL on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on XXZL.Xiexing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.Add('where SCZLDate.ZLBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and DDZL.KHBH like');
    sql.add(''''+CBX1.Text+'%'+'''');
    sql.add('and DDZL.ShipDate>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('and DDZL.shipdate<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by SCZLDate.ZLBH');
    active:=true;
  end;
panel3.Visible:=false;
bb4.Enabled:=true;
bbt1.Enabled:=true;
bbt2.Enabled:=true;
bbt3.Enabled:=true;
bbt4.Enabled:=true;
bbt6.Enabled:=true;
cartton.active:=false;
BBT7.Enabled:=true;
end;

procedure TLabelCarton.BB7Click(Sender: TObject);
begin

close;
end;

procedure TLabelCarton.BB4Click(Sender: TObject);
begin

with ZLList do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
bb5.Enabled:=true;
bb6.Enabled:=true;
BBT5.Enabled:=false;
end;

procedure TLabelCarton.BB5Click(Sender: TObject);
begin
with ZLList do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            fieldbyname('USERID2').Value:=main.edit1.text;
            fieldbyname('USERDATE2').value:=date;
            UPZL.Apply(ukmodify);
          end;
        next;
      end;
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TLabelCarton.BB6Click(Sender: TObject);
begin

with ZLList do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.Enabled:=false;
end;

procedure TLabelCarton.BBT1Click(Sender: TObject);
begin

ZLList.First;
end;

procedure TLabelCarton.BBT2Click(Sender: TObject);
begin

ZLList.prior;
end;

procedure TLabelCarton.BBT3Click(Sender: TObject);
begin
ZLList.next;
end;

procedure TLabelCarton.BBT4Click(Sender: TObject);
begin
ZLList.last;
end;

procedure TLabelCarton.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  ZLList.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ZLList.FieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=ZLList.fields[i].FieldName;
          end;
        ZLList.First;
        j:=2;
        while   not   ZLList.Eof   do
          begin
            for   i:=0   to   ZLList.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=ZLList.Fields[i].Value;
              end;
            ZLList.Next;
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

procedure TLabelCarton.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kfdh from kfzl order by kfdh');
    active:=true;
    CBX1.Items.Clear;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('kfdh').asstring);
        next;
      end;
    CBX1.Text:='P';
    active:=false;
  end;
end;

procedure TLabelCarton.ZLListAfterScroll(DataSet: TDataSet);
begin
if not ZLList.RequestLive then
  begin
    if ((not ZLList.FieldByName('CTQty').IsNull) and (ZLList.FieldByName('CTQty').value<>0))  then
      begin
        bbt5.Enabled:=true;
      end
      else
        begin
          bbt5.Enabled:=false;
        end;
  end
  else
    begin
      BBT5.enabled:=false;
    end;
end;

procedure TLabelCarton.bbt5Click(Sender: TObject);
var i:integer;
a,s:string;
begin
if Panel2.Visible then
  begin
    if ZLList.FieldByName('CTQty').value<>(strtoint(E1.Text)+strtoint(E2.Text)+strtoint(E3.Text)
                                                +strtoint(E4.Text)+strtoint(E5.Text)+strtoint(E6.Text)
                                                +strtoint(E7.Text)+strtoint(E8.Text)+strtoint(E9.Text)
                                                +strtoint(E10.Text)+strtoint(E11.Text)+strtoint(E12.Text) ) then
      begin
        showmessage('CTQty is not right. Pls check again.');
        abort;
      end;
  end;
    with Cartton do
      begin
        active:=false;
        sql.Clear;
        sql.add('select CODENO ');
        sql.add('from SCSMPRINT ');
        sql.add('where CODENO like '+''''+ZLList.fieldbyname('ZLBH').Value+'%'+'''');
        sql.add('order by CODENO ');
        active:=true;
        s:=sql.Text;
        if  recordcount>0 then
          begin
            if messagedlg('Already have data. Recalculate ?',mtinformation,[mbYes,mbNo],0)=mrYes then
              begin
                active:=false;
                sql.Clear;
                sql.add('delete SCSMPRINT ');
                sql.add('where CODENO like '+''''+ZLList.fieldbyname('ZLBH').Value+'%'+'''');
                execsql;
                close;
                sql.Text:=s;
                active:=true;
              end;
          end;
        requestlive:=true;
        cachedupdates:=true;
        if not Panel2.Visible then
          begin
            i:=1;
            while i<=ZLList.FieldByName('CTQty').Value do
              begin
                a:=inttostr(i);
                while length(a)<4 do
                  begin
                    a:='0'+a;
                  end;
                insert;
                fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                post;
                i:=i+1;
              end;
          end
          else
            begin
              if E1.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E1.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='A'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end;   
              if E2.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E2.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='B'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end;
              if E3.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E3.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='C'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E4.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E4.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='D'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end;
              if E5.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E5.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='E'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end;
              if E6.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E6.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='F'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E7.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E7.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='G'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E8.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E8.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='H'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E9.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E9.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='I'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E10.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E10.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='J'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E11.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E11.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='K'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end; 
              if E12.text<>'0' then
                begin
                  i:=1;
                  while i<=strtoint(E12.Text) do
                    begin
                      a:=inttostr(i);
                      while length(a)<3 do
                        begin
                          a:='0'+a;
                        end;
                      a:='L'+a;
                      insert;
                      fieldbyname('CODENO').Value:=ZLList.fieldbyname('ZLBH').Value+' '+a;
                      post;
                      i:=i+1;
                    end;
                end;
            end;
        first;
        while not eof do
          begin
            if updatestatus=usinserted then
              begin
                upcode.Apply(ukinsert);
                next;
              end;
          end;
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
end;

procedure TLabelCarton.BBT7Click(Sender: TObject);
begin
if messagedlg('Only clear this order?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('delete SCSMPRINT ');
        sql.add('where CODENO like '+''''+ZLList.fieldbyname('ZLBH').Value+'%'+'''');
        execsql;
        cartton.Active:=false;
        cartton.Active:=true;
      end;
  end
  else
    begin
      with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('delete SCSMPRINT ');
          execsql;
          cartton.Active:=false;
          cartton.Active:=true;
        end;
    end;
end;

procedure TLabelCarton.Divide1Click(Sender: TObject);
begin
panel2.Visible:=true;
E1.Text:='0';
E2.Text:='0';
E3.Text:='0';
E4.Text:='0';
E5.Text:='0';
E6.Text:='0';
E7.Text:='0';
E8.Text:='0';
E9.Text:='0';
E10.Text:='0';
E11.Text:='0';
E12.Text:='0';
end;

procedure TLabelCarton.E1KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
end;

procedure TLabelCarton.E2KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E1.text='0' then
  begin
    Key:=#0;
    E1.SetFocus;
  end;
end;

procedure TLabelCarton.E3KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E2.text='0' then
  begin
    Key:=#0;
    E2.SetFocus;
  end;
end;

procedure TLabelCarton.E4KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E3.text='0' then
  begin
    Key:=#0;
    E3.SetFocus;
  end;
end;

procedure TLabelCarton.E5KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E4.text='0' then
  begin
    Key:=#0;
    E4.SetFocus;
  end;
end;

procedure TLabelCarton.E6KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E5.text='0' then
  begin
    Key:=#0;
    E5.SetFocus;
  end;
end;

procedure TLabelCarton.E1Exit(Sender: TObject);
begin
if E1.text='' then
E1.setfocus;
end;

procedure TLabelCarton.Button2Click(Sender: TObject);
begin
Panel2.visible:=false;
end;

procedure TLabelCarton.E2Exit(Sender: TObject);
begin

if E2.text='' then
E2.setfocus;
end;

procedure TLabelCarton.E3Exit(Sender: TObject);
begin

if E3.text='' then
E3.setfocus;
end;

procedure TLabelCarton.E4Exit(Sender: TObject);
begin

if E4.text='' then
E4.setfocus;
end;

procedure TLabelCarton.E5Exit(Sender: TObject);
begin
if E5.text='' then
E5.setfocus;
end;

procedure TLabelCarton.E6Exit(Sender: TObject);
begin
if E6.text='' then
E6.setfocus;
end;

procedure TLabelCarton.E7Exit(Sender: TObject);
begin
if E7.text='' then
E7.setfocus;
end;

procedure TLabelCarton.E8Exit(Sender: TObject);
begin
if E8.text='' then
E8.setfocus;
end;

procedure TLabelCarton.E9Exit(Sender: TObject);
begin
if E9.text='' then
E9.setfocus;
end;

procedure TLabelCarton.E10Exit(Sender: TObject);
begin
if E10.text='' then
E10.setfocus;
end;

procedure TLabelCarton.E11Exit(Sender: TObject);
begin
if E11.text='' then
E11.setfocus;
end;

procedure TLabelCarton.E12Exit(Sender: TObject);
begin
if E12.text='' then
E12.setfocus;
end;

procedure TLabelCarton.E7KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E6.text='0' then
  begin
    Key:=#0;
    E6.SetFocus;
  end;
end;

procedure TLabelCarton.E8KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E7.text='0' then
  begin
    Key:=#0;
    E7.SetFocus;
  end;
end;

procedure TLabelCarton.E9KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E8.text='0' then
  begin
    Key:=#0;
    E8.SetFocus;
  end;
end;

procedure TLabelCarton.E10KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E9.text='0' then
  begin
    Key:=#0;
    E9.SetFocus;
  end;
end;

procedure TLabelCarton.E11KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E10.text='0' then
  begin
    Key:=#0;
    E10.SetFocus;
  end;
end;

procedure TLabelCarton.E12KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E11.text='0' then
  begin
    Key:=#0;
    E11.SetFocus;
  end;
end;

procedure TLabelCarton.FormDestroy(Sender: TObject);
begin
LabelCarton:=nil;
end;

end.
