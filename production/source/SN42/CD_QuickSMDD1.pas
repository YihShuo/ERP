unit CD_QuickSMDD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons,
  ComCtrls;


type
  TCD_QuickSMDD = class(TForm)
    CLZLQry: TQuery;
    DS1: TDataSource;
    ZLBHQry: TQuery;
    DS2: TDataSource;
    SIZEQry: TQuery;
    DS3: TDataSource;
    BWBHQry: TQuery;
    DS4: TDataSource;
    TmpQry: TQuery;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    DBGridEh4: TDBGridEh;
    Image1: TImage;
    Panel6: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    CLZLQryCLBH: TStringField;
    CLZLQryYWPM: TStringField;
    CLZLQryCLBH_DS: TStringField;
    ZLBHQryZLBH: TStringField;
    ZLBHQryZLBHT: TStringField;
    BWBHQryBWBH: TStringField;
    BWBHQryQty: TIntegerField;
    BWBHQryBWBH_DS: TStringField;
    BWBHQryYWSM: TStringField;
    SIZEQrySIZE: TStringField;
    SIZEQryQty: TIntegerField;
    SIZEQrySIZE_DS: TStringField;
    Panel7: TPanel;
    Label7: TLabel;
    SoEdit: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    AddBtn: TBitBtn;
    CLZLQryCutNum: TFloatField;
    ZLBHQryQty: TIntegerField;
    BWBHQryVWSM: TStringField;
    DTP: TDateTimePicker;
    Label8: TLabel;
    CLZLQryCLSL: TFloatField;
    CLZLQryRKQty: TCurrencyField;
    TypeBox: TComboBox;
    AddPartBtn: TBitBtn;
    MachineBox: TComboBox;
    QMachine: TQuery;
    QLean: TQuery;
    MachineLeanBox: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure AddBtnClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
    procedure ZLBHQryAfterOpen(DataSet: TDataSet);
    procedure TypeBoxChange(Sender: TObject);
    procedure AddPartBtnClick(Sender: TObject);
    procedure MachineLeanBoxChange(Sender: TObject);
  private
    GDLNO, MachineType: String;
    procedure SetMachineLean;
    procedure SetMachine;
    function GetQuerySubSQL(Query:TQuery;DBGridEh:TDBGridEh;FieldNM:String):String;   
    { Private declarations }
  public
    QDepID: String;
    QPlanDate: String;
    DDBHSubSQL: String;
    LeanID, MachineID: TStringList;
    Procedure Init(DDBHStr: String; DepID: String);
    function CreateDispathCutting():boolean;      
    { Public declarations }
  end;

var
  CD_QuickSMDD: TCD_QuickSMDD;

implementation
  uses  main1, CD_LectraLayerout1, FunUnit;
{$R *.dfm}

procedure TCD_QuickSMDD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCD_QuickSMDD.FormDestroy(Sender: TObject);
begin
  CD_QuickSMDD:=nil;
end;

procedure TCD_QuickSMDD.Init(DDBHStr: String; DepID: String);
var tmpList:TStringlist;
    i:integer;
begin
  QDepID:=DepID;
  QPlanDate:=FormatDatetime('YYYY/MM/DD',DTP.Date);
  //
  for i := 0 to LeanID.Count-1 do
  begin
    if (LeanID[i] = QDepID) then
    begin
      MachineLeanBox.ItemIndex := i + 1;
      SetMachine;
      Break;
    end;
  end;

  DDBHSubSQL:='';
  tmpList:=TStringlist.Create;
  tmpList:=FuncObj.SplitString(DDBHStr,',');
  for i:=0 to tmpList.Count-1 do
  begin
    DDBHSubSQL:=DDBHSubSQL+''''+tmpList.Strings[i]+''',';
  end;
  if Length(DDBHSubSQL)>0 then DDBHSubSQL:=' ('+Copy(DDBHSubSQL,1,length(DDBHSubSQL)-1)+')';
  tmpList.Free;

  //
  with CLZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CutDispatchZL.CLBH,CutDispatchZL.YWPM,CutDispatchSS.CLBH as CLBH_DS,IsNull(CutDispatchSS.CutNum,0) as CutNum,KCRKS.CLSL,KCRKS.RKQty from (');
    SQL.Add('Select CutDispatchZL.CLBH,CLZL.YWPM from CutDispatchZL ');
    SQL.Add('Left  join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH ');
    SQL.Add('Left  join CLZL on CLZL.CLDH=CutDispatchZL.CLBH ');
    SQL.Add('where 1=1 and SMDD.GXLB=''C'' and SMDD.DDBH in '+DDBHSubSQL);
    SQL.Add('      Group by CutDispatchZL.CLBH,CLZL.YWPM ) CutDispatchZL');
    //----------------------是否已經派工單
    SQL.Add('Left join (');
    SQL.Add('select CLBH,Sum(CutNum) as CutNum  from ( ');
    SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.Qty,');
    SQL.Add('       IsNull(CutDisPatchS.DQty,0) as DQty,case when joinnum>0 then CEILING((CutDispatchZL.Qty-IsNull(CutDisPatchS.DQty,0))*piece/convert(float,layer)*joinnum) else 0 end as CutNum from (');
    SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CLBH,SMDDS.Qty,Layer,Piece,Joinnum from CutDispatchZL ');
    SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
    SQL.Add('	where 1=1   ');
    SQL.Add('	 and SMDD.DDBH in  '+DDBHSubSQL+' ) CutDispatchZL');
    SQL.Add('	 left join (');
    SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(IsNull(CutDisPatchSS.Qty,0)) as DQty from CutDisPatchS');
    SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH');
    SQL.Add('	  where 1=1 ');
    SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+'  ');
    SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
    SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ) CutDispatchSS 	 ');
    SQL.Add('Group by CLBH ) CutDispatchSS on CutDispatchSS.CLBH=CutDispatchZL.CLBH ');
    //--------------------
    SQL.Add('Left join (');
    SQL.Add('	Select ZLZLS2.CLBH,ZLZLS2.CLSL,KCRKS.RKQty from (');
    SQL.Add('	Select CLBH,Sum(CLSL) as CLSL ');
    SQL.Add('	from ZLZLS2');
    SQL.Add('	where ZLZLS2.ZLBH in (select YSBH from SMDD where DDBH in '+DDBHSubSQL+'   group by YSBH) ');
    SQL.Add('		  and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
    SQL.Add('		  and ZLZLS2.CLSL>0');
    SQL.Add('		  and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('	Group by CLBH ) ZLZLS2');
    SQL.Add('	Left join (');
    SQL.Add('		select KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty');
    SQL.Add('		from  KCRKS with (nolock)  ');
    SQL.Add('		where KCRKS.CGBH in (select YSBH from SMDD where DDBH in '+DDBHSubSQL+'   group by YSBH) ');
    SQL.Add('		group by KCRKS.CLBH ');
    SQL.Add('		union all');
    SQL.Add('		select JGZLSS.CLBH,Sum(JGZLSS.Qty) as JGQty from JGZLSS');
    SQL.Add('		left join JGZL on JGZL.JGNO=JGZLSS.JGNO');
    SQL.Add('		where JGZL.CFMID1<>''NO'' and JGZLSS.ZLBH in (select YSBH from SMDD where DDBH in '+DDBHSubSQL+'  group by YSBH) ');
    SQL.Add('		Group by JGZLSS.CLBH		');
    SQL.Add('		) KCRKS on KCRKS.CLBH=ZLZLS2.CLBH ) KCRKS on KCRKS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('Order by   CutDispatchZL.YWPM ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  with ZLBHQry  do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CutDispatchZL.*,SUM(SMDDS.Qty) as Qty from (    ');
    SQL.Add('select CutDispatchZL.ZLBH,CutDispatchZL.ZLBH+''(''+(case when CutDispatchZL.ZLBH <> MAX(SMDD.DDBH) then ((''T''+MIN(right(SMDD.DDBH,3)))+''-''+(''T''+MAX(right(SMDD.DDBH,3)))) else ''T0'' end)+'')'' as  ZLBHT from CutDispatchZL ');
    SQL.Add('inner join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('where SMDD.GXLB=''C'' and SMDD.DDBH in '+DDBHSubSQL);
    SQL.Add('    and CutDispatchZL.CLBH=:CLBH  ');
    SQL.Add('    Group by CutDispatchZL.ZLBH  ) CutDispatchZL');
    SQL.Add('inner join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('inner join SMDDS on SMDDS.DDBH=SMDD.DDBH  ');
    SQL.Add('where SMDD.GXLB=''C'' and SMDD.DDBH in '+DDBHSubSQL);
    SQL.Add('Group by CutDispatchZL.ZLBH,CutDispatchZL.ZLBHT ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;

  //
  with SIZEQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SMDDS.SIZE,SMDDS.Qty,CutDispatchSS.SIZE as SIZE_DS from (');
    SQL.Add('select SIZE,SUM(Qty) as Qty from (');
    SQL.Add('select  distinct SMDD.DDBH,CutDispatchZL.SIZE,SMDDS.Qty  from CutDispatchZL ');
    SQL.Add('left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
    SQL.Add('where  SMDDS.DDBH in  '+DDBHSubSQL);
    SQL.Add('       and CutDispatchZL.CLBH=:CLBH ) CutDispatchZL');
    SQL.Add('Group by  SIZE ) SMDDS ');
    //----------------------是否已經派工單
    SQL.Add('Left join (');
    SQL.Add('select SIZE from ( ');
    SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
    SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CLBH,SMDDS.Qty from CutDispatchZL ');
    SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
    SQL.Add('	where 1=1   ');
    SQL.Add('	 and CutDispatchZL.CLBH=:CLBH ');
    SQL.Add('	 and SMDD.DDBH in  '+DDBHSubSQL+' ) CutDispatchZL');
    SQL.Add('	 left join (');
    SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(IsNull(CutDisPatchSS.Qty,0)) as DQty from CutDisPatchS');
    SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH');
    SQL.Add('	  where 1=1 ');
    SQL.Add('	  and CutDisPatchS.CLBH=:CLBH ');
    SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+' ');
    SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
    SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ) CutDispatchSS 	 ');
    SQL.Add('Group by SIZE ) CutDispatchSS on CutDispatchSS.SIZE=SMDDS.SIZE ');
    SQL.Add('Order by SMDDS.SIZE desc ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  with BWBHQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SMDDS.BWBH,bwzl.YWSM,bwzlvn.VWSM,SMDDS.Qty,CutDispatchSS.BWBH as BWBH_DS from ( ');
    SQL.Add('select CutDispatchZL.BWBH,SUM(Qty) as Qty from (    ');
    SQL.Add('select SIZE,SUM(Qty) as Qty from (');
    SQL.Add('select  distinct SMDD.DDBH,CutDispatchZL.SIZE,SMDDS.Qty  from CutDispatchZL ');
    SQL.Add('left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
    SQL.Add('where  SMDDS.DDBH in  '+DDBHSubSQL);
    SQL.Add('       and CutDispatchZL.CLBH=:CLBH ) CutDispatchZL');
    SQL.Add('Group by  SIZE ) SMDDS ');    
    SQL.Add('Left join (');
    SQL.Add('select SIZE,BWBH from CutDispatchZL ');
    SQL.Add('         where CutDispatchZL.ZLBH in (select YSBH from SMDD where  SMDD.GXLB=''C''  and SMDD.DDBH in '+DDBHSubSQL+') and CutDispatchZL.CLBH=:CLBH ');
    SQL.Add('Group by SIZE,BWBH )  CutDispatchZL on CutDispatchZL.SIZE=SMDDS.SIZE  ');
    SQL.Add('Group by CutDispatchZL.BWBH ) SMDDS ');
    //----------------------是否已經派工單
    SQL.Add('Left join (');
    SQL.Add('select BWBH from ( ');
    SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
    SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CLBH,SMDDS.Qty from CutDispatchZL ');
    SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
    SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
    SQL.Add('	where 1=1   ');
    SQL.Add('	 and CutDispatchZL.CLBH=:CLBH ');
    SQL.Add('	 and SMDD.DDBH in  '+DDBHSubSQL+' ) CutDispatchZL');
    SQL.Add('	 left join (');
    SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(IsNull(CutDisPatchSS.Qty,0)) as DQty from CutDisPatchS');
    SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH');
    SQL.Add('	  where 1=1 ');
    SQL.Add('	  and CutDisPatchS.CLBH=:CLBH ');
    SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+' ');
    SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
    SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
    SQL.Add('where CutDispatchZL.Qty>IsNull(CutDispatchS.DQty,0) ) CutDispatchSS 	 ');
    SQL.Add('Group by BWBH ) CutDispatchSS on CutDispatchSS.BWBH=SMDDS.BWBH ');
    //--------------------
    SQL.Add('Left join bwzl on bwzl.bwdh=SMDDS.BWBH ');
    SQL.Add('Left join bwzlvn on bwzlvn.bwdh=SMDDS.BWBH ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
end;
//
procedure TCD_QuickSMDD.FormCreate(Sender: TObject);
begin
  LeanID := TStringList.Create;
  MachineID := TStringList.Create;
  DTP.Date := Date;
  MachineType := 'MC';
  SetMachineLean;
end;

procedure TCD_QuickSMDD.SetMachineLean;
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

procedure TCD_QuickSMDD.SetMachine;
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

function TCD_QuickSMDD.GetQuerySubSQL(Query:TQuery;DBGridEh:TDBGridEh;FieldNM:String):String;
var i,count:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    TotalList,PlanDate:String;
    IsSelected:boolean;
begin
  Query.disablecontrols;
  bm:=Query.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  //
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
              if ((FieldNM='SIZE') or (FieldNM='BWBH')) then
                if Query.FieldByName(FieldNM+'_DS').AsString='' then IsSelected:=false;
              //
              if IsSelected=true then
              begin
                TotalList:=TotalList+''''+Query.FieldByName(FieldNM).AsString+''',';
                count:=count+1;
              end;
              if count>=26 then break;
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
  result:=TotalList;
end;

//產生表單
function TCD_QuickSMDD.CreateDispathCutting():boolean;
var
  sYear, sMonth, DLNO, CLBH: string;
  h,i: integer;
  NDate:TDate;
  ZLBHSubSQL,BWBHSubSQL,SIZESubSQL:String;
  iRes:boolean;
  //
  clbh_bm:Tbookmark;
  clbh_bookmarklist:tbookmarklistEh;
begin
  DLNO:='';
  //儲存Size Selected Rows
  //CLZLQry.disablecontrols;
  //clbh_bm:=CLZLQry.getbookmark;
  clbh_bookmarklist:=DBGridEh1.selectedrows;
  try
    for h:=0 to clbh_bookmarklist.count-1 do
    begin
      CLZLQry.gotobookmark(pointer(clbh_bookmarklist[h]));
      //Insert into CutDisPatchS
      ZLBHSubSQL:=GetQuerySubSQL(ZLBHQry,DBGridEh2,'ZLBH');
      SIZESubSQL:=GetQuerySubSQL(SIZEQry,DBGridEh3,'SIZE');
      BWBHSubSQL:=GetQuerySubSQL(BWBHQry,DBGridEh4,'BWBH');
      if ((ZLBHSubSQL='') or (SIZESubSQL='') or (BWBHSubSQL='')) then iRes:=false else  iRes:=true;
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
            SQL.Add('('''+DLNO+''',''' + MachineType + ''','''+main.Edit2.Text+''','''+QDepID+''','''+QPlanDate+''','''+SoEdit.Text+''','''+main.Edit1.Text+''',GetDate(),1)');
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
          SQL.Add('	 and CutDispatchZL.CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' ');
          SQL.Add('	 and CutDispatchZL.SIZE in '+SIZESubSQL);
          SQL.Add('	 and CutDispatchZL.BWBH in '+BWBHSubSQL);
          SQL.Add('	 and SMDD.DDBH in '+DDBHSubSQL+') CutDispatchZL');
          SQL.Add('	 left join (');
          SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as DQty from CutDisPatchS');
          SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.SIZE=CutDispatchSS.SIZE');
          SQL.Add('	  where 1=1 ');
          SQL.Add('	  and CutDisPatchS.ZLBH in  '+ZLBHSubSQL);
          SQL.Add('	  and CutDisPatchS.CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' ');
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
            SQL.Add('select '''+DLNO+''' as DLNO,ZLBH,DDBH,BWBH,SIZE,CLBH,Qty,0,0,''' + MachineID[MachineBox.ItemIndex-1] + ''',''' + QPlanDate + ''','''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,1 as YN from ( ');
          SQL.Add('select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.XXCC,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
          SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CutDispatchZL.XXCC,CLBH,SMDDS.Qty from CutDispatchZL ');
          SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
          SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
          SQL.Add('	where 1=1   and CutDispatchZL.ZLBH in '+ZLBHSubSQL);
          SQL.Add('	 and CutDispatchZL.CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' ');
          SQL.Add('	 and CutDispatchZL.SIZE in '+SIZESubSQL);
          SQL.Add('	 and CutDispatchZL.BWBH in '+BWBHSubSQL);
          SQL.Add('	 and SMDD.DDBH in '+DDBHSubSQL+') CutDispatchZL');
          SQL.Add('	 left join (');
          SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as DQty from CutDisPatchS');
          SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.SIZE=CutDispatchSS.SIZE');
          SQL.Add('	  where 1=1 ');
          SQL.Add('	  and CutDisPatchS.ZLBH in  '+ZLBHSubSQL);
          SQL.Add('	  and CutDisPatchS.CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' ');
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
    end;
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
        //CLZLQry.gotobookmark(clbh_bm);
        //CLZLQry.freebookmark(clbh_bm);
        //CLZLQry.enablecontrols;
      end;
  end;
  result:=iRes;
end;


procedure TCD_QuickSMDD.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CLZLQry.FieldByName('CLBH_DS').AsString='' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TCD_QuickSMDD.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SIZEQry.FieldByName('SIZE_DS').AsString='' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TCD_QuickSMDD.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if BWBHQry.FieldByName('BWBH_DS').AsString='' then
  begin
    DBGridEh4.canvas.font.color:=clred;
  end;
end;

procedure TCD_QuickSMDD.AddBtnClick(Sender: TObject);
var size_bm,bwbh_bm:Tbookmark;
    size_bookmarklist,bwbh_bookmarklist:tbookmarklistEh;
    i:integer;
begin
  //
  if CreateDispathCutting()=true then
  begin
    CLZLQry.Active:=false;
    CLZLQry.Active:=true;
    //儲存Size Selected Rows
    SIZEQry.disablecontrols;
    size_bm:=SIZEQry.getbookmark;
    size_bookmarklist:=DBGridEh3.selectedrows;
    //
    try
    SIZEQry.Active:=false;
    SIZEQry.Active:=true;
    for i:=0 to size_bookmarklist.count-1 do
    begin
      if SIZEQry.BookmarkValid(pointer(size_bookmarklist[i])) then
      begin
        SIZEQry.gotobookmark(pointer(size_bookmarklist[i]));
        DBGridEh3.SelectedRows.CurrentRowSelected:= true;
      end;
    end;
    finally
      begin
        SIZEQry.gotobookmark(size_bm);
        SIZEQry.freebookmark(size_bm);
        SIZEQry.enablecontrols;
      end;
    end;
     //儲存Bwbh Selected Rows
    BWBHQry.disablecontrols;
    bwbh_bm:=BWBHQry.getbookmark;
    bwbh_bookmarklist:=DBGridEh4.selectedrows;
    //
    try
    BWBHQry.Active:=false;
    BWBHQry.Active:=true;
    for i:=0 to bwbh_bookmarklist.count-1 do
    begin
      if BWBHQry.BookmarkValid(pointer(bwbh_bookmarklist[i])) then
      begin
        BWBHQry.gotobookmark(pointer(bwbh_bookmarklist[i]));
        DBGridEh4.SelectedRows.CurrentRowSelected:= true;
      end;
    end;
    finally
      begin
        BWBHQry.gotobookmark(bwbh_bm);
        BWBHQry.freebookmark(bwbh_bm);
        BWBHQry.enablecontrols;
      end;
    end;
    //
    //InfoLabel.Caption:='Ma Phieu: '+GDLNO;
    Showmessage('Success');
  end else
  begin
    //DBGridEh2.SelectedRows.Clear;
    //DBGridEh3.SelectedRows.Clear;
    //DBGridEh4.SelectedRows.Clear;
    Showmessage('請選部位和尺碼,Xin chon SIZE SO va Chi tet');
  end;
end;

procedure TCD_QuickSMDD.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    AddBtn.Click;
end;

procedure TCD_QuickSMDD.DBGridEh4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    AddBtn.Click;
end;

procedure TCD_QuickSMDD.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    AddBtn.Click;
end;

procedure TCD_QuickSMDD.ZLBHQryAfterOpen(DataSet: TDataSet);
begin
  //RY#
  DBGridEh2.SelectedRows.Clear;
  DBGridEh2.SelectedRows.SelectAll;
end;

procedure TCD_QuickSMDD.TypeBoxChange(Sender: TObject);
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
     
procedure TCD_QuickSMDD.MachineLeanBoxChange(Sender: TObject);
begin
  SetMachine;
end;

procedure TCD_QuickSMDD.AddPartBtnClick(Sender: TObject);
var i:integer;
    Article:String;
    size_bm,bwbh_bm:Tbookmark;
    size_bookmarklist,bwbh_bookmarklist:tbookmarklistEh;
begin
  //
  if ((DBGridEh3.selectedrows.Count=0) or (DBGridEh4.selectedrows.Count=0)) then
  begin
    showmessage('請選部位和尺碼,Xin chon SIZE SO va Chi tet');
    exit;
  end;
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Article from DDZL where DDBH='''+ZLBHQry.FieldByName('ZLBH').AsString+''' ');
    Active:=true;
    if RecordCount>0 then Article:=FieldByName('Article').AsString;
    Active:=false;
  end;
  CD_LectraLayerout:=TCD_LectraLayerout.Create(self);
  CD_LectraLayerout.Article:=Article;
  //
  CD_LectraLayerout.SizeFieldNameList.Clear;
  CD_LectraLayerout.SizeFieldValueList.Clear;
  //尺碼
  SIZEQry.disablecontrols;
  size_bm:=SIZEQry.getbookmark;
  size_bookmarklist:=DBGridEh3.selectedrows;
  //
  try
  SIZEQry.Active:=false;
  SIZEQry.Active:=true;
  for i:=0 to size_bookmarklist.count-1 do
  begin
    if SIZEQry.BookmarkValid(pointer(size_bookmarklist[i])) then
    begin
      SIZEQry.gotobookmark(pointer(size_bookmarklist[i]));
      CD_LectraLayerout.SizeFieldNameList.Add(SIZEQry.FieldByName('SIZE').AsString);
      CD_LectraLayerout.SizeFieldValueList.Add(SIZEQry.FieldByName('Qty').AsString);
    end;
  end;
  finally
    begin
      SIZEQry.gotobookmark(size_bm);
      SIZEQry.freebookmark(size_bm);
      SIZEQry.enablecontrols;
    end;
  end;
  //部位
  CD_LectraLayerout.BWBHList.Clear;
  BWBHQry.disablecontrols;
  bwbh_bm:=BWBHQry.getbookmark;
  bwbh_bookmarklist:=DBGridEh4.selectedrows;
  //
  try
  BWBHQry.Active:=false;
  BWBHQry.Active:=true;
  for i:=0 to bwbh_bookmarklist.count-1 do
  begin
    if BWBHQry.BookmarkValid(pointer(bwbh_bookmarklist[i])) then
    begin
      BWBHQry.gotobookmark(pointer(bwbh_bookmarklist[i]));
      CD_LectraLayerout.BWBHList.Add(BWBHQry.FieldByName('BWBH').AsString);
    end;
  end;
  finally
    begin
      BWBHQry.gotobookmark(bwbh_bm);
      BWBHQry.freebookmark(bwbh_bm);
      BWBHQry.enablecontrols;
    end;
  end;
  //
  CD_LectraLayerout.Show;
  //

end;

end.
