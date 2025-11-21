unit ActualWord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids,comobj,OleServer,DateUtils,
  DBGrids, Menus,FunUnit;
type
  TActualWord = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit1: TEdit;
    Button4: TButton;
    StringGrid1: TStringGrid;
    QDep: TQuery;
    QDepID: TStringField;
    QDepDepName: TStringField;
    QDepRecNum: TStringField;
    DepTot: TQuery;
    QTemp: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    RSCQ: TQuery;
    UpSQL2: TUpdateSQL;
    CoBoTime: TComboBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActualWord: TActualWord;
  NDate,sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TActualWord.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TActualWord.FormDestroy(Sender: TObject);
begin
  ActualWord:=Nil;
end;

procedure TActualWord.Button1Click(Sender: TObject);
var a,b,c :word;
  i,j,d:integer;
  qty:real;
begin
  a:=strtoint(CBX2.text);
  b:=strtoint(CBX3.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);
  d:=DaysBetween(sdate,edate);
  with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName,ID as RecNum  ');
    sql.add('from BDepartment  ');
    sql.Add('where 1=1 and ProYN=1');
    sql.add('and DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and BDepartment.GSBH='+''''+main.edit2.text+''' ');
    if ComboBox1.Text<>'All' then
    begin
      sql.add('and GXLB like '+''''+'%'+ComboBox1.Text+'%'+'''');
    end else
    begin
      sql.add('     and IsNull(GXLB,'''')<>'''' ');
    end;
    sql.Add('group by ID,DepName');
    sql.add('order by ID ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with StringGrid1 do
  begin
    colcount:=d+3;
    rowcount:=QDep.RecordCount+2;
    for i:=1 to d+1 do
    begin
        cells[i,0]:=inttostr(i);
        colwidths[i]:=45;
    end;
    colwidths[0]:=120;
    colwidths[d+1]:=65;
    cells[d+2,0]:='Total';
    QDep.First;
    QDep.cachedupdates:=true;
    QDep.RequestLive:=true;
    for j:=1 to QDep.RecordCount do
    begin
        QDep.Edit;
        QDep.FieldByName('RecNum').Value:=inttostr(j);
        cells[0,j]:=QDep.fieldbyname('DepName').asstring;
        QDep.next;
    end;
    cells[0,rowcount-1]:='Total';
  end;
  with RSCQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select CONVERT(varchar(10),RSDate,111) as RSDate,DepNo,CQQty,QJQty,SDGS,SJGS,ROQty,PQty,TsQty ');
    sql.add(',TreQty,BGS,RSCQ.USERID,RSCQ.USERDate, RSCQ.YN, CQQty1, USERID1, USERDATE1 ');
    sql.add('from RSCQ ');
    sql.add('left join BDepartment on BDepartment.ID=RSCQ.DepNo ');
    sql.add('where RSCQ.RSDate>='+''''+formatdatetime('yyyy/MM/dd ',sdate)+'''');
    sql.add('      and RSCQ.RSDate<='+''''+formatdatetime('yyyy/MM/dd ',edate)+'''');
    sql.add('      and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('order by RSCQ.DepNo,RSCQ.RSDate');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  for i:=1 to stringgrid1.colCount-1 do
  begin
    for j:=1 to stringgrid1.rowcount-1 do
    begin
      stringgrid1.cells[i,j]:=''
    end;
  end;

  with DepTot do
  begin
     active:=false;
     sql.clear;
     sql.add('select  isnull(sum(RSCQ.CQQty),0) as CQQty,isnull(sum(RSCQ.CQQty1),0) as CQQty1,RSCQ.DepNo   from RSCQ ');
     sql.add('left join BDepartment on BDepartment.ID=RSCQ.DepNo ');
     sql.add('where  RSCQ.RSDate >='+''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
     sql.add('       and RSCQ.RSDate <='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
     sql.add('       and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
     sql.add('       and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');
     sql.add('Group by RSCQ.DepNo ');
     active:=true;
     while not DepTot.eof do
     begin
       if QDep.locate('ID',fieldbyname('DepNo').asstring,[loCaseInsensitive]) then
       begin
         j:=strtoint(QDep.fieldbyname('RecNum').Value);
         if CoBoTime.ItemIndex=0 then
           stringgrid1.cells[d+2,j]:=trim(fieldbyname('CQQty').asstring);
         if CoBoTime.ItemIndex=1 then
           stringgrid1.cells[d+2,j]:=trim(fieldbyname('CQQty1').asstring);
       end;
       next;
     end;
  end;

  RSCQ.First;
  for i:=1 to RSCQ.RecordCount do
  begin
    decodedate(strtodatetime(RSCQ.fieldbyname('RSDate').Value),a,b,c);
    if QDep.locate('ID',RSCQ.fieldbyname('DepNo').asstring,[loCaseInsensitive]) then
      begin
        j:=strtoint(QDep.fieldbyname('RecNum').Value);
        if CoBoTime.ItemIndex=0 then
          StringGrid1.cells[c,j]:=RSCQ.fieldbyname('CQQty').AsString;
        if CoBoTime.ItemIndex=1 then
          StringGrid1.cells[c,j]:=RSCQ.fieldbyname('CQQty1').AsString;
      end;
    RSCQ.next;
  end;

  with StringGrid1 do
  begin
    for  i:=1 to colcount-1 do
      begin
        Qty:=0;
        for j:=1 to rowcount-2 do
          begin
            if Cells[i,j]='' then
            begin
                Qty:=Qty+0;
            end else
            begin
                  Qty:=Qty+strtofloat(Cells[i,j]);
            end;
          end;
        cells[i,j]:=floattostr(Qty);
      end;
  end;
  Button3.Enabled:=false;
  Button4.Enabled:=false;
end;

procedure TActualWord.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear, getdate() as NDate');
    active:=true;
    //CBX2.Items.Add('');
    NDate:=fieldbyname('NDate').Value;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myYear then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX3.Items.Count-1 do
    begin
      if strtoint(CBX3.Items[i])=myMonth then
      begin
        CBX3.ItemIndex:=i;
        break;
      end;
    end;
  end;
end;

procedure TActualWord.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if  not (Key in ['0'..'9',#8,#46,#13]) then
  begin
    Key := #0;
  end
  else
    begin
      Button3.Enabled:=true;
      Button4.Enabled:=true;
    end;
end;

procedure TActualWord.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
   i,Sunday:integer;
begin
    decodedate(sdate,y,m,d);
    for i:=1 to 7 do
    begin
      if dayoftheweek(encodedate(y,m,i))=7 then
      begin
        Sunday:=i
      end;
    end;
    if ACol<>0 then
    begin
      if (ACol-Sunday)mod 7=0 then
      begin
        with   StringGrid1.Canvas   do
        begin
          Font.Color:=clRed;
          Font.Style:=[fsbold,fsitalic];
          StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
        end;
      end else
          StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
    end;
end;

procedure TActualWord.Button3Click(Sender: TObject);
var i,j,k:integer;
    ID:string;
    y,m,d,hh,mm,ss,z:word;
    bdate:TDate;
    Date:TDatetime;
begin
  try
    y:=strtoint(CBX2.text);
    m:=strtoint(CBX3.text);
  for j:=1 to QDep.RecordCount do
  begin
    if QDep.Locate('RecNum',inttostr(j),[]) then
    begin
      ID:=QDep.fieldbyname('ID').AsString;
    end;
    for i:=1 to stringgrid1.ColCount-2 do
    begin
      d:=i;
      bDate:=Encodedate(y,m,d);
      if RSCQ.Locate('DepNo;RSDate',vararrayof([ID,formatdatetime('yyyy/MM/dd',bDate)]),[]) then
      begin
        if RSCQ.fieldbyname('RSDate').value = formatdatetime('yyyy/MM/dd',NDate) then
        begin
          RSCQ.Edit;
          if trim(stringGrid1.Cells[i,j])='' then
          begin
            if CoBoTime.ItemIndex=0 then
            begin
              RSCQ.FieldByName('CQQty').Value:=null;
              RSCQ.FieldByName('userid').Value:=null;
              RSCQ.FieldByName('USERDATE').Value:=null;
            end;
            if CoBoTime.ItemIndex=1 then
            begin
              RSCQ.FieldByName('CQQty1').Value:=null;
              RSCQ.FieldByName('userid1').Value:=null;
              RSCQ.FieldByName('USERDATE1').Value:=null;
            end;
            UpSQl2.Apply(ukmodify);
          end else
          begin
            //
            if CoBoTime.ItemIndex=0 then
              if  RSCQ.FieldByName('CQQty').Value<>strtoint(stringGrid1.Cells[i,j])  then
              begin
                RSCQ.FieldByName('CQQty').Value:=strtoint(stringGrid1.Cells[i,j]);
                RSCQ.FieldByName('USERID').Value:=main.edit1.Text;
                RSCQ.FieldByName('USERDATE').Value:=NDate;
              end;
            if CoBoTime.ItemIndex=1 then
              if  RSCQ.FieldByName('CQQty1').Value<>strtoint(stringGrid1.Cells[i,j])  then
              begin
                RSCQ.FieldByName('CQQty1').Value:=strtoint(stringGrid1.Cells[i,j]);
                RSCQ.FieldByName('USERID1').Value:=main.edit1.Text;
                RSCQ.FieldByName('USERDATE1').Value:=NDate;
              end;
            //
            UpSQl2.Apply(ukmodify);
          end;
        end else
        begin

          if  trim(stringGrid1.Cells[i,j])<>'' then
          begin
            if CoBoTime.ItemIndex=0 then
            begin
              if RSCQ.FieldByName('CQQty').Value<>strtoint(stringGrid1.Cells[i,j])  then
              begin
                showmessage(RSCQ.fieldbyname('RSDate').asstring+' <> Now ,can not modify.');
                abort;
              end;
            end else if CoBoTime.ItemIndex=1 then
            begin
              if RSCQ.FieldByName('CQQty1').Value<>strtoint(stringGrid1.Cells[i,j])  then
              begin
                showmessage(RSCQ.fieldbyname('RSDate').asstring+' <> Now ,can not modify.');
                abort;
              end;
            end;
          end;//=======
          
        end;
      end else
      if stringgrid1.cells[i,j]<>'' then
      begin
        if formatdatetime('yyyy/MM/dd',bDate)= formatdatetime('yyyy/MM/dd',NDate) then
        begin
          RSCQ.Insert;
          RSCQ.FieldByName('RSDate').Value:=formatdatetime('yyyy/MM/dd',bDate);
          RSCQ.fieldbyname('DepNO').Value:=ID;
          if CoBoTime.ItemIndex=0 then
          begin
            RSCQ.FieldByName('CQQty').Value:=strtoint(stringGrid1.Cells[i,j]);
            RSCQ.FieldByName('userid').Value:=main.edit1.Text;
            RSCQ.FieldByName('USERDATE').Value:=NDate;
          end;
          if CoBoTime.ItemIndex=1 then
          begin
            RSCQ.FieldByName('CQQty1').Value:=strtoint(stringGrid1.Cells[i,j]);
            RSCQ.FieldByName('userid1').Value:=main.edit1.Text;
            RSCQ.FieldByName('USERDATE1').Value:=NDate;
          end;
          RSCQ.FieldByName('QJQty').Value:= RSCQ.FieldByName('QJQty').Value;
          RSCQ.FieldByName('SDGS').Value:=  RSCQ.FieldByName('SDGS').Value;
          RSCQ.FieldByName('SJGS').Value:=  RSCQ.FieldByName('SJGS').Value;
          RSCQ.FieldByName('ROQty').Value:= RSCQ.FieldByName('ROQty').Value;
          RSCQ.FieldByName('PQty').Value:=  RSCQ.FieldByName('PQty').Value;
          RSCQ.FieldByName('TsQty').Value:= RSCQ.FieldByName('TsQty').Value;
          RSCQ.FieldByName('TreQty').Value:= RSCQ.FieldByName('TreQty').Value;
          RSCQ.FieldByName('BGS').Value:=  RSCQ.FieldByName('BGS').Value;
          RSCQ.FieldByName('YN').Value:='1';
          RSCQ.Post;
          UpSQL2.Apply(ukinsert);
        end else
        begin
          showmessage(formatdatetime('yyyy/MM/dd',bDate)+' <> Now ,can not modify.');
        end;
      end else
      begin

      end;
    end;
  end;
  //Button1Click(nil)  ;
  showmessage('Succeed.');
  except
    on E:Exception do
     showmessage('Have wrong.'+E.Message);
  end;
end;

procedure TActualWord.Button4Click(Sender: TObject);
begin
  button1click(nil);
  button2.Enabled:=false;
  button3.Enabled:=false;
end;

procedure TActualWord.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  RSCQ.active  then
  begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('沒有安裝Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
      for i:=1 to stringgrid1.RowCount do
      begin
        for j:=1 to stringgrid1.colcount do
        begin
          eclApp.Cells(i,j):=stringgrid1.cells[j-1,i-1];
          eclApp.Cells.item[i,j].font.size:='8';
        end;
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
