unit ArticlePPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fununit,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,COMOBJ, ExtCtrls;

type
  TArticlePPH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CBX4: TComboBox;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    Query1: TQuery;
    Query1DepName: TStringField;
    Query1RPlandate: TDateTimeField;
    Query1DDBH: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1BUYNO: TStringField;
    Query1Style: TStringField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    Query1DAOMH: TStringField;
    Query1DDBH_T: TStringField;
    Query1Qty: TIntegerField;
    Query1MTQty: TIntegerField;
    Query1XTMH: TStringField;
    Query1OKDate: TStringField;
    Query1DDGB: TStringField;
    Query1Xuong: TStringField;
    Query1LackQty: TStringField;
    KTemp: TQuery;
    DS1: TDataSource;
    Sum_Temp: TQuery;
    btnexcel2: TButton;
    procedure QueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);  
    procedure DTP1Change(Sender: TObject);
    procedure btnexcel2Click(Sender: TObject);
  private
     AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArticlePPH: TArticlePPH;

implementation

uses main1;

{$R *.dfm}

procedure TArticlePPH.QueryClick(Sender: TObject);
begin
   with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add(' select BDepartment.DepName,SMDD.RPlandate,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, ');
      SQL.Add(' SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH, ');
      SQL.Add('(case when DDZL.DDBH <> MAX(SMDD.DDBH) then ((''T''+MIN(right(SMDD.DDBH,3)))+''-''+(''T''+MAX(right(SMDD.DDBH,3)))) else ''T01'' end) as DDBH_T ');
      SQL.Add(' ,sum(SMDD.Qty) Qty,isnull(SCBZCL.Qty,0) MTQty ,XXZL.XTMH, ');
      SQL.Add(' CONVERT(varchar(2),MONTH(SMDD.OKDate)) +''/''+CONVERT(varchar(2),DAY(SMDD.OKDate)) as OKDate, ');
      SQL.Add(' DDZL.DDGB,BDepartment.Xuong,    ');
      SQL.Add(' case when (IsNull(SCBBS.Qty,0)-DDZL.Pairs)>=0 then ''OK'' else Convert(varchar,IsNull(SCBBS.Qty,0) -DDZL.Pairs) end as LackQty     ');
      SQL.Add(' from SMDD  ');
      SQL.Add(' left join DDZL on SMDD.YSBH=DDZL.DDBH  ');
      SQL.Add(' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
      SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
      SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.DepNo  ');
      SQL.Add(' left join (select convert(varchar,SCBZCL.BZDate,111) as BZDate,SCBZCL.DepNo,CEILING(SCBZCL.Qty)  as Qty from SCBZCL ');
      SQL.Add('          left join BDepartment on BDepartment.id=SCBZCL.depno ');
      SQL.Add('          where BZDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('          and SCBZCL.GSBH ='''+main.Edit2.Text+''' ');
      SQL.Add('          and BDepartment.depname like '''+Edit1.Text+'%'' ');
      SQL.Add('          ) SCBZCL on SCBZCL.BZDate=SMDD.RPlanDate and SCBZCL.DepNo=SMDD.DepNO ');
      SQL.Add(' Left join (  ');
      SQL.Add('    select SCBH,Sum(Qty) as Qty from SCBBS  ');
      SQL.Add('    left join DDZL on SCBBS.SCBH=DDZL.DDBH  ');
      SQL.Add('    where SCBBS.GXLB = '''+CBX4.Text+''' ');
      SQL.Add('                Group by SCBBS.SCBH  ');
      SQL.Add(' ) SCBBS on SCBBS.SCBH=DDZL.DDBH  ');
      SQL.Add(' where SMDD.RPlandate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add(' and SMDD.GXLB = '''+CBX4.Text+''' ');
      SQL.Add(' and BDepartment.depname like '''+Edit1.Text+'%'' ');
      SQL.Add(' group by BDepartment.DepName,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH,XXZL.XTMH,scbzcl.Qty, ');
      SQL.Add(' SMDD.RPlandate ,DDZL.DDGB,BDepartment.Xuong ,SMDD.OKDate, SCBBS.Qty ');
      SQL.Add(' order by BDepartment.DepName,SMDD.RPlandate ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
end;

procedure TArticlePPH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TArticlePPH.FormDestroy(Sender: TObject);
begin
   ArticlePPH:=nil;
end;

procedure TArticlePPH.FormCreate(Sender: TObject);
 var NDate:TDate;
    i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
    end;
    CBX4.ItemIndex:=1;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.date:=NDate;
    DTP3.date:=NDate;
  end;

end;

procedure TArticlePPH.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    SCDate_S,SCDate_E,Start,Ends: string;
    i,j,k,m,t:integer;
begin
     with Qtemp do
     begin
        active:=false;
        sql.Clear;
        sql.Add('  select DepName,convert(varchar,RPlandate,111) as RPlandate,count(distinct DDZL.DDBH) as Count_DDBH  ');
        sql.Add('  from SMDD ');
        sql.Add('  left join BDepartment on BDepartment.ID=SMDD.DepNo ');
        sql.Add('  left join DDZL on SMDD.YSBH=DDZL.DDBH ');
        sql.Add('  where 1=1 ');
        sql.Add('  and SMDD.RPlandate between ');
        sql.Add('  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') ');
        sql.Add('          and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
        sql.Add('  and BDepartment.depname like '''+Edit1.Text+'%'' ');
        sql.Add('  and SMDD.GXLB = '''+CBX4.Text+''' ');
        sql.Add('  and SMDD.GSBH ='''+main.Edit2.Text+''' ');
        sql.Add('  group by DepName,RPlandate ');
        sql.Add('  order by DepName,RPlandate ');
        active:=true;
     end;
     
     with Ktemp do
     begin
       active:=false;
       sql.Clear;
       sql.Add('  select DepName,count(distinct depname) as Count_Dep ');
       sql.Add('  from SMDD ');
       sql.Add('  left join BDepartment on BDepartment.ID=SMDD.DepNo ');
       sql.Add('  left join DDZL on SMDD.YSBH=DDZL.DDBH ');
       sql.Add('  where 1=1 ');
       sql.Add('  and SMDD.RPlandate between ');
       sql.Add('  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') ');
       sql.Add('          and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
       sql.Add('  and BDepartment.depname like '''+Edit1.Text+'%'' ');
       sql.Add('  and SMDD.GXLB = '''+CBX4.Text+''' ');
       sql.Add('  and SMDD.GSBH ='''+main.Edit2.Text+''' ');
       sql.Add('  group by DepName ');
       sql.Add('  order by DepName ');
       active:=true;
     end;

     with Sum_Temp do
     begin
       active:=false;
       sql.Clear;
       sql.Add('  select convert(varchar,RPlandate,111) as RPlandate,sum(SMDD.Qty) as Qty ');
       sql.Add('  from SMDD ');
       sql.Add('  left join BDepartment on BDepartment.ID=SMDD.DepNo ');
       sql.Add('  left join DDZL on SMDD.YSBH=DDZL.DDBH ');
       sql.Add('  where 1=1 ');
       sql.Add('  and SMDD.RPlandate between ');
       sql.Add('  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') ');
       sql.Add('          and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
       sql.Add('  and BDepartment.depname like '''+Edit1.Text+'%'' ');
       sql.Add('  and SMDD.DDBH like '''+Edit2.Text+'%'' ');
       sql.Add('  and SMDD.GXLB = '''+CBX4.Text+''' ');
       sql.Add('  and SMDD.GSBH ='''+main.Edit2.Text+''' ');
       sql.Add('  group by SMDD.RPlandate ');
       sql.Add('  order by SMDD.RPlandate ');
       active:=true;
      //funcobj.WriteErrorLog(sql.Text);
     end;
   //
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN611.xls'),Pchar(AppDir+'Additional\Plan_SN611.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN611.xls') then
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
            Query1.First;
            eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN611.xls');
            eclApp.Cells(1,1):='億春'+ edit1.Text +'天生產計劃表'+'('+Query1.FieldByName('xuong').AsString+')';
            eclApp.Cells(2,6):=Query1.FieldByName('xuong').AsString +'棟';
            eclApp.Cells.Cells.item[2,6].font.size:='25';
            eclApp.Cells(2,26):='日期:';
            eclApp.Cells(2,29):=FormatDateTime('YYYY/MM/DD',Date());
            eclApp.Cells.Cells.item[2,29].font.size:='15';
            //
            eclApp.Cells(4,1):= Ktemp.FieldByName('DepName').Value;
            k:= 11;
            for i:=2 to Ktemp.RecordCount do
            begin
               eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[10,31]].Copy;
               eclApp.Cells[k,1].Select;
               eclApp.ActiveSheet.Paste;
               Ktemp.Next;
               eclApp.Cells(k,1):= Ktemp.FieldByName('DepName').Value;
               k:=k+7;
            end;
            eclApp.Cells[k,1].Select;
            eclApp.Range[eclApp.Cells[k,2],eclApp.Cells[k,9]].merge;
            eclApp.Range[eclApp.Cells[k,12],eclApp.Cells[k,19]].merge;
            eclApp.Range[eclApp.Cells[k,22],eclApp.Cells[k,29]].merge;
            eclApp.Cells(K+1,2):='經 理 :';
            eclApp.Cells(K+1,22):='主管 ：';
            eclApp.Cells(K+1,26):='制表 :';
            for i:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[k,1],eclApp.cells[k,31]].borders[i].linestyle:=1;
            end;
            // Date
            eclApp.Cells(3,2):= formatdatetime('yyyy/MM/dd',DTP1.datetime);
            eclApp.Cells(3,12):= formatdatetime('yyyy/MM/dd',DTP1.datetime+1);
            eclApp.Cells(3,22):= formatdatetime('yyyy/MM/dd',DTP1.datetime+2);
            //
            Sum_Temp.First;
            for i:=0 to Sum_Temp.RecordCount-1 do
            begin
                if Sum_Temp.FieldByName('RPlandate').Value = eclApp.Cells[3,2].value  then
                begin
                  eclApp.Cells(k,2) := Sum_Temp.fieldbyname('Qty').AsString;
                  eclApp.Cells[k,2].HorizontalAlignment := -4108;
                  eclApp.Cells[k,2].Font.Color := clred;
                  eclApp.Cells.Cells.item[k,2].font.size:='15';
                end else
                if Sum_Temp.FieldByName('RPlandate').Value = eclApp.Cells[3,12].value  then
                begin
                  eclApp.Cells(k,12):= Sum_Temp.fieldbyname('Qty').AsString;
                  eclApp.Cells[k,12].HorizontalAlignment := -4108;
                  eclApp.Cells[k,12].Font.Color := clred;
                  eclApp.Cells.Cells.item[k,12].font.size:='15';
                end else
                if Sum_Temp.FieldByName('RPlandate').Value = eclApp.Cells[3,22].value  then
                begin
                  eclApp.Cells(k,22):= Sum_Temp.fieldbyname('Qty').AsString;
                  eclApp.Cells[k,22].HorizontalAlignment := -4108;
                  eclApp.Cells[k,22].Font.Color := clred;
                  eclApp.Cells.Cells.item[k,22].font.size:='15';
                end;
                Sum_Temp.Next;
            end;
            //
            t:=5;
            j:=3;
            i:=2;
            Ktemp.First;
            While not Ktemp.Eof do
            begin
              //insert
              if t>5 then
                j:=t;
              if strtoint(Qtemp.fieldbyname('Count_DDBH').AsString) >=5 then
              begin
                for m:=5 to  strtoint(Qtemp.fieldbyname('Count_DDBH').AsString) do
                begin
                  eclApp.ActiveSheet.Rows[j+3].Insert;
                end;
              end;
                //
               if Qtemp.fieldbyname('DepName').AsString <>'' then Start:= Qtemp.fieldbyname('DepName').AsString;
               While not Qtemp.Eof do
               begin
                    if Ends<>'' then Start:=Ends;
                       Ends:=Qtemp.fieldbyname('DepName').AsString;
                    if  Start = Ends then
                    begin
                        if t>=5 then
                        begin
                          j:=t;
                        end;
                        //Query1.First;
                        if Query1.fieldbyname('RPlandate').AsString <>'' then SCDate_S:= Query1.fieldbyname('RPlandate').AsString;
                        while not Query1.Eof do
                        begin
                             if SCDate_E<>'' then
                                SCDate_S:=SCDate_E;
                             SCDate_E:=Query1.fieldbyname('RPlandate').AsString;
                             if  (SCDate_S = SCDate_E ) and ( (Query1.fieldbyname('DepName').AsString) = (Qtemp.fieldbyname('DepName').AsString) )  then
                             begin
                                if Query1.RecordCount >0 then
                                begin
                                   if Query1.FieldByName('RPlandate').Value = formatdatetime('yyyy/MM/dd',DTP1.datetime)  then
                                   begin
                                       for i:=2 to Query1.FieldCount-6 do
                                       begin
                                          eclApp.Cells(j,i):=Query1.Fields[i].Value;
                                       end;
                                       eclApp.Cells(j-1,11):= Query1.fieldbyname('MTQty').AsString;
                                   end else
                                   if Query1.FieldByName('RPlandate').Value = formatdatetime('yyyy/MM/dd',DTP1.datetime+1)  then
                                   begin
                                      for i:=2 to Query1.FieldCount-6 do
                                      begin
                                         eclApp.Cells(j,i+10):=Query1.Fields[i].Value;
                                      end;
                                      eclApp.Cells(j-1,21):= Query1.fieldbyname('MTQty').AsString;
                                   end else
                                   if Query1.FieldByName('RPlandate').Value = formatdatetime('yyyy/MM/dd',DTP1.datetime+2)  then
                                   begin
                                       for i:=2 to Query1.FieldCount-6 do
                                       begin
                                          eclApp.Cells(j,i+20):=Query1.Fields[i].Value;
                                       end;
                                       eclApp.Cells(j-1,31):= Query1.fieldbyname('MTQty').AsString;
                                   end;
                                end;
                               inc(j);
                               Query1.Next;
                             end else
                                break;
                        end;
                        Qtemp.Next;
                    end else
                       break;
                end;
                Ktemp.Next;
                if m=0 then
                begin
                  t:=t+7+m;
                end else
                  t:=t+7+m-5;
            end;
            showmessage('Succeed');
            eclApp.Visible:=True;
          except
            on   F:Exception   do
              showmessage(F.Message);
          end;
        end;
   end;
end;

procedure TArticlePPH.DTP1Change(Sender: TObject);
begin
   DTP3.Date:= DTP1.Date ;
end;

procedure TArticlePPH.btnexcel2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,t,m:integer;
begin
     with Qtemp do
     begin
        active:=false;
        sql.Clear;
        sql.Add('  select DepName,count(distinct DDZL.DDBH) as Count_DDBH  ');
        sql.Add('  from SMDD ');
        sql.Add('  left join BDepartment on BDepartment.ID=SMDD.DepNo ');
        sql.Add('  left join DDZL on SMDD.YSBH=DDZL.DDBH ');
        sql.Add('  where 1=1 ');
        sql.Add('  and SMDD.RPlandate between ');
        sql.Add('  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') ');
        sql.Add('          and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
        sql.Add('  and BDepartment.depname like '''+Edit1.Text+'%'' ');
        sql.Add('  and SMDD.GXLB = '''+CBX4.Text+''' ');
        sql.Add('  and SMDD.GSBH ='''+main.Edit2.Text+''' ');
        sql.Add('  group by DepName,RPlandate ');
        sql.Add('  order by DepName,RPlandate ');
        active:=true;
     end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN611-2.xls'),Pchar(AppDir+'Additional\Plan_SN611-2.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN611-2.xls') then
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
            Query1.First;
            eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN611-2.xls');
            eclApp.Cells(1,1):=Query1.FieldByName('xuong').AsString +'棟';
            eclApp.Cells(2,3):=formatdatetime('yyyy/MM/dd',DTP1.datetime-1);
            eclApp.Cells(2,15):=FormatDateTime('YYYY/MM/DD',DTP1.datetime);
            eclApp.Cells(4,15):= formatdatetime('MM/dd',DTP1.datetime) + ' 7:30 -9:30';
            eclApp.Cells(5,15):= formatdatetime('MM/dd',DTP1.datetime) + ' 9:30 -11:30';
            eclApp.Cells(6,15):= formatdatetime('MM/dd',DTP1.datetime) + ' 12:30 -14:30';
            eclApp.Cells(7,15):= formatdatetime('MM/dd',DTP1.datetime) + ' 14:30 -16:30';
            eclApp.Cells(4,1):= 'LEAN' + COPY (Qtemp.fieldbyname('DepName').AsString,10,2);
            k:= 11;
            for i:=2 to Qtemp.RecordCount do
            begin
               eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[10,17]].Copy;
               eclApp.Cells[k,1].Select;
               eclApp.ActiveSheet.Paste;
               Qtemp.Next;
               eclApp.Cells(k,1):= 'LEAN' + COPY(Qtemp.fieldbyname('DepName').AsString,10,2);
               k:=k+7;
            end;
              i:=2;
              j:=4;
              t:=6;
            Qtemp.First;
            While not Qtemp.Eof do
            begin
                if strtoint(Qtemp.fieldbyname('Count_DDBH').AsString) >=6 then
                begin
                   for m:=7 to  strtoint(Qtemp.fieldbyname('Count_DDBH').AsString) do
                   begin
                    eclApp.ActiveSheet.Rows[j+5].Insert;
                   end;
                end;
                if t>=6 then
                begin
                  j:=t;
                end;
                while not Query1.Eof do
                begin
                  if  (Query1.fieldbyname('DepName').AsString) = (Qtemp.fieldbyname('DepName').AsString)   then
                  begin
                    for i:=2 to 8 do
                    begin
                      eclApp.Cells(j-2,i):=Query1.Fields[i].Value;
                    end;
                      eclApp.Cells(j-2,9):= Query1.fieldbyname('Qty').AsString;
                      eclApp.Cells(j-2,10):= Query1.fieldbyname('DDBH_T').AsString;
                      eclApp.Cells(j-2,12):= Query1.fieldbyname('XTMH').AsString;
                      inc(j);
                      Query1.Next;
                   end else
                   break;
                end;
                if strtoint(Qtemp.fieldbyname('Count_DDBH').AsString) <=6 then
                begin
                  t:=t+7;
                end else
                  t:=t+7+(strtoint(Qtemp.fieldbyname('Count_DDBH').AsString)-6);
                  Qtemp.Next;
            end;
            showmessage('Succeed');
            eclApp.Visible:=True;
          except
            on   F:Exception   do
              showmessage(F.Message);
          end;
        end;
   end;
end;

end.
