unit QC_MatDefect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,EhLibBDE,
  Menus;

type
  TQC_MatDefect = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    qry1: TQuery;
    DS1: TDataSource;
    Upd1: TUpdateSQL;
    qry1CodeID: TStringField;
    qry1Types: TStringField;
    qry1DefectName: TStringField;
    qry1YN: TStringField;
    qry1UserID: TStringField;
    qry1UserDate: TDateTimeField;
    edt2: TEdit;
    Label2: TLabel;
    cboType: TComboBox;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    qry_temp: TQuery;
    qry1GSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_MatDefect: TQC_MatDefect;

implementation

uses Main1, DailyReport1, LeatherSummary1, {RubberChemical1, (N17) } MatQcCheck1;

{$R *.dfm}

procedure TQC_MatDefect.Button1Click(Sender: TObject);
begin
    with qry1 do
    begin
       active:=false;
       sql.Clear;
       sql.Add('select * from QC_MatDefect');
       sql.Add('where GSBH='''+main.Edit2.Text+''' ');
       sql.Add('      and CodeID like '''+edt1.Text+'%'' ');
       sql.Add('      and DefectName like '''+edt2.Text+'%'' ');
       sql.Add('      and Types like '''+cboType.Text+'%'' ');
       sql.add('order by Userdate desc');
       active:=true;
    end;

end;

procedure TQC_MatDefect.FormDestroy(Sender: TObject);
begin
    QC_MatDefect:=nil;
end;

procedure TQC_MatDefect.DBGridEh1DblClick(Sender: TObject);
begin
    if qry1.Active=false then exit;
    if qry1.RecordCount=0 then exit;
    if assigned(LeatherSummary) then
    begin
      if LeatherSummary.qry_All.RequestLive then
      begin
        with LeatherSummary.qry_All do
        begin
            edit;
            fieldbyname('QC_Reason').AsString:=qry1.fieldbyname('CodeID').AsString + ',' + fieldbyname('QC_Reason').AsString;
            fieldbyname('DefectName').AsString:=qry1.fieldbyname('DefectName').AsString + ',' + fieldbyname('DefectName').AsString;
        end;
        qry1.Delete;
      end;

      if LeatherSummary.qry_GradeP.RequestLive then
      begin
          with LeatherSummary.qry_GradeP do
          begin
            edit;
            fieldbyname('DeCode').AsString:=qry1.fieldbyname('CodeID').AsString + ',' + fieldbyname('DeCode').AsString;
            fieldbyname('Defects').AsString:=qry1.fieldbyname('DefectName').AsString + ',' + fieldbyname('Defects').AsString;
          end;
          qry1.Delete;
      end;

      if LeatherSummary.qry_GradePspe.RequestLive then
      begin
          with LeatherSummary.qry_GradePspe do
          begin
            edit;
            fieldbyname('DeCode').AsString:=qry1.fieldbyname('CodeID').AsString + ',' + fieldbyname('DeCode').AsString;
            fieldbyname('Defects').AsString:=qry1.fieldbyname('DefectName').AsString + ',' + fieldbyname('Defects').AsString;
          end;
          qry1.Delete;
      end;
    end;

    if assigned(DailyReport) then
    begin
      if DailyReport.qry_DR.RequestLive then
      begin
        with DailyReport.qry_DR do
        begin
            edit;
            fieldbyname('QC_Reason').AsString:=qry1.fieldbyname('CodeID').AsString + ',' + fieldbyname('QC_Reason').AsString;
            fieldbyname('DefectName').AsString:=qry1.fieldbyname('DefectName').AsString + ',' + fieldbyname('DefectName').AsString;
        end;
        qry1.Delete;
      end ;
    end;

   { if assigned(RubberChemical) then
    begin
      if RubberChemical.qry_DR.RequestLive then
      begin
        with RubberChemical.qry_DR do
        begin
            edit;
            fieldbyname('QC_Reason').AsString:=qry1.fieldbyname('CodeID').AsString + ',' + fieldbyname('QC_Reason').AsString;
            fieldbyname('DefectName').AsString:=qry1.fieldbyname('DefectName').AsString + ',' + fieldbyname('DefectName').AsString;
        end;
        qry1.Delete;
      end;
    end;  }
    
end;

procedure TQC_MatDefect.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   if (qry1.FieldByName('YN').Value ='0') then
  begin
      DBGridEh1.canvas.font.color:=clRed;
  end;
end;

procedure TQC_MatDefect.Insert1Click(Sender: TObject);
begin
   with qry1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
    end;
    save1.Enabled:=true;
    cancel1.Enabled:=true;
    DBGridEh1.Columns[1].ButtonStyle:=cbsAuto;
end;

procedure TQC_MatDefect.Modify1Click(Sender: TObject);
begin
   if (qry1.FieldByName('USERID').Value <> main.edit1.Text) then
    begin
      ShowMessage('It is not yours,you can not modify!!!');
      abort;
    end;

   with qry1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TQC_MatDefect.Delete1Click(Sender: TObject);
begin
    if (qry1.FieldByName('USERID').Value <> main.edit1.Text) then
    begin
      ShowMessage('It is not yours,can not delete!!!');
      abort;
    end;

   if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
   begin
        with qry1 do
        begin
           requestlive:=true;
           cachedupdates:=true;
           edit;
           fieldbyname('YN').Value:='0';
        end;
        save1.Enabled:=true;
        cancel1.Enabled:=true;
   end;
end;

procedure TQC_MatDefect.Save1Click(Sender: TObject);
var i,A1:integer;
    str,s1:string;
begin
  try
    qry1.first;
    for i:=1 to qry1.RecordCount do
      begin
        case qry1.updatestatus of
          usinserted:
            begin
                with qry_temp do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select isnull(max(right(CodeID,2)),0) as ID from QC_MatDefect');
                  sql.Add('where Types='''+qry1.fieldbyName('Types').AsString+''' ');
                  sql.Add('group by Types');
                  active:=true;
                  if RecordCount > 0 then
                  begin
                      last;
                      A1:=StrToInt(fieldbyname('ID').AsString);
                      A1:=A1+1;
                  end
                  else
                  begin
                      A1:=1;
                  end;
                end;

                if A1<10 then
                    s1:='0' + inttostr(A1)
                else
                    s1:=inttostr(A1);

                str:= qry1.fieldbyName('Types').AsString + '-' + s1;

                qry1.edit;
                qry1.fieldbyname('CodeID').AsString:=str;
                qry1.fieldbyname('YN').Value:='1';
                qry1.fieldbyname('USERID').Value:=main.edit1.text;
                qry1.fieldbyname('GSBH').Value:=main.edit2.text;
                Upd1.Apply(ukInsert);
            end;
          usmodified:
          begin
             if (qry1.FieldByName('USERID').Value <> main.edit1.Text) then
             begin
                ShowMessage('It is not yours,can not modify or delete!!!');
                exit;
             end;
             if qry1.FieldByName('USERDATE').Value + 3 < date then
             begin
                Messagedlg('You can not modify or delete after 30 days!!!',mtwarning,[mbyes],0);
                exit;
             end;

             if qry1.fieldbyname('YN').value='0'then
             begin
                Upd1.apply(ukdelete);
             end
             else
             begin
                Upd1.apply(ukmodify);
             end;
          end;
        end;
        qry1.next;
      end;
    qry1.active:=false;
    qry1.cachedupdates:=false;
    qry1.requestlive:=false;
    qry1.active:=true;
  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    Abort;
  end;
  save1.Enabled:=false;
  cancel1.Enabled:=false;
  DBGridEh1.Columns[1].ButtonStyle:=cbsNone;

end;

procedure TQC_MatDefect.Cancel1Click(Sender: TObject);
begin
    with qry1 do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    save1.Enabled:=false;
    cancel1.Enabled:=false;
    DBGridEh1.Columns[1].ButtonStyle:=cbsNone;
end;

procedure TQC_MatDefect.FormShow(Sender: TObject);
begin
   main.FormLanguage(Pointer(self),self.Name);
   Button1Click(nil);
end;

procedure TQC_MatDefect.qry1AfterOpen(DataSet: TDataSet);
begin
    //if (main.Edit1.Text = '23455') or (main.Edit1.Text = '24679') then
   // begin
        Insert1.Enabled:=true;
        if qry1.RecordCount > 0 then
        begin
          Modify1.Enabled:=true;
          Delete1.Enabled:=true;
        end;
   // end;
end;

end.
