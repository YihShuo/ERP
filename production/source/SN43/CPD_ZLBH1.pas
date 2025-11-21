unit CPD_ZLBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TCPD_ZLBH = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    ZLBHEdit: TEdit;
    Button1: TButton;
    GCBWBHEdit: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    YWSMEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1GCBWBH: TStringField;
    Query1ywsm: TStringField;
    Query1zwsm: TStringField;
    Query1Pairs: TIntegerField;
    Query1TmpQty: TIntegerField;
    Query1OkQty: TIntegerField;
    Query1PlanDate: TDateTimeField;
    Query1RPlanDate: TDateTimeField;
    Query1Levels: TStringField;
    Query1PDays: TIntegerField;
    Query1Qty1Day: TFloatField;
    Query1ADate: TDateTimeField;
    PlanDateCK: TCheckBox;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    TmpQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CPD_ZLBH: TCPD_ZLBH;

implementation
  uses main1, CutProcessDispatch1, FunUnit;
{$R *.dfm}

procedure TCPD_ZLBH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCPD_ZLBH.FormDestroy(Sender: TObject);
begin
  CPD_ZLBH := nil;
end;

procedure TCPD_ZLBH.Button1Click(Sender: TObject);
var
  where_SubSQL: String;
begin
   where_SubSQL := 'SELECT ZLBH FROM SCZLDate, BDepartment WHERE SCZLDate.Assemble = BDepartment.ID AND SCZLDate.GSBH = ''' + main.Edit2.Text + ''' AND SCZLDate.ZLBH LIKE ''' + ZLBHEdit.Text + '%''';
   if (PlanDateCK.Checked) then
     where_SubSQL := where_SubSQL + ' AND CONVERT(SmallDateTime, CONVERT(VarChar, SCZLDate.ADate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''';

   with Query1 do
   begin
     Active := false;
     SQL.Clear;
     SQL.Add('SELECT ZL_GC.ZLBH, ZL_GC.GCBWBH, ZL_GC.ywsm, ZL_GC.zwsm, ZL_GC.Pairs, ZL_GC.TmpQty, ZL_GC.OkQty, DATEADD(DAY, -1*PDays, CONVERT(SmallDateTime, SCZLDate.ADate)) AS PlanDate,');
     SQL.Add('CONVERT(SmallDateTime, ZL_GC.RPlanDate) AS RPlanDate, ZL_GC.Levels, ZL_GC.PDays, ZL_GC.Qty1Day, SCZLDate.ADate FROM (');
     SQL.Add('  SELECT ZL_GC.ZLBH, ZL_GC.GCBWBH, KT_SOPCutS_GCBWD.ywsm, KT_SOPCutS_GCBWD.zwsm, SUM(ZL_GCAll.Qty) AS Pairs, IsNull(GC.TmpQty, 0) AS TmpQty, IsNull(GC.OkQty, 0) AS OkQty,');
     SQL.Add('  KT_SOPCutS_GCBWD.Qty1Day, CONVERT(VarChar, GC.RPlanDate, 111) AS  RPlanDate, ZL_GC.PDays, ZL_GC.levels FROM CutDispatchZL_GC AS ZL_GC');
     SQL.Add('  LEFT JOIN (');
     SQL.Add('    SELECT DISTINCT ZLBH, GCBWBH, SIZE, Qty FROM CutDispatchZL_GC');
     SQL.Add('    WHERE CutDispatchZL_GC.ZLBH IN (' + where_SubSQL + ')');
     SQL.Add('  ) AS ZL_GCALL ON ZL_GC.ZLBH = ZL_GCAll.ZLBH AND ZL_GC.GCBWBH = ZL_GCALL.GCBWBH AND ZL_GC.SIZE = ZL_GCALL.SIZE');
     SQL.Add('  LEFT JOIN KT_SOPCutS_GCBWD ON KT_SOPCutS_GCBWD.GCBWDH = ZL_GC.GCBWBH');
     SQL.Add('  LEFT JOIN (');
     SQL.Add('    SELECT CutDispatchS_GC.ZLBH, CutDispatchS_GC.GCBWBH, CutDispatchS_GC.BWBH, SUM(Qty) AS TmpQty,');
     SQL.Add('    SUM(CASE WHEN CutDispatch_GC.CFMID <> ''NO'' THEN Qty ELSE 0 END) AS OkQty, MIN(CutDispatch_GC.PlanDate) AS RPlanDate FROM CutDispatchS_GC');
     SQL.Add('	  LEFT JOIN CutDispatch_GC ON CutDispatchS_GC.DLNO = CutDispatch_GC.DLNO');
     SQL.Add('	  WHERE CutDispatchS_GC.ZLBH IN (' + where_SubSQL + ')');
     SQL.Add('	  GROUP BY CutDispatchS_GC.ZLBH, CutDispatchS_GC.GCBWBH, CutDispatchS_GC.BWBH');
     SQL.Add('  ) AS GC ON ZL_GC.ZLBH = GC.ZLBH AND ZL_GC.GCBWBH = GC.GCBWBH AND ZL_GC.BWBH = GC.BWBH');
     SQL.Add('  WHERE LEN(ZL_GC.levels) > 0 AND ZL_GC.ZLBH IN (' + where_SubSQL + ')');
     if (GCBWBHEdit.Text <> '') then
       SQL.Add('  AND ZL_GC.GCBWBH LIKE ''' + GCBWBHEdit.Text + '%''');
     if (YWSMEdit.Text <> '') then
       SQL.Add('  AND KT_SOPCutS_GCBWD.YWSM LIKE ''%' + YWSMEdit.Text + '%''');
     SQL.Add('  GROUP BY ZL_GC.ZLBH, ZL_GC.GCBWBH, ZL_GC.PDays, KT_SOPCutS_GCBWD.ywsm, KT_SOPCutS_GCBWD.zwsm, KT_SOPCutS_GCBWD.Qty1Day, GC.TmpQty, GC.OkQty, GC.RPlanDate, ZL_GC.levels');
     SQL.Add(') AS ZL_GC');
     SQL.Add('LEFT JOIN SCZLDate ON SCZLDate.ZLBH = ZL_GC.ZLBH');
     if (CheckBox1.Checked) then
       SQL.Add('WHERE Pairs > TmpQty');
     funcObj.WriteErrorLog(sql.Text);
     Active := true;
   end;
end;

procedure TCPD_ZLBH.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-7;
  DTP2.Date:=Date()+7;
end;

procedure TCPD_ZLBH.DBGridEh1DblClick(Sender: TObject);
var i:integer;
begin
   if Query1.Active=false then Exit;
   with TmpQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,ZL_GC.Qty-ZL_GC.TmpQty as Qty,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm  from (');
     SQL.Add('	Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,SUM(ZL_GCAll.Qty) as Qty,IsNull(GC.TmpQty,0) as TmpQty  ');
     SQL.Add('	from CutDispatchZL_GC ZL_GC');
     SQL.Add(' left join (select distinct ZLBH,GCBWBH,SIZE,Qty from CutDispatchZL_GC where CutDispatchZL_GC.ZLBH= '''+Query1.FieldByName('ZLBH').AsString+''' ) ZL_GCALL on ZL_GC.ZLBH=ZL_GCAll.ZLBH and ZL_GC.GCBWBH=ZL_GCALL.GCBWBH and ZL_GC.SIZE=ZL_GCALL.SIZE ');
     SQL.Add('	left join (');
     SQL.Add('	  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE,CutDispatchS_GC.BWBH,SUM(case when CutDispatch_GC.CFMID<>''NO'' then Qty else 0 end) as TmpQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC');
     SQL.Add('	  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
     SQL.Add('	  where CutDispatchS_GC.ZLBH='''+Query1.FieldByName('ZLBH').AsString+'''  ');
     SQL.Add('            and CutDispatchS_GC.GCBWBH='''+Query1.FieldByName('GCBWBH').AsString+''' ');
     SQL.Add('	       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE,CutDispatchS_GC.BWBH	');
     SQL.Add('	) GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC.SIZE=GC.SIZE and ZL_GC.BWBH=GC.BWBH');
     SQL.Add('	where len(ZL_GC.levels)>0  and ZL_GC.ZLBH='''+Query1.FieldByName('ZLBH').AsString+'''  ');
     SQL.Add('          and ZL_GC.GCBWBH='''+Query1.FieldByName('GCBWBH').AsString+''' ');
     SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,ZL_GC.PDays,GC.TmpQty ) ZL_GC');
     SQL.Add('  left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH  ');
     SQL.Add('	where Qty>TmpQty');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   TmpQry.First;
   for i:=0 to TmpQry.RecordCount-1 do
   begin
     with CutProcessDispatch.CPDDetail do
     begin
       Insert;
       FieldByName('ZLBH').Value:=TmpQry.FieldByName('ZLBH').value;
       FieldByName('GCBWBH').Value:=TmpQry.FieldByName('GCBWBH').value;
       FieldByName('BWBH').Value:=TmpQry.FieldByName('BWBH').value;
       FieldByName('SIZE').Value:=TmpQry.FieldByName('SIZE').value;
       FieldByName('TmpQty').Value:=TmpQry.FieldByName('Qty').value;
       FieldByName('Qty').Value:=0;//TmpQry.FieldByName('Qty').value;
       FieldByName('YWSM').Value:=TmpQry.FieldByName('YWSM').value;
       FieldByName('ZWSM').Value:=TmpQry.FieldByName('ZWSM').value;
       Post;
     end;
     TmpQry.Next;
   end;
   //
   TmpQry.Active:=false;
   Showmessage('Success');

end;

procedure TCPD_ZLBH.Button2Click(Sender: TObject);
var i,j: integer;
begin
  if Query1.Active=false then Exit;
  if (DBGridEh1.SelectedRows.Count > 0) then
  begin
    for i := 0 to DBGridEh1.SelectedRows.Count-1 do
    begin
       //
       Query1.GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
       with TmpQry do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('	select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,ZL_GC.Qty-ZL_GC.TmpQty as Qty,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm  from (');
         SQL.Add('	Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,SUM(ZL_GCAll.Qty) as Qty,IsNull(GC.TmpQty,0) as TmpQty  ');
         SQL.Add('	from CutDispatchZL_GC ZL_GC');
         SQL.Add(' left join (select distinct ZLBH,GCBWBH,SIZE,Qty from CutDispatchZL_GC where CutDispatchZL_GC.ZLBH= '''+Query1.FieldByName('ZLBH').AsString+''' ) ZL_GCALL on ZL_GC.ZLBH=ZL_GCAll.ZLBH and ZL_GC.GCBWBH=ZL_GCALL.GCBWBH and ZL_GC.SIZE=ZL_GCALL.SIZE ');
         SQL.Add('	left join (');
         SQL.Add('	  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE,CutDispatchS_GC.BWBH,SUM(case when CutDispatch_GC.CFMID<>''NO'' then Qty else 0 end) as TmpQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC');
         SQL.Add('	  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
         SQL.Add('	  where CutDispatchS_GC.ZLBH='''+Query1.FieldByName('ZLBH').AsString+'''  ');
         SQL.Add('            and CutDispatchS_GC.GCBWBH='''+Query1.FieldByName('GCBWBH').AsString+''' ');
         SQL.Add('	       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatchS_GC.SIZE,CutDispatchS_GC.BWBH	');
         SQL.Add('	) GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC.SIZE=GC.SIZE and ZL_GC.BWBH=GC.BWBH');
         SQL.Add('	where len(ZL_GC.levels)>0  and ZL_GC.ZLBH='''+Query1.FieldByName('ZLBH').AsString+'''  ');
         SQL.Add('          and ZL_GC.GCBWBH='''+Query1.FieldByName('GCBWBH').AsString+''' ');
         SQL.Add('	Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,ZL_GC.SIZE,ZL_GC.PDays,GC.TmpQty ) ZL_GC');
         SQL.Add('  left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCBWBH  ');
         SQL.Add('	where Qty>TmpQty');
         //funcObj.WriteErrorLog(sql.Text);
         Active:=true;
       end;
       TmpQry.First;
       for j:=0 to TmpQry.RecordCount-1 do
       begin
         with CutProcessDispatch.CPDDetail do
         begin
           Insert;
           FieldByName('ZLBH').Value:=TmpQry.FieldByName('ZLBH').value;
           FieldByName('GCBWBH').Value:=TmpQry.FieldByName('GCBWBH').value;
           FieldByName('BWBH').Value:=TmpQry.FieldByName('BWBH').value;
           FieldByName('SIZE').Value:=TmpQry.FieldByName('SIZE').value;
           FieldByName('TmpQty').Value:=TmpQry.FieldByName('Qty').value;
           FieldByName('Qty').Value:=TmpQry.FieldByName('Qty').value;
           FieldByName('YWSM').Value:=TmpQry.FieldByName('YWSM').value;
           FieldByName('ZWSM').Value:=TmpQry.FieldByName('ZWSM').value;
           Post;
         end;
         TmpQry.Next;
       end;
    end;
    TmpQry.Active:=false;
    Showmessage('Success');
  end else begin
    MessageDlg('Please select a data first!', mtWarning, [mbyes], 0);
  end;

end;

end.
