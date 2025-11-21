unit PlanOrderSRubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  DBGridEhImpExp, ShellAPI;

type
  TPlanOrderSRubber = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    PlanDate: TDateTimePicker;
    RYEdit1: TEdit;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    RYEdit2: TEdit;
    GSBHCombo: TComboBox;
    Label4: TLabel;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    CKPart: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanOrderSRubber: TPlanOrderSRubber;

implementation
  uses main1,PlanOrderSRubberDet1,FunUnit;
{$R *.dfm}

procedure TPlanOrderSRubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TPlanOrderSRubber.FormDestroy(Sender: TObject);
begin
   PlanOrderSRubber:=nil;
end;

procedure TPlanOrderSRubber.Button1Click(Sender: TObject);
var SubSQL1,SubSQL2,XieXing,SheHao,CLDH:string;
    i,j:integer;
    XHList:TStringlist;
begin
   if ( (CheckBox1.Checked=false) and (Length(RYEdit1.Text)<=7) ) then
   begin
     Showmessage('Please choice Input RY or Plan Date');
     exit;
   end;
   //
   with Qtemp do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select xxzlS.XieXing,xxzlS.SheHao,case when xxzlS.xh=''A'' then ''G01'' ');
    SQL.Add('            when xxzlS.xh=''B'' then ''G02'' ');
    SQL.Add('            when xxzlS.xh=''C'' then ''G03'' ');
    SQL.Add('            when xxzlS.xh=''D'' then ''G04'' ');
    SQL.Add('            when xxzlS.xh=''E'' then ''G05'' ');
    SQL.Add('            when xxzlS.xh=''F'' then ''G06'' ');
    SQL.Add('            when xxzlS.xh=''G'' then ''G07'' ');
    SQL.Add('            when xxzlS.xh=''H'' then ''G08'' ');
    SQL.Add('            when xxzlS.xh=''I'' then ''G09'' ');
    SQL.Add('            when xxzlS.xh=''J'' then ''G10'' ');
    SQL.Add('            when xxzlS.xh=''K'' then ''G11'' ');
    SQL.Add('            when xxzlS.xh=''L'' then ''G12'' ');
    SQL.Add('            when xxzlS.xh=''M'' then ''G13'' ');
    SQL.Add('            when xxzlS.xh=''N'' then ''G14'' ');
    SQL.Add('            when xxzlS.xh=''O'' then ''G15'' ');
    SQL.Add('       end as XH,xxzlS.cldh from DDZL');
    SQL.Add('inner join  '+main.LIY_DD+'.dbo.xxzlS xxzlS on xxzlS.XieXing=DDZL.XieXing and xxzlS.shehao=DDZL.shehao and xxzlS.CQDH='''+main.Edit2.Text+'''');
    SQL.Add('inner join SMDD on SMDD.YSBH=DDZL.DDBH ');
    SQL.Add('where 1=1 and SMDD.GXLB=''A'' and DDZL.GSBH='''+GSBHCombo.Text+''' ');
    if (RYEdit1.Text<>'') and (RYEdit2.Text='') then
        sql.add('and SMDD.DDBH like '+''''+RYEdit1.Text+'%'+'''');
    if (RYEdit1.Text<>'') and (RYEdit2.Text<>'') then
    begin
      sql.add('and SMDD.DDBH >= '+''''+RYEdit1.Text+'''');
      sql.add('and SMDD.DDBH <= '+''''+RYEdit2.Text+'''');
    end;
    if CheckBox1.Checked=true then
    begin
      SQL.Add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between   ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',PlanDate.Date) +''''+'and '''+formatdatetime('yyyy/MM/dd',PlanDate.Date)+''' ');
    end;
    SQL.Add(' and xxzlS.cldh<>''''  Group by xxzlS.XieXing,xxzlS.SheHao,xxzlS.xh,xxzlS.cldh');
    SQL.Add('order by xxzlS.cldh,xxzlS.XieXing,xxzlS.SheHao ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
   end;
   //
   if Qtemp.RecordCount>0  then
   begin
       //
       XieXing:='';
       SheHao:='';
       CLDH:='';
       SubSQL1:='';
       SubSQL2:='';
       XHList:=TStringlist.Create;
       for i:=0 to  Qtemp.RecordCount-1 do
       begin
         //
         if ((CLDH<>'') and (Qtemp.FieldByName('CLDH').AsString<>CLDH)) then
         begin

           if (length(SubSQL1)=0)  or ( ((XieXing<>'') and (SheHao<>''))  and  ((Qtemp.FieldByName('XieXing').AsString<>XieXing) or  (Qtemp.FieldByName('SheHao').AsString<>SheHao)) )  then
           begin
              SubSQL1:=SubSQL1+'case when (DDZL.XieXing='''+XieXing+''' and DDZL.SheHao='''+SheHao+''') then Sum(';
              for j:=0 to XHList.Count-1 do
              begin
                SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)/1000+';
              end;
              SubSQL1:=Copy(SubSQL1,1,length(SubSQL1)-1)+') else 0 end +';
              XHList.Clear;
           end;
           SubSQL2:=SubSQL2+'('+Copy(SubSQL1,1,length(SubSQL1)-1)+ ') as '''+CLDH+''', ';
           SubSQL1:='';
           CLDH:=Qtemp.FieldByName('CLDH').AsString;
           //
           XHList.Clear;
           XieXing:=Qtemp.FieldByName('XieXing').AsString;
           SheHao:=Qtemp.FieldByName('SheHao').AsString;
         end else
         begin
           CLDH:=Qtemp.FieldByName('CLDH').AsString;
         end;
         //
         if ( ((XieXing<>'') and (SheHao<>''))  and  ((Qtemp.FieldByName('XieXing').AsString<>XieXing) or  (Qtemp.FieldByName('SheHao').AsString<>SheHao)) )  then
         begin
            SubSQL1:=SubSQL1+'case when (DDZL.XieXing='''+XieXing+''' and DDZL.SheHao='''+SheHao+''') then Sum(';
            for j:=0 to XHList.Count-1 do
            begin
              SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)/1000+';
            end;
            SubSQL1:=Copy(SubSQL1,1,length(SubSQL1)-1)+') else 0  end +';
            //
            XHList.Clear;
            XHList.Add(Qtemp.FieldByName('XH').AsString);
            XieXing:=Qtemp.FieldByName('XieXing').AsString;
            SheHao:=Qtemp.FieldByName('SheHao').AsString;
         end else
         begin
           XHList.Add(Qtemp.FieldByName('XH').AsString);
           XieXing:=Qtemp.FieldByName('XieXing').AsString;
           SheHao:=Qtemp.FieldByName('SheHao').AsString;
         end;
         //
         if  i=Qtemp.RecordCount-1 then
         begin
            SubSQL1:='case when (DDZL.XieXing='''+XieXing+''' and DDZL.SheHao='''+SheHao+''') then Sum(';
            for j:=0 to XHList.Count-1 do
            begin
              SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)/1000+';
            end;
            SubSQL1:=Copy(SubSQL1,1,length(SubSQL1)-1)+') else 0 end +';
            SubSQL2:=SubSQL2+'('+Copy(SubSQL1,1,length(SubSQL1)-1)+ ') as '''+CLDH+''', ';
         end;
         //
         Qtemp.Next;
       end;
       XHList.Free;
       SubSQL2:=Copy(SubSQL2,1,length(SubSQL2)-2);
       //funcObj.WriteErrorLog(SubSQL2);
       //
       with  Query1 do
       begin
         Active:=false;
         SQl.Clear;
         SQL.Add('select SMDDS.DDBH,SMDD.PlanDate,Sum(SMDDS.Qty*xxzlS1.G01)/1000 as ''A Part'' ,Sum(SMDDS.Qty*xxzlS1.G02)/1000 as ''B Part''  ');
         SQL.Add('       ,Sum(SMDDS.Qty*xxzlS1.G03)/1000 as ''C Part'' ,Sum(SMDDS.Qty*xxzlS1.G04) as ''D Part'',Sum(SMDDS.Qty*xxzlS1.G05)/1000 as ''E Part'',Sum(SMDDS.Qty*xxzlS1.G06)/1000 as ''F Part''   ');
         SQL.Add('       ,Sum(SMDDS.Qty*xxzlS1.G07)/1000 as ''G Part'' ,Sum(SMDDS.Qty*xxzlS1.G08) as ''H Part'',Sum(SMDDS.Qty*xxzlS1.G09)/1000 as ''I Part'',Sum(SMDDS.Qty*xxzlS1.G10)/1000 as ''J Part''  ');
         SQL.Add('       ,Sum(SMDDS.Qty*xxzlS1.G11)/1000 as ''K Part'' ,Sum(SMDDS.Qty*xxzlS1.G12) as ''L Part'',Sum(SMDDS.Qty*xxzlS1.G13)/1000 as ''M Part'',Sum(SMDDS.Qty*xxzlS1.G14)/1000 as ''N Part''  ');
         SQL.Add('       ,Sum(SMDDS.Qty*xxzlS1.G15)/1000 as ''O Part'','+SubSQL2);
         SQL.Add('       ,( Sum(SMDDS.Qty*IsNull(xxzlS1.G01,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G02,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G03,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G04,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G05,0))');
         SQL.Add('       +Sum(SMDDS.Qty*IsNull(xxzlS1.G06,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G07,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G08,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G09,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G09,0)) ');
         SQL.Add('       +Sum(SMDDS.Qty*IsNull(xxzlS1.G11,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G12,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G13,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G14,0))+Sum(SMDDS.Qty*IsNull(xxzlS1.G15,0)) )/1000 as ''Total''  ');
         SQL.Add('');
         SQL.Add('from SMDD ');
         SQL.Add('inner join SMDDS on SMDDS.DDBH=SMDD.DDBH ');
         SQL.Add('inner join DDZL on DDZL.DDBH=SMDD.YSBH');
         SQL.Add('left join  '+main.LIY_DD+'.dbo.xxzlS1 xxzlS1 on xxzlS1.XieXing=DDZL.XieXing and xxzlS1.shehao=DDZL.shehao and xxzlS1.CQDH='''+main.Edit2.Text+''' and SMDDS.XXCC=xxzlS1.CC');
         SQL.Add('where 1=1 and SMDD.GXLB=''A'' and DDZL.GSBH='''+GSBHCombo.Text+''' ');
         if (RYEdit1.Text<>'') and (RYEdit2.Text='') then
              sql.add('and SMDD.DDBH like '+''''+RYEdit1.Text+'%'+'''');
         if (RYEdit1.Text<>'') and (RYEdit2.Text<>'') then
         begin
            sql.add('and SMDD.DDBH >= '+''''+RYEdit1.Text+'''');
            sql.add('and SMDD.DDBH <= '+''''+RYEdit2.Text+'''');
         end;
         if CheckBox1.Checked=true then
         begin
          SQL.Add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between   ');
          sql.add('             '''+formatdatetime('yyyy/MM/dd',PlanDate.Date) +''''+'and '''+formatdatetime('yyyy/MM/dd',PlanDate.Date)+''' ');
         end;
         SQL.Add('Group by SMDDS.DDBH,DDZL.XieXing,DDZL.Shehao,SMDD.PlanDate');
         SQL.Add('Order by SMDDS.DDBH ');
         //funcObj.WriteErrorLog(sql.Text);
         Active:=true;
       end;
       //
       DBGridEh1.Columns[0].Title.Caption:='訂單|Order';
       DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
       DBGridEh1.Columns[1].Title.Caption:='成型計畫日期|PlanDate';
       DBGridEh1.Columns[1].Width:=80;
       for i:=2 to 16 do
       begin
         if CKPart.Checked=false then
           DBGridEh1.Columns[i].Visible:=false;
         DBGridEh1.Columns[i].Width:=50;
       end;
       for i:=17 to Query1.Fields.Count-1 do
       begin
         DBGridEh1.Columns[i].Title.Caption:='粗胚用量(KG)|'+Query1.Fields[i].FieldName;
         DBGrideh1.Columns[i].Footer.ValueType:=fvtSum;
       end;
       //
   end else
   begin
     Query1.Active:=false;
     Showmessage('No data');
   end;
end;

procedure TPlanOrderSRubber.DBGridEh1EditButtonClick(Sender: TObject);
begin
   PlanOrderSRubberDet:=TPlanOrderSRubberDet.create(self);
   PlanOrderSRubberDet.show;
   PlanOrderSRubberDet.ShowDetialData(Query1.FieldByName('DDBH').AsString,GSBHCombo.Text);
end;

procedure TPlanOrderSRubber.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if Query1.Active=true then
  begin
    tdbgh := DBGridEh1;
    if (tdbgh is TDBGridEh) then
      if SaveDialog1.Execute then
      begin
        case SaveDialog1.FilterIndex of
          1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
          2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
          3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
          4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
          5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
        else
          ExpClass := nil; Ext := '';
        end;
        if ExpClass <> nil then
        begin
          if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
            SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
          SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
          if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
        end;
      end;
  end;
end;

end.
