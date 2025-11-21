unit Flexcode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;

type
  TFlexCode = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    Supplier: TTabSheet;
    Material: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    BB1: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    BB2: TBitBtn;
    DataSource1: TDataSource;
    Query1zsdh: TStringField;
    Query1zsdhflex: TStringField;
    Query1zsywjc: TStringField;
    Query1zsqm: TStringField;
    Query1zsjc: TStringField;
    Query1userid: TStringField;
    Query1userdate: TDateTimeField;
    tmpQry: TQuery;
    Query1mainzsdh: TStringField;
    Panel2: TPanel;
    Panel7: TPanel;
    bbb1: TBitBtn;
    bbb3: TBitBtn;
    bbb4: TBitBtn;
    bbb5: TBitBtn;
    bbb6: TBitBtn;
    bbb2: TBitBtn;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    Panel9: TPanel;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Query2cldh: TStringField;
    Query2ywpm: TStringField;
    Query2zwpm: TStringField;
    Query2userid: TStringField;
    Query2userdate: TDateTimeField;
    Query2maincldh: TStringField;
    Query2cldhflex: TStringField;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    TabSheet1: TTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    Btn1: TButton;
    FC: TQuery;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    OpenDialog: TOpenDialog;
    UpFC: TUpdateSQL;
    FCcldhflex: TStringField;
    FCcldhflexdes: TStringField;
    Btn2: TBitBtn;
    Btn3: TBitBtn;
    Btn6: TBitBtn;
    Btn4: TBitBtn;
    Btn5: TBitBtn;
    FCYN: TStringField;
    Btn7: TBitBtn;
    Edit8: TEdit;
    Edit9: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Query2cldhflexdes: TStringField;
    Query2ColorFlex: TStringField;
    btExcel_Mat: TBitBtn;
    btExcel_Sup: TBitBtn;
    btExcel_Flex: TBitBtn;
    Label10: TLabel;
    Edit10: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbb1Click(Sender: TObject);
    procedure bbb4Click(Sender: TObject);
    procedure bbb5Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Btn7Click(Sender: TObject);
    procedure btExcel_MatClick(Sender: TObject);
    procedure btExcel_SupClick(Sender: TObject);
    procedure btExcel_FlexClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure bbb6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlexCode: TFlexCode;

implementation

uses main1;

{$R *.dfm}

procedure TFlexCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFlexCode.FormDestroy(Sender: TObject);
begin
  Flexcode:=nil;
end;

procedure TFlexCode.Button1Click(Sender: TObject);
begin
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select zszl.zsdh,zszl_flex.zsdhflex,zszl.zsywjc,zszl.zsqm,zszl.zsjc,zszl_flex.userid,zszl_flex.userdate,zszl_flex.zsdh as mainzsdh from zszl');
        sql.add('left join zszl_flex on zszl_flex.zsdh=zszl.zsdh');
        sql.add('where zszl.zsywjc<>''X''');
        if checkbox1.Checked then
           sql.add('and (zszl_flex.zsdh is null or zszl_flex.zsdhflex='''') ');
        if edit1.text<>'' then
           sql.Add('and zszl.zsdh like '''+edit1.text+'%'+''' ');
        if edit2.text<>'' then
           sql.Add('and zszl.zsywjc like '''+edit2.text+'%'+'''');
        active:=true;
      end;
      bb4.Enabled:=true;
      btExcel_Sup.Enabled:=true;
    end;
end;

procedure TFlexCode.BB1Click(Sender: TObject);
begin
    panel6.Visible:=true;
end;

procedure TFlexCode.BB5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with tmpqry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  try
    query1.cachedupdates:=true;
    query1.requestlive:=true;
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
      usmodified:
         if  query1.FieldByName('mainzsdh').isnull then
            begin
                with tmpqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert zszl_flex (zsdh) values(');
                  sql.Add(' '''+query1.fieldbyname('zsdh').AsString+'''');
                  sql.Add(')');
                  execsql;
                end;
                query1.edit;
                query1.FieldByName('userID').Value:=main.edit1.text;
                query1.FieldByName('userdate').Value:=Ndate;
                UpdateSQL1.apply(ukmodify);
            end else
            begin
               query1.edit;
               query1.FieldByName('userID').Value:=main.edit1.text;
               query1.FieldByName('userdate').Value:=Ndate;
               UpdateSQL1.apply(ukmodify);
            end;
         end;
      query1.next;
    end;

    with query1 do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;


procedure TFlexCode.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bb4.Enabled:=false;
  bb5.enabled:=true;
  bb6.Enabled:=true;
end;

procedure TFlexCode.BB6Click(Sender: TObject);
begin
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.Active:=true;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TFlexCode.Button2Click(Sender: TObject);
begin
    if ((edit3.Text='') and (edit4.Text='') and (edit5.Text='') ) then
    begin
      showmessage ('Pls key in MatNo or MatName or Season');
      abort;
    end;
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select a.cldh,clzl_flex.cldhflex,a.ywpm,a.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex from clzl a');
      sql.add('left join clzl_flex on clzl_flex.cldh=a.cldh');
      sql.add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
      sql.add('where 1=1 ');
      sql.Add('and clzmlb=''N'' and (tyjh is NULL or tyjh=''N'')');
      if checkbox2.Checked then
         sql.add('and (clzl_flex.cldh is null or clzl_flex.cldhflex='''') ');
      if edit3.text<>'' then
         sql.Add('and a.cldh like '''+edit3.text+'%'+''' ');
      if edit4.text<>'' then
         sql.Add('and a.ywpm like '''+'%'+edit4.text+'%'+'''');
      if edit10.Text<>'' then
         sql.Add('and  clzl_flexs.cldhflex like '''+'%'+edit10.text+'%'+'''');
         //memo1.text:=sql.text;
      if (edit5.text<>'') or (edit6.text<>'') or (edit7.text<>'') then
      begin
      sql.add('and 1=2 ');
      sql.add('union ');
      sql.add('select a.cldh,clzl_flex.cldhflex,clzl.ywpm,clzl.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex from (');
      sql.add('select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.clbh as cldh,kfxxzl.khdh from ypzls');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('where kfxxzl.khdh=''036''');
      if edit7.text<>'' then
         sql.add('and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
         sql.add('and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
         sql.add('and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add('union');
      sql.add('select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,clzhzl.cldh1 as cldh,kfxxzl.khdh from ypzls');
      sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('where kfxxzl.khdh=''036''');
      if edit7.text<>'' then
         sql.add('and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
         sql.add('and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
         sql.add('and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add('union');
      sql.add('select devcode,article,xieming,clzhzl.cldh1 as cldh,khdh from (');
      sql.add('select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.clbh as cldh,kfxxzl.khdh from ypzls');
      sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('where kfxxzl.khdh=''036'' ');
      if edit7.text<>'' then
         sql.add('and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
         sql.add('and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
         sql.add('and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add(')clzhzl2');
      sql.add('inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');
      sql.add(')a');
      sql.add('left join clzl_flex on clzl_flex.cldh=a.cldh');
      sql.add('left join clzl on clzl.cldh=a.cldh');
      sql.add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
      sql.add('where 1=1');
      sql.Add('and clzmlb=''N'' and (tyjh is NULL or tyjh=''N'')');
      if checkbox2.Checked then
         sql.add('and (clzl_flex.cldh is null or clzl_flex.cldhflex='''') ');
      if edit3.text<>'' then
         sql.Add('and a.cldh like '''+edit3.text+'%'+''' ');
      if edit4.text<>'' then
         sql.Add('and clzl.ywpm like '''+'%'+edit4.text+'%'+'''');
      if edit10.Text<>'' then
         sql.Add('and  clzl_flexs.cldhflex like '''+'%'+edit10.text+'%'+'''');   
      sql.add('group  by a.cldh,clzl_flex.cldhflex,clzl.ywpm,clzl.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex');
      sql.add('order by a.cldh');
      end;
      //memo1.text:=sql.text;
      active:=true;
    end;
    bbb4.Enabled:=true;
    btExcel_Mat.Enabled:=true;
end;

procedure TFlexCode.bbb1Click(Sender: TObject);
begin
    panel8.Visible:=true;
end;

procedure TFlexCode.bbb4Click(Sender: TObject);
begin
  with query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bbb4.Enabled:=false;
  bbb5.enabled:=true;
  bbb6.Enabled:=true;
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;


procedure TFlexCode.bbb5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with tmpqry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  try
    query2.cachedupdates:=true;
    query2.requestlive:=true;
    query2.first;
    for i:=1 to query2.RecordCount do
    begin
      case query2.updatestatus of
      usmodified:
         if  query2.FieldByName('maincldh').isnull then
            begin
                with tmpqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert clzl_flex (cldh) values(');
                  sql.Add(' '''+query2.fieldbyname('cldh').AsString+'''');
                  sql.Add(')');
                  execsql;
                end;
                query2.edit;
                query2.FieldByName('userID').Value:=main.edit1.text;
                query2.FieldByName('userdate').Value:=Ndate;
                UpdateSQL2.apply(ukmodify);
            end else
            begin
               query2.edit;
               query2.FieldByName('userID').Value:=main.edit1.text;
               query2.FieldByName('userdate').Value:=Ndate;
               UpdateSQL2.apply(ukmodify);
            end;
         end;
      query2.next;
    end;

    with query2 do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
  bbb4.Enabled:=true;
  bbb5.Enabled:=false;
  bbb6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TFlexCode.Btn1Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  eof:string;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Flexcode,FlexcodeDes:TStringlist;
begin


    Flexcode:=TStringList.Create;
    FlexcodeDes:=TStringList.Create;

    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=1;
    flag:=true;
      while(flag=true)  do
       begin
         Flexcode.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         FlexcodeDes.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];

         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof='') then
            flag:=false;

       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with FC do
     begin
     cachedupdates:=true;
     requestlive:=true;
     FC.edit;
     FC.first;
    end;

    for j:=0 to n-2 do
     begin
         FC.insert;
         FC.FieldByName('cldhflex').value:=Flexcode[j];
         FC.FieldByName('cldhflexdes').value:=FlexcodeDes[j];
         FC.Post;
     end;
     FC.next;     
 end;
 btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
end;

procedure TFlexCode.Btn2Click(Sender: TObject);
begin
    btn1.Enabled:=true;
    btn2.Enabled:=true;
    btn3.Enabled:=true;
    btn4.Enabled:=false;
    btn5.Enabled:=false;
    with FC do
    begin
         active:=false;
         sql.Clear;
         sql.add('select cldhflex,cldhflexdes,'''' YN from clzl_flexs where 1=1');
         if edit8.text<>'' then
            sql.add('and cldhflex like '''+'%'+edit8.text+'%'+''' ');
         if edit9.text<>'' then
            sql.add('and cldhflexdes like '''+'%'+edit9.text+'%'+''' ');
         active:=true;
    end;
    btExcel_Flex.Enabled:=true;
end;

procedure TFlexCode.Btn3Click(Sender: TObject);
begin
  btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
  btn6.Enabled:=true;
  btn7.Enabled:=true;
  with FC do
  begin
    cachedupdates:=true;
    requestlive:=true;
    FC.edit;
  end;
end;

procedure TFlexCode.Btn4Click(Sender: TObject);
var
 i:integer;

begin
  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;
  btn7.Enabled:=false;  
  try
    fc.cachedupdates:=true;
    fc.requestlive:=true;
    fc.first;
    for i:=1 to fc.RecordCount do
    begin
      case fc.updatestatus of
      usinserted:
           upFC.apply(ukinsert);
      usmodified:
       begin
         if FC.fieldbyname('YN').value='0' then
         begin
            upFC.apply(ukdelete);
         end else
         begin
            upFC.apply(ukmodify);
          end;
       end;
      end;
      fc.next;
    end;


    with fc do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;

    edit1.text:='';
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;

procedure TFlexCode.Btn5Click(Sender: TObject);
begin
  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;
  btn7.Enabled:=false;
end;

procedure TFlexCode.Btn6Click(Sender: TObject);
begin
      FC.requestlive:=true;
      FC.cachedupdates:=true;
      FC.Edit;
      FC.fieldbyname('YN').Value:='0';
end;

procedure TFlexCode.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if FC.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TFlexCode.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if FC.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TFlexCode.Btn7Click(Sender: TObject);
begin
  with FC do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
end;

procedure TFlexCode.btExcel_MatClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query2.active  then
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
        for   i:=0   to   Query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
          end;

        Query2.First;
        j:=2;
        while   not   Query2.Eof   do
          begin
            for   i:=0   to  Query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
            end;
          Query2.Next;
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

procedure TFlexCode.btExcel_SupClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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

procedure TFlexCode.btExcel_FlexClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  FC.active  then
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
        for   i:=0   to   FC.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=FC.fields[i].FieldName;
          end;

        FC.First;
        j:=2;
        while   not   FC.Eof   do
          begin
            for   i:=0   to  FC.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=FC.Fields[i].Value;
            end;
          FC.Next;
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

procedure TFlexCode.DBGridEh2EditButtonClick(Sender: TObject);
var Style:String;

begin
  if (DBGridEh2.SelectedField.FieldName='cldhflex') then
  begin
    if DBGridEh2.SelectedField.FieldName='cldhflex' then Style:=inputbox('Please Input Flex Code','FlexCode:','');
    if Style<>'' then
    begin
      with FlexCode.Query2 do
      begin
        while not Eof do
        begin
          Edit;
            if DBGridEh2.SelectedField.FieldName='cldhflex' then FieldByName('cldhflex').Value:=Style;
          Next;
      end;
    end;
  end;
 end;

end;

procedure TFlexCode.bbb6Click(Sender: TObject);
begin
  query2.active:=false;
  query2.cachedupdates:=false;
  query2.requestlive:=false;
  query2.Active:=true;
  bbb4.Enabled:=true;
  bbb5.Enabled:=false;
  bbb6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
end;

end.
