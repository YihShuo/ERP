unit QCOnTime_Query1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, StrUtils,
  ComCtrls, jpeg;

type
  TQCOnTime_Query = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Label4: TLabel;
    QCED: TDateTimePicker;
    Label5: TLabel;
    QCSD: TDateTimePicker;
    imgClose: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_Query: TQCOnTime_Query;

implementation

uses QCOntime1, main1, FeedbackWastrelOnSite, AndonInputRev1, QCOnTime_Dep1;

{$R *.dfm}

procedure TQCOnTime_Query.Button1Click(Sender: TObject);
var
  j: word;
begin

  //整理生產工時
  with Qtemp do
    begin
      active := false;
      sql.Clear;
      sql.add('select distinct NHour ');
      sql.add('from (select datepart(HH, QCR.USERDATE) as NHour from QCR ');
      //sql.add('where convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('where QCR.USERDATE between ''' + datetostr(QCSD.Date) + ''' and ''' + datetostr(QCED.Date + 1) + ''' ');
      sql.add('and QCR.GSBH = ''' + main.edit2.Text + ''' ) as HourList order by NHour ;');
     // memo1.Text:=sql.Text;
      active := true;
    end;

  //整理交叉表的內容
  with Query1 do
    begin
      active := false;
      sql.Clear;
      sql.add('select QCC.DepNo,QCC.DepName,QCC.YYBH,QCC.YWSM,QCC.ZWSM,QCC.Total');
      while not Qtemp.eof do
        begin
          sql.add(',sum(case when NHour = ''' + Qtemp.fieldbyname('NHour').asstring + ''' ');
          sql.add('then Qty end) as ''' + Qtemp.fieldbyname('NHour').asstring + ''' ');
          QTemp.Next;
        end;

      //各部門每小時各個Defect統計
      sql.add('from (select qcr.Depno,BDepartment.Depname,qcrd.YYBH,qcblyy.ywsm,qcblyy.ZWSM,QCT.Qty as Total, ');
      sql.add('sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour ');
      sql.add('from QCRD ');
      sql.add('left join QCR on qcr.prono= qcrd.prono ');
      sql.add('left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH ');
      sql.add('left join bdepartment on bdepartment.id=qcr.depno ');
      sql.add('left join (select qcr.Depno,qcrd.YYBH,sum(qcrd.qty) as Qty ');
      sql.add('from QCRD ');
      sql.add('left join QCR on qcr.prono= qcrd.prono');
      sql.add('left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
      //sql.add('where convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('where QCR.USERDATE between ''' + datetostr(QCSD.Date) + ''' and ''' + datetostr(QCED.Date+1) + ''' ');
      //sql.add('and QCR.GSBH = ''' + main.edit2.Text + ''' and (QCR.GXLB = ''A'' or QCR.GXLB = ''C+S'' ) ');
      sql.add('and QCR.GSBH = ''' + main.edit2.Text + ''' and QCR.GXLB in (''A'',''C+S'') ');
      sql.add('group by qcr.Depno,qcrd.YYBH) as QCT on QCR.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH ');
      //sql.add('where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('where QCR.USERDATE between ''' + datetostr(QCSD.Date) + ''' and ''' + datetostr(QCED.Date+1) + ''' ');
      //sql.add('and QCR.GSBH = ''' + main.edit2.Text + ''' and (QCR.GXLB = ''A'' or QCR.GXLB = ''C+S'' ) ');
      sql.add('and QCR.GSBH = ''' + main.edit2.Text + ''' and QCR.GXLB in ( ''A'' , ''C+S'' ) ');
      sql.add('group by qcr.Depno,BDepartment.Depname,qcrd.YYBH,qcblyy.ywsm,qcblyy.ZWSM,QCT.Qty,datepart(hh,qcr.userdate) ');
      sql.add(') as QCC ');
      sql.add('group by qcc.DepNo,qcc.DepName,qcc.YYBH,qcc.YWSM,QCC.ZWSM,QCC.Total ');
      sql.add('order by QCC.DepNo,QCC.YYBH ');
      // memo1.Text:=sql.Text;
      active := true;
    end;

  with DBGrid1 do
    begin
      columns[0].Width := 0;
      columns[0].title.caption := 'DepNo';
      columns[1].Width := 130;
      columns[1].title.caption := 'DepName';
      columns[2].Width := 0;
      columns[2].title.caption := columns[2].title.caption;
      //判斷英文QC原文
      if AndonInputRev.rbENG.Checked and not AndonInputRev.rbVIT.Checked then
      begin
        columns[3].Width:=260;
        columns[3].title.caption:=columns[3].title.caption;
        columns[4].Width:=0;
        columns[4].title.caption:=columns[4].title.caption;
      end;
      //判斷越文QC原文
      if not AndonInputRev.rbENG.Checked and AndonInputRev.rbVIT.Checked then
      begin
        columns[3].Width:=0;
        columns[3].title.caption:=columns[3].title.caption;
        columns[4].Width:=260;
        columns[4].title.caption:=columns[4].title.caption;
      end;
      columns[5].Width := 40;
      columns[5].title.caption := columns[5].title.caption;
      columns[5].Color := $00FCCBCD;
      for j := 6 to Query1.FieldCount - 1 do
        begin
          columns[j].Width := 40;
          columns[j].Title.Caption := columns[j].Title.Caption;
          if j mod 2 <> 0 then
            columns[j].Color := clInfoBk;
        end;
    end;
end;

procedure TQCOnTime_Query.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    button1click(nil);
end;

procedure TQCOnTime_Query.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    //DBGrid1Dblclick(nil);
end;

procedure TQCOnTime_Query.FormDestroy(Sender: TObject);
begin
  QCOnTime_Query := nil;
end;

procedure TQCOnTime_Query.FormCreate(Sender: TObject);
begin
  QCSD.Date := Now;
  QCED.Date := Now;
end;

procedure TQCOnTime_Query.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TQCOnTime_Query.imgCloseClick(Sender: TObject);
begin
  Close;
end;

end.

