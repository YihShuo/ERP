unit ReplenishDel_MulitRY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, ExtCtrls, Buttons,
  Menus, Math;

type
  TReplenishDel_MulitRY = class(TForm)
    DBGridEh1: TDBGridEh;
    RYQuery: TQuery;
    DS1: TDataSource;
    UpdSQl: TUpdateSQL;
    RYQueryDDBH: TStringField;
    RYQueryQty: TIntegerField;
    RYQueryPairs: TIntegerField;
    RYQueryARTICLE: TStringField;
    RYQueryXieMing: TStringField;
    Panel1: TPanel;
    TmpQry: TQuery;
    SaveBtn: TBitBtn;
    PopupMenu1: TPopupMenu;
    otalPairsandcalcuateavage1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RYQueryAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure otalPairsandcalcuateavage1Click(Sender: TObject);
  private
    IsGetRYInfo:boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDel_MulitRY: TReplenishDel_MulitRY;

implementation
  uses main1, ReplenishDel1, FunUnit;
{$R *.dfm}

procedure TReplenishDel_MulitRY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TReplenishDel_MulitRY.FormDestroy(Sender: TObject);
begin
  ReplenishDel_MulitRY:=nil;
end;

procedure TReplenishDel_MulitRY.RYQueryAfterPost(DataSet: TDataSet);
begin
  if IsGetRYInfo=false then
  begin
    IsGetRYInfo:=true;
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select DDZL.DDBH,0 as Qty,DDZL.Pairs,DDZL.ARTICLE,XXZL.XieMing  ');
      SQL.Add('from DDZL ');
      SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
      SQL.Add('where DDBH='''+RYQuery.FieldByName('DDBH').AsString+''' and DDZL.YN=1 ');
      Active:=true;
      if RecordCount>0  then
      begin
        RYQuery.Edit;
        RYQuery.FieldByName('Pairs').AsString:=TmpQry.FieldByName('Pairs').AsString;
        RYQuery.FieldByName('ARTICLE').AsString:=TmpQry.FieldByName('ARTICLE').AsString;
        RYQuery.FieldByName('XieMing').AsString:=TmpQry.FieldByName('XieMing').AsString;
        RYQuery.Post;
        if RYQuery.FieldByName('Article').AsString<>ReplenishDel.BLMas.FieldByName('Article').AsString then
         Showmessage('Article is not the same ');
      end else
      begin
        RYQuery.Edit;
        RYQuery.FieldByName('DDBH').AsString:='';
        RYQuery.FieldByName('Pairs').AsString:='';
        RYQuery.FieldByName('ARTICLE').AsString:='';
        RYQuery.FieldByName('XieMing').AsString:='';
        RYQuery.Post;
      end;
      Active:=false;
    end;
    IsGetRYInfo:=false;
  end;
end;

procedure TReplenishDel_MulitRY.FormCreate(Sender: TObject);
begin
  RYQuery.Active:=true;
end;

procedure TReplenishDel_MulitRY.SaveBtnClick(Sender: TObject);
var sYear, sMonth ,BLNO, MergNo:string;
    i:integer;
    NDate:TDate;
begin
  //
  RYQuery.First;
  for i:=0 to RYQuery.RecordCount-1 do
  begin
    if (RYQuery.FieldByName('Qty').IsNull) then
    begin
       Showmessage('Qty is null. abort');
       abort;
    end;
    RYQuery.Next;
  end;
  //新增補料申請單
  with TmpQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    sYear:=fieldbyname('FY').asstring;
    sMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(sMonth)<2 then
    sMonth:='0'+sMonth;
  //
  MergNo:=ReplenishDel.BLMas.FieldByName('MergNo').AsString;
  if MergNo='' then
  begin
    with TmpQry do    //計算領料單流水號
    begin
      active:=false;
      sql.Clear;
      sql.Add('select MergNo from SCBL where MergNo like '''+sYear+sMonth+'%'' ');
      sql.add('order by MergNo');
      active:=true;
      if recordcount >0 then
      begin
        last;
        MergNo:=fieldbyname('MergNo').AsString;
        MergNo:=copy(MergNo,7,4);
        MergNo:=inttostr(strtoint(MergNo)+1);
        while length(MergNo)<4 do
        begin
          MergNo:='0'+MergNo;
        end;
      end else
      begin
        MergNo:='0001';
      end;
      MergNo :=sYear+sMonth+MergNo;
      active:=false;
    end;
  end;
  //
  RYQuery.First;
  for i:=0 to RYQuery.RecordCount-1 do
  begin
    if RYQuery.FieldByName('Qty').Value>0 then
    begin
      with TmpQry do    //計算領料單流水號
      begin
          active:=false;
          sql.Clear;
          sql.Add('select BLNO from SCBL where BLNO like '''+sYear+sMonth+'%'' ');
          sql.add('order by BLNO');
          active:=true;
          if recordcount >0 then
          begin
            last;
            BLNO:=fieldbyname('BLNO').AsString;
            BLNO:=copy(BLNO,7,4);
            BLNO:=inttostr(strtoint(BLNO)+1);
            while length(BLNO)<4 do
            begin
              BLNO:='0'+BLNO;
            end;
          end else
          begin
            BLNO:='0001';
          end;
          BLNO :=sYear+sMonth+BLNO;
          active:=false;
      end;
      //SCBL
      with TmpQry do
      begin
        active:=false;
        sql.clear;
        sql.add('Insert into SCBL (BLNO,ZLBH,GXLB,GSBH,Qty, MergNo,BLACC, BLDate, UserDate, UserID, YN) ');
        sql.add('Select '''+BLNO+''' as BLNO,'''+RYQuery.FieldByName('DDBH').AsString+''' as ZLBH,GXLB,GSBH,'+RYQuery.FieldByName('Qty').AsString+' as Qty, ');
        sql.add('       '''+MergNo+''' as MerNo,0.0 as BLACC, BLDate, GetDate(),'''+main.Edit1.Text+''' as UserID, 1 as YN from SCBL where BLNO='''+ReplenishDel.BLMas.FieldByName('BLNO').AsString+''' ');
        execSQL();
      end;
      //SCBLYYS
      with TmpQry do
      begin
        active:=false;
        sql.clear;
        sql.add('Insert into SCBLYYS (BLNO,YYBH,DepNO,Qty, UserDate, UserID, YN) ');
        sql.add('Select '''+BLNO+''' as BLNO, YYBH, DepNO, '+RYQuery.FieldByName('Qty').AsString+' as Qty, ');
        sql.add('        GetDate(),'''+main.Edit1.Text+''' as UserID, 1 as YN from SCBLYYS where BLNO='''+ReplenishDel.BLMas.FieldByName('BLNO').AsString+''' ');
        execSQL();
      end;
      //SCBLS
      with TmpQry do
      begin
        Active:=false;
        SQL.clear;
        SQL.Add('Insert into SCBLS (BLNO, BWBH, CLBH,  Qty, MJBH, ZMLB, ZSDH, UserID, UserDate, YN)  ');
        SQL.Add('select '''+BLNO+''' as BLNO,ZLZLS2.BWBH,ZLZLS2.CLBH,Round(sum(ZLZLS2.CLSL) / DDZL.Pairs*'+RYQuery.FieldByName('Qty').AsString+'+0.049,1) as Qty, ');
        SQL.Add('       MJBH, ZMLB, MAX(CSBH) as ZSDH,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate, 1 as YN ');
        SQL.Add('from ZLZLS2');
        SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
        SQL.Add('where ZLZLS2.ZLBH='''+RYQuery.FieldByName('DDBH').AsString+''' ');
        SQL.Add('            and ZLZLS2.CLSL<>0');
        SQL.Add('            and  ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.BWBH in (Select distinct BWBH from SCBLS where BLNO='''+ReplenishDel.BLMas.FieldByName('BLNO').AsString+''')');
        SQL.Add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH ,ZLZLS2.BWBH,MJBH,ZMLB,DDZL.Pairs');
        //funcObj.WriteErrorLog(sql.Text);
        execSQL();
      end;
      //20191101補母材料，SCBLS計算子料號用輛
      with TmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select * from SCBLS where BLNO='''+BLNO+''' and ZMLB=''Y'' ');
        Active:=true;
        while not Eof do
        begin
          ReplenishDel.ChildMaterial(TmpQry.fieldbyname('BLNO').AsString,TmpQry.fieldbyname('BWBH').AsString,TmpQry.fieldbyname('CLBH').AsString,RYQuery.fieldbyname('DDBH').AsString);
          Next;
        end;
        Active:=false;
      end;
      //
    end;
    RYQuery.Next;
  end;
  //Update SCBL.MergNo
  with TmpQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('Update SCBL set MergNo='''+MergNo+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where BLNO='''+ReplenishDel.BLMas.FieldByName('BLNO').AsString+''' ');
    execSQL();
  end;
  //
  Showmessage('Finish');
  Close;
end;

procedure TReplenishDel_MulitRY.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=46 then RYQuery.Delete;
end;

procedure TReplenishDel_MulitRY.otalPairsandcalcuateavage1Click(
  Sender: TObject);
var Replenish_Pairs:String;
    TotalPairs,i:integer;
    Pairs,Remain_Pairs:Double;
begin
  Replenish_Pairs:=inputbox('Please Input Total Pairs','Pairs:','0');
  if strtoint(Replenish_Pairs)>0 then
  begin
    IsGetRYInfo:=true;
    //
    Remain_Pairs:=strtofloat(Replenish_Pairs);
    RYQuery.First;
    TotalPairs:=0;
    for i:=0 to RYQuery.RecordCount-1 do
    begin
      TotalPairs:=TotalPairs+RYQuery.FieldByName('Pairs').Value;
      RYQuery.Next;
    end;
    //
    RYQuery.First;
    for i:=0 to RYQuery.RecordCount-1 do
    begin
      Pairs:=SimpleRoundTo(Replenish_Pairs*RYQuery.FieldByName('Pairs').Value/TotalPairs,0);
      if Remain_Pairs>Pairs then
      begin
        Remain_Pairs:=Remain_Pairs-Pairs;
      end else
      begin
        Pairs:=Remain_Pairs;
        Remain_Pairs:=0;
      end;
      if i=RYQuery.RecordCount-1 then Pairs:=Pairs+Remain_Pairs;
      RYQuery.Edit;
      RYQuery.FieldByName('Qty').Value:=Pairs;
      RYQuery.Post;
      RYQuery.Next;
    end;
    //
    IsGetRYInfo:=false;
  end;
end;

end.
