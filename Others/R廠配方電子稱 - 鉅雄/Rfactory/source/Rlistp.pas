unit Rlistp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls, StdCtrls, DBCtrls,
  OleCtrls, MSCommLib_TLB, Mask;

type
  TRlist = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    clzlsl: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    clzlslcldhz: TStringField;
    clzlslywpm: TStringField;
    clzlslzwpm: TStringField;
    clzlslclyl: TFloatField;
    Query1: TQuery;
    cbx1: TComboBox;
    MSComm1: TMSComm;
    Timer1: TTimer;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Label3: TLabel;
    cbx2: TComboBox;
    Button1: TButton;
    clzlslclbh: TStringField;
    clzlsltimes: TIntegerField;
    clzlslokPrint: TIntegerField;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    UpdateSQL1: TUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure cbx1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rlist: TRlist;
  workDate: TDateTime;

implementation

uses StrUtils, main1;

{$R *.dfm}

procedure TRlist.FormCreate(Sender: TObject);
var s:string;
begin

//ShowMessage(main.Edit1.text +' '+main.Edit2.text);

  // 登入廠別初始值為 R2
  if main <> nil then
  begin
    Edit2.Text := main.Edit2.text;
    Edit4.Text := main.Edit1.text;
  end
  else
  begin
    Edit2.Text := 'S02';
    Edit4.Text := 'system';
  end;

  // 7 點之前的工作天算昨天
  if formatdatetime('hh',Now) < '07' then
     workDate := now - 1
  else
     workDate := now;

 { // 將之前的紀錄全部刪除
  if formatdatetime('hh',Now) >= '07' then
    with Query1 do
    begin
      sql.Clear;
      sql.add('delete from pfsms where workDate < ''' + formatdatetime('yyyy/MM/dd', Now) + '''');
      execsql;
    end;
   }

  // 將配方的代號代入下拉選單      // 配方若沒有選擇要打料的化學品, 則不會顯示在選單上
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select cldh,zwpm from clzl where cllb = '+''''+'V'+'''');
    sql.add(' and cldh like '+''''+'VN%'+ '''');
    {
    sql.add('select pfbh1 from GSPF');
    sql.add('where GSBH = '''+ Edit2.Text + ''' and invisible = 0');
    sql.add('  and exists(select * from GSPFS where GSPF.GSBH = GSPFS.GSBH and GSPF.PFBH2 = GSPFS.PFBH2)');
    }
    active:=true;

    cbx1.Clear;
    First;
    if not FieldByName('cldh').IsNull then
    begin
      cbx1.Text := FieldByName('cldh').Value+' '+FieldByName('zwpm').Value;
    end;
    while not Eof do
    begin
      cbx1.Items.Add( FieldByName('cldh').Value+' '+FieldByName('zwpm').Value );
      Next;
    end;

  end;
{
  // 轉換為電腦配方號
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select pfbh2 from GSPF where gsbh = ''' +  Edit2.Text + ''' and pfbh1 = ''' + cbx1.Text + '''');
 //   ShowMessage(sql.Text);
    active:=true;
    if RecordCount <> 0 then
      Edit1.Text := FieldByName('pfbh2').Value;
  end;
}
  Edit1.Text := copy(cbx1.Text,1,10);
  // 設定配方初始值
  with clzlsl do
  begin
    active:=false;
    sql.Clear;
    //clzlsl.cldhz-->料號
    //clzl.ywpm,clzl.zwpm-->英文,中文物料名稱
    //clzlsl.clyl-->用量
    //只取出配方中的X,Y二種，可以視R廠的需求更改 clzlsl.lb-->配方類別
    sql.add('select clzlsl.cldh, clzlsl.cldhz, clzl.ywpm, clzl.zwpm, 0 as times ,0 as okPrint , ( clzlsl.clyl * 1000 ) as clyl from clzlsl');
    sql.add('left join clzl on clzlsl.cldhz=clzl.cldh');
    sql.add('WHERE clzlsl.lb = '+''''+'Y'+'''');
    sql.add('      AND clzlsl.cldhz = CLZL.cldh');
    sql.add('      and clzlsl.cldh='+''''+edit1.Text+'''');
    sql.add('order by  CLZL.zwpm ');
  //  ShowMessage(sql.Text);
    //memo2.Text:=sql.text;
    active:=true;
  end;

  // 設定 port 與 按鈕 初始狀態
  MSComm1.PortOpen := true;          /////////////////////////////////////////////////////////////////////////
  Button2.Caption := 'disconnect';
end;

procedure TRlist.cbx1Change(Sender: TObject);
begin

  Edit1.Text := copy(cbx1.Text,1,10);

  // 設定配方初始值
  with clzlsl do
  begin
    active:=false;
    sql.Clear;
    //clzlsl.cldhz-->料號
    //clzl.ywpm,clzl.zwpm-->英文,中文物料名稱
    //clzlsl.clyl-->用量
    //只取出配方中的X,Y二種，可以視R廠的需求更改 clzlsl.lb-->配方類別
    sql.add('select clzlsl.cldh, clzlsl.cldhz, clzl.ywpm, clzl.zwpm, 0 as times ,0 as okPrint , ( clzlsl.clyl * 1000 ) as clyl from clzlsl');
    sql.add('left join clzl on clzlsl.cldhz=clzl.cldh');
    sql.add('WHERE clzlsl.lb = '+''''+'Y'+'''');
    sql.add('      AND clzlsl.cldhz = CLZL.cldh');
    sql.add('      and clzlsl.cldh='+''''+edit1.Text+'''');
    sql.add('order by  CLZL.zwpm ');
  //  ShowMessage(sql.Text);
    active:=true;
  end;
end;

procedure TRlist.Timer1Timer(Sender: TObject);
var
  mTotal:string; // for print
  mchemicals:string;
  mWeight:string;
  dWeight:single;
  clyl:single;
  curString:string;
  mTime:string;
  i:integer;
begin

  // 7 點之前的工作天算昨天
  if formatdatetime('hh',Now) < '07' then
     workDate := now - 1
  else
     workDate := now;

  // 取現在時間
  mTime := formatdatetime('yyyy/MM/dd  hh:mm:ss',now);
  Edit3.Text :=  mTime;

  if ( MSComm1.PortOpen = true ) and ( MSComm1.InBufferCount > 128 )  then
  begin
    memo1.text := MSComm1.Input;                                    // 將電子秤 print 按鈕的輸出資料放到 memo1
    MSComm1.InBufferCount := 0;                                     // 清除 MSComm 暫存

    //showmessage(Memo1.Lines.ValueFromIndex[2]);
    mWeight := trim( copy(Memo1.Lines.ValueFromIndex[2],12,20) );   // '123.4 g'

    if mWeight = '' then  abort;                                    // 訊號傳輸有問題, 防呆用
    dWeight := StrToFloat( LeftStr(mWeight, Length(mWeight)-1) );   // 123.4
    //showmessage(LeftStr(mWeight, Length(mWeight)-1));
    clyl := clzlsl.FieldByName('clyl').Value;
    mchemicals := clzlsl.FieldByName('ywpm').AsString;

    if ( ( clyl - 1.0 ) <= dWeight ) and (  ( clyl + 1.0 ) >= dWeight ) then
    begin

      // 可打印
      Panel3.Color := clWhite;
      mTotal := '?' + chr(13) + chr(10)  + cbx1.Text + chr(13) + chr(10) + mchemicals + chr(13) + chr(10) + mWeight + chr(13) + chr(10) + mTime + chr(13) + chr(10) + 'P1,1' + chr(13) + chr(10);
      MSComm1.Output := mTotal;
      {
      with Query1 do
      begin
        // okPrint + 1
        Active:=false;
        sql.Clear;
        sql.add('update pfsms');
        sql.add('set okprint = okprint + 1 ');
        sql.add('from pfsms');
        sql.add('where gsbh = ''' + Edit2.Text + ''' and pfbh = ''' + Edit1.Text + ''' and clbh = ''' + clzlsl.FieldByName('cldhz').Value + ''' and workDate = ''' + formatdatetime('yyyy/MM/dd', workDate) + '''' );
        ExecSQL;

        curString := clzlsl.FieldByName('cldhz').AsString;
        clzlsl.Active := false;
        clzlsl.Active := true;
        clzlsl.Locate('cldhz', curString, []);

        //  okPrint 須一致 , 否則無法變更配方
        Active:=false;
        sql.Clear;
        sql.add('select okprint from pfsms');
        sql.add('where gsbh = '''+ Edit2.Text + ''' and pfbh = ''' + Edit1.Text + ''' and workDate = ''' + formatdatetime('yyyy/MM/dd', workDate) + '''' );
        sql.add('group by okprint');
        Active:=true;

        if RecordCount = 1 then
          cbx1.Enabled := true
        else
          cbx1.Enabled := false;
      end;}
    end
    else
    begin
      //  錯誤警示 : 重量誤差過大或打印次數不對
      Panel3.Color := clRed;
      windows.beep(1500,500);
      windows.beep(1500,500);
      windows.beep(1500,500);
    end;
  end;

end;

procedure TRlist.Button2Click(Sender: TObject);
begin

if Button2.Caption = 'connect' then
begin
 // Timer1.Enabled := true;
  MSComm1.PortOpen := true;
  Button2.Caption := 'disconnect';
end
else
begin
 // Timer1.Enabled := false;
  MSComm1.PortOpen := false;
  Button2.Caption := 'connect';
end;
end;

procedure TRlist.Button1Click(Sender: TObject);
//var okPrint:integer;
begin
  dbgrid1.EditorMode:=true;
  clzlsl.Edit;
  dbgrid1.Fields[4].Value:= strtoint(cbx2.Text);
{
  if clzlsl.RecordCount > 0 then
  begin
    clzlsl.First;
    clzlsl.requestlive:=true;
    //clzlsl.cachedupdates:=true;
    clzlsl.Edit;
    while not clzlsl.Eof do
    begin
      clzlsl.FieldByName('okPrint').Value:=strtoint(cbx2.Text);
      clzlsl.Next;
    end;
  end;
}
end;

// 刪除所有資料
procedure TRlist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TRlist.FormDestroy(Sender: TObject);
begin
Rlist:=nil;
end;

end.
