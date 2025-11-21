unit MonthCalendar1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls;


type
  TMonthCalendar = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Label3: TLabel;
    CBX1: TComboBox;
    Label4: TLabel;
    CBX2: TComboBox;
    Button2: TButton;
    Button3: TButton;
    SCRL: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Label1: TLabel;
    CBX3: TComboBox;
    Label2: TLabel;
    CBX4: TComboBox;
    Qtemp: TQuery;
    QDep: TQuery;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    cbbGXLB: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbbGXLBChange(Sender: TObject);
  private
    procedure SaveChecked();
    procedure SaveNotChecked();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthCalendar: TMonthCalendar;
  sdate,edate,Mdate,NDate:Tdate;
  a,b:string;

implementation

uses main1;

{$R *.dfm}

procedure TMonthCalendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if button2.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TMonthCalendar.Button1Click(Sender: TObject);
var i,j,weeks:integer;
begin
if (CBX1.text='') then
  begin
    showmessage('Pls select year.');
    abort;
  end;
if (CBX2.text='') then
  begin
    showmessage('Pls select year.');
    abort;
  end;
for i:=1 to stringgrid1.colcount do
  begin
    for j:=1 to stringgrid1.RowCount do
      begin
        stringgrid1.Cells[i,j]:='';
      end;
  end;
sdate:=EncodeDate(strtoint(CBX1.Text),strtoint(CBX2.Text),1);
edate:=endofthemonth(sdate);
if   weekofthemonth(sdate)>1  then
  begin
    if weekofthemonth(edate)=1 then
      begin
        i:=weekofthemonth(edate-7)+2;
      end
      else
        begin
          i:= weekofthemonth(edate)+1;
        end;
  end
  else
    begin
      if weekofthemonth(edate)=1 then
        begin
          i:=weekofthemonth(edate-7)+1;
        end
        else
          begin
            i:= weekofthemonth(edate);
          end;
    end;

with StringGrid1 do
  begin
    colcount:=8;
    rowcount:=i*2+1;
    for j:=1 to i do
      begin
        cells[0,j*2-1]:=inttostr(j);
        cells[0,j*2]:='Hour';
      end;
    for i:=1 to colcount-1 do
      begin
        for j:=1 to rowcount-1 do
          begin
            cells[i,j]:='';
          end;
      end;
    cells[1,0]:='Mon';
    cells[2,0]:='Tue';
    cells[3,0]:='Wen';
    cells[4,0]:='Thu';
    cells[5,0]:='Fri';
    cells[6,0]:='Sat';
    cells[7,0]:='Sun';
  end;
with SCRL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCRL.* from SCRL ');
    sql.add('left join BDepartment on BDepartment.ID=SCRL.DepNO ');
    sql.add('where SCYEAR='+''''+inttostr(strtoint(CBX1.Text))+'''');
    sql.add(' and   SCRL.SCMONTH='+''''+inttostr(strtoint(CBX2.Text))+'''');
    sql.add(' and SCRL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add(' and BDepartment.DepName ='+''''+CBX4.Text+'''');
    sql.add('order by SCRL.SCYEAR,SCRL.SCMONTH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
QDep.active:=false;
QDep.params[0].Value:=main.Edit2.Text;
QDep.params[1].Value:=CBX4.Text;
QDep.active:=true;
a:=QDep.fieldbyname('ID').value;
MDate:=sdate;
if SCRL.recordcount>0 then
  begin
    stringgrid1.FixedColor:=clBtnFace;
    while not (MDate>edate) do
      begin
        if  (weekofthemonth(sdate)>1) then
          begin
            if weekofthemonth(edate)=1 then
              begin
                if ((weekofthemonth(MDate)=weekofthemonth(sdate)) and (weekoftheyear(MDate)=weekoftheyear(sdate)))  then
                  begin
                    i:=1;
                   // i:=i*2-1;
                    stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                    if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                      begin
                        stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                      end;
                  end
                  else
                    begin
                      if ((weekofthemonth(MDate)=weekofthemonth(edate)) and (weekoftheyear(MDate)=weekoftheyear(edate)))  then
                        begin
                          i:=weekofthemonth(MDate-7)+2;
                          i:=i*2-1;
                          stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                          if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                            begin
                              stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                            end;
                        end
                        else
                          begin
                            i:=weekofthemonth(MDate)+1;
                            i:=i*2-1;
                            stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                            if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                              begin
                                stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                              end;
                          end;
                    end;
              end
              else
                begin
                  //if weekofthemonth(MDate)=weekofthemonth(sdate) then
                  if ((weekofthemonth(MDate)=weekofthemonth(sdate)) and (weekoftheyear(MDate)=weekoftheyear(sdate)))  then
                    begin
                      i:=1;
                      i:=i*2-1;
                      stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                      if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                        begin
                          stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                        end;
                    end
                    else
                      begin
                        i:=weekofthemonth(MDate)+1;
                        i:=i*2-1;
                        stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                        if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                          begin
                            stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                          end;
                      end;
                end;
          end
          else
          begin
            if weekofthemonth(edate)=1 then
              begin
                if ((weekofthemonth(MDate)=weekofthemonth(edate)) and (weekoftheyear(MDate)=weekoftheyear(edate)))  then
                  begin
                    i:=weekofthemonth(MDate-7)+1;
                    i:=i*2-1;
                    stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                    if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                      begin
                        stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                      end;
                  end
                  else
                    begin
                      i:=weekofthemonth(MDate);
                      i:=i*2-1;
                      stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                      if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                        begin
                          stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                        end;
                    end;
              end
              else
                begin
                  i:=weekofthemonth(MDate);
                  i:=i*2-1;
                  stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                  if SCRL.locate('SCYEAR;SCMONTH;SCDAY',vararrayof([yearof(Mdate),monthof(Mdate),dayof(MDate)]),[]) then
                    begin
                      stringgrid1.Cells[dayoftheweek(MDate),i+1]:=SCRL.fieldbyname('SCGS').asstring;
                    end;
                end;

          end ;
        MDate:=Mdate+1;
      end;
  end;
if SCRL.recordcount=0 then
    begin
      stringgrid1.fixedColor:=claqua;
      while not ( MDate>edate ) do
        begin
        if  (weekofthemonth(sdate)>1) then
          begin
            if weekofthemonth(edate)=1 then
              begin
                if ((weekofthemonth(MDate)=weekofthemonth(sdate)) and (weekoftheyear(MDate)=weekoftheyear(sdate))) then
                  begin
                    i:=1;
                    stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                  end
                  else
                    begin
                      if ((weekofthemonth(MDate)=weekofthemonth(edate)) and (weekoftheyear(MDate)=weekoftheyear(edate)))  then
                        begin
                          i:=weekofthemonth(MDate-7)+2;
                          i:=i*2-1;
                          stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                        end
                        else
                          begin
                            i:=weekofthemonth(MDate)+1;
                            i:=i*2-1;
                            stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                          end;
                    end;
              end
              else
                begin
                  if ((weekofthemonth(MDate)=weekofthemonth(sdate)) and (weekoftheyear(MDate)=weekoftheyear(sdate))) then
                    begin
                      i:=1;
                      i:=i*2-1;
                      stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                    end
                    else
                      begin
                        i:=weekofthemonth(MDate)+1;
                        i:=i*2-1;
                        stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                      end;
                end;
          end
          else
          begin
            if weekofthemonth(edate)=1 then
              begin
                if ((weekofthemonth(MDate)=weekofthemonth(edate)) and (weekoftheyear(MDate)=weekoftheyear(edate))) then
                  begin
                    i:=weekofthemonth(MDate-7)+1;
                    i:=i*2-1;
                    stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                  end
                  else
                    begin
                      i:=weekofthemonth(MDate);
                      i:=i*2-1;
                      stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                    end;
              end
              else
                begin
                  i:=weekofthemonth(MDate);
                  i:=i*2-1;
                  stringgrid1.Cells[dayoftheweek(MDate),i]:=inttostr(dayofthemonth(MDate));
                end;

          end ;
        if dayoftheweek(MDate)<>7 then
          begin
            stringgrid1.Cells[dayoftheweek(MDate),i+1]:=CBX3.text;
          end;
        MDate:=Mdate+1;
        end;
    end;
end;

procedure TMonthCalendar.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 if (ACol=7)  then
   begin
     with   StringGrid1.Canvas   do
       begin
         Font.Color:=clRed;
         Font.size:=14;
         StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-50, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
       end;
   end;
 if ARow in [2,4,6,8,10,12] then
   begin
     with   StringGrid1.Canvas   do
       begin
         if (ACol = 0) then
           Font.size:=16
         else
           Font.size:=18;
         Font.Color:=clLime;
         StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-30, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
       end;
   end;
end;

procedure TMonthCalendar.StringGrid1DblClick(Sender: TObject);
begin
if stringgrid1.row in [2,4,6,8,10,12] then
  begin
    if stringgrid1.cells[stringgrid1.col,stringgrid1.row-1]<>'' then
      begin
        if stringGrid1.Cells[stringGrid1.col,stringGrid1.row]='' then
          begin
            stringGrid1.Cells[stringGrid1.col,stringGrid1.row]:=CBX3.text;
          end
          else
            begin
              stringGrid1.Cells[stringGrid1.col,stringGrid1.row]:='' ;
            end;
      end;
  end;
Button2.Enabled:=true;
Button3.Enabled:=true;
end;

procedure TMonthCalendar.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#32 then
  StringGrid1dblclick(nil);
end;

procedure TMonthCalendar.Button3Click(Sender: TObject);
begin
  button1click(nil);
  button2.Enabled:=false;
  button3.Enabled:=false;
end;

procedure TMonthCalendar.SaveNotChecked();
var i,j:integer;
begin
  with stringgrid1 do
  begin
    b:= Qtemp.FieldByName('ID').Value;
    for i:=1 to ColCount do
    begin
      for j:=1 to RowCount do
      begin
        if j in [1,3,5,7,9,11] then
        begin
          if cells[i,j]<>'' then
          begin
            if cells[i,j+1]<>'' then
            begin
              //Qtemp.First;
              SCRL.First;
              if SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO',vararrayof([inttostr(yearof(edate)),inttostr(monthof(edate)),cells[i,j],b]),[]) then
              begin
                if encodedate(strtoint(SCRL.fieldbyname('SCYEAR').AsString),strtoint(SCRL.fieldbyname('SCMONTH').AsString),strtoint(SCRL.fieldbyname('SCDAY').AsString))>NDate then
                begin
                  SCRL.Edit;
                  SCRL.FieldByName('SCGS').Value:=strtofloat(cells[i,j+1]);
                  SCRL.FieldByName('USERDATE').Value:=date;
                  upsql1.Apply(ukmodify);
                end else
                begin
                  showmessage(SCRL.fieldbyname('SCYEAR').asstring+'/'+SCRL.fieldbyname('SCMONTH').asstring+'/'
                               +SCRL.fieldbyname('SCDAY').asstring+' >Now ,can not modify.');
                  abort;
                end;
              end else
              begin
                //showmessage(cells[i,j]);
                SCRL.Insert;
                SCRL.FieldByName('SCYEAR').Value:=inttostr(yearof(edate));
                SCRL.FieldByName('SCMONTH').Value:=inttostr(monthof(edate));
                SCRL.FieldByName('SCDAY').Value:=cells[i,j];
                SCRL.FieldByName('DepNo').Value:=b;
                SCRL.FieldByName('GSBH').Value:=main.Edit2.text;
                SCRL.FieldByName('SCGS').Value:=strtofloat(cells[i,j+1]);
                SCRL.FieldByName('USERDATE').Value:=date;
                SCRL.FieldByName('USERID').Value:=main.edit1.text;
                SCRL.FieldByName('YN').Value:='1';
                upsql1.Apply(ukinsert);
              end;
            end else
            begin
              if SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO',vararrayof([inttostr(yearof(edate)),inttostr(monthof(edate)),cells[i,j],b]),[]) then
              begin
                upsql1.Apply(ukdelete);
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  button2.Enabled:=false;
  button3.Enabled:=false;
end;

procedure TMonthCalendar.SaveChecked();
var i,j:integer;
    iRes:boolean;
begin
  with stringgrid1 do
  begin
    b:= Qtemp.FieldByName('ID').Value;
    for i:=1 to ColCount do
    begin
      for j:=1 to RowCount do
      begin
        if j in [1,3,5,7,9,11] then
          begin
            if cells[i,j]<>'' then
            begin
              if cells[i,j+1]<>'' then
              begin
                SCRL.First;
                if (SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO',vararrayof([inttostr(yearof(edate)),inttostr(monthof(edate)),cells[i,j],b]),[]))  then
                begin
                  if encodedate(strtoint(SCRL.fieldbyname('SCYEAR').AsString),strtoint(SCRL.fieldbyname('SCMONTH').AsString),strtoint(SCRL.fieldbyname('SCDAY').AsString))>NDate then
                  begin
                    if (SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO;SCGS',vararrayof([inttostr(yearof(edate)),inttostr(monthof(edate)),cells[i,j],b,cells[i,j+1]]),[]))  then
                    begin
                    end else
                    begin
                      QDep.First;
                      while not QDep.Eof do
                      begin
                        a:= QDep.FieldByName('ID').Value;
                        SCRL.Edit;
                        SCRL.FieldByName('SCGS').Value:=strtofloat(cells[i,j+1]);
                        SCRL.FieldByName('USERDATE').Value:=date;
                        with Qtemp do
                        begin
                          active:=false;
                          sql.clear;
                          sql.add('update SCRL ');
                          sql.add('set SCGS='+''''+SCRL.FieldByName('SCGS').AsString+''' ,USERDATE='+''''+SCRL.FieldByName('USERDATE').AsString+'''');
                          SQL.add('where SCyear='+''''+SCRL.fieldbyname('SCyear').Value+'''');
                          SQL.add('      and SCmonth='+''''+SCRL.fieldbyname('SCmonth').Value+'''');
                          SQL.add('      and SCDAY='+''''+SCRL.fieldbyname('SCDAY').Value+'''');
                          SQL.add('      and DEPNO='+''''+a+'''');
                          execsql;
                          Qtemp.Active:=false;
                        end;
                        QDep.Next;
                      end;
                    end;
                  end else
                  begin
                    showmessage(SCRL.fieldbyname('SCYEAR').asstring+'/'+SCRL.fieldbyname('SCMONTH').asstring+'/'
                                 +SCRL.fieldbyname('SCDAY').asstring+' >Now ,can not modify.');
                    abort;
                  end;
                end else
                if stringGrid1.Cells[i,j+1] <> '' then
                begin
                    QDep.First;
                    while not QDep.Eof do
                    begin
                      a:= QDep.FieldByName('ID').Value;
                      SCRL.Insert;
                      SCRL.FieldByName('SCYEAR').Value:=inttostr(yearof(edate));
                      SCRL.FieldByName('SCMONTH').Value:=inttostr(monthof(edate));
                      SCRL.FieldByName('SCDAY').Value:=cells[i,j];
                      SCRL.FieldByName('DepNo').Value:=a;
                      SCRL.FieldByName('GSBH').Value:=main.Edit2.text;
                      SCRL.FieldByName('SCGS').Value:=strtofloat(cells[i,j+1]);
                      SCRL.FieldByName('USERDATE').Value:=date;
                      SCRL.FieldByName('USERID').Value:=main.edit1.text;
                      SCRL.FieldByName('YN').Value:='1';
                      upsql1.Apply(ukinsert);
                      QDep.Next;
                    end;
                end;
              end else
              begin
                if SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO',vararrayof([inttostr(yearof(edate)),inttostr(monthof(edate)),cells[i,j],b]),[]) then
                begin
                  QDep.First;
                  while not QDep.Eof do
                  begin
                    a:= QDep.FieldByName('ID').Value;
                    with Qtemp do
                    begin
                      active:=false;
                      sql.clear;
                      sql.add('delete SCRL ');
                      SQL.add('where SCyear='+''''+SCRL.fieldbyname('SCyear').Value+'''');
                      SQL.add('      and SCmonth='+''''+SCRL.fieldbyname('SCmonth').Value+'''');
                      SQL.add('      and SCDAY='+''''+SCRL.fieldbyname('SCDAY').Value+'''');
                      SQL.add('      and DEPNO='+''''+a+'''');
                      execsql;
                      Qtemp.Active:=false;
                    end;
                    QDep.Next;
                  end;
                end;
              end;
            end;
        end;
      end;
    end;
  end;
  button2.Enabled:=false;
  button3.Enabled:=false;
end;

procedure TMonthCalendar.Button2Click(Sender: TObject);
begin
 with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and DepName ='+''''+CBX4.Text+'''');
    sql.add('order by ID');
    active:=true;
  end;
  if CheckBox1.Checked = true then
  begin
    SaveChecked();
  end else
  begin
    SaveNotChecked();
  end;
  Button1Click(nil) ;
end;

procedure TMonthCalendar.FormDestroy(Sender: TObject);
begin
MonthCalendar:=nil;
end;

procedure TMonthCalendar.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with Qtemp do
  begin
    //GXLB
    active:=false;
    sql.Clear;
    sql.add('select GXLB from BDepartment ');
    sql.add('where GSBH='+''''+ main.Edit2.Text +'''' + ' and ProYN=1 and IsNull(GXLB,'''')<>'''' group by GXLB order by GXLB ');
    active:=true;
    cbbGXLB.Items.Clear;
    for i:=0 to RecordCount -1 do
    begin
      cbbGXLB.Items.Add(fieldbyname('GXLB').asstring);
      next;
    end;
    cbbGXLB.ItemIndex := 0;
    //
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.clear;
    sql.add('select ID,DepName,ID as RecNum  ');
    sql.add('from BDepartment where ProYN=1 ');
    sql.add('and GSBH='+''''+main.edit2.text+'''');
    sql.add('and GXLB ='+''''+cbbGXLB.Text+'''');
    sql.add('order by ID ');
    active:=true;
    CBX4.items.clear;
    while not eof do
    begin
      CBX4.items.add(fieldbyname('DepName').value);
      next;
    end;
    CBX4.itemindex:=0;
    Active:=true;
    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX1.Items.Count-1 do
    begin
      if strtoint(CBX1.Items[i])=myYear then
      begin
        CBX1.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myMonth then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    active:=false;
  end;
end;

procedure TMonthCalendar.Button4Click(Sender: TObject);
var mdate:tdate;
begin
mdate:=strtodate('2006/01/25')   ;
while Mdate<(strtodate('2006/02/03')) do
  begin
    showmessage(inttostr(dayoftheweek(mdate) ));
    showmessage(datetostr(mdate) );   
    showmessage(inttostr(weekofthemonth(mdate) ));
    mdate:=mdate+1;
  end;
end;

procedure TMonthCalendar.cbbGXLBChange(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select ID,DepName,ID as RecNum  ');
    sql.add('from BDepartment where ProYN=1 ');
    sql.add('and GSBH='+''''+main.edit2.text+'''');
    sql.add('and GXLB ='+''''+cbbGXLB.Text+'''');
    sql.add('order by ID ');
    active:=true;
    CBX4.items.clear;
    while not eof do
      begin
        CBX4.items.add(fieldbyname('DepName').value);
        next;
      end;
    CBX4.itemindex:=0;
    Active:=true;
  end;
end;

end.
