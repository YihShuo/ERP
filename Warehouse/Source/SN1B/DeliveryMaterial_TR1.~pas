unit DeliveryMaterial_TR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DBTables, DB,
  Menus, Math;

type
  TDeliveryMaterial_TR = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    CQDHCombo: TComboBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpMas: TUpdateSQL;
    TempQry: TQuery;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    N2: TMenuItem;
    Set1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Set1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveryMaterial_TR: TDeliveryMaterial_TR;

implementation
  uses main1,FunUnit, ChemicalMaterial1;
{$R *.dfm}

procedure TDeliveryMaterial_TR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliveryMaterial_TR.FormDestroy(Sender: TObject);
begin
  DeliveryMaterial_TR:=nil;
end;

procedure TDeliveryMaterial_TR.Button1Click(Sender: TObject);
var i:integer;
begin
   //
   if Edit4.Text='' then exit;
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select * from DDZLTR where DDBH='''+Edit4.Text+''' ');
     Active:=true;
   end;
   //
   if TempQry.RecordCount>0 then
   begin
     with Query1 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select ZLZLS3.*');
       TempQry.First;
       for i:=0 to TempQry.RecordCount-1 do
       begin
         SQL.Add('       ,case when order'+inttostr(i+1)+'.ZLBH1='''+TempQry.FieldByName('DDBH1').AsString+''' then order'+inttostr(i+1)+'.TCLYL end as '''+TempQry.FieldByName('DDBH1').AsString+''' ');
         TempQry.Next;
       end;
       SQL.Add('from (');
       SQL.Add('Select * from (');
       SQL.Add('SELECT max(ZLZLS3.cldh) as cldh,max(ZLZLS3.DDBH) as DDBH,right(ZLZLS3.cldhz,10) as cldhz,DDZL.ZLBH1 as ZLBH1,Convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
       SQL.Add('CLZL.zwpm,CLZL.ywpm,CLZL.DWBH,DDZL.CQDH');
       SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
       SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND  DDZL.CQDH = ZLZLS3.CQDH');
       SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh');
       SQL.Add('where  DDZL.CQDH like '''+CQDHCombo.Text+'''');
       SQL.Add('and ZLZLS3.ZLBH1 = '''+Edit4.Text+''' ');
       if edit1.Text<>'' then
         sql.Add('and ZLZLS3.cldhz like ''%'+edit1.Text+'%'' ');
       if edit2.Text<>'' then
        sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
       if edit3.Text<>'' then
        sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
       SQL.Add('GROUP BY  ZLZLS3.cldhz ,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH ,CLZL.DWBH');
       SQL.Add(') ZLZLS3');
       SQL.Add('union all');
       SQL.Add('select Null as cldh,Null as DDBH,KCLLS.CLBH as cldhz,KCLLS.SCBH as ZLBH1,0 as TCLYL,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,KCLL.GSBH as CQDH');
       SQL.Add('from  KCLLS');
       SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
       SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
       SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
       SQL.Add('WHERE KCLL.GSBH like '''+CQDHCombo.Text+''' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1 ');
       SQL.Add('and KCLL.GSBH=ZLZLS3.CQDH)');
       SQL.Add('   and KCLLS.SCBH = '''+Edit4.Text+''' and KCLLS.CLBH like '''+edit1.Text+'%'' and KCLLS.Qty>0');
       SQL.Add('Group by  KCLLS.CLBH,KCLLS.SCBH,CLZL.ZWPM,CLZL.YWPM,KCLL.GSBH,CLZL.DWBH');
       SQL.Add(' ) ZLZLS3');
       //
       TempQry.First;
       for i:=0 to TempQry.RecordCount-1 do
       begin
         SQL.Add(' left join (');
         SQL.Add('    Select * from(');
         SQL.Add('	SELECT right(ZLZLS3.cldhz,10) as cldhz,ZLZLS3.ZLBH1 as ZLBH1,Convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,ZLZLS3.CQDH');
         SQL.Add('	FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
         SQL.Add('	where  ZLZLS3.CQDH like '''+CQDHCombo.Text+''' ');
         SQL.Add('	and ZLZLS3.ZLBH1 = '''+TempQry.FieldByName('DDBH1').AsString+''' and ZLZLS3.TCLYL>0');
         SQL.Add('	GROUP BY  ZLZLS3.cldhz , ZLZLS3.ZLBH1, ZLZLS3.CQDH ');
         SQL.Add('   ) ZLZLS3 ');
         SQL.Add(' ) order'+inttostr(i+1)+' on ZLZLS3.cldhz=order'+inttostr(i+1)+'.cldhz and ZLZLS3.CQDH=order'+inttostr(i+1)+'.CQDH ');
         TempQry.Next;
       end;
       SQL.Add('order by ZLZLS3.CQDH,ZLZLS3.ZLBH1,ZLZLS3.cldhz');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     //
     for i:=9 to Query1.FieldCount-1 do
     begin
       DBGrid1.Columns[i-2].Visible:=true;
       DBGrid1.Columns[i-2].Width:=80;
       DBGrid1.Columns[i-2].FieldName:=Query1.Fields[i].FieldName;
       DBGrid1.Columns[i-2].Title.Caption:='¥Î¶q|'+Query1.Fields[i].FieldName;
     end;
   end else
   begin
     Showmessage('Don hang = '+Edit4.Text+' khong co tach ra ');
   end;
   //
   TempQry.Active:=false;
end;

procedure TDeliveryMaterial_TR.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
  Set1.Enabled:=true;
end;

procedure TDeliveryMaterial_TR.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  Set1.Enabled:=false;
end;

procedure TDeliveryMaterial_TR.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var i:integer;
    TotalCLSL:double;
begin
  //
  TotalCLSL:=0;
  for i:=9 to Query1.FieldCount-1 do
  begin
    if Query1.Fields[i].IsNull=false then
      TotalCLSL:=TotalCLSL+Query1.Fields[i].AsFloat;
  end;
  //
  if  Format('%.2f',[TotalCLSL])<>Format('%.2f',[Query1.FieldByName('TCLYL').AsFloat])    then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
  //
end;
//
procedure TDeliveryMaterial_TR.Set1Click(Sender: TObject);
var i,j,count:integer;
    TCLYL,RemainQty,AvgQty:double;
begin
  if Query1.Active=true then
  begin
    count:=Query1.FieldCount-9;
    Query1.First;
    for i:=0 to Query1.RecordCount-1 do
    begin
      //
      TCLYL:=Query1.FieldByName('TCLYL').AsFloat;
      RemainQty:=TCLYL;
      AvgQty:=  RoundTo((TCLYL) /3,-2);
      Query1.Edit;
      for j:=9 to Query1.FieldCount-1 do
      begin
        if Query1.Fields[j].IsNull=true then
        Query1.Fields[j].AsFloat:=AvgQty;
        RemainQty:=RemainQty-Query1.Fields[j].AsFloat;
        //
        if j=Query1.FieldCount-1 then
        begin
          if RemainQty<>0 then
           Query1.Fields[j].Value:=Query1.Fields[j].AsFloat+RemainQty;
        end;
      end;
      Query1.Post;
      Query1.Next;
    end;
  end;
end;

procedure TDeliveryMaterial_TR.Save1Click(Sender: TObject);
var i,j:integer;
    Diff:double;
    Value,OldValue:double;
begin
  //
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
        case Query1.updatestatus of
          usmodified:
          begin
            //
            for j:=9 to Query1.FieldCount-1 do
            begin
              if Query1.Fields[j].Value<>Query1.Fields[j].OldValue then
              begin
                 //
                 if Query1.Fields[j].Value<>null then
                   Value:=Query1.Fields[j].Value
                 else
                   Value:=0;
                 if Query1.Fields[j].OldValue<>null  then
                   OldValue:=Query1.Fields[j].OldValue
                 else
                   OldValue:=0;
                 //
                 Diff:=strtofloat(FormatFloat('#,##0.00', (RoundTo(Value,-2)-RoundTo(OldValue,-2)) ));
                 if Diff<>0 then
                 begin
                   ChemicalMaterial.UpdateLIY_DD_ZLZLS3(Diff,Query1.FieldByName('CLDHZ').AsString,Query1.Fields[j].FieldName,Query1.FieldByName('CQDH').AsString)
                 end;
                 //
              end;
            end;
            //
          end;
       end;
       Query1.next;
    end;
    with Query1 do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
    Set1.Enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //
end;

procedure TDeliveryMaterial_TR.FormCreate(Sender: TObject);
begin
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select bgszl.GSDH from bgszl ');
    SQL.Add('inner join (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') bgszls on bgszls.DFL=bgszl.DFL ');
    SQL.Add('where SFL=''RB'' ');
    Active:=true;
    CQDHCombo.Clear;
    if RecordCount>0 then
    begin
      CQDHCombo.Items.add(Copy(FieldByName('GSDH').AsString,1,2)+'%');
      while Not TempQry.Eof do
      begin
        CQDHCombo.Items.add(FieldByName('GSDH').AsString);
        Next;
      end;
      CQDHCombo.ItemIndex:=0;
    end;
    Active:=false;
    //
  end;
end;

end.
