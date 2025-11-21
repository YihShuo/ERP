unit CD_SMDDList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, ExtCtrls, StdCtrls, ComCtrls,
  Buttons, Dateutils, DBGridEhImpExp, ShellAPI, Menus, CheckLst;

type
  TCD_SMDDList = class(TForm)
    Panel1: TPanel;
    SMDDS: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    SMDDSZLBH: TStringField;
    SMDDSDDBH: TStringField;
    SMDDSBWBH: TStringField;
    SMDDSYWSM: TStringField;
    SMDDSZWSM: TStringField;
    SMDDSSIZE: TStringField;
    SMDDSQty: TIntegerField;
    SMDDSCutNum: TIntegerField;
    SMDDSPiece: TSmallintField;
    SMDDSLayer: TSmallintField;
    SMDDSTQty: TIntegerField;
    SMDDSTCutNum: TFloatField;
    SMDDSDepNO: TStringField;
    SMDDSDepName: TStringField;
    SMDDSPlanDate: TDateTimeField;
    SMDDSGCBWBH: TStringField;
    SMDDSGYWSM: TStringField;
    SMDDSGZWSM: TStringField;
    SMDDSPDays: TIntegerField;
    SMDDSCutPlanDate: TDateTimeField;
    SMDDSCLBH: TStringField;
    SMDDSYWPM: TStringField;
    SMDDSArticle: TStringField;
    SMDDSShipdate: TDateTimeField;
    SMDDSPairs: TIntegerField;
    SMDDSDQty: TIntegerField;
    SMDDSDCutNum: TIntegerField;
    SMDDSokDCutNum: TIntegerField;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DDBHEdit: TEdit;
    DepNameEdit: TEdit;
    CLBHEdit: TEdit;
    BWBHEdit: TEdit;
    DLNOEdit: TEdit;
    Button1: TButton;
    ScanStatusCombo: TComboBox;
    Label6: TLabel;
    AddSizeBtn: TBitBtn;
    Label7: TLabel;
    GCYWSMEdit: TEdit;
    TmpQry: TQuery;
    SMDDSTSIZE: TStringField;
    GroupBox1: TGroupBox;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    SelectAll1: TMenuItem;
    UnSelectAll1: TMenuItem;
    BB13: TBitBtn;
    GroupBox2: TGroupBox;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    DateTypeBox: TComboBox;
    ProcessBox: TComboBox;
    SB1: TSpeedButton;
    CLLean: TCheckListBox;
    TypeBox: TComboBox;
    GCBox: TComboBox;
    SMDDSRPlanDate: TDateTimeField;
    SMDDSROrder: TIntegerField;
    SB2: TButton;
    MachineBox: TComboBox;
    QMachine: TQuery;
    MachineLeanBox: TComboBox;
    QLean: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure AddSizeBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure UnSelectAll1Click(Sender: TObject);
    procedure BB13Click(Sender: TObject);
    procedure CLLeanClickCheck(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure CLLeanClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure TypeBoxChange(Sender: TObject);
    procedure ProcessBoxChange(Sender: TObject);
    procedure SB2Click(Sender: TObject);
    procedure MachineLeanBoxChange(Sender: TObject);
  private
    GDLNO, MachineType: String;
    ProcessList: array of string;
    LeanID, MachineID: TStringList;
    procedure CMFocusChanged(var Message: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure ClickMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure SetMachineLean;
    procedure SetMachine;
    { Private declarations }
  public
    { Public declarations }
    function CreateDispathCutting(): boolean;
    function GetQuerySubSQL(Query: TQuery; DBGridEh: TDBGridEh; FieldNM: String; Flag: byte): String;
  end;

var
  CD_SMDDList: TCD_SMDDList;

implementation

uses
  main1, FunUnit, OrderCopy1;
{$R *.dfm}

procedure TCD_SMDDList.CMFocusChanged(var Message: TCMFocusChanged);
var
  Target: TWinControl;
begin
  Target := TWinControl(Message.Sender);

  if (Target.Name <> 'CLLean') then
    CLLean.Visible := false;
end;

procedure TCD_SMDDList.ClickMessage(var Msg: tagMSG; var Handled: Boolean);
var
  Target: TControl;
  Point: TPoint;
begin
  if (Msg.Message = WM_LBUTTONDOWN) then
  begin
    Point.X := LongRec(Msg.lParam).Lo;
    Point.Y := LongRec(Msg.lParam).Hi;
    Target := FindDragTarget(Point, true);

    if (Target.Name <> 'CLLean') then
      CLLean.Visible := false;
  end;
end;

procedure TCD_SMDDList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCD_SMDDList.FormDestroy(Sender: TObject);
begin
  CD_SMDDList:=nil;
end;

procedure TCD_SMDDList.Button4Click(Sender: TObject);
var DDBH,DDBHSubSQL,DepName,DepNameSubSQL:String;
    DDBHList,DepNameList:TStringList;
    i:integer;
begin
  if ((DDBHEdit.Text='') and (DateTypeBox.ItemIndex < -1)) then
  begin
    showmessage('Please select PlanDate or Input DDBH ');
    exit;
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

  if Pos(',',DepNameEdit.Text)>0 then
  begin
     DepNameList:=TStringlist.Create;
     DepNameList:=funcObj.SplitString(DepNameEdit.Text,',');
     for i:=0 to DepNameList.Count-1 do
     begin
       DepName:=DepName+' DepName like '''+DepNameList.Strings[i]+'%'' or ';
     end;
     DepNameSubSQL:='(Select ID from BDepartment where '+ Copy(DepName,1,length(DepName)-3)+')';
     DepNameList.Free;
  end else
  begin
     DepNameSubSQL:='(Select ID from BDepartment where DepName  like '''+DepNameEdit.Text+'%'')';
  end;
  //
  with SMDDS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CutDispatchZL.*,CutDisPatchS.DQty,CutDisPatchS.DCutNum,CutDisPatchS.okDCutNum from (');
    SQL.Add('Select CutDispatchZL.ZLBH,SMDD.DDBH,CutDispatchZL.BWBH,BWZL.YWSM,BWZL.ZWSM,CutDispatchZL.SIZE,CutDispatchZL.Qty,CutDispatchZL.CutNum,CutDispatchZL.Piece,CutDispatchZL.Layer,SMDDS.XXCC as TSIZE,SMDDS.Qty as TQty,');
    SQL.Add('       case when joinnum>0 then CEILING((SMDDS.Qty)*piece/convert(float,layer)*joinnum) else 0 end as TCutNum,SMDD.DepNO,BDepartment.DepName,SMDD.PlanDate,SMDD.RPlanDate,SMDD.ROrder,ZL_GC.GCBWBH,GCBWD.YWSM as GYWSM,GCBWD.ZWSM as GZWSM,ZL_GC.PDays,');
    SQL.Add('       case when PDays is not null then (IsNull(SMDD.RPlanDate,SMDD.PlanDate)-ZL_GC.PDays) else IsNull(SMDD.RPlanDate,SMDD.PlanDate)-1 end as CutPlanDate,');
    SQL.Add('       CutDispatchZL.CLBH,CLZL.YWPM,DDZL.Article,DDZL.Shipdate,DDZL.Pairs');
    SQL.Add('from CutDispatchZL ');
    SQL.Add('Left  join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH  ');
    SQL.Add('Left  join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE');
    SQL.Add('Left  join BDepartment on BDepartment.ID=SMDD.DepNO');
    SQL.Add('Left  join CLZL on CLZL.CLDH=CutDispatchZL.CLBH ');
    SQL.Add('Left  join BWZL on BWZL.BWDH=CutDispatchZL.BWBH');
    SQL.Add('Left  join DDZL on DDZL.DDBH=CutDispatchZL.ZLBH');
    SQL.Add('Left  join CutDispatchZL_GC ZL_GC on ZL_GC.ZLBH=CutDispatchZL.ZLBH and ZL_GC.BWBH=CutDispatchZL.BWBH and ZL_GC.SIZE=CutDispatchZL.SIZE');
    SQL.Add('left  join KT_SOPCutS_GCBWD GCBWD on GCBWD.GCBWDH=ZL_GC.GCBWBH');
    SQL.Add('where 1=1 and SMDD.GXLB=''C'' and SMDDS.Qty is not null ');
    if DDBHEdit.Text<>'' then
    SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
    if DepNameEdit.Text<>'' then
    SQL.Add('          and BDepartment.ID in  '+DepNameSubSQL+'   ');
    if BWBHEdit.Text<>'' then
    SQL.Add('          and BWZL.YWSM like ''%'+BWBHEdit.Text+'%'' ');
    if GCYWSMEdit.Text<>'' then
    SQL.Add('          and GCBWD.YWSM like ''%'+GCYWSMEdit.Text+'%'' ');
    SQL.Add(') CutDispatchZL   ');
    SQL.Add('left join (');
    SQL.Add('	  select CutDisPatchS.ZLBH,CutDispatchSS.DDBH,CutDisPatchSS.BWBH,CutDisPatchSS.SIZE,CutDisPatchSS.CLBH, Sum(IsNull(CutDisPatchSS.Qty,0)) as DQty,Sum(IsNull(CutDisPatchS.CutNum,0)) as DCutNum,Sum(IsNull(CutDisPatchS.okCutNum,0)) as okDCutNum');
    SQL.Add('	  from CutDisPatchSS');
    SQL.Add('	  Left join CutDispatchS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH');
    SQL.Add('	  Left join SMDD on SMDD.DDBH=CutDispatchSS.DDBH and SMDD.GXLB=''C'' ');
    SQL.Add('	  Left join BDepartment on BDepartment.ID=SMDD.DepNO');
    SQL.Add('	  --Left join CutDispatchZL on  CutDispatchS.ZLBH=CutDispatchZL.ZLBH and CutDispatchS.BWBH=CutDispatchZL.BWBH  and CutDispatchS.SIZE=CutDispatchZL.SIZE and CutDispatchS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('	  where 1=1 ');
    if DDBHEdit.Text<>'' then
    SQL.add('      and SMDD.DDBH in '+DDBHSubSQL);
    if DepNameEdit.Text<>'' then
    SQL.Add('          and BDepartment.ID in  '+DepNameSubSQL+'   ');
    SQL.Add('      Group by CutDisPatchS.ZLBH,CutDispatchSS.DDBH,CutDisPatchSS.BWBH,CutDisPatchSS.SIZE,CutDisPatchSS.CLBH');
    SQL.Add(') CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('where  1=1 ');
    if DateTypeBox.ItemIndex = 0 then
    begin
    sql.add('      and (convert(smalldatetime,convert(varchar,CutDispatchZL.CutPlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    end
    else if DateTypeBox.ItemIndex = 1 then
    begin
    sql.add('      and (convert(smalldatetime,convert(varchar,CutDispatchZL.PlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    end
    else if DateTypeBox.ItemIndex = 2 then
    begin
    sql.add('      and (convert(smalldatetime,convert(varchar,CutDispatchZL.RPlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    end;
    if ScanStatusCombo.ItemIndex=1 then //尚未派工
    SQL.Add('       and CutDisPatchS.DQty is  null ');
    if ScanStatusCombo.ItemIndex=2 then //尚未全部報工
    SQL.Add('       and CutDisPatchS.DQty is not null  and CutDisPatchS.DCutNum >CutDisPatchS.okDCutNum  ');
    if ScanStatusCombo.ItemIndex=3 then //全部報工
    SQL.Add('       and CutDisPatchS.DQty is not null  and CutDisPatchS.DCutNum <=CutDisPatchS.okDCutNum  ');
    if DLNOEdit.Text<>'' then
    SQL.Add('       and exists (Select * from CutDispatchSS where DLNO='''+DLNOEdit.Text+''' and CutDispatchZL.ZLBH=CutDispatchSS.ZLBH and CutDispatchZL.DDBH=CutDispatchSS.DDBH and CutDispatchZL.BWBH=CutDispatchSS.BWBH and CutDispatchZL.SIZE=CutDispatchSS.SIZE and CutDispatchZL.CLBH=CutDispatchSS.CLBH)   --根據派工單條列&報工   ');
    if CLBHEdit.Text<>'' then
    SQL.Add('       and CutDispatchZL.CLBH like '''+CLBHEdit.Text+'%'' ');
    //加工
    if ProcessBox.ItemIndex = 1 then
    begin
      if (GCBox.ItemIndex = 0) then
        SQL.Add('       and GCBWBH is not null ')
      else
        SQL.Add('       and GCBWBH = ''' + ProcessList[GCBox.ItemIndex] + '''');
    end
    else if ProcessBox.ItemIndex = 2 then
    SQL.Add('       and GCBWBH is null ');
    if DateTypeBox.ItemIndex = 0 then
    SQL.Add('order by CutDispatchZL.CutPlanDate asc')
    else if DateTypeBox.ItemIndex = 1 then
    SQL.Add('order by CutDispatchZL.PlanDate asc')
    else if DateTypeBox.ItemIndex = 2 then
    SQL.Add('order by CutDispatchZL.RPlanDate asc');
    SQL.Add(',CutDispatchZL.ZLBH desc,CutDispatchZL.CLBH desc,CutDispatchZL.BWBH desc,CutDispatchZL.SIZE desc,CutDispatchZL.DDBH asc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  SMDDS.Active:=true;
end;

procedure TCD_SMDDList.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMDDS.FieldByName('DQty').IsNull=false then
  begin
    if SMDDS.FieldByName('DCutNum').value>SMDDS.FieldByName('okDCutNum').value then
      DBGridEh1.canvas.font.color:=clblue
    else
      DBGridEh1.canvas.font.color:=clgreen;
  end;
end;

procedure TCD_SMDDList.FormCreate(Sender: TObject);
var
  i: integer;
begin
  LeanID := TStringList.Create;
  MachineID := TStringList.Create;
  DTP1.Date:=startoftheweek(incweek(Date,1));
  DTP2.Date:=DTP1.Date+1;
  MachineType := 'MC';
  SetMachineLean;
  SetMachine;

  with TmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY ID');
    Active := true;

    CLLean.Items.Clear;
    while not Eof do
    begin
      CLLean.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;

    if (RecordCount > 0) then
      CLLean.Height := 22 + 16 * (RecordCount-1)
    else
      CLLean.Height := 22;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBWD');
    Active := true;

    SetLength(ProcessList, RecordCount+1);  
    ProcessList[0] := 'All';
    i := 1;
    GCBox.Items.Clear;
    GCBox.Items.Add('All');
    while not Eof do
    begin
      ProcessList[i] := FieldByName('gcbwdh').AsString;
      GCBox.Items.Add(FieldByName('ywsm').AsString + ' (' + FieldByName('zwsm').AsString + ')');
      Inc(i);
      Next;
    end;
  end;
end;

procedure TCD_SMDDList.SetMachineLean;
begin
  with QLean do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, ''LEAN'' + RIGHT(sumline, 2) AS Lean FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY Lean');
    Active := true;

    MachineLeanBox.Items.Clear;
    LeanID.Clear;
    MachineLeanBox.Items.Add('');
    while not Eof do
    begin
      MachineLeanBox.Items.Add(FieldByName('Lean').AsString);
      LeanID.Add(FieldByName('ID').AsString);
      Next;
    end;
    MachineLeanBox.Items.Add('OTHER');
    MachineLeanBox.ItemIndex := 0;
    SetMachine;
  end;
end;

procedure TCD_SMDDList.SetMachine;
begin
  with QMachine do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, MachineName FROM BMachine');
    if (MachineLeanBox.Text = 'OTHER') then
      SQL.Add('WHERE MachineType = ''Leather''')
    else
      SQL.Add('WHERE MachineType = ''' + MachineType + '''');
    if (MachineLeanBox.ItemIndex = 0) then
      SQL.Add('AND ISNULL(DepNo, '''') = ''''')
    else if (MachineType = 'MC') AND (MachineLeanBox.Text <> 'OTHER') then
      SQL.Add('AND DepNo = ''' + LeanID[MachineLeanBox.ItemIndex-1] + '''');
    Active := true;

    MachineBox.Items.Clear;
    MachineID.Clear;
    MachineBox.Items.Add('');
    while not Eof do
    begin
      MachineBox.Items.Add(FieldByName('MachineName').AsString);
      MachineID.Add(FieldByName('ID').AsString);
      Next;
    end;
    MachineBox.ItemIndex := 0;
  end;
end;

procedure TCD_SMDDList.AddSizeBtnClick(Sender: TObject);
begin
  if messagedlg('are you sure Cutting Dispath? ban muon mo phieu san xuat chat',mtCustom,[mbYes,mbCancel], 0)=mrYes then
  begin
     CreateDispathCutting();
     Showmessage('Success');
  end;
end;

//
function TCD_SMDDList.GetQuerySubSQL(Query:TQuery;DBGridEh:TDBGridEh;FieldNM:String;Flag:byte):String;
   function StringListIsExists(tmpList:TStringlist;Str:String):boolean;
   var i:integer;
       IsExists:boolean;
   begin
     IsExists:=false;
     for i:=0 to tmpList.Count-1 do
     begin
       if tmpList.Strings[i]=Str then
       begin
        IsExists:=true;
        break;
       end;
     end;
     result:=IsExists;
   end;
var i,count:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    TotalList,PlanDate:String;
    IsSelected:boolean;
    tmpList:TStringlist;
begin
  Query.disablecontrols;
  bm:=Query.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  //
  tmpList:=TStringlist.Create;
  TotalList:='';
  try
    if (DBGridEh.SelectedRows.Count > 0) then
    begin
        count:=0;
          for i:=0 to bookmarklist.count-1 do
          begin
            IsSelected:=true;
            if Query.BookmarkValid(pointer(bookmarklist[i])) then
            begin
              Query.gotobookmark(pointer(bookmarklist[i]));
              if Flag=1 then  //尚未派工檢查
                if Query.FieldByName('DQty').AsString<>'' then IsSelected:=false;
              if Flag=2 then  //已派工檢查 尚未報公
                if (Query.FieldByName('DCutNum').value<=Query.FieldByName('okDCutNum').value)  then IsSelected:=false;
              //
              if IsSelected=true then
              begin
                if StringListIsExists(tmpList,Query.FieldByName(FieldNM).AsString)=false then
                begin
                  TotalList:=TotalList+''''+Query.FieldByName(FieldNM).AsString+''',';
                  count:=count+1;
                  tmpList.Add(Query.FieldByName(FieldNM).AsString);
                end;
              end;
              if count>=99 then break;
            end;
          end;
    end;
  finally
    begin
      Query.gotobookmark(bm);
      Query.freebookmark(bm);
      Query.enablecontrols;
    end;
  end;
  if length(TotalList)>0 then
    TotalList:=' ('+Copy(TotalList,1,length(TotalList)-1)+')';
  tmpList.Free;
  result:=TotalList;
end;


//產生表單
function TCD_SMDDList.CreateDispathCutting():boolean;
var
  sYear, sMonth, DLNO, CLBH: string;
  h,i: integer;
  NDate:TDate;
  ZLBHSubSQL,BWBHSubSQL,SIZESubSQL,DDBHSubSQL:String;
  iRes:boolean;
  QDepID:String;
  //
begin
  DLNO:='';
  QDepID:=SMDDS.FieldByName('DepNo').AsString;
  try
      ZLBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'ZLBH',1);
      SIZESubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'SIZE',1);
      BWBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'BWBH',1);
      DDBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'DDBH',1);
      if ((ZLBHSubSQL='') or (SIZESubSQL='') or (BWBHSubSQL='') or (DDBHSubSQL='') ) then iRes:=false else  iRes:=true;
      if iRes=true then
      begin
        //
        if DLNO='' then
        begin
          //Insert into CutDisPatch
          //取Server的年月值
          with TmpQry do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT YEAR(GETDATE()) AS FY, MONTH(GETDATE()) AS FM, GETDATE() AS NDate');
            Active := true;
            NDate := FieldByName('NDate').Value;
            sYear := FieldByName('FY').AsString;
            sMonth := FieldByName('FM').AsString;
            Active := false;
          end;
          if (Length(sMonth) < 2) then
          begin
            sMonth := '0' + sMonth;
          end;
          with TmpQry do    //計算領料單流水號
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT DLNO FROM CutDispatch WHERE DLNO LIKE '''+sYear+sMonth+'%''');
            SQL.Add('ORDER BY DLNO');
            Active := true;

            if (RecordCount > 0) then
            begin
              Last;
              DLNO := FieldByName('DLNO').AsString;
              DLNO := Copy(DLNO, 7, 5);
              DLNO := IntToStr(StrToInt(DLNO)+1);
              while (Length(DLNO) < 5) do
              begin
                DLNO := '0' + DLNO;
              end;
            end
            else begin
              DLNO := '00001';
            end;
            DLNO := sYear + sMonth + DLNO;
            //
            Active := false;
            SQL.Clear;
            SQL.Add('INSERT INTO CutDispatch ');
            SQL.Add('(DLNO, DLLB, GSBH, DepID, PlanDate, Memo, USERID, USERDATE, YN) ');
            SQL.Add('VALUES ');
            SQL.Add('('''+DLNO+''',''' + MachineType + ''','''+main.Edit2.Text+''','''+QDepID+''',Convert(varchar,GetDate(),111),null,'''+main.Edit1.Text+''',GetDate(),1)');
            ExecSQL();
          end;
        end;
        //
        with TmpQry do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('Insert into CutDisPatchS ');
          SQL.Add('select '''+DLNO+''' as DLNO,ZLBH,BWBH,SIZE,CLBH,Qty,XXCC,0 as CutNum,0 as okCutNum,'''+main.Edit1.text+''' as USERID,GetDate() as USERDATE,null as ScanUser,null as ScanDate,1 as YN from (');
          SQL.Add('select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.XXCC,SUM(CutDispatchZL.Qty-IsNull(CutDispatchZL.DQty,0)) as Qty from ( ');
          SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.XXCC,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
          SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CutDispatchZL.XXCC,CLBH,SMDDS.Qty from CutDispatchZL ');
          SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
          SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
          SQL.Add('	where 1=1   and CutDispatchZL.ZLBH in '+ZLBHSubSQL);
          SQL.Add('	 and CutDispatchZL.SIZE in '+SIZESubSQL);
          SQL.Add('	 and CutDispatchZL.BWBH in '+BWBHSubSQL);
          SQL.Add('	 and SMDD.DDBH in '+DDBHSubSQL+') CutDispatchZL');
          SQL.Add('	 left join (');
          SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as DQty from CutDisPatchS');
          SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.SIZE=CutDispatchSS.SIZE');
          SQL.Add('	  where 1=1 ');
          SQL.Add('	  and CutDisPatchS.ZLBH in  '+ZLBHSubSQL);
          SQL.Add('	  and CutDisPatchS.SIZE in '+SIZESubSQL);
          SQL.Add('	  and CutDisPatchS.BWBH in '+BWBHSubSQL);
          SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+' ');
          SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
          SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
          SQL.Add('where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ) CutDispatchZL');
          SQL.Add('Group by CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.XXCC   ) CutDispatchS ');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
        //Insert into CutDisPatchSS
        with TmpQry do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('Insert into CutDisPatchSS ');
          if (MachineBox.ItemIndex <= 0) then
            SQL.Add('select '''+DLNO+''' as DLNO,ZLBH,DDBH,BWBH,SIZE,CLBH,Qty,0,0,Null,Null,'''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,1 as YN from ( ')
          else
            SQL.Add('select '''+DLNO+''' as DLNO,ZLBH,DDBH,BWBH,SIZE,CLBH,Qty,0,0,''' + MachineID[MachineBox.ItemIndex-1] + ''',Convert(varchar,GetDate(),111),'''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,1 as YN from ( ');
          SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.XXCC,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
          SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CutDispatchZL.XXCC,CLBH,SMDDS.Qty from CutDispatchZL ');
          SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
          SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
          SQL.Add('	where 1=1   and CutDispatchZL.ZLBH in '+ZLBHSubSQL);
          SQL.Add('	 and CutDispatchZL.SIZE in '+SIZESubSQL);
          SQL.Add('	 and CutDispatchZL.BWBH in '+BWBHSubSQL);
          SQL.Add('	 and SMDD.DDBH in '+DDBHSubSQL+') CutDispatchZL');
          SQL.Add('	 left join (');
          SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as DQty from CutDisPatchS');
          SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.SIZE=CutDispatchSS.SIZE');
          SQL.Add('	  where 1=1 ');
          SQL.Add('	  and CutDisPatchS.ZLBH in  '+ZLBHSubSQL);
          SQL.Add('	  and CutDisPatchS.SIZE in '+SIZESubSQL);
          SQL.Add('	  and CutDisPatchS.BWBH in '+BWBHSubSQL);
          SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+' ');
          SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
          SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
          SQL.Add('where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ) CutDispatchSS');
          //FuncObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    //end;
    //根據迴轉計算派工刀數
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      Active:=false;
      SQL.Clear;
      SQL.Add('update CutDispatchS Set CutNum=CutDS.CutNum ');
      SQL.Add('from (');
      SQL.Add('select CutDispatchS.DLNO,CutDispatchS.ZLBH,CutDispatchS.BWBH,CutDispatchS.CLBH,CutDispatchS.SIZE ');
      SQL.Add('       ,case when CutDispatchZL.joinnum>0 then CEILING((CutDispatchS.Qty)*CutDispatchZL.piece/convert(float,CutDispatchZL.layer)*joinnum) else 0 end as CutNum');
      SQL.Add('from CutDispatchS');
      SQL.Add('Left join CutDispatchZL on CutDispatchS.ZLBH=CutDispatchZL.ZLBH and CutDispatchS.BWBH=CutDispatchZL.BWBH and CutDispatchS.CLBH=CutDispatchZL.CLBH and CutDispatchZL.SIZE=CutDispatchZL.SIZE');
      SQL.Add('where CutDispatchS.DLNO='''+DLNO+''' ) CutDS ');
      SQL.Add('where CutDS.DLNO=CutDispatchS.DLNO and CutDS.ZLBH=CutDispatchS.ZLBH and CutDS.BWBH=CutDispatchS.BWBH and CutDS.CLBH=CutDispatchS.CLBH and CutDS.SIZE=CutDispatchS.SIZE');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    GDLNO:=DLNO;
      //
  finally
      begin
      end;
  end;

  result:=iRes;

end;

procedure TCD_SMDDList.Button1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
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

procedure TCD_SMDDList.SelectAll1Click(Sender: TObject);
begin
  DBGridEh1.SelectedRows.Clear;
  DBGridEh1.SelectedRows.SelectAll;
end;

procedure TCD_SMDDList.UnSelectAll1Click(Sender: TObject);
begin
  DBGridEh1.SelectedRows.Clear;
end;

procedure TCD_SMDDList.BB13Click(Sender: TObject);
var iRes:boolean;
    ZLBHSubSQL,BWBHSubSQL,SIZESubSQL,DDBHSubSQL:String;
begin
  if messagedlg('Scan OK ?',mtCustom,[mbYes,mbCancel], 0)=mrYes then
  begin
    if SMDDS.Active=false then exit;
    try
        ZLBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'ZLBH',2);
        SIZESubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'SIZE',2);
        BWBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'BWBH',2);
        DDBHSubSQL:=GetQuerySubSQL(SMDDS,DBGridEh1,'DDBH',2);
        if ((ZLBHSubSQL='') or (SIZESubSQL='') or (BWBHSubSQL='') or (DDBHSubSQL='') ) then iRes:=false else  iRes:=true;
        if iRes=true then
        begin
          with tmpQry do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''' + main.Edit1.Text + ''', ScanDate = GetDate() ');
            SQL.Add('from (Select * from CutDispatchSS ');
            SQL.Add('Where ZLBH in '+ZLBHSubSQL+' and BWBH in '+BWBHSubSQL+' and DDBH in '+DDBHSubSQL+' and SIZE in '+SIZESubSQL+'  ) CutDispatchSS');
            SQL.Add('Where CutDispatchSS.DLNO=CutDispatchS.DLNO and CutDispatchSS.ZLBH=CutDispatchS.ZLBH and CutDispatchSS.BWBH=CutDispatchS.BWBH and CutDispatchSS.SIZE=CutDispatchS.SIZE and CutDispatchSS.CLBH=CutDispatchS.CLBH and CutDispatchS.okCutNum<CutDispatchS.CutNum ');
            //funcObj.WriteErrorLog(sql.Text);
            ExecSQL;
          end;
        end;
    finally
      begin
      end;
    end;
    Showmessage('Success');
  end;
  //
end;

procedure TCD_SMDDList.CLLeanClickCheck(Sender: TObject);
var
  i: integer;
  DepName: string;
begin
  DepName := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
      DepName := DepName + CLLean.Items[i] + ',';
  end;
  DepName := Copy(DepName, 1, Length(DepName)-1);
  DepNameEdit.Text := DepName;
end;

procedure TCD_SMDDList.CLLeanClick(Sender: TObject);
var
  i: integer;
  DepName: string;
begin
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Selected[i]) then
      CLLean.Checked[i] := not CLLean.Checked[i];
  end;
  CLLeanClickCheck(Nil);
end;

procedure TCD_SMDDList.SB1Click(Sender: TObject);
begin
  CLLean.Visible := not CLLean.Visible;
  if (CLLean.Visible) then
    CLLean.SetFocus;
end;

procedure TCD_SMDDList.Panel1Click(Sender: TObject);
begin
  CLLean.Visible := false;
end;

procedure TCD_SMDDList.TypeBoxChange(Sender: TObject);
begin
  if (TypeBox.ItemIndex = 0) then
  begin
    MachineType := 'MC';
    MachineLeanBox.Enabled := true;
    SetMachineLean;
  end
  else if (TypeBox.ItemIndex = 1) then
  begin
    MachineType := 'AC';
    MachineLeanBox.Enabled := false;
    SetMachine;
  end
  else if (TypeBox.ItemIndex = 2) then
  begin
    MachineType := 'Lectra';
    MachineLeanBox.Enabled := false;
    SetMachine;
  end;
end;

procedure TCD_SMDDList.ProcessBoxChange(Sender: TObject);
begin
  if (ProcessBox.ItemIndex = 1) then
  begin
    GCBox.Enabled := true;
    GCBox.ItemIndex := 0;
  end
  else begin
    GCBox.Enabled := false;
  end;
end;

procedure TCD_SMDDList.SB2Click(Sender: TObject);
begin
  OrderCopy := TOrderCopy.Create(Self);
  OrderCopy.Show;
end;

procedure TCD_SMDDList.MachineLeanBoxChange(Sender: TObject);
begin
  SetMachine;
end;

end.
