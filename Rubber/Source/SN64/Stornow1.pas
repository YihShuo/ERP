unit Stornow1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBGridEhImpExp , ShellAPI;

type
  TStornow = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1mjbh: TStringField;
    Query2: TQuery;
    Query2ColorNo: TStringField;
    Query2EnglishName: TStringField;
    WSMQ: TQuery;
    WSDQ: TQuery;
    sizeq: TQuery;
    DataSource1: TDataSource;
    wsm: TDataSource;
    Splitter1: TSplitter;
    WSDQscandate: TDateTimeField;
    WSDQsize: TStringField;
    WSDQinout: TStringField;
    WSDQqty: TIntegerField;
    WSMQworkid: TStringField;
    WSMQmjbh: TStringField;
    WSMQcolorno: TStringField;
    WSMQBDEDesigner105: TIntegerField;
    WSMQBDEDesigner110: TIntegerField;
    WSMQBDEDesigner115: TIntegerField;
    WSMQBDEDesigner120: TIntegerField;
    WSMQBDEDesigner125: TIntegerField;
    WSMQBDEDesigner130: TIntegerField;
    WSMQBDEDesigner135: TIntegerField;
    WSMQBDEDesigner010: TIntegerField;
    WSMQBDEDesigner015: TIntegerField;
    WSMQBDEDesigner020: TIntegerField;
    WSMQBDEDesigner025: TIntegerField;
    WSMQBDEDesigner030: TIntegerField;
    WSMQBDEDesigner035: TIntegerField;
    WSMQBDEDesigner040: TIntegerField;
    WSMQBDEDesigner045: TIntegerField;
    WSMQBDEDesigner050: TIntegerField;
    WSMQBDEDesigner055: TIntegerField;
    WSMQBDEDesigner060: TIntegerField;
    WSMQBDEDesigner065: TIntegerField;
    WSMQBDEDesigner070: TIntegerField;
    WSMQBDEDesigner075: TIntegerField;
    WSMQBDEDesigner080: TIntegerField;
    WSMQBDEDesigner085: TIntegerField;
    WSMQBDEDesigner090: TIntegerField;
    WSMQBDEDesigner095: TIntegerField;
    WSMQBDEDesigner100: TIntegerField;
    WSMQBDEDesigner1052: TIntegerField;
    WSMQBDEDesigner1102: TIntegerField;
    WSMQBDEDesigner1152: TIntegerField;
    WSMQBDEDesigner1202: TIntegerField;
    WSMQBDEDesigner1252: TIntegerField;
    WSMQBDEDesigner1302: TIntegerField;
    WSMQBDEDesigner1352: TIntegerField;
    WSMQBDEDesigner140: TIntegerField;
    WSMQBDEDesigner150: TIntegerField;
    WSMQBDEDesigner160: TIntegerField;
    WSMQBDEDesigner170: TIntegerField;
    WSMQBDEDesigner180: TIntegerField;
    WSMQEnglishName: TStringField;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Stornow: TStornow;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TStornow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  stornow:=nil;
end;

procedure TStornow.Button1Click(Sender: TObject);
var i:integer;
begin
  with sizeq do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select Siz as Size  from ( ');
    SQL.Add('Select Siz from LastSizeR  Group by Siz ');
    SQL.Add('Union all ');
    SQL.Add('Select XXCC as Siz from Gender  Group by XXCC ) LastSizeR Group by Siz order by Siz ');
    active:=true;

    wsmq.Active:=false;
    wsmq.SQL.Clear;
    wsmq.SQL.Add('select st.workid,st.mjbh,st.colorno,colorclass.EnglishName ');
    for i:=1 to recordcount do
    begin
      wsmq.SQL.add(' ,isnull(sum(case  when size='+''''+fieldbyname('Size').asstring+''''+'and inout='+''''+'I'+''''+' then totQty end),0)');
      wsmq.SQL.add(' - isnull(sum(case  when size='+''''+fieldbyname('Size').asstring+''''+'and inout='+''''+'O'+''''+' then totQty end),0)');
      wsmq.SQL.add('   as ''['+fieldbyname('Size').asstring+']'' ');
      next;
    end;
    wsmq.SQL.Add('from ');
    wsmq.SQL.Add('(select workwhsds.workid ,workplan.mjbh,workplan.colorno ');
    wsmq.SQL.Add('	,workwhsds.size,workwhsds.inout,sum(workwhsds.qty) as totqty ');
    wsmq.SQL.Add('  from '+main.LIY_DD+'.dbo.workwhsds workwhsds');
    wsmq.SQL.Add('  left join '+main.LIY_DD+'.dbo.workplan workplan on workplan.workid=workwhsds.workid');
    wsmq.SQL.Add('  where workplan.workqty is not null and workplan.CQDH='''+main.Edit2.Text+'''');
    if mjcb.Text<>'ALL' then
      wsmq.sql.Add(' and workplan.mjbh='+''''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      wsmq.sql.Add(' and workplan.colorno='+''''+edit1.Text+'''');
    wsmq.SQL.Add('group by  workwhsds.workid ,workplan.mjbh,workplan.colorno ');
    wsmq.SQL.Add('	,workwhsds.size,workwhsds.inout) as st');
    wsmq.SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass	colorclass  on colorclass.ColorNo=st.ColorNo ');
    wsmq.SQL.Add('group by st.workid,st.mjbh,st.colorno,colorclass.EnglishName ');
    wsmq.SQL.Add('');
    //memo1.Text:=wsmq.SQL.Text;
    wsmq.Active:=true;
    //wsdq.Active:=true;
    wsdq.Active:=false;
    wsdq.SQL.Clear;
    wsdq.sql.Add('select scandate,size,inout,qty  from '+main.LIY_DD+'.dbo.workwhsds');
    wsdq.sql.Add('where workid=:workid');
    wsdq.sql.Add('order by scandate');
    wsdq.active:=true;
  end;
  //

end;

procedure TStornow.CLCBChange(Sender: TObject);
begin
  query2.locate('englishname',clcb.Text,[]);
  edit1.Text:=query2.fieldbyname('colorno').Value;
end;

procedure TStornow.FormCreate(Sender: TObject);
var i:integer;
begin

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select bz2 as mjbh');
    sql.Add('from '+main.LIY_DD+'.dbo.mjzl');
    sql.Add('where IsNull(bz2,'''')<>''''');
    sql.Add('group by bz2');
    sql.Add('order by bz2');
    active:=true;

    query1.First;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        MJCB.Items.Add(fieldbyname('mjbh').asstring);
        next;
      end;
  end;

  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select EnglishName,ColorNo');
    sql.Add('from '+main.LIY_DD+'.dbo.colorclass');
    sql.Add('where IsNull(EnglishName,'''')<>''''');
    sql.Add('group by EnglishName,ColorNo');
    active:=true;

    query2.First;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        CLCB.Items.Add(fieldbyname('EnglishName').asstring);
        next;
      end;
  end;

end;

procedure TStornow.Button2Click(Sender: TObject);
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

end.
