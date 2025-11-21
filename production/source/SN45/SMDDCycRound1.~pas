unit SMDDCycRound1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, Dateutils,
  Buttons, Menus, ComObj;


type
  TShowDepGroup=record
    DepID:String;
    DepName:string;
end;
type
  TSMDDCycRound = class(TForm)
    Panel1: TPanel;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    XuongCB: TComboBox;
    Label2: TLabel;
    DepNameCB: TComboBox;
    DDBHEdit: TEdit;
    Label3: TLabel;
    Button4: TButton;
    QTemp: TQuery;
    SMDDS: TQuery;
    SMDDDS: TDataSource;
    SMDDSXuong: TStringField;
    SMDDSDepName: TStringField;
    SMDDSDDBH: TStringField;
    SMDDSQty: TIntegerField;
    SMDDSPlanDate: TDateTimeField;
    SMDDSROrder: TIntegerField;
    SMDDSDepNo: TStringField;
    Panel2: TPanel;
    DBGridEh: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    DepLabel1: TLabel;
    DBGridEh1: TDBGridEh;
    DepQuery1: TQuery;
    DS1: TDataSource;
    Splitter1: TSplitter;
    Panel5: TPanel;
    DepLabel2: TLabel;
    DepQuery2: TQuery;
    DS2: TDataSource;
    Splitter2: TSplitter;
    Panel6: TPanel;
    DepLabel3: TLabel;
    DepQuery3: TQuery;
    DS3: TDataSource;
    DepQuery4: TQuery;
    DS4: TDataSource;
    DepQuery5: TQuery;
    DS5: TDataSource;
    DepQuery6: TQuery;
    DS6: TDataSource;
    Panel9: TPanel;
    DepLabel6: TLabel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    RYDS: TDataSource;
    RYQuery: TQuery;
    RYQueryDDBH: TStringField;
    RYQueryT1: TIntegerField;
    RYQueryT2: TIntegerField;
    UpdateSQL4: TUpdateSQL;
    CheckBox2: TCheckBox;
    RYQueryPlanDate: TDateTimeField;
    RYQueryDepNo: TStringField;
    RYQueryDepName: TStringField;
    RYQueryTUADDBH: TStringField;
    RYQueryYN: TStringField;
    Panel11: TPanel;
    BB5: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB6: TBitBtn;
    BBT7: TBitBtn;
    BB4: TBitBtn;
    BBT8: TBitBtn;
    DBGridEh7: TDBGridEh;
    DepQuery1PlanDate: TDateTimeField;
    DepQuery1DDBH: TStringField;
    DepQuery1Qty: TIntegerField;
    DepQuery1T1: TIntegerField;
    DepQuery1T2: TIntegerField;
    DepQuery1DepNo: TStringField;
    DepQuery1DepName: TStringField;
    DepQuery2PlanDate: TDateTimeField;
    DepQuery2DDBH: TStringField;
    DepQuery2Qty: TIntegerField;
    DepQuery2T1: TIntegerField;
    DepQuery2T2: TIntegerField;
    DepQuery2DepNo: TStringField;
    DepQuery2DepName: TStringField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DepQuery4PlanDate: TDateTimeField;
    DepQuery4DDBH: TStringField;
    DepQuery4Qty: TIntegerField;
    DepQuery4T1: TIntegerField;
    DepQuery4T2: TIntegerField;
    DepQuery4DepNo: TStringField;
    DepQuery4DepName: TStringField;
    DepQuery6PlanDate: TDateTimeField;
    DepQuery6DDBH: TStringField;
    DepQuery6Qty: TIntegerField;
    DepQuery6T1: TIntegerField;
    DepQuery6T2: TIntegerField;
    DepQuery6DepNo: TStringField;
    DepQuery6DepName: TStringField;
    DepQuery5PlanDate: TDateTimeField;
    DepQuery5DDBH: TStringField;
    DepQuery5Qty: TIntegerField;
    DepQuery5T1: TIntegerField;
    DepQuery5T2: TIntegerField;
    DepQuery5DepNo: TStringField;
    DepQuery5DepName: TStringField;
    DBGridEh6: TDBGridEh;
    BtnNextDep: TBitBtn;
    BtnPriorDep: TBitBtn;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Panel10: TPanel;
    Panel7: TPanel;
    DepLabel4: TLabel;
    DBGridEh4: TDBGridEh;
    Panel8: TPanel;
    DepLabel5: TLabel;
    DBGridEh5: TDBGridEh;
    Splitter5: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XuongCBChange(Sender: TObject);
    procedure BtnNextDepClick(Sender: TObject);
    procedure BtnPriorDepClick(Sender: TObject);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh7GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure RYQueryDepNameSetText(Sender: TField; const Text: String);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure RYQueryDDBHSetText(Sender: TField; const Text: String);
    procedure BBT8Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    DepID: String;
    DepIDList:TStringlist;
    DDBH,DDBHSubSQL:String;
    PlanDateSQL:String;
    //
    DepGroupPos:byte;
    DepGroup:array of TShowDepGroup;
    //
    { Private declarations }
    procedure SetFactory;
    procedure SetDepartment;
    procedure GroupDepNameInit();
    procedure ShowGroupDepName(index:Byte;myDepID:string;myDepName:String);
  public
    { Public declarations }
  end;

var
  SMDDCycRound: TSMDDCycRound;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TSMDDCycRound.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSMDDCycRound.FormDestroy(Sender: TObject);
begin
  DepIDList.Free;
  Close;
end;

procedure TSMDDCycRound.Button4Click(Sender: TObject);
var i:integer;
    DDBHList:TStringList;
begin

  if ((DepNameCB.text='') and (DDBHEdit.Text='') and (CheckBox1.Checked=false) and (CheckBox2.Checked=false)) then
  begin
    showmessage('Pls select Department first.');
    abort;
  end;
  if Pos(',',DDBHEdit.Text)>0 then
  begin
     DDBHList:=TStringlist.Create;
     DDBHList:=funcObj.SplitString(DDBHEdit.Text,',');
     for i:=0 to DDBHLIst.Count-1 do
     begin
       DDBH:=DDBH+' DDBH like '''+DDBHLIst.Strings[i]+'%'' or ';
     end;
     DDBHSubSQL:='(Select DDBH from SMDD where '+ Copy(DDBH,1,length(DDBH)-3)+')';
     DDBHList.Free;
  end else
  begin
     DDBHSubSQL:='(Select DDBH from SMDD where DDBH  like '''+DDBHEdit.Text+'%'')';
  end;
  PlanDateSQL:='';
  if CheckBox1.Checked=true and CheckBox2.Checked=true then
    PlanDateSQL:='IsNull(SMDD.RPlanDate,SMDD.PlanDate)';
  if CheckBox1.Checked=true and CheckBox2.Checked=false then
    PlanDateSQL:='SMDD.PlanDate';
  if CheckBox1.Checked=false and CheckBox2.Checked=true then
    PlanDateSQL:='SMDD.RPlanDate';
  //
  DepID:='';
  if DepNameCB.Text<>'' then
  begin
    i:=DepNameCB.Items.IndexOf(DepNameCB.Text);
    if i>=0 then  DepNameCB.ItemIndex:=i;
  end;
  if DepNameCB.ItemIndex>-1 then
  DepID:=DepIDList.Strings[DepNameCB.ItemIndex]; //'A2010208';//A2_LEAN2-08_C
  //
  if PC1.ActivePageIndex=1 then
  begin
    with SMDDS do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select * from (');
      SQL.Add('select BDepartment.Xuong,BDepartment.DepName,SMDD.DDBH,SMDD.Qty,'+PlanDateSQL+' as PlanDate,ROrder,IsNull(SMDD.RDepNo,SMDD.DepNo) as DepNo  from SMDD');
      SQL.Add('left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.DepNo)');
      SQL.Add('where SMDD.GXLB=''C'' ');
      if PlanDateSQL<>'' then
      begin
      SQL.Add('  and  convert(smalldatetime,convert(varchar,'+PlanDateSQL+',111)) between ');
      SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      end;
      if DepNameCB.Text<>'' then
      SQL.Add('  and  BDepartment.ID ='''+DepID+'''');
      if XuongCB.Text<>'' then
      SQL.Add('  and  BDepartment.Xuong like '''+XuongCB.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
      SQL.add(') SMDD order by PlanDate,DepName,ROrder');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    BtnNextDep.Enabled:=false;
    BtnPriorDep.Enabled:=false;
    GroupDepNameInit();
    //分Lean線別顯示
    with QTemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Distinct DepNo,DepName from (');
      SQL.Add('select BDepartment.DepName,IsNull(SMDD.RDepNo,SMDD.DepNo) as DepNo  from SMDD');
      SQL.Add('left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.DepNo)');
      SQL.Add('where SMDD.GXLB=''C'' ');
      if PlanDateSQL<>'' then
      begin
      SQL.Add('  and  convert(smalldatetime,convert(varchar,'+PlanDateSQL+',111)) between ');
      SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      end;
      if DepNameCB.Text<>'' then
      SQL.Add('  and  BDepartment.ID ='''+DepID+'''');
      if XuongCB.Text<>'' then
      SQL.Add('  and  BDepartment.Xuong like '''+XuongCB.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
      SQL.add(') SMDD order by DepName');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      //
      setlength(DepGroup,QTemp.RecordCount);
      for i:=0 to QTemp.RecordCount-1 do
      begin
        DepGroup[i].DepID:=FieldByName('DepNo').AsString;
        DepGroup[i].DepName:=FieldByName('DepName').AsString;
        if (i+1)<=6 then
        begin
          ShowGroupDepName(i+1,FieldByName('DepNo').AsString,FieldByName('DepName').AsString);
          DepGroupPos:=i+1;
        end;
        QTemp.Next;
      end;
      if High(DepGroup)>=6 then
      begin
        BtnNextDep.Enabled:=true;
      end;
      Active:=false;
    end;
  end else if PC1.ActivePageIndex=0 then
  begin
    //
    with RYQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select PlanDate,DDBH,Min(TUA) as T1,MAX(TUA) as T2,DepNo,DepName,MIN(TUADDBH) as TUADDBH,Min(YN) as YN from (');
      SQL.Add('select  SMDD.YSBH as DDBH,');
      SQL.Add('       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(SMDD.DDBH,3)) else 1 end) as TUA,');
      SQL.Add('       (case when SMDD.YSBH <> SMDD.DDBH then left(SMDD.DDBH,len(SMDD.DDBH)-3) else SMDD.DDBH end) as TUADDBH,');
      SQL.Add('       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartment.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.YN,SMDD.ROrder ');
      SQL.Add('from SMDD');
      SQL.Add('left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.DepNO)');
      SQL.Add('where SMDD.GXLB=''C'' ');
      if PlanDateSQL<>'' then
      begin
      SQL.Add('  and  convert(smalldatetime,convert(varchar,'+PlanDateSQL+',111)) between ');
      SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      end;
      if DepNameCB.Text<>'' then
      SQL.Add('  and  BDepartment.ID ='''+DepID+'''');
      if XuongCB.Text<>'' then
      SQL.Add('  and  BDepartment.Xuong like '''+XuongCB.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
      SQL.Add(') SMDD Group by PlanDate,DepNo,DepName,DDBH ');
      SQL.Add('order by  PlanDate,DepNo,DepName,Min(ROrder)');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
end;

procedure TSMDDCycRound.GroupDepNameInit();
var i:integer;
    LabelObj:TLabel;
    QueryObj:TQuery;
begin

  for i:=1 to 6 do
  begin
    LabelObj:=TLabel(FindComponent('DepLabel'+inttostr(i)));
    if LabelObj<>nil then LabelObj.Caption:='';
    QueryObj:=TQuery(FindComponent('DepQuery'+inttostr(i)));
    if QueryObj<>nil then QueryObj.Active:=false;
  end;
end;
procedure TSMDDCycRound.ShowGroupDepName(index:Byte;myDepID:string;myDepName:String);
var LabelObj:TLabel;
    QueryObj:TQuery;
begin

  //
  LabelObj:=TLabel(FindComponent('DepLabel'+inttostr(index)));
  if LabelObj<>nil then LabelObj.Caption:=myDepName;
  QueryObj:=TQuery(FindComponent('DepQuery'+inttostr(index)));
  if QueryObj<>nil then
  begin
    with QueryObj do
    begin
      Active:=false;
      SQL.Clear;
      //
      SQL.Add('select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as T2,DepNo,DepName from (');
      SQL.Add('select  SMDD.YSBH as DDBH,');
      SQL.Add('       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(SMDD.DDBH,3)) else 1 end) as TUA,');
      SQL.Add('       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartment.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMDD.ROrder ');
      SQL.Add('from SMDD');
      SQL.Add('left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.DepNO)');
      SQL.Add('where SMDD.GXLB=''C'' ');
      SQL.Add('      and  BDepartment.ID ='''+myDepID+'''');
      if PlanDateSQL<>'' then
      begin
      SQL.Add('  and  convert(smalldatetime,convert(varchar,'+PlanDateSQL+',111)) between ');
      SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      end;
      SQL.Add('  and  BDepartment.ID ='''+myDepID+'''');
      if XuongCB.Text<>'' then
      SQL.Add('  and  BDepartment.Xuong like '''+XuongCB.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
      SQL.Add(') SMDD Group by PlanDate,DepNo,DepName,DDBH ');
      SQL.Add('order by  PlanDate,DepNo,DepName,Min(ROrder)');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
end;
procedure TSMDDCycRound.SetFactory;
begin
  //
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL');
    SQL.Add('AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND ISNULL(Xuong, '''') <> ''''');
    SQL.Add('GROUP BY Xuong');
    SQL.Add('ORDER BY CONVERT(INT, REPLACE(Xuong, ''A'', ''''))');
    Active := true;
    XuongCB.Items.Clear;
    XuongCB.Items.Add('');
    while not Eof do
    begin
      XuongCB.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
  //
end;
procedure TSMDDCycRound.SetDepartment;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID,DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong = ''' + XuongCB.Text + '''');
    SQL.Add('ORDER BY ID');
    Active := true;
    DepNameCB.Items.Clear;
    DepIDList.Clear;
    DepNameCB.Items.Add('');
    DepIDList.Add('');
    while not Eof do
    begin
      DepNameCB.Items.Add(FieldByName('DepName').AsString);
      DepIDList.Add(FieldByName('ID').AsString);
      Next;
    end;
  end;
end;
procedure TSMDDCycRound.FormCreate(Sender: TObject);
begin
  DepIDList:=TStringlist.Create;
  DTP1.Date:=Date();
  DTP2.Date:=Date()+1;
  //DTP1.Date:=startoftheweek(incweek(Date,1));
  //DTP2.Date:=endoftheweek(incweek(Date,1));
  SetFactory;
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID,DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add('ORDER BY ID');
    Active := true;
    DepNameCB.Items.Clear;
    DepIDList.Clear;
    DepNameCB.Items.Add('');
    DepIDList.Add('');
    while not Eof do
    begin
      DepNameCB.Items.Add(FieldByName('DepName').AsString);
      DepIDList.Add(FieldByName('ID').AsString);
      //
      DBGridEh7.Columns[1].PickList.add(FieldByName('ID').AsString);
      DBGridEh7.Columns[2].PickList.add(FieldByName('DepName').AsString);
      Next;
    end;
    Active := false;
  end;
end;

procedure TSMDDCycRound.XuongCBChange(Sender: TObject);
begin
 SetDepartment;
end;

procedure TSMDDCycRound.BtnNextDepClick(Sender: TObject);
var i,count:integer;
begin
  //
  Count:=0;
  GroupDepNameInit();
  for i:=DepGroupPos to High(DepGroup) do
  begin
    count:=count+1;
    ShowGroupDepName(count,DepGroup[i].DepID,DepGroup[i].DepName);
    if count>=6 then
      break;
  end;
  DepGroupPos:=DepGroupPos+count;
  if DepGroupPos>=High(DepGroup) then
  begin
    BtnNextDep.Enabled:=false;
  end;
  BtnPriorDep.Enabled:=true;
  //
end;

procedure TSMDDCycRound.BtnPriorDepClick(Sender: TObject);
var i,count:integer;
begin

  if (DepGroupPos mod 6)>0 then
  begin
    DepGroupPos:=((DepGroupPos div 6)-1)*6;
  end else
  begin
    DepGroupPos:=((DepGroupPos div 6)-2)*6;
  end;
  //
  Count:=0;
  GroupDepNameInit();
  for i:=DepGroupPos to High(DepGroup) do
  begin
    count:=count+1;
    ShowGroupDepName(count,DepGroup[i].DepID,DepGroup[i].DepName);
    if count>=6 then
      break;
  end;
  DepGroupPos:=DepGroupPos+Count;
  if DepGroupPos<=6 then
  begin
    BtnPriorDep.Enabled:=false;
  end;
  BtnNextDep.Enabled:=true;
  //
end;

procedure TSMDDCycRound.CheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //CheckBox2.Checked := not CheckBox1.Checked;
end;

procedure TSMDDCycRound.CheckBox2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //CheckBox1.Checked := not CheckBox2.Checked;
end;

procedure TSMDDCycRound.BB3Click(Sender: TObject);
begin
  with RYQuery do
  begin
    Edit;
    FieldByName('YN').Value := 0;
    FieldByName('DepNo').Value := null;
    FieldByName('DepName').Value := null;
    FieldByName('PlanDate').Value := null;
  end;
end;

procedure TSMDDCycRound.DBGridEh7GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if RYQuery.FieldByName('YN').AsString='0' then
  begin
    DBGridEh7.canvas.font.color:=clred;
  end;
end;

procedure TSMDDCycRound.BB6Click(Sender: TObject);
begin
  RYQuery.Active:=false;
  RYQuery.Active:=true;
end;

procedure TSMDDCycRound.BB2Click(Sender: TObject);
begin
  with RYQuery do
  begin
    Insert;
    FieldByName('PlanDate').Value:=FormatDateTime('YYYY/MM/DD',DTP1.Date);
    FieldByName('TUADDBH').Value := '';
    FieldByName('YN').Value := '1';
    if DepNameCB.Text<>'' then FieldByName('DepName').Value:=DepNameCB.Text;
  end;
end;

procedure TSMDDCycRound.RYQueryDepNameSetText(Sender: TField;
  const Text: String);
var index:integer;
begin
  Sender.Value:=Text;
  index:=DBGridEh7.Columns[2].PickList.Indexof(Text);
  if index>=0 then
  begin
    RYQuery.Edit;
    RYQuery.FieldByName('DepNo').Value:=DBGridEh7.Columns[1].PickList[index];
    RYQuery.Post;
  end else
  begin
    RYQuery.Edit;
    RYQuery.FieldByName('DepNo').Value:=null;
    RYQuery.Post;
  end;
end;

procedure TSMDDCycRound.BB5Click(Sender: TObject);
   procedure SetTUADDBH();
   begin
      with QTemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select top 1 (case when SMDD.YSBH <> SMDD.DDBH then left(SMDD.DDBH,len(SMDD.DDBH)-3) else SMDD.DDBH end) as TUADDBH from SMDD where GXLB=''C'' and YSBH='''+RYQuery.FieldByName('DDBH').Asstring+''' ');
        Active:=true;
        if RecordCount>0 then
        begin
          RYQuery.Edit;
          RYQuery.FieldByName('TUADDBH').Value:=FieldByName('TUADDBH').Value;
          RYQuery.Post;
        end;
        Active:=false;
      end;
   end;
var i,j,T1,T2,flowindex:integer;
    DDBH,RPlanDate,RDepNO,ROrder:string;
    Next_RPlanDate,Next_RDepNo:string;
begin

   Flowindex:=1;
   RYQuery.First;
   for i:=0 to RYQuery.RecordCount-1 do
   begin
      {
      case RYQuery.UpdateStatus of
        usInserted,usModified:
        begin
        }
          SetTUADDBH();
          if RYQuery.FieldByName('TUADDBH').Asstring<>'' then
          begin
            if RYQuery.FieldByName('DepNo').Asstring='' then RDepNo:='null' else RDepNo:=''''+RYQuery.FieldByName('DepNo').Asstring+'''';
            if RYQuery.FieldByName('PlanDate').Asstring='' then RPlanDate:='null' else RPlanDate:=''''+RYQuery.FieldByName('PlanDate').Asstring+'''';
            T1:=strtoint(RYQuery.FieldByName('T1').Asstring);
            T2:=strtoint(RYQuery.FieldByName('T2').Asstring);
            for j:=T1 to T2 do
            begin
              DDBH:=RYQuery.FieldByName('TUADDBH').Asstring+Format('%.3d',[j]);
              ROrder:=inttostr(flowindex);
              with QTemp do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update SMDD set RPlanDate='+RPlanDate+',RDepNo='+RDepNo+',ROrder='+ROrder+' where GXLB=''C'' and DDBH='''+DDBH+''' ');
                //funcObj.WriteErrorLog(sql.Text);
                ExecSQL();
              end;
              flowindex:=flowindex+1;
            end;
          end;
        {end;
      end;}
      RYQuery.Next;
      //檢查是否換線或換日期
      if RYQuery.FieldByName('DepNo').Asstring='' then Next_RDepNo:='null' else Next_RDepNo:=''''+RYQuery.FieldByName('DepNo').Asstring+'''';
      if RYQuery.FieldByName('PlanDate').Asstring='' then Next_RPlanDate:='null' else Next_RPlanDate:=''''+RYQuery.FieldByName('PlanDate').Asstring+'''';
      if ((RPlanDate<>Next_RPlanDate) or (RDepNo<>Next_RDepNo)) then
      begin
       flowindex:=1;
      end;
   end;
   Showmessage('Success');
   RYQuery.Active:=false;
   RYQuery.Active:=true;
end;

procedure TSMDDCycRound.BB4Click(Sender: TObject);
var i:integer;
begin
  RYQuery.First;
  for i:=0 to RYQuery.RecordCount-1 do
  begin
    with RYQuery do
    begin
      Edit;
      FieldByName('YN').Value := 0;
      FieldByName('DepNo').Value := null;
      FieldByName('DepName').Value := null;
      FieldByName('PlanDate').Value := null;
      Post;
      Next;
    end;
  end;

end;

procedure TSMDDCycRound.BBT7Click(Sender: TObject);
var i:integer;
    PlanDate,DepNO,DepName,DDBH,T1,T2,TUADDBH,YN:String;
    P_PlanDate,P_DepNO,P_DepName,P_DDBH,P_T1,P_T2,P_TUADDBH,P_YN:String;
begin
  with RYQuery do
  begin
    if  FieldByName('PlanDate').IsNull or  FieldByName('DepName').IsNull or FieldByName('DDBH').IsNull  or FieldByName('T1').IsNull or FieldByName('T2').IsNull  or FieldByName('TUADDBH').IsNull     then
    begin
      showmessage('Please Input PlanDate or DepName or DDBH or T1 or T2');
      Exit;
    end;
  end;
  //
  if not RYQuery.Bof then
  begin
    with RYQuery do
    begin
      PlanDate:=FieldByName('PlanDate').Value;
      DepNO:=FieldByName('DepNO').Value;
      DepName:=FieldByName('DepName').Value;
      DDBH:=FieldByName('DDBH').Value;
      T1:=FieldByName('T1').Value;
      T2:=FieldByName('T2').Value;
      TUADDBH:=FieldByName('TUADDBH').Value;
      //
      Prior;
      if not RYQuery.Bof then
      begin
        P_PlanDate:=FieldByName('PlanDate').Value;
        P_DepNO:=FieldByName('DepNO').Value;
        P_DepName:=FieldByName('DepName').Value;
        P_DDBH:=FieldByName('DDBH').Value;
        P_T1:=FieldByName('T1').Value;
        P_T2:=FieldByName('T2').Value;
        P_TUADDBH:=FieldByName('TUADDBH').Value;
        //
        Edit;
        FieldByName('PlanDate').Value:=PlanDate;
        FieldByName('DepNO').Value:=DepNO;
        FieldByName('DepName').Value:=DepName;
        FieldByName('DDBH').Value:=DDBH;
        FieldByName('T1').Value:=T1;
        FieldByName('T2').Value:=T2;
        FieldByName('TUADDBH').Value:=TUADDBH;
        Post;
        //
        Next;
        Edit;
        FieldByName('PlanDate').Value:=P_PlanDate;
        FieldByName('DepNO').Value:=P_DepNO;
        FieldByName('DepName').Value:=P_DepName;
        FieldByName('DDBH').Value:=P_DDBH;
        FieldByName('T1').Value:=P_T1;
        FieldByName('T2').Value:=P_T2;
        FieldByName('TUADDBH').Value:=P_TUADDBH;
        Post;
        Prior;
      end;
    end;
  end;
end;

procedure TSMDDCycRound.RYQueryDDBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select YSBH,Min(TUA) as T1,MAX(TUA) as T2 from (');
    SQL.Add('select SMDD.YSBH ,');
    SQL.Add('       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(SMDD.DDBH,3)) else 1 end) as TUA   ');
    SQL.Add('from SMDD');
    SQL.Add('where SMDD.GXLB=''C'' and SMDD.YSBH='''+Sender.Value+''' ) SMDD');
    SQL.Add('Group by YSBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      RYQuery.Edit;
      RYQuery.FieldByName('T1').Value:=FieldByName('T1').Value;
      RYQuery.FieldByName('T2').Value:=FieldByName('T2').Value;
      RYQuery.Post;
    end else
    begin
      RYQuery.Edit;
      RYQuery.FieldByName('T1').Value:=null;
      RYQuery.FieldByName('T2').Value:=null;
      RYQuery.Post;
    end;
    Active:=false;
  end;

end;

procedure TSMDDCycRound.BBT8Click(Sender: TObject);
var i:integer;
    PlanDate,DepNO,DepName,DDBH,T1,T2,TUADDBH,YN:String;
    N_PlanDate,N_DepNO,N_DepName,N_DDBH,N_T1,N_T2,N_TUADDBH,N_YN:String;
begin
  with RYQuery do
  begin
    if  FieldByName('PlanDate').IsNull or  FieldByName('DepName').IsNull or FieldByName('DDBH').IsNull  or FieldByName('T1').IsNull or FieldByName('T2').IsNull  or FieldByName('TUADDBH').IsNull     then
    begin
      showmessage('Please Input PlanDate or DepName or DDBH or T1 or T2');
      Exit;
    end;
  end;
  if not RYQuery.Eof then
  begin
    with RYQuery do
    begin
      PlanDate:=FieldByName('PlanDate').Value;
      DepNO:=FieldByName('DepNO').Value;
      DepName:=FieldByName('DepName').Value;
      DDBH:=FieldByName('DDBH').Value;
      T1:=FieldByName('T1').Value;
      T2:=FieldByName('T2').Value;
      TUADDBH:=FieldByName('TUADDBH').Value;
      //
      Next;
      if not RYQuery.Eof then
      begin
        N_PlanDate:=FieldByName('PlanDate').Value;
        N_DepNO:=FieldByName('DepNO').Value;
        N_DepName:=FieldByName('DepName').Value;
        N_DDBH:=FieldByName('DDBH').Value;
        N_T1:=FieldByName('T1').Value;
        N_T2:=FieldByName('T2').Value;
        N_TUADDBH:=FieldByName('TUADDBH').Value;
        //
        Edit;
        FieldByName('PlanDate').Value:=PlanDate;
        FieldByName('DepNO').Value:=DepNO;
        FieldByName('DepName').Value:=DepName;
        FieldByName('DDBH').Value:=DDBH;
        FieldByName('T1').Value:=T1;
        FieldByName('T2').Value:=T2;
        FieldByName('TUADDBH').Value:=TUADDBH;
        Post;
        //
        Prior;
        Edit;
        FieldByName('PlanDate').Value:=N_PlanDate;
        FieldByName('DepNO').Value:=N_DepNO;
        FieldByName('DepName').Value:=N_DepName;
        FieldByName('DDBH').Value:=N_DDBH;
        FieldByName('T1').Value:=N_T1;
        FieldByName('T2').Value:=N_T2;
        FieldByName('TUADDBH').Value:=N_TUADDBH;
        Post;
        Next;
      end;
    end;
  end;
end;

procedure TSMDDCycRound.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if  SMDDS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
  try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   SMDDS.fieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=SMDDS.fields[i].FieldName;
        end;
      SMDDS.First;
      j:=2;
      while   not   SMDDS.Eof   do
      begin
          for   i:=0   to   SMDDS.FieldCount-1   do
          begin
              eclApp.Cells(j,i+1):=SMDDS.Fields[i].Value;
          end;
          SMDDS.Next;
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

end.
