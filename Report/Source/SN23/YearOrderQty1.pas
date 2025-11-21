unit YearOrderQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, comobj;

type
  TYearOrderQty = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    temp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YearOrderQty: TYearOrderQty;

implementation

{$R *.dfm}

procedure TYearOrderQty.Button1Click(Sender: TObject);
var a,b :integer;
begin
    a:=strtoint(combobox1.text);
    b:=strtoint(combobox2.text);
    with query1 do
      begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select  * from (');
          SQL.Add('select  ''外銷'' as Type,'+inttostr(a)+' as Year,');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
          SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+''' and left(ddzl.ddbh,1)=''Y''');
          SQL.Add('union');
          SQL.Add('select  ''內銷'' as Type,'+inttostr(a)+' as Year,');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
          SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+'''  and left(ddzl.ddbh,2)=''ZS''');
          SQL.Add('union');
          SQL.Add('select  ''所有'' as Type,'+inttostr(a)+' as Year,');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
          SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
          SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+''' ');
          while(a<>B) do
          begin
             a:=a+1;
             SQL.Add('union');
             SQL.Add('select  ''外銷'' as Type,'+inttostr(a)+' as Year,');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
             SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+''' and left(ddzl.ddbh,1)=''Y''');
             SQL.Add('union');
             SQL.Add('select  ''內銷'' as Type,'+inttostr(a)+' as Year,');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
             SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+'''  and left(ddzl.ddbh,2)=''ZS''');
             SQL.Add('union');
             SQL.Add('select  ''所有'' as Type,'+inttostr(a)+' as Year,');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''1'' then pairs else null end),0) as ''January'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''2'' then pairs else null end),0) as ''February'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''3'' then pairs else null end),0) as ''March'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''4'' then pairs else null end),0) as ''April'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''5'' then pairs else null end),0) as ''May'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''6'' then pairs else null end),0) as ''June'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''7'' then pairs else null end),0) as ''July'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''8'' then pairs else null end),0) as ''Auguest'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''9'' then pairs else null end),0) as ''Semtember'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''10'' then pairs else null end),0) as ''October'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''11'' then pairs else null end),0) as ''November'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)=''12'' then pairs else null end),0) as ''December'',');
             SQL.Add('isnull(sum(case when Month(ShipDate)<>''13'' then pairs else null end),0) as ''Total''');
             SQL.Add('from ddzl where  khbh=''036'' and Year(shipdate)='''+inttostr(a)+''' ');
          end;
          SQL.Add(') alldata order by year');
          Active:=true;
      end;


end;

procedure TYearOrderQty.FormCreate(Sender: TObject);
var a,b:integer;
   // b:string;
begin
    a:=12;
    with temp do
      begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select year(GETDATE())-7 as year ');
          Active:=true;
      end;
      b:=temp.fieldbyname('year').asinteger;
      while a<>0 do
      begin
        combobox1.items.add(inttostr(b));
        combobox2.items.add(inttostr(b));
        b:=b+1;
        a:=a-1;
      end;
      combobox1.ItemIndex:=0;
      combobox2.ItemIndex:=0;
end;

procedure TYearOrderQty.ComboBox1Change(Sender: TObject);
var a,b:integer;
begin
    a:=5;
      b:=strtoint(combobox1.text);
      while a<>0 do
      begin
        combobox2.items.add(inttostr(b));
        b:=b+1;
        a:=a-1;
      end;
end;

procedure TYearOrderQty.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked then
     memo1.Visible:=true
   else
     memo1.Visible:=false;
end;

procedure TYearOrderQty.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (query1.FieldByName('January').value>1000000) then
  begin
     if (DataCol=2) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('February').value>1000000) then
  begin
     if (DataCol=3) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('March').value>1000000) then
  begin
     if (DataCol=4) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('April').value>1000000) then
  begin
     if (DataCol=5) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('May').value>1000000) then
  begin
     if (DataCol=6) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('June').value>1000000) then
  begin
     if (DataCol=7) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('July').value>1000000) then
  begin
     if (DataCol=8) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('Auguest').value>1000000) then
  begin
     if (DataCol=9) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('Semtember').value>1000000) then
  begin
     if (DataCol=10) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('October').value>1000000) then
  begin
     if (DataCol=11) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('November').value>1000000) then
  begin
     if (DataCol=12) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (query1.FieldByName('December').value>1000000) then
  begin
     if (DataCol=13) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
end;

procedure TYearOrderQty.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
                if  query1.fields[i].FieldName<>'Type' then
                begin
                if (query1.Fields[i].Value>1000000) and (query1.fields[i].FieldName<>'Total') then
                   eclApp.Cells[j,i+1].Interior.Color:=$00B3FFFF;
                end;
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
procedure TYearOrderQty.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=50;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='類型|Type';
     columns[1].Width:=50;
     columns[1].title.titlebutton:=true;
     columns[1].title.caption:='年份|Year';
     columns[2].Width:=70;
     columns[2].title.titlebutton:=true;
     columns[2].title.caption:='1月|January';
     columns[3].Width:=80;
     columns[3].title.caption:='2月|February';
     columns[4].Width:=80;
     columns[4].title.caption:='3月|March';
     columns[5].Width:=80;
     columns[5].title.caption:='4月|April';
     columns[6].Width:=80;
     columns[6].title.caption:='5月|May';
     columns[7].Width:=80;
     columns[7].title.caption:='6月|June';
     columns[8].Width:=80;
     columns[8].title.caption:='7月|July';
     columns[9].Width:=80;
     columns[9].title.caption:='8月|Auguest';
     columns[10].Width:=80;
     columns[10].title.caption:='9月|Semtember';
     columns[11].Width:=80;
     columns[11].title.caption:='10月|October';
     columns[12].Width:=80;
     columns[12].title.caption:='11月|November';
     columns[13].Width:=80;
     columns[13].title.caption:='12月|December';
     columns[query1.FieldCount-1].Width:=80;
     Tfloatfield(query1.Fields[query1.FieldCount-1]).displayformat:='##,#0' ;
     columns[query1.FieldCount-1].font.style:=[fsbold];
     columns[query1.FieldCount-1].title.caption:='合計|Total';

   end;

end;

procedure TYearOrderQty.FormDestroy(Sender: TObject);
begin
  YearOrderQty:=nil;
end;

procedure TYearOrderQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

end.
