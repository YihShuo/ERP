unit CD_LectraMerg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, Buttons,
  ComCtrls, CD_QuickSMDD1, Dateutils;

type
  TCD_LectraMerg = class(TForm)
    Panel2: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button4: TButton;
    XuongCB: TComboBox;
    DepNameCB: TComboBox;
    DDBHEdit: TEdit;
    CheckBox1: TCheckBox;
    DAOMHQry: TQuery;
    DAOMH_DS: TDataSource;
    SMDDQry: TQuery;
    SMDD_DS: TDataSource;
    SMDDQryPlanDate: TDateTimeField;
    SMDDQryDepName: TStringField;
    SMDDQryID: TStringField;
    SMDDQryDDBH: TStringField;
    SMDDQryYSBH: TStringField;
    SMDDQryArticle: TStringField;
    SMDDQryDAOMH: TStringField;
    SMDDQryQty: TIntegerField;
    Panel1: TPanel;
    DBGridEh12: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DAOMHQryDAOMH: TStringField;
    DAOMHQryQty: TIntegerField;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    SMDDSQry: TQuery;
    SMDDS_DS: TDataSource;
    QTemp: TQuery;
    Splitter2: TSplitter;
    AddSizeBtn: TBitBtn;
    AddPartBtn: TBitBtn;
    DAOMHQryArticle: TStringField;
    procedure Button4Click(Sender: TObject);
    procedure AddSizeBtnClick(Sender: TObject);
    procedure SMDDSQryAfterOpen(DataSet: TDataSet);
    procedure AddPartBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure XuongCBChange(Sender: TObject);
  private
    DepID, MachineType: String;
    DepIDList:TStringlist;
    { Private declarations }
    procedure SetDepartment;
    procedure SetFactory;    
    procedure SetDBGridEh3Format();
  public
    { Public declarations }
  end;

var
  CD_LectraMerg: TCD_LectraMerg;

implementation
  uses CD_LectraLayerout1, FunUnit, main1;
{$R *.dfm}

procedure TCD_LectraMerg.SetFactory;
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
procedure TCD_LectraMerg.SetDepartment;
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

procedure TCD_LectraMerg.Button4Click(Sender: TObject);
var i:integer;
    DDBH,DDBHSubSQL:String;
    DDBHList:TStringList;
begin
  //
  {
  if ((DepNameCB.text='') and (DDBHEdit.Text='')) then
  begin
    showmessage('Pls select Department first.');
    abort;
  end;
  }
  if Pos(',',DDBHEdit.Text)>0 then
  begin
     DDBHList:=TStringlist.Create;
     DDBHList:=funcObj.SplitString(DDBHEdit.Text,',');
     for i:=0 to DDBHLIst.Count-1 do
     begin
       DDBH:=DDBH+' YSBH like '''+DDBHLIst.Strings[i]+'%'' or ';
     end;
     DDBHSubSQL:='(Select distinct DDBH from SMDD where GXLB=''C'' and '+ Copy(DDBH,1,length(DDBH)-3)+')';
     DDBHList.Free;
  end else
  begin
     DDBHSubSQL:='(Select distinct DDBH from SMDD where GXLB=''C'' and YSBH  like '''+DDBHEdit.Text+'%'')';
  end;
  //
  DepID:='';
  if DepNameCB.ItemIndex>-1 then
  DepID:=DepIDList.Strings[DepNameCB.ItemIndex]; //'A2010208';//A2_LEAN2-08_C

  //
  with DAOMHQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DAOMH,Max(Article) as Article,Sum(Qty) as Qty from (');
    SQL.Add('select SMDD.PlanDate,BDepartment.DepName,BDepartment.ID,SMDD.DDBH,DDZL.DDBH as YSBH,DDZL.Article,XXZL.DAOMH,SMDD.Qty from SMDD ');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add('left join BDepartment on BDepartment.ID=SMDD.DepNo ');
    SQL.Add('where SMDD.GXLB=''C''  and SMDD.DepNO like '''+DepID+'%''  ');
    if CheckBox1.Checked=true then
    begin
    SQL.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    end;
    if DDBHEdit.Text<>'' then
    sql.add('      and SMDD.DDBH in '+DDBHSubSQL);
    SQL.Add(' ) DDZL');
    SQL.Add('Group by DAOMH ');
    SQL.Add('order by Qty desc,DAOMH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with SMDDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SMDD.PlanDate,BDepartment.DepName,BDepartment.ID,SMDD.DDBH,DDZL.DDBH as YSBH,DDZL.Article,XXZL.DAOMH,SMDD.Qty from SMDD ');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add('left join BDepartment on BDepartment.ID=SMDD.DepNo ');
    SQL.Add('where SMDD.GXLB=''C''  and SMDD.DepNO like '''+DepID+'%'' and XXZL.DAOMH=:DAOMH ');
    if CheckBox1.Checked=true then
    begin
    SQL.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    end;
    if DDBHEdit.Text<>'' then
    sql.add('      and SMDD.DDBH in '+DDBHSubSQL);
    Active:=true;
  end;

  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select distinct SMDDS.XXCC from SMDD');
    SQL.Add('left join SMDDS on SMDDS.DDBH=SMDD.DDBH');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('where SMDD.GXLB=''C''  and SMDD.DepNO like '''+DepID+'%''  ');
    if CheckBox1.Checked=true then
    begin
    SQL.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    end;
    if DDBHEdit.Text<>'' then
    sql.add('      and SMDD.DDBH in '+DDBHSubSQL);
    Active:=true;
  end;
  //
  with SMDDSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DAOMH');
    while not QTemp.Eof do
    begin
      SQL.Add('       ,MAX(Case when XXCC='''+QTemp.FieldByName('XXCC').AsString+''' then Qty end) as '''+QTemp.FieldByName('XXCC').AsString+''' ');
      QTemp.Next;
    end;
    SQL.Add('from (      ');
    SQL.Add('select XXZL.DAOMH,SMDDS.XXCC,Sum(SMDDS.Qty) as Qty from SMDD');
    SQL.Add('left join SMDDS on SMDDS.DDBH=SMDD.DDBH');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('where SMDD.GXLB=''C''  and SMDD.DepNO like '''+DepID+'%''  and XXZL.DAOMH=:DAOMH ');
    if CheckBox1.Checked=true then
    begin
    SQL.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    end;
    if DDBHEdit.Text<>'' then
    sql.add('      and SMDD.DDBH in '+DDBHSubSQL);
    SQL.Add('Group by  XXZL.DAOMH,SMDDS.XXCC ) SMDD');
    SQL.Add('Group by DAOMH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  QTemp.Active:=false;
  //
  SetDBGridEh3Format();
end;

procedure TCD_LectraMerg.SetDBGridEh3Format();
var i:integer;
begin
  //
  DBGridEh3.columns[0].Visible:=true;
  DBGridEh3.columns[0].width:=140;
  DBGridEh3.columns[0].title.caption:='Dao Chat|DaoMH';
  for i:=1 to SMDDSQry.fieldcount-1 do
  begin
    DBGridEh3.columns[i].width:=40;
    DBGridEh3.columns[i].footer.valuetype:=fvtsum;
    Tfloatfield(SMDDSQry.Fields[i]).displayformat:='##,#0' ;
  end;
  //
end;

procedure TCD_LectraMerg.AddSizeBtnClick(Sender: TObject);
var i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    TotalDDBHList:String;
begin
  //
  DBGridEh1.SelectedRows.Clear;
  DBGridEh1.SelectedRows.SelectAll;
  //
  SMDDQry.disablecontrols;
  bm:=SMDDQry.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  //
  TotalDDBHList:='';
  try
    if (DBGridEh1.SelectedRows.Count > 0) then
    begin
        for i:=0 to bookmarklist.count-1 do
        begin
          SMDDQry.gotobookmark(pointer(bookmarklist[i]));
          TotalDDBHList:=TotalDDBHList+SMDDQry.FieldByName('DDBH').AsString+',';
        end;

    end else
    begin
      Showmessage('Please Select DDBH');
    end;
  finally
    begin
      SMDDQry.gotobookmark(bm);
      SMDDQry.freebookmark(bm);
      SMDDQry.enablecontrols;
    end;
  end;
  //
  if length(TotalDDBHList)>0 then
  begin
    if DepNameCB.ItemIndex>-1 then
    DepID:=DepIDList.Strings[DepNameCB.ItemIndex]; //'A2010208';//A2_LEAN2-08_C
    if CD_QuickSMDD=nil then
    begin
      CD_QuickSMDD:=TCD_QuickSMDD.Create(nil);
      CD_QuickSMDD.Init(Copy(TotalDDBHList,1,length(TotalDDBHList)-1),DepID);
      CD_QuickSMDD.Show;
    end else
    begin
      CD_QuickSMDD.Show;
    end;
  end;

end;

procedure TCD_LectraMerg.SMDDSQryAfterOpen(DataSet: TDataSet);
begin
  SetDBGridEh3Format();
end;

procedure TCD_LectraMerg.AddPartBtnClick(Sender: TObject);
var i:integer;
begin
  //
  CD_LectraLayerout:=TCD_LectraLayerout.Create(self);
  CD_LectraLayerout.Article:=CD_LectraMerg.DAOMHQry.FieldByName('Article').AsString;
  //
  CD_LectraLayerout.SizeFieldNameList.Clear;
  CD_LectraLayerout.SizeFieldValueList.Clear;
  for i:=1 to CD_LectraMerg.SMDDSQry.FieldCount-1 do
  begin
    if CD_LectraMerg.SMDDSQry.Fields[i].AsString<>'' then
    begin
      CD_LectraLayerout.SizeFieldNameList.Add(CD_LectraMerg.SMDDSQry.Fields[i].FieldName);
      CD_LectraLayerout.SizeFieldValueList.Add(CD_LectraMerg.SMDDSQry.Fields[i].AsString);
    end;
  end;
  CD_LectraLayerout.BWBHList.Clear;
  CD_LectraLayerout.BWBHList.Add('A002');
  CD_LectraLayerout.BWBHList.Add('A015');
  //
  CD_LectraLayerout.Show;
  //
end;

procedure TCD_LectraMerg.FormCreate(Sender: TObject);
begin
  DepIDList:=TStringlist.Create;
  DTP1.Date:=startoftheweek(incweek(Date,1));
  DTP2.Date:=endoftheweek(incweek(Date,1));
  SetFactory;
end;

procedure TCD_LectraMerg.FormDestroy(Sender: TObject);
begin
  DepIDList.Free;
end;

procedure TCD_LectraMerg.XuongCBChange(Sender: TObject);
begin
 SetDepartment;
end;

end.
