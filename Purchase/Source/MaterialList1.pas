unit MaterialList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  ComCtrls;

type
  TMaterialList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1lycc: TStringField;
    Query1gjlb: TStringField;
    Query1cqdh: TStringField;
    Query1tyjh: TStringField;
    Button2: TButton;
    Label4: TLabel;
    Edit8: TEdit;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    FlexEdit: TEdit;
    Query1FlexCode: TStringField;
    FlexCB: TCheckBox;
    Label5: TLabel;
    Query1FlexDescription: TStringField;
    Query1clzmlb: TStringField;
    Query1bz: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialList: TMaterialList;

implementation

uses Memo_En1, Purtrace_Det1;

{$R *.dfm}

procedure TMaterialList.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*, CLZL_FLEX.CLDHFLEX AS FlexCode,cldhflexdes as FlexDescription, clbzzl.* from CLZL ');
    sql.add('left join clbzzl on clbzzl.CLDH = CLZL.CLDH and clbzzl.zybb =''E'' and clbzzl.xh=''001''');
    sql.add('left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH');
    sql.Add('left join CLZL_FLEXS on CLZL_FLEXS.cldhflex=CLZL_FLEX.cldhflex');
    sql.add('where CLZL.CLDH like ''' + Edit1.Text + '%''');
    sql.add('and CLZL.YWPM like ''%' + Edit2.Text + '%''');
    sql.add('and CLZL.YWPM like ''%' + Edit3.Text + '%''');
    sql.add('and CLZL.YWPM like ''%' + Edit4.Text + '%''');
    sql.add('and CLZL.ZWPM like ''%' + Edit5.Text + '%''');
    sql.add('and CLZL.ZWPM like ''%' + Edit6.Text + '%''');
    sql.add('and CLZL.ZWPM like ''%' + Edit7.Text + '%''');
    sql.add('and CLZL.USERID like ''' + Edit8.Text + '%''');
    if (FlexCB.Checked) then
      sql.add('and IsNull(CLZL_FLEX.CLDHFLEX,'''')<>''''  ');
    if (FlexEdit.Text <> '') then
        sql.add('and CLZL_FLEX.CLDHFLEX like ''' + FlexEdit.Text + '%''');
    if CheckBox1.Checked = true then
    begin
      sql.add('and CLZL.USERDATE between ''' + FormatDateTime('yyyy/MM/dd', DTP1.date) + ''' and ''' + FormatDateTime('yyyy/MM/dd', DTP2.date) + '''');
    end;
    sql.add('order by CLZL.CLDH');
    //showmessage (sql.Text);
    active:=true;
  end;
end;

procedure TMaterialList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TMaterialList.FormDestroy(Sender: TObject);
begin
MaterialList:=nil;
end;

procedure TMaterialList.Query1AfterOpen(DataSet: TDataSet);
begin
  if query1.recordcount>0 then
  begin
    DBGrideh1.Columns[1].buttonstyle:=cbsellipsis;
    DBGrideh1.Columns[2].buttonstyle:=cbsellipsis;
  end else
  begin
    DBGrideh1.Columns[1].buttonstyle:=cbsnone;
    DBGrideh1.Columns[2].buttonstyle:=cbsnone;
  end;
end;

procedure TMaterialList.DBGridEh1EditButtonClick(Sender: TObject);
begin
Memo_En:=TMemo_En.create(self);
Memo_En.Query1.Active:=false;
Memo_En.Query1.DataSource:=DataSource1;
if dbgrideh1.selectedfield.fieldname='ywpm' then
  begin
    with Memo_En.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select cldh as MaterialNo, bz as Memo from clbzzl');
        sql.add('where cldh=:CLDH and zybb=''E''');
        active:=true;
        Memo_En.DBGrideh1.columns[0].width:=100;
        Memo_En.DBGrideh1.columns[1].width:=350;
      end;
  end;

  if dbgrideh1.selectedfield.fieldname='zwpm' then
  begin
    with Memo_En.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select cldh as MaterialNo, bz as Memo from clbzzl');
        sql.add('where cldh=:CLDH and zybb=''C''');
        active:=true;
        Memo_En.DBGrideh1.columns[0].width:=100;
        Memo_En.DBGrideh1.columns[1].width:=350;
      end;
  end;
       

  Memo_En.show;
end;

end.
