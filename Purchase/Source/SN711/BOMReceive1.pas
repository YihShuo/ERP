unit BOMReceive1;

interface
                      
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls, Menus,comobj,DBGridEhImpExp, ShellAPI, Zlib;

type
  TBOMReceive = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    Qry_BOMReceive: TQuery;
    UpMas: TUpdateSQL;
    DS_BOMReceive: TDataSource;
    BDelRec: TQuery;
    qry1: TQuery;
    Pop_Master: TPopupMenu;
    Excel2: TMenuItem;
    Qry_BOMReceiveReceiveNO: TStringField;
    Qry_BOMReceiveFileNO: TStringField;
    Qry_BOMReceiveFD: TStringField;
    Qry_BOMReceiveSeason: TStringField;
    Qry_BOMReceiveStage: TStringField;
    Qry_BOMReceiveMergeNO: TStringField;
    Qry_BOMReceiveReceiveDate: TDateTimeField;
    Qry_BOMReceiveUSERDate: TDateTimeField;
    Qry_BOMReceiveUSERID: TStringField;
    Qry_BOMReceiveYN: TStringField;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    DS_BOMReceiveS: TDataSource;
    Qry_BOMReceiveS: TQuery;
    UPDet: TUpdateSQL;
    Qry_BOMReceiveSReceiveNO: TStringField;
    Qry_BOMReceiveSArticle: TStringField;
    Qry_BOMReceiveSRevArticle: TStringField;
    Qry_BOMReceiveSPairs: TCurrencyField;
    Qry_BOMReceiveSRemark1: TStringField;
    Qry_BOMReceiveSRemark2: TStringField;
    Qry_BOMReceiveSUSERDate: TDateTimeField;
    Qry_BOMReceiveSUSERID: TStringField;
    Qry_BOMReceiveSYN: TStringField;
    Qry_BOMReceiveAll_Article: TStringField;
    Panel4: TPanel;
    DBGrid3: TDBGridEh;
    Qry_BOMReceiveArt_Cnt: TIntegerField;
    SaveDialog1: TSaveDialog;
    Qry_BOMReceiveSDevtype: TStringField;
    Qry_BOMReceiveSCategory: TStringField;
    Qry_BOMReceiveSFD: TStringField;
    Qry_BOMReceiveSJIJIE: TStringField;
    Qry_BOMReceiveSYPDH: TStringField;
    Qry_BOMReceiveSSeason: TStringField;
    Qry_BOMReceiveSStage: TStringField;
    Qry_BOMReceiveSKFJD: TStringField;
    Button2: TButton;
    Panel5: TPanel;
    DBGrid4: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    Qry_BOMReceiveSS: TQuery;
    Qry_BOMReceiveSSarticle: TStringField;
    Qry_BOMReceiveSSKFJD: TStringField;
    DS_BOMReceiveSS: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Qry_BOMReceiveGSBH: TStringField;
    Qry_BOMReceiveRemark: TStringField;
    Qry_BOMReceiveSSize: TStringField;
    fdquery: TQuery;
    tempqry: TQuery;
    Qry_BOMReceiveSdevcode: TStringField;
    Qry_BOMReceiveSSdevcode: TStringField;
    Qry_BOMReceiveteam: TStringField;
    Memo1: TMemo;
    Qry_BOMReceiveSProductionLocation: TStringField;
    Qry_BOMReceiveSSProductionLocation: TStringField;
    Qry_BOMReceiveSSypdh: TStringField;
    Qry_BOMReceiveSYSSM: TStringField;
    Panel6: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Edit_Season: TEdit;
    Edit_Stage: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit_FD: TEdit;
    Edit_Article: TEdit;
    Edit_Merge: TEdit;
    Edit_Team: TEdit;
    Button3: TButton;
    ComboBox14: TComboBox;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1Columns3NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid3Columns5NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure Excel2Click(Sender: TObject);
    procedure DBGrid3Columns4NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Qry_BOMReceiveAfterOpen(DataSet: TDataSet);
    procedure Qry_BOMReceiveSAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid3Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMReceive: TBOMReceive;
  NDate:TDate;
  mainseason:string;
  maindevtype:string;
  mainstage:string;  
implementation

uses main1, MaterialNG1, BOMReceive_Check1, FunUnit, ChoiceArticle1,
  SampleMerge1;

{$R *.dfm}

procedure TBOMReceive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;

end;

procedure TBOMReceive.Button1Click(Sender: TObject);
begin

  with Qry_BOMReceive do
  begin
    active:=false;
    sql.Clear;    //產生All Article 的暫存檔
    sql.add('if object_id(''tempdb..#BOMReceive_Article'') is not null    ');
    sql.add('  begin drop table #BOMReceive_Article end                 ');
    sql.add('SELECT BOMReceive.ReceiveNO,   ');
    sql.add('   ISNULL((SELECT Article+'',''  FROM (select BOMReceiveS.ReceiveNO,kfxxzl.devcode as article ');
    sql.add('  from BOMReceiveS ');
    sql.add('  left join BOMReceive on BOMReceive.ReceiveNO=BOMReceiveS.ReceiveNO ');
    sql.add('  left join YPZL on BOMReceiveS.YPDH=YPZL.YPDH');
    sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('where 1=1');
    if CheckBox1.Checked then
    begin
      sql.add('  and  convert(smalldatetime,convert(varchar,BOMReceive.ReceiveDate,111))  between ');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if ComboBox14.Text <> '' then
    begin
      SQL.Add('  and YPZL.YPDH like '''+ComboBox14.Text+'%''');
    end;
    sql.add('  group by BOMReceiveS.ReceiveNO,devcode ) SS   ');
    sql.add('         WHERE ss.ReceiveNO=BOMReceive.ReceiveNO  ');
    sql.add('         FOR XML PATH('''')   ');
    sql.add('         ),'''') as all_Article  into #BOMReceive_Article   ');
    sql.add('   FROM BOMReceive ');
    if CheckBox1.Checked then
    begin
      sql.add('where  convert(smalldatetime,convert(varchar,BOMReceive.ReceiveDate,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('select BOMReceive.ReceiveNO,GSBH ');
    sql.add('       ,FileNO ');
    sql.add('       ,FD ');
    sql.add('       ,Season ');
    sql.add('       ,Stage ');
    sql.add('       ,MergeNO ');
    sql.add('       ,Remark ');
    sql.add('       ,ReceiveDate ');
    sql.add('       ,USERDate ');
    sql.add('       ,USERID ');
    sql.add('       ,YN ');
    sql.add('       ,team ');
    sql.add('       ,CAST(#BOMReceive_Article.all_Article AS char(200)) as All_Article ');
    sql.add('       ,(select count(*) from BOMReceiveS where BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO ) as Art_Cnt ');
    sql.add('from BOMReceive');
    sql.add('left join #BOMReceive_Article on #BOMReceive_Article.ReceiveNO=BOMReceive.ReceiveNO ');
    sql.add('where 1=1 ');
    if Edit_Season.Text<>'' then
       sql.add('   and Season like '''+Edit_Season.Text+'%'+'''');
    if Edit_Stage.Text<>'' then
       sql.add('   and Stage like '''+Edit_Stage.Text+'%'+'''');
    if Edit_FD.Text<>'' then
       sql.add('   and FD like '''+Edit_FD.Text+'%'+'''');
    if Edit_Merge.Text<>'' then
       sql.add('   and MergeNO like '''+Edit_Merge.Text+'%'+'''');
    if Edit_Team.Text<>'' then
       sql.add('   and Team like '''+Edit_Team.Text+'%'+'''');
    if Edit_Article.Text<>'' then
    begin
       sql.add('   and exists (select YPZL.article from BOMReceiveS,YPZL where BOMReceiveS.ReceiveNO=BOMReceive.ReceiveNO  and YPZL.YPDH=BOMReceiveS.YPDH ');
       sql.add('   and (YPZL.Article like '''+Edit_Article.Text+'%'+'''');
       sql.add('        or  RevArticle like '''+Edit_Article.Text+'%''))');
    end;
    if CheckBox1.Checked then
    begin
       sql.add('and convert(smalldatetime,convert(varchar,BOMReceive.ReceiveDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('and GSBH= '''+main.Edit2.Text+''' ');
    sql.add('order by BOMReceive.ReceiveNO desc');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  Qry_BOMReceiveS.Active:=true;
  Qry_BOMReceiveSS.Active:=true;
  //check.Checked:=true;

  DBGrid3.Columns[7].ButtonStyle := cbsEllipsis;
end;


procedure TBOMReceive.BB2Click(Sender: TObject);
begin
  with Qry_BOMReceive do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Button1.Enabled:=false;
  DBGrid3.columns[1].ButtonStyle:=cbsAuto;
end;

procedure TBOMReceive.FormCreate(Sender: TObject);
begin
  if main.Edit2.Text = 'SKX' then
  begin
    Label8.Visible := true;
    ComboBox14.Visible := true;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=date;
  DTP2.date:=date;
end;

procedure TBOMReceive.BB3Click(Sender: TObject);
begin
    with Qry_BOMReceive do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
          showmessage('It is not yours,can not delete.');
      end;
    end;

    BB5.Enabled:=true;
    BB6.Enabled:=true;
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    Button1.Enabled:=false;
    //dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMReceive.BB4Click(Sender: TObject);
begin
  with Qry_BOMReceive do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Button1.Enabled:=false;
  DBGrid3.Columns[1].ButtonStyle:=cbsAuto;
end;


procedure TBOMReceive.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    Qry_BOMReceive.first;
    for i:=1 to Qry_BOMReceive.RecordCount do
      begin
        case Qry_BOMReceive.updatestatus of
          usinserted:
            begin
              if (Qry_BOMReceive.fieldbyname('ReceiveDate').isnull) then
                begin
                  Qry_BOMReceive.delete;
                end
                else
                  //if (CGMas.fieldbyname('ReceiveDate').AsString=''  )  then
                  //   begin
                  //     showmessage('ReceiveDate can not empty.');
                  //     exit;
                  //   end;
                begin
                     with query1 do    //計算採購單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select ReceiveNO from BOMReceive where ReceiveNO like '+''''+y+m+'%'+'''');
                         sql.add('order by ReceiveNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('ReceiveNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     Qry_BOMReceive.edit;
                     Qry_BOMReceive.fieldbyname('ReceiveNO').Value:=a;
                     Qry_BOMReceive.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     if Qry_BOMReceive.FieldByName('Season').AsString<>'' then
                        Qry_BOMReceive.FieldByName('Season').Value:=Uppercase(Qry_BOMReceive.FieldByName('Season').Value);
                     if Qry_BOMReceive.FieldByName('Stage').AsString<>'' then
                        Qry_BOMReceive.FieldByName('Stage').Value:=Uppercase(Qry_BOMReceive.FieldByName('Stage').Value);
                     Qry_BOMReceive.FieldByName('userID').Value:=main.edit1.text;
                     Qry_BOMReceive.FieldByName('userdate').Value:=Ndate;
                     Qry_BOMReceive.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
              if Qry_BOMReceive.fieldbyname('YN').value='0'then
                begin
//                    with BDelRec do
//                      begin
//                        active:=false;
//                        sql.Clear;
//                        sql.add('insert into BDelRec ');
//                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
//                        sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
//                        sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
//                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
 //                       execsql;
//                        active:=false;
//                      end;
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-Qry_BOMReceive.FieldByName('ReceiveDate').value)<900  then
                      begin
                        Qry_BOMReceive.edit;
                        Qry_BOMReceive.FieldByName('userID').Value:=main.edit1.text;
                        Qry_BOMReceive.FieldByName('userdate').Value:=Ndate;
                        if Qry_BOMReceive.FieldByName('Season').AsString<>'' then
                           Qry_BOMReceive.FieldByName('Season').Value:=Uppercase(Qry_BOMReceive.FieldByName('Season').Value);
                        if Qry_BOMReceive.FieldByName('Stage').AsString<>'' then
                           Qry_BOMReceive.FieldByName('Stage').Value:=Uppercase(Qry_BOMReceive.FieldByName('Stage').Value);
                        upMas.apply(ukmodify);
                      end
                      else
                        begin
                          showmessage('Date>900, can not modify.');
                        end;
                  end;
             end;
        end;
       Qry_BOMReceive.next;
      end;
    Qry_BOMReceive.active:=false;
    Qry_BOMReceive.cachedupdates:=false;
    Qry_BOMReceive.requestlive:=false;
    Qry_BOMReceive.active:=true;
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    Button1.Enabled:=true;
    DBGrid3.columns[1].ButtonStyle:=cbsnone;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TBOMReceive.BB6Click(Sender: TObject);
begin
 with Qry_BOMReceive do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;

  Button1.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TBOMReceive.BBT1Click(Sender: TObject);
begin
  Qry_BOMReceive.First;
end;

procedure TBOMReceive.BBT2Click(Sender: TObject);
begin
  Qry_BOMReceive.prior;
end;

procedure TBOMReceive.BBT3Click(Sender: TObject);
begin
  Qry_BOMReceive.next;
end;

procedure TBOMReceive.BBT4Click(Sender: TObject);
begin
  Qry_BOMReceive.last;
end;

procedure TBOMReceive.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBOMReceive.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Qry_BOMReceive.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TBOMReceive.FormDestroy(Sender: TObject);
begin
  BOMReceive:=nil;
end;

procedure TBOMReceive.DBGrid1Columns3NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Size from list ,can not alter by manually.');
       abort;
end;

procedure TBOMReceive.DBGrid3Columns5NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Stage from list .');
       abort;
end;

procedure TBOMReceive.Excel2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  tdbgh := DBGrid3;
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

procedure TBOMReceive.DBGrid3Columns4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select SEASON from list .');
       abort;
end;

procedure TBOMReceive.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Qry_BOMReceive.FieldByName('YN').Value='0')  then
    begin
          DBGrid3.canvas.font.color:=clred;
    end;
  if (Qry_BOMReceive.FieldByName('YN').Value='2')  then
    begin
       DBGrid3.Canvas.Font.Color := cllime ;
    end;
end;

procedure TBOMReceive.Qry_BOMReceiveAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TBOMReceive.Qry_BOMReceiveSAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TBOMReceive.BD2Click(Sender: TObject);
begin
  if Qry_BOMReceive.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  with Qry_BOMReceiveS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  Panel4.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMReceive.BD3Click(Sender: TObject);
begin
  if Qry_BOMReceive.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    panel1.visible:=true;
    abort;
  end;
  with Qry_BOMReceiveS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  Panel4.Enabled:=false;
end;

procedure TBOMReceive.BD4Click(Sender: TObject);
begin
  if Qry_BOMReceive.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  with Qry_BOMReceiveS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Panel4.Enabled:=false;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMReceive.BD6Click(Sender: TObject);
begin
  with Qry_BOMReceiveS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  Panel4.Enabled:=true;
end;

procedure TBOMReceive.BD5Click(Sender: TObject);
var i:integer;
begin
  Qry_BOMReceiveSS.Active:=FALSE;
  try
      Qry_BOMReceiveS.first;
      for i:=1 to Qry_BOMReceiveS.RecordCount do
        begin
          case Qry_BOMReceiveS.updatestatus of
            usinserted:
              begin
                if Qry_BOMReceiveS.fieldbyname('YPDH').isnull then
                  begin
                    Qry_BOMReceiveS.delete;
                  end
                   else
                     begin
                       Qry_BOMReceiveS.edit;
                       Qry_BOMReceiveS.fieldbyname('ReceiveNO').Value:=Qry_BOMReceive.fieldbyname('ReceiveNO').Value;
                       Qry_BOMReceiveS.FieldByName('userID').Value:=main.edit1.text;
                       Qry_BOMReceiveS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                       Qry_BOMReceiveS.FieldByName('YN').Value:='1';
                       upDet.apply(ukinsert);
                     end;
                  begin
                     with tempqry do
                     begin
                         active:=false;
                         sql.Clear;
                         sql.add('update ypzl set Pur_recieve = ''1'',recieveDate=GetDate() ');
                         sql.add('where YPDH='''+Qry_BOMReceiveS.FieldByName('YPDH').Value+'''  ');
                         execsql;
                         active:=false;
                     end;
                     with tempqry do
                     begin
                         active:=false;
                         sql.Clear;
                         sql.add('update BModRec_Dev set recieveDate =getdate(),recieveID='''+main.Edit1.Text+''' ');
                         sql.add('where TNO='''+Qry_BOMReceiveS.FieldByName('YPDH').Value+''' and article=''FD_CHECK'' and recieveDate is null ');
                         execsql;
                         active:=false;
                     end;
                   end;                     
              end;
            usmodified:
               begin
                if Qry_BOMReceiveS.fieldbyname('YN').value='0'then
                begin
                    UpDet.apply(ukdelete);
                end else
                    begin
                      Qry_BOMReceiveS.edit;
                      Qry_BOMReceiveS.FieldByName('userID').Value:=main.edit1.text;
                      Qry_BOMReceiveS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      upDet.apply(ukmodify);
                    end;
                end;
          end;
          Qry_BOMReceiveS.next;
        end;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    Panel4.Enabled:=true;
    button3.click;

  except
    on E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;


end;

procedure TBOMReceive.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if  (column.FieldName='Article') and (Qry_BOMReceiveS.Fieldbyname('JIJIE').AsString ='') then
     BEGIN
       DBGrid4.Canvas.Font.Color := clblue ;
     END;
  if (column.FieldName='Season') and (Qry_BOMReceiveS.Fieldbyname('JIJIE').AsString <> Qry_BOMReceiveS.Fieldbyname('Season').AsString )and (Qry_BOMReceiveS.Fieldbyname('JIJIE').AsString <>'') then
     BEGIN
       DBGrid4.Canvas.Font.Color := clblue ;
     END;
  if (column.FieldName='Stage') and (Qry_BOMReceiveS.Fieldbyname('JIJIE').AsString=Qry_BOMReceiveS.Fieldbyname('Season').AsString ) and (Qry_BOMReceiveS.Fieldbyname('YPDH').AsString ='')then
     BEGIN
       DBGrid4.Canvas.Font.Color := clblue ;
     END;
  //
   if  (Qry_BOMReceiveS.FieldByName('YN').Value='0') then
     BEGIN
       DBGrid4.Canvas.Font.Color := clred ;
     END;
  //

  DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TBOMReceive.Button2Click(Sender: TObject);
begin
  if BOMReceive_Check<>nil then
  begin
    BOMReceive_Check.show;
//    BOMReceive_Check.windowstate:=wsmaximized;
  end
  else
    begin
      BOMReceive_Check:=TBOMReceive_Check.create(self);
      BOMReceive_Check.show;
    end;
end;

procedure TBOMReceive.DBGrid4EditButtonClick(Sender: TObject);
begin
  ChoiceArticle:=TChoiceArticle.create(self);
  ChoiceArticle.EDIT1.Text:=Qry_BOMReceive.FieldByName('Season').AsString;
  ChoiceArticle.EDIT2.Text:=Qry_BOMReceive.FieldByName('Stage').AsString;
  ChoiceArticle.ShowModal;
  ChoiceArticle.Free;
end;

procedure TBOMReceive.Button3Click(Sender: TObject);
begin
   Qry_BOMReceiveSS.Active:=FALSE;
   with Qry_BOMReceiveS do
      begin
         first;
         while not Qry_BOMReceiveS.Eof do
         begin
            if Qry_BOMReceiveS.FieldByName('Article').IsNull  then
               begin
                  showmessage('The Article can not be empty.');
                  Qry_BOMReceiveSS.Active:=true;
                  abort;
               end;
            next;
         end;
      end;
   ///自動塞入值到主頁
   with fdquery do
      begin
         active:=false;
         sql.Clear;
         sql.add('select count(FD) as fd from (select KFXXZL.FD as FD from BOMReceiveS');
         sql.add('Left join BOMReceive ON  BOMReceive.ReceiveNO= BOMReceiveS.ReceiveNO');
         sql.add('Left join YPZL on YPZL.YPDH=BOMReceiveS.YPDH');
         sql.add('LEFT JOIN KFXXZL ON KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
         sql.add('where BOMReceiveS.ReceiveNO='''+Qry_BOMReceiveS.fieldbyname('ReceiveNO').Value+'''');
         sql.add('group by KFXXZL.FD)a');
         active:=true;        //判斷FD是不是等於ALL
      end;
   with Qry_BOMReceive do
      begin
         requestlive:=true;
         cachedupdates:=true;
         edit;
      end;
       // bb4.Click;
   BOMReceive.Qry_BOMReceive.FieldByName('season').Value:=mainseason;
   BOMReceive.Qry_BOMReceive.FieldByName('stage').Value:=mainstage;
   BOMReceive.Qry_BOMReceive.FieldByName('team').Value:=maindevtype;
   if strtoint(fdquery.FieldByName('FD').Value)=1 then
      begin
         BOMReceive.Qry_BOMReceive.FieldByName('FD').Value:=Qry_BOMReceiveS.FieldByName('FD').Value;
      end
   else begin
      BOMReceive.Qry_BOMReceive.FieldByName('FD').Value:='ALL';
   end;
   bb5.Click;
   Qry_BOMReceiveS.active:=false;
   Qry_BOMReceiveS.cachedupdates:=false;
   Qry_BOMReceiveS.requestlive:=false;
   Qry_BOMReceiveS.active:=true;
   Qry_BOMReceiveSS.Active:=true;
end;

procedure TBOMReceive.DBGrid3Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
    with Qry_BOMReceive do      //優化採購流程 點過之後變色
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='2';
    end;
    //優化採購流程 自動檢查
    if SampleMerge<>nil then
    begin
       SampleMerge.show;
       SampleMerge.windowstate:=wsmaximized;
       SampleMerge.Edit1.text:=BOMReceive.Qry_BOMReceive.FieldByName('mergeNO').Value;
       SampleMerge.PC1.ActivePageIndex:=4;
       SampleMerge.DTP1.Date:=date-180;
       SampleMerge.ckclsl.checked:=false;
       SampleMerge.Radio_All.checked:=true;
       SampleMerge.Button1.Click;
       SampleMerge.Button5.Click;
    end
  else
    begin
       SampleMerge:=TSampleMerge.create(self);
       SampleMerge.show;
       SampleMerge.Edit1.text:=BOMReceive.Qry_BOMReceive.FieldByName('mergeNO').Value;
       SampleMerge.PC1.ActivePageIndex:=4;
       SampleMerge.DTP1.Date:=date-180;
       SampleMerge.ckclsl.checked:=false;
       SampleMerge.Radio_All.checked:=true;
       SampleMerge.Button1.Click;
       SampleMerge.Button5.Click;
    end;
end;

procedure TBOMReceive.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked=true then
  begin
    memo1.Visible := true;
  end else
  begin
    memo1.Visible := false;
  end;
end;

end.
