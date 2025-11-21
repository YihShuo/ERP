unit CD_LectraLayerout1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TCD_LectraLayerout = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    SMDDSQry: TQuery;
    SMDDS_DS: TDataSource;
    Button4: TButton;
    UpdSMDDS: TUpdateSQL;
    QTemp: TQuery;
    GroupBox1: TGroupBox;
    Lop48CK: TCheckBox;
    Lop36CK: TCheckBox;
    Lop24CK: TCheckBox;
    Lop12CK: TCheckBox;
    Lop6CK: TCheckBox;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    LayerQry: TQuery;
    LayerDS: TDataSource;
    UpdLayer: TUpdateSQL;
    TotQry: TQuery;
    TotQtyDS: TDataSource;
    UpdTotQry: TUpdateSQL;
    LengthEdit: TEdit;
    Label1: TLabel;
    xtbwyl1Qry: TQuery;
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LayerQryOnChange(Sender: TField);
  private
    IsSystemRunning:boolean;
    { Private declarations }
    procedure SetDGBridColumn(DBGridEh:TDBGridEh;Query:TQuery);
    procedure CalCulateLayoutLength();
    procedure CalculateSetLayout();
    procedure UpdateDBGridInfo();
    procedure Calculate_SetLayout();
  public
    Article:String;
    SizeFieldNameList:TStringlist;
    SizeFieldValueList:TStringlist;
    BWBHList:TStringList;
    { Public declarations }
  end;

var
  CD_LectraLayerout: TCD_LectraLayerout;

implementation
  uses  FunUnit;
{$R *.dfm}

procedure TCD_LectraLayerout.Button4Click(Sender: TObject);
var i,TotalQty:integer;
    BWBHSQL:string;
begin
  IsSystemRunning:=true; //鎖定
  //
  TotalQty:=0;
  with SMDDSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Convert(int,1.0) as Layer ');
    for i:=0 to SizeFieldNameList.Count-1 do
    begin
        SQL.Add(' ,'+SizeFieldValueList.Strings[i]+' as '''+SizeFieldNameList.Strings[i]+''' ');
        TotalQty:=TotalQty+strtoint(SizeFieldValueList.Strings[i]);
    end;
    SQL.Add(',Convert(int,'+inttostr(TotalQty)+') as Pairs');
    SQL.Add(',Convert(float,0.0) as LayoutLen ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //Layer
  with LayerQry do
  begin
    Active:=false;

    SQL.Clear;
    SQL.Add('Select Convert(int,1.0) as Layer ');
    for i:=0 to SizeFieldNameList.Count-1 do
    begin
        SQL.Add(' ,'+SizeFieldValueList.Strings[i]+' as '''+SizeFieldNameList.Strings[i]+''' ');
        TotalQty:=TotalQty+strtoint(SizeFieldValueList.Strings[i]);
    end;
    SQL.Add(',Convert(int,'+inttostr(TotalQty)+') as Pairs');
    SQL.Add(',Convert(float,0.0) as LayoutLen ');
    SQL.Add('where 1=2 ');
    //funcObj.WriteErrorLog(sql.Text);
    if LayerQry.FieldCount=0 then
    begin
      FieldDefs.Update();
      for i := 0 to LayerQry.FieldDefs.Count - 1 do
      begin
         FieldDefs[i].CreateField(LayerQry);
      end;
    end;
    Active:=true;
    for i:=1 to LayerQry.FieldCount-3 do
    begin
      LayerQry.Fields[i].OnChange:=LayerQryOnChange;
    end;
  end;

  //剩餘
  TotalQty:=0;
  with TotQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select null as Layer ');
    for i:=0 to SizeFieldNameList.Count-1 do
    begin
        SQL.Add(' ,'+SizeFieldValueList.Strings[i]+' as '''+SizeFieldNameList.Strings[i]+''' ');
        TotalQty:=TotalQty+strtoint(SizeFieldValueList.Strings[i]);
    end;
    SQL.Add(',Convert(int,'+inttostr(TotalQty)+') as Pairs');
    SQL.Add(',null as LayoutLen ');
    SQL.Add('');
    Active:=true;
  end;
  //用量部位
  for i:=0 to BWBHList.Count-1 do
  begin
    BWBHSQL:=BWBHSQL+''''+BWBHList.Strings[i]+''',';
  end;
  if Length(BWBHSQL)>0 then BWBHSQL:='('+Copy(BWBHSQL,1,length(BWBHSQL)-1)+')';
  with xtbwyl1Qry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  Select xtbwyl1.XTCC,SUM(CLSL) as CLSL from xtbwyl1,XXZL ');
    SQL.Add('  where xtbwyl1.XieXing=XXZL.XieXing and xtbwyl1.SheHao=XXZL.SheHao ');
    SQL.Add('        and xtbwyl1.BWBH in '+BWBHSQL+' and XXZL.ARTICLE='''+Article+'''');
    SQL.Add('  Group by xtbwyl1.XTCC ');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  SetDGBridColumn(DBGridEh1,SMDDSQry);
  SetDGBridColumn(DBGridEh2,LayerQry);
  SetDGBridColumn(DBGridEh3,TotQry);
  //
  IsSystemRunning:=false; //解鎖
  //
  Calculate_SetLayout();//設定版面
end;

procedure TCD_LectraLayerout.SetDGBridColumn(DBGridEh:TDBGridEh;Query:TQuery);
var i:integer;
begin
  //
  DBGridEh.columns[0].width:=40;
  DBGridEh.columns[0].title.caption:='層數|lop';
  for i:=1 to Query.fieldcount-2 do
  begin
    DBGridEh.columns[i].width:=30;
  end;
  DBGridEh.columns[SMDDSQry.fieldcount-1].width:=60;
  DBGridEh.columns[SMDDSQry.fieldcount-1].title.caption:='拉料長度|Length';
end;
//計算分配版面
procedure TCD_LectraLayerout.CalculateSetLayout();
   function ChoiceLayerNum(SIZERUN_Remain:array of integer;LayerLopRun:array of integer):integer;
   var i,j,Res_LayerLopRun:integer;
       //
       Reward:integer;
       Layer_Reward:array of integer;
       Reward_length:double;
       Layer_Reward_length:array of double;
       IsFinish:boolean;
       Layer_Reward_IsFinish:array of boolean;
   begin
     Setlength(Layer_Reward, High(LayerLopRun)+1);
     Setlength(Layer_Reward_length, High(LayerLopRun)+1);
     Setlength(Layer_Reward_IsFinish, High(LayerLopRun)+1);
     for i:=0 to High(LayerLopRun) do
     begin
       Reward:=0;
       Reward_length:=0;
       IsFinish:=true;
       for j:=0 to High(SIZERUN_Remain) do
       begin
         if SIZERUN_Remain[j]>=LayerLopRun[i] then
         begin
           //雙數累計
           Reward:=Reward+(SIZERUN_Remain[j] div LayerLopRun[i])*LayerLopRun[i];
           if (SIZERUN_Remain[j] mod LayerLopRun[i])>0 then IsFinish:=false;   //是否有尾數
           //拉料長度類季
           if xtbwyl1Qry.Locate('XTCC',LayerQry.Fields[j+1].FieldName,[]) then
           begin
             if SMDDSQry.Fields[j].AsString<>'' then
             Reward_length:=Reward_length+xtbwyl1Qry.FieldByName('CLSL').Value*(SIZERUN_Remain[j] div LayerLopRun[i]);
           end;
           //
         end else if ((SIZERUN_Remain[j]<LayerLopRun[i]) and (SIZERUN_Remain[j]>0)) then
         begin
           IsFinish:=false; //是否有尾數
         end;
       end;
       //funcObj.WriteErrorLog('@@Reward['+inttostr(LayerLopRun[i])+']:'+inttostr(Reward)+' '+floattostr(Reward_length)+' '+booltostr(IsFinish));
       Layer_Reward[i]:=Reward;
       Layer_Reward_length[i]:=Reward_length;
       Layer_Reward_IsFinish[i]:=IsFinish;
     end;
     //
     Reward:=0;
     Reward_length:=0;
     Res_LayerLopRun:=-1;
     for i:=0 to High(LayerLopRun) do
     begin
       if ( (Layer_Reward[i]>0) and (Layer_Reward_length[i]>0) ) then //and (Layer_Reward_length[i]<=strtofloat(LengthEdit.Text))
       begin
         if Layer_Reward_IsFinish[i]=false then Layer_Reward_length[i]:=Layer_Reward_length[i]+1.0;//尚未全部裁完增加，剩餘處理裁片時間
         if ((Reward>0) and (Reward_length>0)) then
         begin
           //funcObj.WriteErrorLog('$$Reward:['+inttostr(Layer_Reward[i])+','+inttostr(Reward)+']='+floattostr(Layer_Reward[i]/Reward)+' || ['+floattostr(Layer_Reward_length[i])+','+floattostr(Reward_length)+']='+floattostr(Layer_Reward_length[i]/Reward_length));
           if (Layer_Reward[i]/Reward-1)>  (Layer_Reward_length[i]/Reward_length-1) then
           begin
             //if (LayerLopRun[i]>Res_LayerLopRun) then
             //begin
               Reward:=Layer_Reward[i];
               Reward_length:=Layer_Reward_length[i];
               //funcObj.WriteErrorLog('##Reward:'+inttostr(Reward)+' '+floattostr(Reward_length));
               Res_LayerLopRun:=LayerLopRun[i];
             //end;
           end;
         end else
         begin
               Reward:=Layer_Reward[i];
               Reward_length:=Layer_Reward_length[i];
               //funcObj.WriteErrorLog('##Reward:'+inttostr(Reward)+' '+floattostr(Reward_length));
               Res_LayerLopRun:=LayerLopRun[i];
         end;
       end;
     end;
     //
     //funcObj.WriteErrorLog('Res_LayerLopRun:'+inttostr(Res_LayerLopRun));
     Result:=Res_LayerLopRun;
   end;
var i,layerLop,TotLayerQty,TotRemQty:integer;
    SIZERUN_Qty,SIZERUN_Remain:array of integer;
    LayerLopRun:array of integer;
    IsRuning:boolean;
begin
  //
  if Lop48CK.Checked=true then
  begin
    LayerQry.Append;
    LayerQry.FieldByName('Layer').AsString:='48';
    LayerQry.Post;
  end;
  if Lop36CK.Checked=true then
  begin
    LayerQry.Append;
    LayerQry.FieldByName('Layer').AsString:='36';
    LayerQry.Post;
  end;
  if Lop24CK.Checked=true then
  begin
    LayerQry.Append;
    LayerQry.FieldByName('Layer').AsString:='24';
    LayerQry.Post;
  end;
  if Lop12CK.Checked=true then
  begin
    LayerQry.Append;
    LayerQry.FieldByName('Layer').AsString:='12';
    LayerQry.Post;
  end;
  if Lop6CK.Checked=true then
  begin
    LayerQry.Append;
    LayerQry.FieldByName('Layer').AsString:='6';
    LayerQry.Post;
  end;
  //層數
  setlength( LayerLopRun, LayerQry.RecordCount );
  LayerQry.First;
  for i:=0 to LayerQry.RecordCount-1 do
  begin
    LayerLopRun[i]:=LayerQry.Fields[0].Value;
    LayerQry.Next;
  end;
  //總雙數
  setlength(SIZERUN_Qty, SMDDSQry.FieldCount-3);
  setlength(SIZERUN_Remain, SMDDSQry.FieldCount-3);
  SMDDSQry.First;
  for i:=1 to SMDDSQry.fieldcount-3 do
  begin
    SIZERUN_Qty[i-1]:=SMDDSQry.Fields[i].Value;
    SIZERUN_Remain[i-1]:=SMDDSQry.Fields[i].Value;
    //funcObj.WriteErrorLog(inttostr(SIZERUN_Qty[i-1]));
  end;
  //計算分版面
  IsRuning:=true;
  LayerQry.First;
  while IsRuning=true do
  begin
    //挑選層數
    LayerLop:=ChoiceLayerNum(SIZERUN_Remain,LayerLopRun);
    //LayerLop:=LayerQry.Fields[0].Value;
    //
    if LayerQry.Locate('Layer',inttostr(LayerLop),[]) then
    begin
      if  LayerLop>=6 then
      begin
        for i:=1 to SMDDSQry.fieldcount-3 do
        begin
           if  SIZERUN_Remain[i-1]>=LayerLop then
           begin
             LayerQry.Edit;
             LayerQry.Fields[i].Value:=SIZERUN_Remain[i-1] div LayerLop;
             LayerQry.Post;
             //剩餘
             SIZERUN_Remain[i-1]:=SIZERUN_Remain[i-1]-LayerQry.Fields[i].Value*LayerLop;
             TotQry.Edit;
             TotQry.Fields[i].Value:=SIZERUN_Remain[i-1];
             TotQry.Post;
             //
           end;
        end;
        //計算&總雙數
        TotRemQty:=0;
        TotLayerQty:=0;
        for i:=1 to SMDDSQry.fieldcount-3 do
        begin
          if LayerQry.Fields[i].AsString<>'' then
             TotLayerQty:=TotLayerQty+LayerQry.Fields[i].Value*LayerLop;
          if TotQry.Fields[i].AsString<>'' then
             TotRemQty:=TotRemQty+TotQry.Fields[i].Value;
        end;
        LayerQry.Edit;
        LayerQry.FieldByName('Pairs').Value:=TotLayerQty;
        LayerQry.Post;
        //
        TotQry.Edit;
        TotQry.FieldByName('Pairs').Value:=TotRemQty;
        TotQry.Post;
        //
      end;
    end;
    //LayerQry.Next;
    //if LayerQry.Eof then   IsRuning:=false;
    if LayerLop<0 then IsRuning:=false;
  end;

end;
//版面長度
procedure TCD_LectraLayerout.CalCulateLayoutLength();
var TotalLen:double;
    i,j:integer;
begin
  SMDDSQry.First;
  for i:=0 to SMDDSQry.RecordCount-1 do
  begin
    TotalLen:=0;
    for j:=1 to SMDDSQry.fieldcount-3 do
    begin
      if xtbwyl1Qry.Locate('XTCC',SMDDSQry.Fields[j].FieldName,[]) then
      begin
        if SMDDSQry.Fields[j].AsString<>'' then
        TotalLen:=TotalLen+xtbwyl1Qry.FieldByName('CLSL').Value*SMDDSQry.Fields[j].Value;
      end;
    end;
    SMDDSQry.Edit;
    SMDDSQry.FieldByName('LayoutLen').Value:=TotalLen;
    SMDDSQry.Post;
    SMDDSQry.Next;
  end;
  //
  //
  LayerQry.First;
  for i:=0 to LayerQry.RecordCount-1 do
  begin
    TotalLen:=0;
    for j:=1 to LayerQry.fieldcount-3 do
    begin
      if xtbwyl1Qry.Locate('XTCC',LayerQry.Fields[j].FieldName,[]) then
      begin
        if LayerQry.Fields[j].AsString<>'' then
        TotalLen:=TotalLen+xtbwyl1Qry.FieldByName('CLSL').Value*LayerQry.Fields[j].Value;
      end;
    end;
    LayerQry.Edit;
    LayerQry.FieldByName('LayoutLen').Value:=TotalLen;
    LayerQry.Post;
    LayerQry.Next;
  end;

end;

procedure TCD_LectraLayerout.Calculate_SetLayout();
begin
  IsSystemRunning:=true;  //鎖定
  LayerQry.Active:=false;
  LayerQry.Active:=true;
  SetDGBridColumn(DBGridEh2,LayerQry);
  //分配版面
  CalculateSetLayout();
  //拉料長度
  CalCulateLayoutLength();
  IsSystemRunning:=false; //解鎖
end;
procedure TCD_LectraLayerout.FormCreate(Sender: TObject);
begin
  SizeFieldNameList:=TStringlist.Create;
  SizeFieldValueList:=TStringlist.Create;
  BWBHList:=TStringList.Create;
end;

procedure TCD_LectraLayerout.FormDestroy(Sender: TObject);
begin
  SizeFieldNameList.Free;
  SizeFieldValueList.Free;
  BWBHList.Free;
end;
procedure TCD_LectraLayerout.LayerQryOnChange(Sender: TField);
begin
  if IsSystemRunning=false then
     UpdateDBGridInfo();
end;
//計算尾數
procedure TCD_LectraLayerout.UpdateDBGridInfo();
var i,j,TotalQty,Layer:integer;
    TotalLen:double;
    SumTotalQty:array of integer;
begin
  IsSystemRunning:=true;  //鎖定
  //拉料長度 & 雙數
  TotalLen:=0;
  TotalQty:=0;
  Layer:=LayerQry.Fields[0].Value;
  for i:=1 to LayerQry.fieldcount-3 do
  begin
    if xtbwyl1Qry.Locate('XTCC',LayerQry.Fields[i].FieldName,[]) then
    begin
      if LayerQry.Fields[i].AsString<>'' then
      begin
        TotalLen:=TotalLen+xtbwyl1Qry.FieldByName('CLSL').Value*LayerQry.Fields[i].Value;
        TotalQty:=TotalQty+Layer*LayerQry.Fields[i].Value;
      end;
    end;
  end;
  LayerQry.Edit;
  LayerQry.FieldByName('LayoutLen').Value:=TotalLen;
  LayerQry.FieldByName('Pairs').Value:=TotalQty;
  LayerQry.Post;
  //計算TotQry
  setlength(SumTotalQty,LayerQry.fieldcount-3);
  for i:=0 to High(SumTotalQty) do
    SumTotalQty[i]:=0;
  LayerQry.First;
  for i:=0 to LayerQry.RecordCount-1 do
  begin
    Layer:=LayerQry.Fields[0].Value;
    for j:=1 to LayerQry.fieldcount-3 do
    begin
      if LayerQry.Fields[j].AsString<>'' then
        SumTotalQty[j-1]:=SumTotalQty[j-1]+Layer*LayerQry.Fields[j].Value;
    end;
    LayerQry.Next;
  end;
  //
  TotalQty:=0;
  for i:=1 to TotQry.fieldcount-3 do
  begin
     TotQry.Edit;
     TotQry.Fields[i].Value:=SMDDSQry.Fields[i].Value-SumTotalQty[i-1];
     TotQry.Post;
     TotalQty:=TotalQty+TotQry.Fields[i].Value;
  end;
  TotQry.Edit;
  TotQry.FieldByName('Pairs').Value:=TotalQty;
  TotQry.Post;
  IsSystemRunning:=false; //解鎖
end;


end.
