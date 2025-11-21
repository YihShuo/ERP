unit Planoutput1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,funUnit,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids,comobj,OleServer,DateUtils,
  DBGrids, Menus, math;

type
  TPlanoutput = class(TForm)
    StringGrid1: TStringGrid;
    QDep: TQuery;
    QDepID: TStringField;
    QDepDepName: TStringField;
    QDepRecNum: TStringField;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Qold: TQuery;
    SaveDialog1: TSaveDialog;
    DepTot: TQuery;
    QTemp: TQuery;
    TSCBZCL: TQuery;
    UpSQL2: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
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
    ckbCSA: TCheckBox;
    Label1: TLabel;
    cbbGXLB: TComboBox;
    Button5: TButton;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure QDepAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AllDepname(i,j:integer;bdate:TDate;y,m,d:word);
    procedure OneDepname(i,j:integer;a:string;bdate:TDate;y,m,d:word);
    
  public
    { Public declarations }
  end;

var
  Planoutput: TPlanoutput;
  NDate,sdate,edate:Tdate;

implementation

uses main1, untClipboard;

{$R *.dfm}

procedure TPlanoutput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPlanoutput.Button1Click(Sender: TObject);
var a,b,c :word;
i,j,d:integer;
qty:real;
g:string;
begin
  a:=strtoint(CBX2.text);
  b:=strtoint(CBX3.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);
  //showmessage( formatdatetime('yyyy/MM/dd',sdate));
  d:=DaysBetween(sdate,edate);

  with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName,ID as RecNum  ');
    sql.add('from BDepartment where ProYN=1 ');
    sql.add('     and DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('     and GSBH='+''''+main.edit2.text+'''');
    if cbbGXLB.Text <> 'All' then
    begin
      sql.add('     and GXLB='+''''+cbbGXLB.Text+'''');
    end else
    begin
      sql.add('     and IsNull(GXLB,'''')<>'''' ');
    end;
    sql.add('order by ID ');
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
{
g:= CBX2.text+'/'+CBX3.text;
TSCBZCL.Active:=false;
TSCBZCL.Filtered:=false;
TSCBZCL.Filter:='BZDate2='+QuotedStr(g+'*');
TSCBZCL.Filter:='and GSBH='+QuotedStr(main.Edit2.text+'*');
TSCBZCL.Filtered:=true;
TSCBZCL.active:=true; }
  with TSCBZCL do
  begin
    active:=false;
    sql.clear;
    sql.add('select SCBZCL.*,DepName,sumline from SCBZCL ');
    sql.add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('where SCBZCL.BZDate>='+''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('      and SCBZCL.BZDate<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and SCBZCL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    if cbbGXLB.Text <> 'All' then
    begin
      sql.add('     and GXLB='+''''+cbbGXLB.Text+'''');
    end else
    begin
      sql.add('     and IsNull(GXLB,'''')<>'''' ');
    end;
    sql.add('order by SCBZCL.DepNo,SCBZCL.BZDate');
    active:=true;
  end;

  for i:=1 to stringgrid1.colCount-1 do      //清空
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
    sql.add('select  isnull(sum(SCBZCL.Qty),0) as Qty,SCBZCL.DepNo  from SCBZCL ');
    sql.add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('where  SCBZCL.BZDate >='+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add('       and SCBZCL.BZDate <='+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('       and SCBZCL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('       and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');
    if cbbGXLB.Text <> 'All' then
    begin
      sql.add('     and GXLB='+''''+cbbGXLB.Text+'''');
    end else
    begin
      sql.add('     and IsNull(GXLB,'''')<>'''' ');
    end;
    sql.add('group by SCBZCL.DepNo');
    active:=true;
    while not DepTot.eof do
    begin
      if QDep.locate('ID',fieldbyname('DepNo').asstring,[loCaseInsensitive]) then
      begin
        j:=strtoint(QDep.fieldbyname('RecNum').Value);
        stringgrid1.cells[d+2,j]:=fieldbyname('Qty').asstring;
      end;
      next;
    end;
  end;

  TSCBZCL.First;
  for i:=1 to TSCBZCL.RecordCount do
  begin
    decodedate(TSCBZCL.fieldbyname('BZDate').value,a,b,c);
    if QDep.locate('ID',TSCBZCL.fieldbyname('DepNo').asstring,[loCaseInsensitive]) then
    begin
      j:=strtoint(QDep.fieldbyname('RecNum').Value);
      StringGrid1.cells[c,j]:=TSCBZCL.fieldbyname('Qty').AsString;
    end;
    TSCBZCL.next;
  end;  
  with StringGrid1 do
  begin
    for i:=1 to colcount-1 do
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

procedure TPlanoutput.AllDepname(i,j:integer ;bdate:TDate ;y,m,d:word);
var j_list,i_list :TSTringlist;
    k :integer;
begin
  j_list:=TStringlist.Create;
  i_list:=TStringlist.Create;
  for j:=1 to stringgrid1.RowCount-2 do
  begin
    for i:=1 to stringgrid1.ColCount-2 do
    begin
      d:=i;
      bDate:=Encodedate(y,m,d);
      if TSCBZCL.Locate('DepName;BZDate2',vararrayof([stringGrid1.Cells[0,j],formatdatetime('yyyy/MM/dd',bDate)]),[]) then
      begin
        if stringGrid1.Cells[i,j] <> TSCBZCL.fieldbyname('Qty').AsString then
        begin
          j_list.Add(inttostr(j));
          i_list.Add(inttostr(i));
        end;
      end else if (stringGrid1.Cells[i,j] <> '') then
      begin
        j_list.Add(inttostr(j));
        i_list.Add(inttostr(i));
      end;
    end;
  end;

  for k:=0 to j_list.Count-1 do
  begin
    j:= strtoint(j_list.Strings[k]);
    i:= strtoint(i_list.Strings[k]);
    d:=i;
    bDate:=Encodedate(y,m,d);

    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select ID,sumline from BDepartment ');
      sql.add('where sumline = (select sumline from BDepartment where BDepartment.DepName ='+''''+stringGrid1.Cells[0,j]+''''+' and GSBH = '''+main.edit2.text+''')');
      active:=true;
    end;

    with TSCBZCL do
    begin
      active:=false;
      sql.clear;
      sql.add('select SCBZCL.*,DepName,sumline from SCBZCL ');
      sql.add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
      sql.add('where SCBZCL.BZDate>='+''''+formatdatetime('yyyy/MM/dd',bDate)+'''');
      sql.add('      and SCBZCL.BZDate<='+''''+formatdatetime('yyyy/MM/dd',bDate)+'''');
      sql.add('      and SCBZCL.GSBH='+''''+main.Edit2.Text+'''');
      sql.add('      and sumline='+''''+QTemp.fieldbyname('sumline').Value+'''');
      sql.add('order by SCBZCL.DepNo,SCBZCL.BZDate');
      active:=true;
    end;

    if TSCBZCL.Locate('DepNo;BZDate2',vararrayof([QTemp.FieldByName('ID').Value,formatdatetime('yyyy/MM/dd',bDate)]),[]) then
    begin
      if (((TSCBZCL.fieldbyname('BZDate').value>NDate) and (MonthofTheYear(TSCBZCL.fieldbyname('BZDate').value)<>MonthofTheYear(NDate))) or checkbox1.checked = false) then
      begin
        if stringGrid1.Cells[i,j]='' then
        begin
          Qtemp.First;
          while not Qtemp.Eof do
          begin
            if TSCBZCL.Locate('DepNo',QTemp.FieldByName('ID').Value,[]) then
            begin
              TSCBZCL.Edit;
              TSCBZCL.FieldByName('Qty').Value:=0;
              TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
              TSCBZCL.FieldByName('userid').Value:='Delete';
              TSCBZCL.FieldByName('USERDATE').Value:=NDate;
              UpSQl2.Apply(ukdelete);
            end;
            Qtemp.Next;
          end;
        end else
        begin
            if checkbox1.checked = false and(strtoint(TSCBZCL.FieldByName('Qty').Value) <> strtoint(stringGrid1.Cells[i,j])) then
          //if  strtoint(TSCBZCL.FieldByName('Qty').Value)<>strtoint(stringGrid1.Cells[i,j])  then
          begin
            while not TSCBZCL.Eof do
            begin
              TSCBZCL.Edit;
              TSCBZCL.FieldByName('Qty').Value:=strtoint(stringGrid1.Cells[i,j]);
              TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
              TSCBZCL.FieldByName('userid').Value:=main.edit1.Text;
              TSCBZCL.FieldByName('USERDATE').Value:=NDate;

              UpSQl2.Apply(ukmodify);
              TSCBZCL.Next;
            end;
          end;
        end;
      end else
      begin
        if checkbox1.checked and (TSCBZCL.FieldByName('Qty').AsString <> stringGrid1.Cells[i,j])  then
        begin
          showmessage(formatdatetime('yyyy/MM/dd',bDate)+' is same month ,can not modify.'+#13+'本月計劃不可調整');
          abort;
        end;
      end;
    end else
    begin
      if stringgrid1.Cells[i,j]<>'' then
      begin
        Qtemp.First;
        while not Qtemp.Eof do
        begin
          if not TSCBZCL.Locate('DepNo',QTemp.FieldByName('ID').Value,[]) then
          begin
            TSCBZCL.Insert;
            TSCBZCL.fieldbyname('DepNO').Value:=Qtemp.Fields[0].Value;
            TSCBZCL.FieldByName('BZDate').Value:=bDate;
            TSCBZCL.FieldByName('BZDate2').Value:=formatdatetime('yyyy/MM/dd',bDate);
            TSCBZCL.FieldByName('Qty').Value:=strtoint(stringGrid1.Cells[i,j]);
            TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
            TSCBZCL.FieldByName('userid').Value:=main.edit1.Text;
            TSCBZCL.FieldByName('USERDATE').Value:=NDate;
            TSCBZCL.FieldByName('YN').Value:='1';
            TSCBZCL.Post;
            UpSQL2.Apply(ukinsert);
          end;
          Qtemp.Next;
        end;
      end;
    end;
  end;
  j_list.Free;
  i_list.Free;
end;

procedure TPlanoutput.OneDepname(i,j:integer;a:string;bdate:TDate;y,m,d:word);
begin
  for j:=1 to QDep.RecordCount do
  begin
    if QDep.Locate('RecNum',inttostr(j),[]) then
    begin
      a:=QDep.fieldbyname('ID').AsString;
    end;

    for i:=1 to stringgrid1.ColCount-2 do
    begin
      d:=i;
      bDate:=Encodedate(y,m,d);
      if TSCBZCL.Locate('DepNo;BZDate2',vararrayof([a,formatdatetime('yyyy/MM/dd',bDate)]),[]) then
      begin
        if ((TSCBZCL.fieldbyname('BZDate').value>NDate) and (MonthofTheYear(TSCBZCL.fieldbyname('BZDate').value)<>MonthofTheYear(NDate))) then
        begin
          TSCBZCL.Edit;
          if stringGrid1.Cells[i,j]='' then
          begin
            TSCBZCL.FieldByName('Qty').Value:=0;
            TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
            TSCBZCL.FieldByName('userid').Value:='Delete';
            TSCBZCL.FieldByName('USERDATE').Value:=NDate;
            UpSQl2.Apply(ukdelete);
          end else
          begin
             if checkbox1.checked = false and(strtoint(TSCBZCL.FieldByName('Qty').Value) <> strtoint(stringGrid1.Cells[i,j])) then
            begin
              TSCBZCL.FieldByName('Qty').Value:=strtoint(stringGrid1.Cells[i,j]);
              TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
              TSCBZCL.FieldByName('userid').Value:=main.edit1.Text;
              TSCBZCL.FieldByName('USERDATE').Value:=NDate;
              UpSQl2.Apply(ukmodify);
            end;
          end;
        end else
        begin
          if  TSCBZCL.FieldByName('Qty').AsString <> stringGrid1.Cells[i,j] then
          begin
            showmessage(formatdatetime('yyyy/MM/dd',bDate)+' is same month ,can not modify.'+#13+'本月計劃不可調整');
            abort;
          end;
        end;
      end else
      begin
        if stringgrid1.cells[i,j]<>'' then
        begin
          TSCBZCL.Insert;
          TSCBZCL.fieldbyname('DepNO').Value:=a;
          TSCBZCL.FieldByName('BZDate').Value:=bDate;
          TSCBZCL.FieldByName('BZDate2').Value:=formatdatetime('yyyy/MM/dd',bDate);
          TSCBZCL.FieldByName('Qty').Value:=strtoint(stringGrid1.Cells[i,j]);
          TSCBZCL.FieldByName('GSBH').Value:=main.edit2.text;
          TSCBZCL.FieldByName('userid').Value:=main.edit1.Text;
          TSCBZCL.FieldByName('USERDATE').Value:=NDate;
          TSCBZCL.FieldByName('YN').Value:='1';
          TSCBZCL.Post;
          UpSQL2.Apply(ukinsert);
        end;
      end;
    end;
  end;
end;

procedure TPlanoutput.Button3Click(Sender: TObject);
var i,j:integer;
    a:string;
    bdate:TDate;
    y,m,d:word;
begin
  try
    y:=strtoint(CBX2.text);
    m:=strtoint(CBX3.text);
    if ckbCSA.Checked then
      AllDepname(i,j,bdate,y,m,d)
    else
      OneDepname(i,j,a,bdate,y,m,d);
    Button1Click(nil)  ;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TPlanoutput.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if  not (Key in ['0'..'9',#8,#46,#13]) then
  begin
    Key := #0;
  end else
  begin
    Button3.Enabled:=true;
    Button4.Enabled:=true;
  end;
end;

procedure TPlanoutput.Button2Click(Sender: TObject);
var a:string;
    eclApp,WorkBook:olevariant;
 // xlsFileName:string;
    i,j:integer;
begin
  if  TSCBZCL.active  then
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
      {  for   j:=1   to  stringgrid1.RowCount-1  do
            begin
              eclApp.Cells(j+3,1):=stringgrid1.cells[0,j];
            end;
        for i:=1 to 31 do
          begin
            eclApp.Cells(3,i+1):=stringgrid1.cells[i,0];
          end;   }
      for i:=1 to stringgrid1.RowCount do
      begin
        for j:=1 to stringgrid1.colcount do
        begin
          eclApp.Cells(i+3,j):=stringgrid1.cells[j-1,i-1];
          eclApp.Cells.item[i+3,j].font.size:='8';
        end;
      end;
      eclapp.columns.autofit;
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      //WorkBook.close;  }
      eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TPlanoutput.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
    i,e:integer;
begin
    decodedate(sdate,y,m,d);
    for i:=1 to 7 do
    begin
      if dayoftheweek(encodedate(y,m,i))=7 then
      begin
        e:=i
      end;
    end;

    if ACol<>0 then
    begin
      if (ACol-e)mod 7=0 then
      begin
        with   StringGrid1.Canvas   do
        begin
          Font.Color:=clRed;
        //  Font.Size:=8;
          Font.Style:=[fsbold,fsitalic];
          StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
         // TextOut(Rect.Left+2,   Rect.Top+3,   StringGrid1.Cells[ACol,   ARow]);
        end;
      end else
        StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
    end;
    //  else
    //     StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
end;

procedure TPlanoutput.FormDestroy(Sender: TObject);
begin
  Planoutput:=nil;
end;

procedure TPlanoutput.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,year(getdate()) as NYear,month(getdate()) as NMonth');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    //InitCombo Year/Month
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

    active:=false;
    sql.Clear;
    sql.add('select GXLB from BDepartment ');
    sql.add('where GSBH='+''''+ main.Edit2.Text +'''' + ' and ProYN=1 and IsNull(GXLB,'''')<>'''' group by GXLB ');
    active:=true;
    cbbGXLB.Items.Add('All');
    for i:=0 to RecordCount -1 do
    begin
      cbbGXLB.Items.Add(fieldbyname('GXLB').asstring);
      next;
    end;
    cbbGXLB.ItemIndex := 1;
  end;
  QTemp.active:=false;
  if ((main.edit1.Text ='328431') or (main.edit1.Text ='313761')  or (main.edit1.Text ='316503')) then checkbox1.Visible := true;
end;

procedure TPlanoutput.Excel1Click(Sender: TObject);
begin
  button2click(nil);
end;

procedure TPlanoutput.Button4Click(Sender: TObject);
begin
  button1click(nil);
end;

procedure TPlanoutput.Button5Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
           StringGrid1.cells[j+1,i+1]:=colList.Strings[j];
        end;
      end;
      colList.Free;
    end;
    rowList.Free;
    Button3.Enabled:=true;
    Button4.Enabled:=true;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end; 

end;

procedure TPlanoutput.QDepAfterOpen(DataSet: TDataSet);
begin
  Button5.Enabled:=True;
end;

end.


