unit ScanInRevise1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB,
  DBTables, strutils;

type
  TScanInRevise = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CLCB: TComboBox;
    Label4: TLabel;
    MJCB: TComboBox;
    Label3: TLabel;
    Button1: TButton;
    TmpQuery: TQuery;
    workscanQry: TQuery;
    upwsan: TUpdateSQL;
    WP: TDataSource;
    workscanQryProNo: TFloatField;
    workscanQryCodebar: TStringField;
    workscanQryInOut: TStringField;
    workscanQryClass: TStringField;
    workscanQryWorkID: TStringField;
    workscanQryMJBH: TStringField;
    workscanQryColorNo: TStringField;
    workscanQrySize: TStringField;
    workscanQryQty: TIntegerField;
    workscanQryUserid: TStringField;
    workscanQryYN: TStringField;
    colorclassQry: TQuery;
    colorclassQryColorNo: TStringField;
    colorclassQryEnglishName: TStringField;
    MJZLQry: TQuery;
    workscanQrymjname: TStringField;
    workscanQrycolorname: TStringField;
    Label5: TLabel;
    WorkIDEdit: TEdit;
    Label6: TLabel;
    ScanNoEdit: TEdit;
    workscanQryDDBH: TStringField;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Label7: TLabel;
    CodeBarEdit: TEdit;
    workscanQryScanDate: TDateTimeField;
    workscanQryUserDate: TDateTimeField;
    DTP: TDateTimePicker;
    DateRB1: TRadioButton;
    DateRB2: TRadioButton;
    Label8: TLabel;
    CLassCB: TComboBox;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SizeFromEdit: TEdit;
    Label12: TLabel;
    SizeToEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure workscanQryAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    NDate:TDate;
    ColorNo:String;
    { Private declarations }
    procedure UpdateWorkPlans(codebar:string;InOut:string);
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ScanInRevise: TScanInRevise;

implementation

uses main1, ScanInRevise_workId1, FunUnit;

{$R *.dfm}

procedure TScanInRevise.InitUpdateSQL();
begin
  upwsan.InsertSQL.Clear;
  upwsan.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workscan (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH, Size, Qty, UserID, UserDate, YN)');
  upwsan.InsertSQL.Add('values (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo, :DDBH, :Size, :Qty, :UserID, :UserDate, :YN)');

  upwsan.ModifySQL.Clear;
  upwsan.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workscan ');
  upwsan.ModifySQL.Add('set WorkID =:WorkID, MJBH =:MJBH, ColorNo =:ColorNo, Size =:Size, Qty =:Qty, UserID =:UserID, UserDate =:UserDate, Class =:Class, ScanDate =:ScanDate');
  upwsan.ModifySQL.Add('where ProNo = :OLD_ProNo ');

  upwsan.DeleteSQL.Clear;
  upwsan.DeleteSQL.Add('delete from  '+main.LIY_DD+'.dbo.workscan ');
  upwsan.DeleteSQL.Add('where ProNo = :OLD_ProNo ');
end;

procedure TScanInRevise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScanInRevise.FormDestroy(Sender: TObject);
begin
  ScanInRevise:=nil;
end;

procedure TScanInRevise.Button1Click(Sender: TObject);
begin
  with workscanQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.add('select workscan.ProNo,workscan.CodeBar,workscan.ScanDate,WorkScan.InOut,WorkScan.Class, ');
    SQL.add('       workscan.WorkID,workscan.MJBH,workscan.ColorNo,workscan.DDBH,workscan.Size,workscan.Qty,workscan.UserID,convert(smalldatetime,convert(varchar,workscan.UserDate,111)) as UserDate,workScan.YN ');
    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan workplan on workplan.workid=workscan.workid');
    SQL.add('where  1=1 and workplan.CQDH='''+main.Edit2.Text+'''');
    if DateRB1.Checked=true then
    begin
      SQl.Add('and convert(smalldatetime,convert(varchar,workscan.UserDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP.date)+'''');
    end else if DateRB2.Checked=true then
    begin
      SQl.Add('and workscan.ScanDate between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+' 07:00:00'' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+' 07:00:00''');
    end;
    if MJCB.Text <> 'ALL' then
    begin
      sql.add('       and workscan.MJBH='+''''+MJCB.Text+'''');
    end;
    if CLCB.Text<>'ALL' then
    begin
      sql.add('       and workscan.ColorNo='''+ColorNo+'''');
    end;
    if WorkIDEdit.Text<>'' then
    begin
      sql.add('      and  workscan.WorkID like '''+WorkIDEdit.Text+'%'' ');
    end;
    if ScanNoEdit.Text<>'' then
    begin
      sql.add('      and workscan.ProNo like '''+ScanNoEdit.Text+'%'' ');
    end;
    if RB1.Checked=true then
      sql.add('      and workscan.InOut=''I'' ');
    if RB2.Checked=true then
      sql.add('      and workscan.InOut=''O'' ');
    if CodeBarEdit.Text<>'' then
      sql.add('      and workscan.codebar like '''+CodeBarEdit.Text+'%'' ');
    if CLassCB.Text<>'ALL' then
      SQL.Add(' and  workscan.Class='+inttostr(CLassCB.ItemIndex-1)+' ');
    if (SizeFromEdit.Text<>'') and (SizeToEdit.Text<>'') then
    begin
      SQL.Add(' and workscan.Size>='''+SizeFromEdit.Text+''' and workscan.Size<='''+SizeToEdit.Text+''' ');
    end else if (SizeFromEdit.Text<>'') then
    begin
      SQL.Add(' and workscan.Size>='''+SizeFromEdit.Text+''' ');
    end else if (SizeToEdit.Text<>'') then
    begin
      SQL.Add(' and workscan.Size<='''+SizeToEdit.Text+''' ');
    end;
    Active:=true;
  end;
end;

procedure TScanInRevise.FormCreate(Sender: TObject);
var i:integer;
begin

  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct CC from '+main.LIY_DD+'.dbo.DDZLS DDZLS where DDZLS.USERDATE>GetDate()-360 group by CC');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGridEh1.Columns[3].PickList.add(fieldbyname('CC').asstring);
      Next;
    end;
    active:=false;
  end;
  //
  with MJZLQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select bz2 as MJBH from '+main.LIY_DD+'.dbo.MJZL group by bz2');
    active:=true;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      MJCB.Items.Add(fieldbyname('MJBH').asstring);
      next;
    end;
    active:=false;
  end;
  with colorclassQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select colorno,EnglishName from '+main.LIY_DD+'.dbo.colorclass');
    active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      CLCB.Items.Add(fieldbyname('EnglishName').asstring);
      next;
    end;
    active:=true;
  end;
  DTP.Date:=date;
  DTP1.Date:=date;
  DTP2.date:=date+7;
  InitUpdateSQL();
end;

procedure TScanInRevise.CLCBChange(Sender: TObject);
begin
  colorclassQry.locate('englishname',clcb.Text,[]);
  colorno:=colorclassQry.fieldbyname('colorno').Value;
end;

procedure TScanInRevise.workscanQryAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TScanInRevise.BB2Click(Sender: TObject);
begin
  with workscanQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TScanInRevise.BB3Click(Sender: TObject);
begin

  with workscanQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TScanInRevise.BB4Click(Sender: TObject);
begin
  with workscanQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TScanInRevise.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workscanQry.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TScanInRevise.BB6Click(Sender: TObject);
begin
  with workscanQry do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.Enabled:=false;
  DBGridEh1.columns[7].ButtonStyle:=cbsNone;
end;
// 檢查更新數量
procedure TScanInRevise.UpdateWorkPlans(codebar:string;InOut:string);
var BarCode:string;
    IsZero:boolean;
begin
  if pos('-',codebar)>0 then
  begin
     BarCode:=LeftStr(codebar,(pos('-',codebar)-1));
  end else
  begin
     BarCode:=codebar;
  end;
  if InOut='I' then
  begin
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select ProNo ');
      SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan where InOut=''I'' ');
      SQL.Add('      and (case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end)='''+BarCode+''' ');
      Active:=true;
      if RecordCount>0 then
        IsZero:=false
      else
        IsZero:=true;
      Active:=false;
    end;
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      //還有掃描明細
      if  IsZero=false then
      begin
        SQL.Add('Update '+main.LIY_DD+'.dbo.workplans set OKQty=A.Qty ');
        SQL.Add('from (select case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end as codebar,Sum(Qty) as Qty ');
        SQL.Add('      from '+main.LIY_DD+'.dbo.workscan workscan where InOut=''I'' ');
        SQL.Add('      and (case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end)='''+BarCode+''' ');
        SQL.Add('      group by  case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end ) A ');
        SQL.Add('where '+main.LIY_DD+'.dbo.workplans.CodeBar='''+BarCode+''' and '+main.LIY_DD+'.dbo.workplans.CodeBar=A.CodeBar ');
      end else
      begin
        SQL.Add('Update '+main.LIY_DD+'.dbo.workplans set OKQty=0 ');
        SQL.Add('where '+main.LIY_DD+'.dbo.workplans.CodeBar='''+BarCode+''' ');
      end;
      //funcObj.WriteErrorLog(SQL.Text);
      ExecSQL();
    end;

  end else if InOut='O' then
  begin
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select ProNo ');
      SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan where InOut=''O'' ');
      SQL.Add('      and (case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end)='''+BarCode+''' ');
      Active:=true;
      if RecordCount>0 then
        IsZero:=false
      else
        IsZero:=true;
      Active:=false;
    end;
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      //還有掃描明細
      if  IsZero=false then
      begin
        SQL.Add('Update '+main.LIY_DD+'.dbo.workplans set OutQty=A.Qty ');
        SQL.Add('from (select case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end as codebar,Sum(Qty) as Qty ');
        SQL.Add('      from '+main.LIY_DD+'.dbo.workscan workscan where InOut=''O'' ');
        SQL.Add('      and (case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end)='''+BarCode+''' ');
        SQL.Add('      group by  case when CHARINDEX(''-'',workscan.codebar)>0 then left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1))  else  workscan.codebar end ) A ');
        SQL.Add('where '+main.LIY_DD+'.dbo.workplans.CodeBar='''+BarCode+''' and '+main.LIY_DD+'.dbo.workplans.CodeBar=A.CodeBar ');
        //funcObj.WriteErrorLog(SQL.Text);
      end else
      begin
        SQL.Add('Update '+main.LIY_DD+'.dbo.workplans set OutQty=0 ');
        SQL.Add('where '+main.LIY_DD+'.dbo.workplans.CodeBar='''+BarCode+''' ');
      end;
      ExecSQL();
    end;
  end;
end;

procedure TScanInRevise.BB5Click(Sender: TObject);
var i:integer;
    codebar,InOut:string;
begin
  try
    with TmpQuery do          //取服務器的年月值
    begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').value;
      active:=false;
    end;

    workscanQry.First;
    for i:=0 to workscanQry.RecordCount-1 do
    begin
        case workscanQry.updatestatus of
          usinserted:
          begin
              workscanQry.edit;
              if workscanQry.fieldbyname('workid').IsNull then
              begin
                workscanQry.fieldbyname('workid').Value:='ZZZZZZZZZZZZ';
                workscanQry.fieldbyname('codebar').Value:='ZZZZZZZZZZZZ';
                workscanQry.fieldbyname('DDBH').Value:='ZZZZZZZZZZZZ';
              end;
              workscanQry.FieldByName('InOut').Value:='I';
              workscanQry.FieldByName('UserID').Value:=main.edit1.text;
              workscanQry.FieldByName('ScanDate').Value:=Ndate;
              //UserDate
              if workscanQry.FieldByName('UserDate').IsNull then
                workscanQry.FieldByName('UserDate').Value:=Ndate;
              if workscanQry.FieldByName('Class').Value=0 then
                workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 06:00:00',workscanQry.FieldByName('UserDate').Value);
              if workscanQry.FieldByName('Class').Value=1 then
                workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 14:00:00',workscanQry.FieldByName('UserDate').Value);
              if workscanQry.FieldByName('Class').Value=2 then
                workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 22:00:00',workscanQry.FieldByName('UserDate').Value);
              workscanQry.FieldByName('YN').Value:='1';
              upwsan.apply(ukinsert);
              //更新workplans
              codebar:=workscanQry.fieldbyname('codebar').Value;
              InOut:=workscanQry.fieldbyname('InOut').Value;
              UpdateWorkPlans(codebar,InOut);
          end;
          usmodified:
          begin
            if workscanQry.fieldbyname('YN').value='0'then
            begin
              codebar:=workscanQry.fieldbyname('codebar').Value;
              InOut:=workscanQry.fieldbyname('InOut').Value;
              upwsan.apply(ukdelete);
              //更新workplans
              UpdateWorkPlans(codebar,InOut);
            end else
            begin
              if (NDate-workscanQry.FieldByName('ScanDate').value)<=1  then
              begin
                codebar:=workscanQry.fieldbyname('codebar').Value;
                InOut:=workscanQry.fieldbyname('InOut').Value;
                workscanQry.edit;
                workscanQry.FieldByName('UserID').Value:=main.edit1.text;
                workscanQry.FieldByName('ScanDate').Value:=Ndate;
                //UserDate
                if workscanQry.FieldByName('UserDate').IsNull then
                  workscanQry.FieldByName('UserDate').Value:=Ndate;
                if workscanQry.FieldByName('Class').Value=0 then
                  workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 06:00:00',workscanQry.FieldByName('UserDate').Value);
                if workscanQry.FieldByName('Class').Value=1 then
                  workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 14:00:00',workscanQry.FieldByName('UserDate').Value);
                if workscanQry.FieldByName('Class').Value=2 then
                  workscanQry.FieldByName('UserDate').Value:=FormatDatetime('YYYY/MM/DD 22:00:00',workscanQry.FieldByName('UserDate').Value);
                //
                upwsan.apply(ukmodify);
                //更新workplans
                UpdateWorkPlans(codebar,InOut);
              end else
              begin
                Showmessage('can not modify.');
                abort;
              end;
            end;
          end;
        end;
        workscanQry.Next;
    end;
    workscanQry.active:=false;
    workscanQry.cachedupdates:=false;
    workscanQry.requestlive:=false;
    workscanQry.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGridEh1.columns[7].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TScanInRevise.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.Selectedfield.fieldname='WorkID' then
  begin
    ScanInRevise_workId:=TScanInRevise_workId.Create(self);
    ScanInRevise_workId.Show();
  end;
end;

end.
