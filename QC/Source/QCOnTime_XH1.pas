unit QCOnTime_XH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TQCOnTime_XH = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Label2: TLabel;
    CB1: TComboBox;
    Button1: TButton;
    SCSJ: TQuery;
    SCSJXH: TStringField;
    SCSJFTime: TStringField;
    SCSJTTime: TStringField;
    SCSJUSERID: TStringField;
    SCSJUSERDATE: TDateTimeField;
    SCSJYN: TStringField;
    DS1: TDataSource;
    SCSJYXGS: TFloatField;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_XH: TQCOnTime_XH;

implementation

uses QCOntime1, OnTime_sczl1, FeedbackWastrelOnSite, {AndonInput1,} QC_BatchInputp,
  main1;

{$R *.dfm}

procedure TQCOnTime_XH.Button1Click(Sender: TObject);
begin
with SCSJ do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from SCSJ ');
    sql.add('where XH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and FTime like '+''''+CB1.text+'%'+'''');
    sql.add('      and YN<>'+''''+'5'+'''');
    sql.add('order by XH ');
    active:=true;
  end;
end;

procedure TQCOnTime_XH.DBGridEh1DblClick(Sender: TObject);
begin

if SCSJ.RecordCount>0 then
  begin
    if label3.Caption = 'SN54'  then
    begin
      FMFeedbackWastrelOnSite.Edit1.Text := SCSJ.fieldbyname('XH').value ;
      FMFeedbackWastrelOnSite.Edit2.Text := SCSJ.fieldbyname('FTime').value +'-'+ SCSJ.fieldbyname('TTime').value;
      FMFeedbackWastrelOnSite.Edit3.Text := SCSJ.fieldbyname('YXGS').value ;
    end
    else
   { if label3.Caption = 'SN56'  then
    begin
      AndonInput.Edit1.Text := SCSJ.fieldbyname('XH').value ;
      AndonInput.Edit2.Text := SCSJ.fieldbyname('FTime').value +'-'+ SCSJ.fieldbyname('TTime').value;
      AndonInput.Edit3.Text := SCSJ.fieldbyname('YXGS').value ;
    end
    else}
    if label3.Caption = 'SN5B'  then
    begin
     QC_BatchInput.XH_ID.Text := SCSJ.fieldbyname('XH').value ;
    end
    else
    begin
      QCOnTime.QRepMas.edit;
      QCOnTime.QRepMas.fieldbyname('SJXH').value:= SCSJ.fieldbyname('XH').value ;
      QCOnTime.QRepMas.fieldbyname('SCTime').value:= SCSJ.fieldbyname('FTime').value +'-'+ SCSJ.fieldbyname('TTime').value ;
      QCOnTime.QRepMas.fieldbyname('YXGS').value:= SCSJ.fieldbyname('YXGS').value ;
    end;
    SCSJ.Active:=false;
    close;
  end;
end;

procedure TQCOnTime_XH.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  dbgrideh1dblclick(nil);
end;

procedure TQCOnTime_XH.FormDestroy(Sender: TObject);
begin

QCOnTime_XH:=nil;
end;

procedure TQCOnTime_XH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
