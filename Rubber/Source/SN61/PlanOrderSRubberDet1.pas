unit PlanOrderSRubberDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh,  DBGridEhImpExp, ShellAPI,
  Menus;

type
  TPlanOrderSRubberDet = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowDetialData(OrderNo:string;GSBH:string);
    { Public declarations }
  end;

var
  PlanOrderSRubberDet: TPlanOrderSRubberDet;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TPlanOrderSRubberDet.ShowDetialData(OrderNo:string;GSBH:string);
var SubSQL1,SubSQL2,XieXing,SheHao,CLDH:string;
    i,j:integer;
    XHList:TStringlist;
begin
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
    SQL.Add('where 1=1 and SMDD.GXLB=''A'' and DDZL.GSBH='''+GSBH+''' ');
    sql.add('and SMDD.DDBH = '+''''+OrderNo+''+'''');
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
                SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)+';
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
              SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)+';
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
              SubSQL1:=SubSQL1+'IsNull(SMDDS.Qty,0)*IsNull(xxzlS1.'+XHList.Strings[j]+',0)+';
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
         SQL.Add('select SMDDS.DDBH,SMDD.PlanDate,SMDDS.XXCC,SMDDS.Qty,Sum(xxzlS1.G01) as ''A Part'' ,Sum(xxzlS1.G02) as ''B Part'' ');
         SQL.Add('       ,Sum(xxzlS1.G03) as ''C Part'' ,Sum(xxzlS1.G04) as ''D Part'',Sum(xxzlS1.G05) as ''E Part'',Sum(xxzlS1.G06) as ''F Part''  ');
         SQL.Add('       ,Sum(xxzlS1.G07) as ''G Part'' ,Sum(xxzlS1.G08) as ''H Part'',Sum(xxzlS1.G09) as ''I Part'',Sum(xxzlS1.G10) as ''J Part''  ');
         SQL.Add('       ,Sum(xxzlS1.G11) as ''K Part'' ,Sum(xxzlS1.G12) as ''L Part'',Sum(xxzlS1.G13) as ''M Part'',Sum(xxzlS1.G14) as ''N Part''  ');
         SQL.Add('       ,Sum(xxzlS1.G15) as ''O Part'','+SubSQL2);
         SQL.Add('');
         SQL.Add('from SMDD ');
         SQL.Add('inner join SMDDS on SMDDS.DDBH=SMDD.DDBH ');
         SQL.Add('inner join DDZL on DDZL.DDBH=SMDD.YSBH');
         SQL.Add('left join  '+main.LIY_DD+'.dbo.xxzlS1 xxzlS1 on xxzlS1.XieXing=DDZL.XieXing and xxzlS1.shehao=DDZL.shehao and xxzlS1.CQDH='''+main.Edit2.Text+''' and SMDDS.XXCC=xxzlS1.CC');
         SQL.Add('where 1=1 and SMDD.GXLB=''A'' and DDZL.GSBH='''+GSBH+''' ');
         sql.add('and SMDD.DDBH = '+''''+OrderNo+''+'''');
         SQL.Add('Group by SMDDS.DDBH,SMDDS.XXCC,SMDDS.Qty,DDZL.XieXing,DDZL.Shehao,SMDD.PlanDate');
         SQL.Add('Order by SMDDS.DDBH ');
         Active:=true;
       end;
       //
       DBGridEh1.Columns[0].Title.Caption:='訂單|Order';
       DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
       DBGridEh1.Columns[1].Title.Caption:='成型計畫日期|PlanDate';
       DBGridEh1.Columns[1].Width:=80;
       DBGridEh1.Columns[2].Title.Caption:='尺寸|Size';
       DBGridEh1.Columns[2].Width:=50;
       DBGridEh1.Columns[3].Title.Caption:='雙數|Pairs';
       DBGridEh1.Columns[3].Width:=50;
       DBGrideh1.Columns[3].Footer.ValueType:=fvtSum;
       for i:=4 to 18 do
       begin
         if  Query1.Fields[i].AsString='' then
           DBGridEh1.Columns[i].Visible:=false;
         DBGridEh1.Columns[i].Width:=50;
       end;
       for i:=19 to Query1.Fields.Count-1 do
       begin
         DBGridEh1.Columns[i].Title.Caption:='粗胚(G)|'+Query1.Fields[i].FieldName;
         DBGrideh1.Columns[i].Footer.ValueType:=fvtSum;
       end;
       //
   end else
   begin
     Query1.Active:=false;
     
   end;
  
end;

procedure TPlanOrderSRubberDet.FormDestroy(Sender: TObject);
begin
  PlanOrderSRubberDet:=nil;
end;

procedure TPlanOrderSRubberDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PlanOrderSRubberDet.Free;
end;

procedure TPlanOrderSRubberDet.Excel1Click(Sender: TObject);
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
