unit FillInMaintainance1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Bde.DBTables, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls;

type
  TFillInMaintainance = class(TForm)
    Panel1: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Button1: TButton;
    TBWorkID: TEdit;
    DBGridEh2: TDBGridEh;
    TSCD_MakeReport: TQuery;
    TSCD_MakeReportLSBH: TStringField;
    TmpQuery: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    DP2: TDateTimePicker;
    TSCD_MakeReportmt_code: TStringField;
    TSCD_MakeReportTSID: TStringField;
    TSCD_MakeReportSBBH: TStringField;
    TSCD_MakeReportdepartment: TStringField;
    TSCD_MakeReportuserdate: TStringField;
    TSCD_MakeReportZWPM: TStringField;
    TSCD_MakeReportremark: TStringField;
    TSCD_MakeReportISOK: TBooleanField;
    TSCD_MakeReportclasstype: TStringField;
    TSCD_MakeReportok_userid: TStringField;
    TSCD_MakeReportmt_status: TBooleanField;
    Label3: TLabel;
    TSCD_MakeReportTSBH: TStringField;
    TSCD_MakeReportMon: TBooleanField;
    TSCD_MakeReportSea: TBooleanField;
    TSCD_MakeReportYears: TBooleanField;
    TSCD_MakeReportZWPM2: TStringField;
    CBDepartment: TComboBox;
    Label4: TLabel;
    TSCD_MakeReportok_date: TStringField;
    TSCD_MakeReportuds: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FillInMaintainance: TFillInMaintainance;

implementation

{$R *.dfm}

uses main1;

procedure TFillInMaintainance.BB4Click(Sender: TObject);
begin
  with TSCD_MakeReport do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TFillInMaintainance.BB5Click(Sender: TObject);
var i:integer;
var counts:integer;
begin
 try
    TSCD_MakeReport.first;
    counts:=0;
    for i:=1 to TSCD_MakeReport.RecordCount do
    begin
      case TSCD_MakeReport.updatestatus of
        usinserted:
        begin

        end;
        usmodified:
        begin
          if (Length(TRim(TSCD_MakeReport.FieldByName('remark').AsString))<2) and (NOT TSCD_MakeReport.FieldByName('ISOK').AsBoolean) then
          begin
            showmessage('If checked not ok..then remark not null !!!!');
            abort;
          end
          else
          begin
            if TSCD_MakeReport.FieldByName('uds').AsInteger=1 then
            begin
             TSCD_MakeReport.edit;
             TSCD_MakeReport.FieldByName('ok_userid').Value:=main.edit1.text;
             TSCD_MakeReport.FieldByName('remark').Value:=TSCD_MakeReport.FieldByName('remark').AsString;
             TSCD_MakeReport.FieldByName('ISOK').Value:=TSCD_MakeReport.FieldByName('ISOK').AsBoolean;
             upMas.apply(ukmodify);
             TmpQuery.Active:=false;
             TmpQuery.SQL.Clear;
             if TSCD_MakeReport.FieldByName('Mon').AsBoolean then
             begin
              TmpQuery.SQL.Add('update [TSCD] set [CycleDate_M]=getdate(),');
             end;
             if TSCD_MakeReport.FieldByName('Sea').AsBoolean then
             begin
             TmpQuery.SQL.Add('update [TSCD] set [CycleDate_M]=getdate(),[CycleDate_S]=getdate(),');
             end;
             if TSCD_MakeReport.FieldByName('Years').AsBoolean then
             begin
             TmpQuery.SQL.Add('update [TSCD] set [CycleDate_M]=getdate(),[CycleDate_S]=getdate(),[CycleDate_Y]=getdate(),');
             end;
             TmpQuery.SQL.Add('[USERID_Modify]='''+Main1.suser+''',[USERDATE_Modify]=getdate()');
             TmpQuery.SQL.Add(' where [TSID]='''+TSCD_MakeReport.FieldByName('TSID').AsString+'''');
             TmpQuery.ExecSQL;
             Inc(counts);
            end;
          end;
        end;
      end;
      TSCD_MakeReport.next;
    end;
    TSCD_MakeReport.active:=false;
    TSCD_MakeReport.cachedupdates:=false;
    TSCD_MakeReport.requestlive:=false;
    TSCD_MakeReport.active:=true;
    BB4.enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    showmessage('Succeed updat record: '+InttoStr(Counts));
 except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
 end;
end;

procedure TFillInMaintainance.BB6Click(Sender: TObject);
begin
 with TSCD_MakeReport do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TFillInMaintainance.BB7Click(Sender: TObject);
begin
  Close();
end;

procedure TFillInMaintainance.Button1Click(Sender: TObject);
begin
    with TSCD_MakeReport do
    begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT [mt_code],ISOK,a.[TSID],[TSBH],a.[SBBH],[department],a.[LSBH]');
      sql.Add(',[VWPM],[ZWPM],[mt_status],a.[userid],a.[userdate]');
      sql.Add(',case when isnull(datediff(day,[ok_date],getdate()),0) <30 then 1 else 0 end as uds');
      sql.Add(',case [class_type] when 1 then ''Mon'' when 2 then ''Sea'' else ''Years'' end classtype');
	    sql.Add(',a.remark,[ok_userid],[ok_date],[Mon],[Sea],[Years] FROM [TSCD_MtWorks] a ');
      sql.Add('inner join [TSCD_SB] b on a.SBBH=b.SBBH and a.[LSBH]=b.LSBH');
      sql.Add('inner join TSCD c on a.TSID=c.TSID');
      sql.Add(' where DATEDIFF(month,a.[userdate],'''+FormatDateTime('yyyy-mm-dd', DP2.Date)+''')=0 and a.flowflag <>''X''');
      if Length(CBDepartment.Text)>1 then sql.Add(' and [department]='''+CBDepartment.Text+'''');
      if Length(Trim(TBWorkID.Text))=11 then sql.Add(' and mt_code='''+TBWorkID.Text+'''');
      active:=true;
      TSCD_MakeReport.First;
      TSCD_MakeReport.requestlive:=true;
      TSCD_MakeReport.cachedupdates:=true;
      while not TSCD_MakeReport.Eof do
      begin
        if TSCD_MakeReport.FieldByName('Sea').AsBoolean then
        begin
          TSCD_MakeReport.Edit;
          TSCD_MakeReport.FieldByName('Mon').Value:=true  ;
          TSCD_MakeReport.Post;
        end;
        if TSCD_MakeReport.FieldByName('Years').AsBoolean then
        begin
          TSCD_MakeReport.Edit;
          TSCD_MakeReport.FieldByName('Mon').Value:=true  ;
          TSCD_MakeReport.FieldByName('Sea').Value:=true  ;
          TSCD_MakeReport.Post;
        end;
        TSCD_MakeReport.Next;
      end;
      TSCD_MakeReport.First;
    end;
end;

procedure TFillInMaintainance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFillInMaintainance.FormCreate(Sender: TObject);
begin
  //³¡ªù
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT [DepName] FROM [TSCD_BDepartment] where YN=''1'' and ID in(select distinct DepID from [TSCD]) order by DepName');
    Active:=true;
    tmpQuery.First;
    CBDepartment.Items.Clear;
    while not eof do
    begin
      CBDepartment.Items.Add(FieldByName('DepName').AsString);
      Next();
    end;
    active:=false;
  end;
  DP2.Date:=now() ;
end;

procedure TFillInMaintainance.FormDestroy(Sender: TObject);
begin
FillInMaintainance:=nil;
end;

end.
