unit SamplePlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI,IniFiles;
type
  TSamplePlan = class(TForm)
    shoetest: TQuery;
    DataSource1: TDataSource;
    updqry1: TUpdateSQL;
    Query1: TQuery;
    MEMODS: TDataSource;
    MemoQry: TQuery;
    shoetestSerino: TIntegerField;
    shoetestSeason: TStringField;
    shoeteststage: TStringField;
    shoetestgroups: TStringField;
    shoetestgroups2: TStringField;
    shoetesttestno: TStringField;
    shoetestArticle: TStringField;
    shoetestTBReceiveDate: TDateTimeField;
    shoetestCutDate_first: TDateTimeField;
    shoetestCutDate: TDateTimeField;
    shoetestStitchingDate_first: TDateTimeField;
    shoetestStitchingDate: TDateTimeField;
    shoetestAssembiyDate_first: TDateTimeField;
    shoetestComplete: TDateTimeField;
    shoetestDevTp: TStringField;
    shoetestsubTp: TStringField;
    shoetestFinishedShoe: TFloatField;
    shoetestHalfStitchingUpper: TFloatField;
    shoetestStitchingUpper: TFloatField;
    shoetestLastedUpper: TFloatField;
    shoetestUpperComponent: TFloatField;
    shoetestBottomComponent: TFloatField;
    shoetestSheet: TFloatField;
    shoetestA4: TFloatField;
    shoetestColorSwatchBook: TFloatField;
    shoetestCFMSample: TFloatField;
    shoetestUpperAndBottomCE: TFloatField;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2FinishedShoe: TFloatField;
    Query2HalfStitchingUpper: TFloatField;
    Query2StitchingUpper: TFloatField;
    Query2LastedUpper: TFloatField;
    Query2UpperComponent: TFloatField;
    Query2BottomComponent: TFloatField;
    Query2Sheet: TFloatField;
    Query2A4: TFloatField;
    Query2ColorSwatchBook: TFloatField;
    Query2CFMSample: TFloatField;
    Query2UpperAndBottomCE: TFloatField;
    shoetestPreparationDate_first: TDateTimeField;
    shoetestPreparationDate: TDateTimeField;
    MemoQryTestNO: TStringField;
    shoetestFD: TStringField;
    shoetestS_material: TDateTimeField;
    shoetestinsole_send: TDateTimeField;
    shoetestlace_send: TDateTimeField;
    DataSource3: TDataSource;
    shoetestETC: TDateTimeField;
    shoetestshipdate: TDateTimeField;
    shoetestAssemblecomplete: TDateTimeField;
    shoetestcuttingPL: TDateTimeField;
    shoetestStitchingPL: TDateTimeField;
    shoetestAssemblyPL: TDateTimeField;
    REPLANQRY: TQuery;
    REplanDS: TDataSource;
    REPLANQRYCuttingPlanQty: TFloatField;
    REPLANQRYStitchingPlanQty: TFloatField;
    REPLANQRYAssemblyPlanQty: TFloatField;
    shoetestPrint_Request: TBooleanField;
    shoetestPrint_Check: TBooleanField;
    shoetestRubber_Check: TBooleanField;
    shoetestRubber_Request: TBooleanField;
    shoetestSeetype: TStringField;
    shoetestkflx: TStringField;
    shoetestwarehousePL: TDateTimeField;
    shoetestPlanningMemo: TStringField;
    shoetestprinting: TBooleanField;
    shoetestE_embroidery: TBooleanField;
    shoetestPreparationDate_1: TDateTimeField;
    shoetestSQTBOK: TBooleanField;
    shoetestSQTBOKTime: TDateTimeField;
    MemoQryDeveloperMemo: TMemoField;
    MemoQryWarehoueMemo: TMemoField;
    shoetestprinting_get: TDateTimeField;
    shoetestE_embroidery_get: TDateTimeField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    Label12: TLabel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    FD_Memo: TDBMemo;
    DBMemo1: TDBMemo;
    BBB5: TBitBtn;
    Button1: TButton;
    BBB6: TBitBtn;
    DBMemo2: TDBMemo;
    Button3: TButton;
    Button4: TButton;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Frozen: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox3: TComboBox;
    UserDatecheck: TCheckBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit6: TEdit;
    Edit7: TEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    dtp11: TDateTimePicker;
    dtp22: TDateTimePicker;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    shoetestDP: TStringField;
    shoetestDR: TStringField;
    shoetestDPEnglish: TStringField;
    shoetestDREnglish: TStringField;
    shoetestDRTiengViet: TStringField;
    shoetestLastNo: TStringField;
    shoetestCutDate_firstHour: TStringField;
    shoetestStitchingDate_firstHour: TStringField;
    shoetestAssembiyDate_firstHour: TStringField;
    GSDHCheckBox: TCheckBox;
    BDT6: TBitBtn;
    BDT7: TBitBtn;
    CB2: TCheckBox;
    CheckBox2: TCheckBox;
    REPLANQRYtype1: TStringField;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    DS2: TDataSource;
    DBGridEh4: TDBGridEh;
    ComboBox1: TComboBox;
    DTP4: TDateTimePicker;
    DTP3: TDateTimePicker;
    Button2: TButton;
    QDaily: TQuery;
    QDailyPlanD: TStringField;
    QDailyPlanQty: TBCDField;
    QDailyOKQty: TBCDField;
    QDailyComplete: TStringField;
    shoetestConstruction: TStringField;
    shoetestprinting_plan: TDateTimeField;
    Label16: TLabel;
    Edit11: TEdit;
    CheckBox3: TCheckBox;
    shoetestYPDH: TStringField;
    Memo4: TMemo;
    Check_Delay: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBB5Click(Sender: TObject);
    procedure BBB6Click(Sender: TObject);
    procedure qrysum();
    procedure doshoetest();
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure shoetestAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PLAN_Qry;
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure shoetestSQTBOKChange(Sender: TField);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BDT6Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    NDate:TDate;
    editmode:integer;
    IsAllowUserID:Boolean;
    procedure ReadIni();
    { Private declarations }
  public
    AppDir:String;
    { Public declarations }
  end;

var
  SamplePlan: TSamplePlan;

implementation

uses main1, ChooseDPDR, FunUnit;

{$R *.dfm}


procedure TSamplePlan.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDEdit:string;
    tmpUserIDEdit:TStringlist;
    index:integer;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDEdit:=MyIni.ReadString('ERP','Develop_N27_UserIDEdit','');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDEdit <> '' then
  begin
    tmpUserIDEdit:=FuncObj.SplitString(UserIDEdit,',');
    index:=tmpUserIDEdit.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDEdit.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;


procedure TSamplePlan.FormDestroy(Sender: TObject);
begin
   SamplePlan := nil ;
end;

procedure TSamplePlan.qrysum();
begin
  with query2 do
  begin
     active:=false;
     sql.Clear;
     SQL.add('select SUM(FinishedShoe)FinishedShoe,SUM(HalfStitchingUpper)HalfStitchingUpper,SUM(StitchingUpper) StitchingUpper,');
     SQL.add('SUM(LastedUpper)LastedUpper,SUM(UpperComponent)UpperComponent,SUM(BottomComponent) BottomComponent,');
     SQL.add('SUM(Sheet)Sheet,SUM(A4)A4,SUM(ColorSwatchBook) ColorSwatchBook,');
     SQL.add('SUM(CFMSample)CFMSample,SUM(UpperAndBottomCE) UpperAndBottomCE');
     SQL.add('from(');
     SQL.add('select');
     sql.Add('isnull(bw01.qty,0) FinishedShoe ,');
     sql.Add('isnull(bw02.qty,0) HalfStitchingUpper,');
     sql.Add('isnull(bw03.qty,0) StitchingUpper,');
     sql.Add('isnull(bw04.qty,0) LastedUpper,');
     sql.Add('isnull(bw05.qty,0) UpperComponent,');
     sql.Add('isnull(bw06.qty,0) BottomComponent,');
     sql.Add('isnull(bw07.qty,0) Sheet,');
     sql.Add('isnull(bw08.qty,0) A4,');
     sql.Add('isnull(bw09.qty,0) ColorSwatchBook,');
     sql.Add('isnull(bw10.qty,0) CFMSample,');
     sql.Add('isnull(bw11.qty,0) UpperAndBottomCE');
     SQL.add('from shoetest');
     SQL.add('left join shoetestplan on shoetest.testno = shoetestplan.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
     sql.Add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
     sql.Add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
     sql.Add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
     sql.Add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
     sql.Add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
     sql.Add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
     sql.Add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
     sql.Add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
     sql.Add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
     sql.Add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
     sql.Add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
     sql.Add('left join (');
     sql.Add('  select testno,');
     sql.Add('  (select max(Wdate)');
     sql.Add('  from (values (PreparationDate),(S_material),(insole_send),(lace_send)) as cvalues(Wdate)');
     sql.Add('  )AS Wdate');
     sql.Add('  from shoetest )warehouse on warehouse.testno=shoetest.testno');
     SQL.add('where  1=1');
     if edit1.Text<>'' then
        SQL.add('and shoetest.Article like '''+'%'+edit1.Text+'%'+'''');
     if edit2.Text<>'' then
        SQL.add('and shoetest.testno like '''+'%'+edit2.Text+'%'+'''');
     if edit4.Text<>'' then
        SQL.add('and shoetest.season like '''+'%'+edit4.Text+'%'+'''');
     if edit5.Text<>'' then
        SQL.add('and shoetest.stage like '''+'%'+edit5.Text+'%'+'''');
     if combobox3.Text<>'' then
        SQL.add('and left(shoetest.ypdh,4) = '''+combobox3.Text+''' ');
     if edit6.Text<>'' then
        SQL.add('and shoetestplan.groups like '''+'%'+edit6.Text+'%'+'''');
     if edit7.Text<>'' then
        SQL.add('and shoetestplan.groups2 like '''+'%'+edit7.Text+'%'+'''');
    if userdatecheck.Checked then
    begin
      if combobox2.text='' then
         begin
          abort;
         end;
      if Combobox2.text = 'TBreceive' then begin
         SQL.Add(' and shoetest.TBreceiveDate between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'MaterialSQ' then begin
         SQL.Add(' and shoetest.preparationDate_first between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'MaterialOK' then begin
         SQL.Add(' and preparationDate between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'CuttingSQ' then begin
         SQL.Add(' and shoetest.CutDate_first between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'CuttingOK' then begin
         SQL.Add(' and shoetest.CutDate between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'StitchingSQ' then begin
         SQL.Add(' and shoetest.StitchingDate_first between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'StitchingOK' then begin
         SQL.Add(' and shoetest.StitchingDate between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'AssemblySQ' then begin
         SQL.Add(' and shoetest.AssembiyDate_first between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'AssemblyOK' then begin
         SQL.Add(' and shoetest.Assemblecomplete between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'AssemblyOG' then begin
         SQL.Add(' and shoetest.AssemblePL between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'CuttingOG' then begin
         SQL.Add(' and shoetest.CuttingPL between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'StitchingOG' then begin
         SQL.Add(' and shoetest.StitchingPL between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'MaterialOG' then begin
         SQL.Add(' and shoetest.warehousePL between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'PackingOK' then begin
         SQL.Add(' and shoetest.complete between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
      else if Combobox2.text = 'TB_OK' then begin
         SQL.Add(' and shoetest.SQTBOKTime between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end
    end;
    SQL.add(' ) main');
    active:=true;
   end;
end;

procedure TSamplePlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TSamplePlan.Button1Click(Sender: TObject);
begin

 Editmode:=0;
 DBGridEh1.frozencols:=strtoint(edit3.text);
 doshoetest();
 memoQry.Active:=true;
 bb4.Enabled:=true;
 PLAN_Qry();

end;

procedure TSamplePlan.BB4Click(Sender: TObject);
begin
  editmode:=1;
  with shoetest do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TSamplePlan.doshoetest();
begin
 with shoetest do
 begin
   active:=false;
   sql.Clear;
   cachedupdates:=true;
   requestlive:=true;
   SQL.add('select');
   SQL.add('  shoetestplan.Serino,ypzl.YPDH,shoetest.Season,shoetest.stage,groups,groups2,shoetest.testno,shoetest.Article,TBReceiveDate,');
   SQL.add('  PreparationDate_first,case when (isnull(PreparationDate,'''')<>'''') and (isnull(S_material,'''')<>'''')  and (isnull(insole_send,'''')<>'''')  and (isnull(lace_send,'''')<>'''')  then warehouse.Wdate else null end PreparationDate,');
   SQL.add('  CutDate_first ,CutDate,Construction,case when isnull(printing,0)<>0 then isnull(ShoeTestPlanHis.PlanDate,CutDate_first) else null end printing_plan,');
   SQL.add('  StitchingDate_first,StitchingDate,');
   SQL.add('  AssembiyDate_first,Assemblecomplete,');
   SQL.add('  convert (datetime,convert(varchar,Complete, 23)) as Complete,');
   sql.Add('  isnull(bw01.qty,0) FinishedShoe,');
   sql.Add('  isnull(bw02.qty,0) HalfStitchingUpper,');
   sql.Add('  isnull(bw03.qty,0) StitchingUpper,');
   sql.Add('  isnull(bw04.qty,0) LastedUpper,');
   sql.Add('  isnull(bw05.qty,0) UpperComponent,');
   sql.Add('  isnull(bw06.qty,0) BottomComponent,');
   sql.Add('  isnull(bw07.qty,0) Sheet,');
   sql.Add('  isnull(bw08.qty,0) A4,');
   sql.Add('  isnull(bw09.qty,0) ColorSwatchBook,');
   sql.Add('  isnull(bw10.qty,0) CFMSample,');
   sql.Add('  isnull(bw11.qty,0) UpperAndBottomCE,DevTp,subTp,shoetest.FD,PreparationDate,S_material,insole_send,lace_send,shoetest.ETC,shoetest.shipdate,shoetest.MemoPL PlanningMemo,shoetest.warehousePL,shoetest.cuttingPL,shoetest.StitchingPL,shoetest.AssemblyPL,');
   sql.Add('  shoetest.Print_Request,shoetest.Print_Check,shoetest.Rubber_Check,shoetest.Rubber_Request,Shoetest.Seetype,kfxxzl.kflx,printing,E_embroidery,shoetest.SQTBOK,');
   sql.Add('  shoetest.SQTBOKTime,printing_get,E_embroidery_get,shoetestdelay.DP,shoetestdelay.DR,DP.YWSM DPEnglish,DR.YWSM DREnglish,DR.VWSM DRTiengViet,kfxxzl.XTMH as LastNo,shoetest.CutDate_firstHour,shoetest.StitchingDate_firstHour,shoetest.AssembiyDate_firstHour');
   SQL.add('from shoetest');
   SQL.add('left join shoetestplan on shoetest.testno = shoetestplan.testno');
   SQL.add('left join ShoeTestPlanHis on shoetest.testno = ShoeTestPlanHis.testno and ShoeTestPlanHis.GXLB=''C'' and ShoeTestPlanHis.Seq=''1'' ');
   SQL.add('left join shoetestDelay on shoetestDelay.testno=shoetest.testno and shoetestDelay.GXLB=''F'' ');
   SQL.add('left join shoetestDetail DR on DR.YYBH=shoetestDelay.DR');
   SQL.add('left join shoetestDetail DP on DP.YYBH=DR.Class');
   SQL.add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
   SQL.add('left join kfxxzl on kfxxzl.xiexing=ypzl.XieXing and kfxxzl.shehao=ypzl.shehao');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
   sql.Add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
   sql.Add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
   sql.Add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
   sql.Add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
   sql.Add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
   sql.Add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
   sql.Add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
   sql.Add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
   sql.Add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
   sql.Add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
   sql.Add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
   sql.Add('left join (');
   sql.Add('  select testno,');
   sql.Add('  (select max(Wdate)');
   sql.Add('  from (values (PreparationDate),(S_material),(insole_send),(lace_send)) as cvalues(Wdate)');
   sql.Add('  )AS Wdate');
   sql.Add('  from shoetest )warehouse on warehouse.testno=shoetest.testno');
   SQL.add('where  1=1');
   if edit8.Text<>'' then
      SQL.add('and shoetest.FD like '''+edit8.Text+'%'+'''');
   if edit9.Text<>'' then
      SQL.add('and shoetest.DevTp like '''+edit9.Text+'%'+'''');
   if edit10.Text<>'' then
      SQL.add('and shoetest.subtp like '''+edit10.Text+'%'+'''');
   if edit1.Text<>'' then
      SQL.add('and shoetest.Article like '''+edit1.Text+'%'+'''');
   if edit2.Text<>'' then
      SQL.add('and shoetest.testno like '''+edit2.Text+'%'+'''');
   if CheckBox3.Checked then
      SQL.add('and shoetest.testno like ''%_R%'' ');
   if edit4.Text<>'' then
      SQL.add('and shoetest.season like '''+edit4.Text+'%'+'''');
   if edit5.Text<>'' then
      SQL.add('and shoetest.stage like '''+edit5.Text+'%'+'''');
   if combobox3.Text<>'' then
      SQL.add('and substring(shoetest.ypdh,4,1) = '''+combobox3.Text+''' ');
   if edit6.Text<>'' then
      SQL.add('and shoetestplan.groups like ''%'+edit6.Text+'%'+'''');
   if edit7.Text<>'' then
      SQL.add('and shoetestplan.groups2 like ''%'+edit7.Text+'%''');
   if GSDHCheckBox.Checked=true then
      SQL.Add('and YPZL.GSDH='''+main.Edit2.Text+''' ');
   if Edit11.Text<> '' then  
      SQL.Add('and shoetestplan.Serino like '''+Edit11.Text+'%'' ');
   if userdatecheck.Checked then
   begin
    if combobox2.text='' then
    begin
        showmessage('choose data,plz');
        abort;
    end;
    if Combobox2.text = 'TBreceive' then begin
       SQL.Add(' and shoetest.TBreceiveDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'MaterialSQ' then begin
       SQL.Add(' and shoetest.preparationDate_first between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
       if CheckBox2.Checked then
         SQL.Add(' and preparationDate is null');
    end
    else if Combobox2.text = 'MaterialOK' then begin
       SQL.Add(' and preparationDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'CuttingSQ' then begin
       SQL.Add(' and shoetest.CutDate_first between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
       if CheckBox2.Checked then
         SQL.Add(' and CutDate is null');
    end
    else if Combobox2.text = 'CuttingOK' then begin
       SQL.Add(' and shoetest.CutDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'StitchingSQ' then begin
       SQL.Add(' and shoetest.StitchingDate_first between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
       if CheckBox2.Checked then
         SQL.Add(' and StitchingDate is null');
    end
    else if Combobox2.text = 'StitchingOK' then begin
       SQL.Add(' and shoetest.StitchingDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'AssemblySQ' then begin
       SQL.Add(' and shoetest.AssembiyDate_first between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
       if CheckBox2.Checked then
         SQL.Add(' and Assemblecomplete is null');
    end
    else if Combobox2.text = 'AssemblyOK' then begin
       SQL.Add(' and shoetest.Assemblecomplete between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'AssemblyOG' then begin
       SQL.Add(' and shoetest.AssemblyPL between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'CuttingOG' then begin
       SQL.Add(' and shoetest.CuttingPL between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'StitchingOG' then begin
       SQL.Add(' and shoetest.StitchingPL between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'MaterialOG' then begin
       SQL.Add(' and shoetest.warehousePL between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end

    else if Combobox2.text = 'PackingOK' then begin
       SQL.Add(' and shoetest.complete between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'TB_OK' then begin
       SQL.Add(' and shoetest.SQTBOKTime between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'PrintingPlan' then begin
       SQL.Add(' and isnull(printing,0)<>0 and isnull(ShoeTestPlanHis.PlanDate,CutDate_first) between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
   end;
   if Check_Delay.Checked=true then
   begin
       SQL.Add('and convert(smalldatetime,convert(varchar,shoetest.SQTBOKTime,111))>');
       SQL.Add('isnull(convert(smalldatetime,convert(varchar,shoetest.shipdate,111)),convert(smalldatetime,convert(varchar,shoetest.ETC,111)))');
   end;
//   SHOWMESSAGE(sql.Text);
   active:=true;
  end;
end;

procedure TSamplePlan.BB5Click(Sender: TObject);
var
 i:integer;
  NDate:TDate;
begin
  if shoetest.FieldByName('SQTBOKTime').Value <> null then begin
    if (shoetest.FieldByName('shipdate').Value <> null) and (shoetest.FieldByName('SQTBOKTime').Value > shoetest.FieldByName('shipdate').Value) and ((shoetest.FieldByName('DPEnglish').Value = null) or (shoetest.FieldByName('DREnglish').Value = null))then begin
      showmessage('Please Type Department and Reason !');
      exit;
    end
    else if (shoetest.FieldByName('ETC').Value <> null) and (shoetest.FieldByName('SQTBOKTime').Value > shoetest.FieldByName('ETC').Value) and ((shoetest.FieldByName('DPEnglish').Value = null) or (shoetest.FieldByName('DREnglish').Value = null)) then begin
      showmessage('Please Type Department and Reason !');
      exit;
    end;
  end;
  with query1 do          //取服務器的年月值
    begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
   end;
  try
    shoetest.first;
    for i:=1 to shoetest.RecordCount do
    begin
      case shoetest.updatestatus of
      usmodified:
        begin
         shoetest.edit;
         updqry1.apply(ukmodify);

         with Query1 do
         begin
           Active := false;
           SQL.Clear;
           if (shoetest.FieldByName('PreparationDate_first').Value <> shoetest.FieldByName('PreparationDate_first').OldValue) then
           begin
             SQL.Add('INSERT INTO ShoeTestPlanHis (TestNo, GXLB, Seq, PlanDate, UserID, UserDate, YN)');
             SQL.Add('SELECT ''' + shoetest.FieldByName('testno').AsString + ''', ''W'', ISNULL(MAX(Seq), 0)+1, ''' + FormatDateTime('yyyy/MM/dd', shoetest.FieldByName('PreparationDate_first').AsDateTime) + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'' FROM ShoeTestPlanHis');
             SQL.Add('WHERE TestNo = ''' + shoetest.FieldByName('testno').AsString + ''' AND GXLB = ''W'';');
           end;
           if (shoetest.FieldByName('CutDate_first').Value <> shoetest.FieldByName('CutDate_first').OldValue) then
           begin
             SQL.Add('INSERT INTO ShoeTestPlanHis (TestNo, GXLB, Seq, PlanDate, UserID, UserDate, YN)');
             SQL.Add('SELECT ''' + shoetest.FieldByName('testno').AsString + ''', ''C'', ISNULL(MAX(Seq), 0)+1, ''' + FormatDateTime('yyyy/MM/dd', shoetest.FieldByName('CutDate_first').AsDateTime) + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'' FROM ShoeTestPlanHis');
             SQL.Add('WHERE TestNo = ''' + shoetest.FieldByName('testno').AsString + ''' AND GXLB = ''C'';');
           end;
           if (shoetest.FieldByName('StitchingDate_first').Value <> shoetest.FieldByName('StitchingDate_first').OldValue) then
           begin
             SQL.Add('INSERT INTO ShoeTestPlanHis (TestNo, GXLB, Seq, PlanDate, UserID, UserDate, YN)');
             SQL.Add('SELECT ''' + shoetest.FieldByName('testno').AsString + ''', ''S'', ISNULL(MAX(Seq), 0)+1, ''' + FormatDateTime('yyyy/MM/dd', shoetest.FieldByName('StitchingDate_first').AsDateTime) + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'' FROM ShoeTestPlanHis');
             SQL.Add('WHERE TestNo = ''' + shoetest.FieldByName('testno').AsString + ''' AND GXLB = ''S'';');
           end;
           if (shoetest.FieldByName('AssembiyDate_first').Value <> shoetest.FieldByName('AssembiyDate_first').OldValue) then
           begin
             SQL.Add('INSERT INTO ShoeTestPlanHis (TestNo, GXLB, Seq, PlanDate, UserID, UserDate, YN)');
             SQL.Add('SELECT ''' + shoetest.FieldByName('testno').AsString + ''', ''A'', ISNULL(MAX(Seq), 0)+1, ''' + FormatDateTime('yyyy/MM/dd', shoetest.FieldByName('AssembiyDate_first').AsDateTime) + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'' FROM ShoeTestPlanHis');
             SQL.Add('WHERE TestNo = ''' + shoetest.FieldByName('testno').AsString + ''' AND GXLB = ''A'';');
           end;
           
           if (SQL.Text <> '') then
             ExecSQL;
           SQL.Clear;
         end;

         if (shoetest.fieldbyname('DP').AsString<>null) and (shoetest.fieldbyname('DP').AsString='') then
         begin
          with query1 do
          begin
             active:=false;
             sql.Clear;
             sql.add('delete shoetestdelay where testno='''+shoetest.fieldbyname('testno').Value+''' and GXLB=''F'' ');
             execsql;
             active:=false;
          end;
         end;


         if (shoetest.fieldbyname('DP').AsString<>null) and (shoetest.fieldbyname('DP').AsString<>'') then
         begin
          with query1 do
          begin
             active:=false;
             sql.Clear;
             sql.add('delete shoetestdelay where testno='''+shoetest.fieldbyname('testno').Value+''' ');
             sql.add('insert into shoetestdelay ');
             sql.add('(testno ,DP,DR,GXLB)');
             sql.add('values ('''+shoetest.fieldbyname('testno').Value+' ''  ');
             sql.add(','''+shoetest.fieldbyname('DP').AsString+''','''+shoetest.fieldbyname('DR').Value+''',''F'' ) ');
             execsql;
             active:=false;
          end;
         end;
        end;
      end;
      shoetest.next;
    end;
    shoetest.active:=false;
    shoetest.cachedupdates:=false;
    shoetest.requestlive:=false;
    shoetest.active:=true;
   except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TSamplePlan.BB6Click(Sender: TObject);
begin

  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TSamplePlan.FormCreate(Sender: TObject);
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   IsAllowUserID:=false;
   ReadIni();
   {if (main.edit1.text='51022') or (main.edit1.text='51270')  or (main.edit1.text='53029') or (main.edit1.text='43753') or (main.edit1.text='43556') or (main.edit1.text='60952')
   or (main.edit1.text='100841') or (main.edit1.text='60952')  or (main.edit1.text='35376') or (main.edit1.text='98836') or (main.edit1.text='104064') or (main.edit1.text='51152')
   then}
   if IsAllowUserID=true then
   begin
      checkbox1.Checked:=true;
   end;
   editmode:=0;
   with query1 do
   begin
      Active:=false;
      Sql.Clear;
      Sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
      sql.Clear;
      Sql.add('select stage from shoetest');
      Sql.add('group by stage');
      active:=true;
   end;
   DTP1.Date:=Date()-30;
   DTP2.Date:=Date();
   DTP3.Date:=Date()-30;
   DTP4.Date:=Date();
   with query1 do
   begin
      Active:=false;
      Sql.Clear;
      Sql.add('select season,getdate() as date from shoetest');
      Sql.add('group by season');
      active:=true;
   end;

end;

procedure TSamplePlan.BBB5Click(Sender: TObject);
var
   i:integer;
begin

end;
procedure TSamplePlan.BBB6Click(Sender: TObject);
begin

      bbb5.Enabled:=false;
      bbb6.Enabled:=false;
end;

procedure TSamplePlan.DBGridEh1CellClick(Column: TColumnEh);
begin
  memoqry.Active:=true;

  if cb2.Checked then
  begin
   if  (shoetest.active) and (Column.FieldName='PreparationDate_first') then
   begin
     //combobox2.text:='MaterialSQ';
     DTP1.Date:=shoetest.FieldByName('PreparationDate_first').asdatetime;
     DTP2.Date:=shoetest.FieldByName('PreparationDate_first').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='CutDate_first') then
   begin
   //  combobox2.text:='CuttingSQ';
     DTP1.Date:=shoetest.FieldByName('CutDate_first').asdatetime;
     DTP2.Date:=shoetest.FieldByName('CutDate_first').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='StitchingDate_first') then
   begin
   //  combobox2.text:='StitchingSQ';
     DTP1.Date:=shoetest.FieldByName('StitchingDate_first').asdatetime;
     DTP2.Date:=shoetest.FieldByName('StitchingDate_first').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='AssembiyDate_first') then
   begin
    // combobox2.text:='AssemblySQ';
     DTP1.Date:=shoetest.FieldByName('AssembiyDate_first').asdatetime;
     DTP2.Date:=shoetest.FieldByName('AssembiyDate_first').asdatetime;
   end;

   if  (shoetest.active) and (Column.FieldName='PreparationDate') then
   begin
    // combobox2.text:='MaterialOK';
     DTP1.Date:=shoetest.FieldByName('PreparationDate').asdatetime;
     DTP2.Date:=shoetest.FieldByName('PreparationDate').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='CutDate') then
   begin
   //  combobox2.text:='CuttingOK';
     DTP1.Date:=shoetest.FieldByName('CutDate').asdatetime;
     DTP2.Date:=shoetest.FieldByName('CutDate').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='StitchingDate') then
   begin
   //  combobox2.text:='StitchingOK';
     DTP1.Date:=shoetest.FieldByName('StitchingDate').asdatetime;
     DTP2.Date:=shoetest.FieldByName('StitchingDate').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='Assemblecomplete') then
   begin
    // combobox2.text:='AssemblyOK';
     DTP1.Date:=shoetest.FieldByName('Assemblecomplete').asdatetime;
     DTP2.Date:=shoetest.FieldByName('Assemblecomplete').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='Complete') then
   begin
    // combobox2.text:='PackingOK';
     DTP1.Date:=shoetest.FieldByName('Complete').asdatetime;
     DTP2.Date:=shoetest.FieldByName('Complete').asdatetime;
   end;

   if  (shoetest.active) and (Column.FieldName='cuttingPL') then
   begin
     //combobox2.text:='CuttingOG';
     DTP1.Date:=shoetest.FieldByName('cuttingPL').asdatetime;
     DTP2.Date:=shoetest.FieldByName('cuttingPL').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='StitchingPL') then
   begin
    // combobox2.text:='StitchingOG';
     DTP1.Date:=shoetest.FieldByName('StitchingPL').asdatetime;
     DTP2.Date:=shoetest.FieldByName('StitchingPL').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='AssemblyPL') then
   begin
 //    combobox2.text:='AssemblyOG';
     DTP1.Date:=shoetest.FieldByName('AssemblyPL').asdatetime;
     DTP2.Date:=shoetest.FieldByName('AssemblyPL').asdatetime;
   end;
   if  (shoetest.active) and (Column.FieldName='warehousePL') then
   begin
   //  combobox2.text:='MaterialOG';
     DTP1.Date:=shoetest.FieldByName('warehousePL').asdatetime;
     DTP2.Date:=shoetest.FieldByName('warehousePL').asdatetime;
   end;
 end;
   PLAN_Qry();
end;

procedure TSamplePlan.shoetestAfterScroll(DataSet: TDataSet);
begin
  memoqry.Active:=true;
end;

procedure TSamplePlan.Button3Click(Sender: TObject);
begin


   shoetest.RequestLive:=true;
   shoetest.CachedUpdates:=true;
   with  shoetest do
   begin
      edit;
         if shoetest.FieldByName('WarehousePL').isnull OR (shoetest.FieldByName('WarehousePL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('WarehousePL').asstring:=shoetest.FieldByName('PreparationDate_first').asstring;
            end;
         if shoetest.FieldByName('CuttingPL').isnull OR (shoetest.FieldByName('CuttingPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('CuttingPL').asstring:=shoetest.FieldByName('CutDate_first').asstring;
            end;
         if shoetest.FieldByName('StitchingPL').isnull OR (shoetest.FieldByName('StitchingPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('StitchingPL').asstring:=shoetest.FieldByName('StitchingDate_first').asstring;
            end;
         if shoetest.FieldByName('AssemblyPL').isnull OR (shoetest.FieldByName('AssemblyPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('AssemblyPL').asstring:=shoetest.FieldByName('AssembiyDate_first').asstring;
            end;
      post;
   end;

end;

procedure TSamplePlan.Button4Click(Sender: TObject);
begin
   shoetest.RequestLive:=true;
   shoetest.CachedUpdates:=true;
   with  shoetest do
   begin
   first;
      while not shoetest.eof do
      begin
      edit;
         if shoetest.FieldByName('WarehousePL').isnull OR (shoetest.FieldByName('WarehousePL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('WarehousePL').asstring:=shoetest.FieldByName('PreparationDate_first').asstring;
            end;
         if shoetest.FieldByName('CuttingPL').isnull OR (shoetest.FieldByName('CuttingPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('CuttingPL').asstring:=shoetest.FieldByName('CutDate_first').asstring;
            end;
         if shoetest.FieldByName('StitchingPL').isnull OR (shoetest.FieldByName('StitchingPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('StitchingPL').asstring:=shoetest.FieldByName('StitchingDate_first').asstring;
            end;
         if shoetest.FieldByName('AssemblyPL').isnull OR (shoetest.FieldByName('AssemblyPL').asstring='1900/01/01') then
            begin
               shoetest.FieldByName('AssemblyPL').asstring:=shoetest.FieldByName('AssembiyDate_first').asstring;
            end;
      post;
      next;
      end;
   end;
end;

procedure TSamplePlan.PLAN_Qry();
begin
    with REPLANQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select CuttingPlanQty.type as type1,CuttingPlanQty.CuttingPlanQty,StitchingPlanQty,AssemblyPlanQty from ( ');
      sql.add('select ''Re-Plan'' type,CuttingPlanQty from (select SUM(Qty) CuttingPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,cutdate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add(')CuttingPlanQty)CuttingPlanQty');

      sql.add('left join(');
      sql.add('select ''Re-Plan'' type,StitchingPlanQty from (select SUM(Qty) StitchingPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,StitchingDate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add(')StitchingPlanQty)StitchingPlanQty on StitchingPlanQty.type=CuttingPlanQty.type');

      sql.add('left join(');
      sql.add('select ''Re-Plan'' type,AssemblyPlanQty from (select SUM(Qty) AssemblyPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,AssembiyDate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add(')AssemblyPlanQty)AssemblyPlanQty on AssemblyPlanQty.type=CuttingPlanQty.type');

      sql.add('union');

      sql.add('select CuttingPlanQty.type as type1,CuttingPlanQty.CuttingPlanQty,StitchingPlanQty,AssemblyPlanQty from ( ');
      sql.add('select ''Not yet Done'' type,CuttingPlanQty from (select SUM(Qty) CuttingPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,cutdate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add('and CutDate is null');
      sql.add(')main');
      sql.add(')CuttingPlanQty)CuttingPlanQty');

      sql.add('left join(');
      sql.add('select ''Not yet Done'' type,StitchingPlanQty from (select SUM(Qty) StitchingPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,StitchingDate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add('and StitchingDate is null');
      sql.add(')main');
      sql.add(')StitchingPlanQty)StitchingPlanQty on StitchingPlanQty.type=CuttingPlanQty.type');

      sql.add('left join(');
      sql.add('select ''Not yet Done'' type,AssemblyPlanQty from (select SUM(Qty) AssemblyPlanQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,AssembiyDate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add('and Assemblecomplete is null');
      sql.add(')main');
      sql.add(')AssemblyPlanQty)AssemblyPlanQty on AssemblyPlanQty.type=CuttingPlanQty.type');

      sql.add('order by type1 desc');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      active:=true;
      end;                               
end;

procedure TSamplePlan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if shoetest.FieldByName('print_request').value<>shoetest.FieldByName('print_check').value  then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
  if shoetest.FieldByName('rubber_request').value<>shoetest.FieldByName('rubber_check').value  then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
  if (shoetest.FieldByName('Complete').Value<>null) and (shoetest.FieldByName('shipdate').Value<>null) then
  begin
    if (formatdatetime('yyyy/MM/dd',shoetest.FieldByName('Complete').value) > formatdatetime('yyyy/MM/dd',shoetest.FieldByName('shipdate').value)) and (shoetest.FieldByName('SQTBOK').Value<>'1') then
      DBGridEh1.canvas.font.color:=clGreen;
  end else
  if (shoetest.FieldByName('Complete').Value<>null) and (shoetest.FieldByName('ETC').Value<>null) then
  begin
    if (formatdatetime('yyyy/MM/dd',shoetest.FieldByName('Complete').value) > formatdatetime('yyyy/MM/dd',shoetest.FieldByName('ETC').value)) and (shoetest.FieldByName('SQTBOK').Value<>'1') then
      DBGridEh1.canvas.font.color:=clGreen;
  end;
  {if (shoetest.FieldByName('seetype').value='4') or (shoetest.FieldByName('seetype').value='24') then
  begin
    DBGridEh1.canvas.Font.Style:=[fsBold];
  end;}
end;

procedure TSamplePlan.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (shoetest.FieldByName('sqtbok').value<>'1') and( (shoetest.FieldByName('seetype').value='4') or (shoetest.FieldByName('seetype').value='24')) then
  begin
    DBGridEh1.canvas.Brush.Color:=clyellow;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if (shoetest.FieldByName('sqtbok').value='1')  then
  begin
    DBGridEh1.canvas.Brush.Color:=clScrollBar;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure TSamplePlan.shoetestSQTBOKChange(Sender: TField);
begin
   if  (shoetest.FieldByName('SQTBOK').value=True) and (shoetest.FieldByName('SQTBOKTime').value=null) then
       if shoetest.FieldByName('Complete').value=null  then
           shoetest.FieldByName('SQTBOKTime').value:=DATE()
       else
           shoetest.FieldByName('SQTBOKTime').value:=shoetest.FieldByName('complete').value;
   if  shoetest.FieldByName('SQTBOK').value=false then
       shoetest.FieldByName('SQTBOKTime').value:=null;
{
   if (shoetest.FieldByName('SQTBOKTime').value >shoetest.FieldByName('ETC').value) and  (shoetest.FieldByName('ETC').value<>null) then
     begin
      showmessage('OK time:' +datetostr(shoetest.FieldByName('SQTBOKTime').value)+' > ETC:' +datetostr(shoetest.FieldByName('ETC').value) );
     end;
   if (shoetest.FieldByName('SQTBOKTime').value >shoetest.FieldByName('shipdate').value) and  (shoetest.FieldByName('shipdate').value<>null) then
     begin
      showmessage('OK time:' +datetostr(shoetest.FieldByName('SQTBOKTime').value)+' > Shipdate:'+datetostr(shoetest.FieldByName('Shipdate').value) );
     end;
}
end;

procedure TSamplePlan.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked=true then
   begin
     if (main.edit1.text='51022') or (main.edit1.text='51270') or (main.edit1.text='51152') then  //主管可以改預排
     begin
        dbgrideh1.FieldColumns['warehousePL'].ReadOnly:=false;
        dbgrideh1.FieldColumns['CuttingPL'].ReadOnly:=false;
        dbgrideh1.FieldColumns['StitchingPL'].ReadOnly:=false;
        dbgrideh1.FieldColumns['AssemblyPL'].ReadOnly:=false;
     end;
     {if (main.edit1.text='51022') or (main.edit1.text='51270')  or (main.edit1.text='53029') or (main.edit1.text='43753') or (main.edit1.text='43556') or (main.edit1.text='60952')
        or (main.edit1.text='100841') or (main.edit1.text='98836') or (main.edit1.text='104064') or (main.edit1.text='51151') or (main.edit1.text='51152') then}
      //生管可以更改排程
     if  IsAllowUserID=true then
     begin
       bb2.Visible:=true;
       bb3.Visible:=true;
       bb4.Visible:=true;
       bb5.Visible:=true;
       bb6.Visible:=true;
       button3.Visible:=true;
       button4.Visible:=true;
       dbgrideh1.FieldColumns['SQTBOK'].visible:=True;
       dbgrideh1.FieldColumns['SQTBOKTime'].visible:=True;
       dbgrideh1.FieldColumns['E_embroidery_get'].visible:=True;
       dbgrideh1.FieldColumns['Printing_get'].visible:=True;
       dbgrideh1.FieldColumns['DP'].visible:=True;
       dbgrideh1.FieldColumns['DPEnglish'].visible:=True;
       dbgrideh1.FieldColumns['DR'].visible:=True;
       dbgrideh1.FieldColumns['DREnglish'].visible:=True;
       dbgrideh1.FieldColumns['DRTiengViet'].visible:=True;
     end;
   end;
end;

procedure TSamplePlan.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if chooseDPDR1<>nil then
    begin
       chooseDPDR1.show;
       chooseDPDR1.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR1:=TchooseDPDR1.create(self);
       chooseDPDR1.show;
    end;
end;

procedure TSamplePlan.BDT6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  shoetest.active  then
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
        for   i:=0   to   shoetest.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=shoetest.fields[i].FieldName;
          end;
        for   k:=0   to   memoqry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+k+1):=memoqry.fields[k].FieldName;
          end;

        shoetest.First;
        j:=2;
        while   not   shoetest.Eof   do
          begin
            for   i:=0   to  shoetest.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=shoetest.Fields[i].Value;
              end;

            for   k:=0   to  memoqry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+k+1):=memoqry.Fields[k].Value;
              end;

          shoetest.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TSamplePlan.BDT7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if ComBoBox2.Text<>'TB_OK' then
  Begin
    Showmessage('Please Select Date TB_OK');
    Exit;
  end;
  //
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_SN27.xls'),Pchar(AppDir+'Additional\Develop_SN27.xls'),false);
  if FileExists(AppDir+'Additional\Develop_SN27.xls') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
  end;
  //
  if shoetest.active then
  begin
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN27.xls');
      shoetest.First;
      j:=6;
      while not shoetest.Eof do
      begin
        for i:=0 to shoetest.fieldcount-1 do
        begin
          eclApp.Cells(j,1):=shoetest.FieldByName('Serino').value;
          eclApp.Cells(j,2):=shoetest.FieldByName('stage').value;
          eclApp.Cells(j,3):=shoetest.FieldByName('groups').value;
          eclApp.Cells(j,4):=shoetest.FieldByName('testno').value;
          eclApp.Cells(j,5):=shoetest.FieldByName('Article').value;
          eclApp.Cells(j,6):=shoetest.FieldByName('FD').value;
          if (shoetest.FieldByName('ETC').Value<>null) and (shoetest.FieldByName('shipdate').Value<>null) then
          begin
            eclApp.Cells(j,7):=shoetest.FieldByName('shipdate').value;
            if shoetest.FieldByName('SQTBOKTime').value<>null then
            begin
              if (formatdatetime('yyyy/MM/dd',shoetest.FieldByName('SQTBOKTime').value) > formatdatetime('yyyy/MM/dd',shoetest.FieldByName('shipdate').value)) then
                eclApp.Cells(j,10):='0'
              else
                eclApp.Cells(j,10):='1';
            end else
            begin
               eclApp.Cells(j,10):='0';
            end;
          end;

          if (shoetest.FieldByName('ETC').Value=null) and (shoetest.FieldByName('shipdate').Value=null) then
          begin
            eclApp.Cells(j,7):='n';
            eclApp.Cells(j,10):='1';
          end;

          if (shoetest.FieldByName('shipdate').Value=null) and (shoetest.FieldByName('ETC').Value<>null) then
          begin
            eclApp.Cells(j,7):=shoetest.FieldByName('ETC').value;
            if shoetest.FieldByName('SQTBOKTime').value<>null then
            begin
              if (formatdatetime('yyyy/MM/dd',shoetest.FieldByName('SQTBOKTime').value) > formatdatetime('yyyy/MM/dd',shoetest.FieldByName('ETC').value)) then
                eclApp.Cells(j,10):='0'
              else
                eclApp.Cells(j,10):='1';
            end else
            begin
               eclApp.Cells(j,10):='0';
            end;
          end;
          if (shoetest.FieldByName('shipdate').Value<>null) and (shoetest.FieldByName('ETC').Value=null) then
          begin
            eclApp.Cells(j,7):=shoetest.FieldByName('shipdate').value;
            if shoetest.FieldByName('SQTBOKTime').value<>null then
            begin
              if (formatdatetime('yyyy/MM/dd',shoetest.FieldByName('SQTBOKTime').value) > formatdatetime('yyyy/MM/dd',shoetest.FieldByName('shipdate').value)) then
                eclApp.Cells(j,10):='0'
              else
                eclApp.Cells(j,10):='1';
            end else
            begin
              eclApp.Cells(j,10):='0';
            end;
          end;
          if shoetest.FieldByName('TBReceiveDate').Value<>null then
            eclApp.Cells(j,8):=formatdatetime('yyyy/MM/dd',shoetest.FieldByName('TBReceiveDate').value);
          if shoetest.FieldByName('SQTBOKTime').Value<>null then
            eclApp.Cells(j,9):=formatdatetime('yyyy/MM/dd',shoetest.FieldByName('SQTBOKTime').value);
          //Delay 原因
          if shoetest.FieldByName('DP').Value='DP01' then  eclApp.Cells(j,13):='V'; // Develop
          if shoetest.FieldByName('DP').Value='DP02' then  eclApp.Cells(j,14):='V'; //Pattern
          if shoetest.FieldByName('DP').Value='DP03' then  eclApp.Cells(j,15):='V'; //SampleRoom
          if shoetest.FieldByName('DP').Value='DP04' then  eclApp.Cells(j,16):='V'; //PurchasingTeam
          if shoetest.FieldByName('DP').Value='DP05' then   eclApp.Cells(j,17):='V'; //PlanningTeam
          if shoetest.FieldByName('DP').Value='DP06' then   eclApp.Cells(j,18):='V'; //Warehouse
          if shoetest.FieldByName('DP').Value='DP07' then   eclApp.Cells(j,19):='V'; //Outside Printing
          if shoetest.FieldByName('DP').Value='DP08' then   eclApp.Cells(j,20):='V'; //Outside Embroidery
          if shoetest.FieldByName('DP').Value='DP09' then   eclApp.Cells(j,21):='V'; //Outsole Rubber
          if shoetest.FieldByName('DP').Value='DP99' then   eclApp.Cells(j,22):='V'; //Other issue
          eclApp.Cells(j,23):=shoetest.FieldByName('DREnglish').value;
        end;
        shoetest.Next;
        inc(j);
        //outline
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[6,13],eclApp.cells[j-1,23]].borders[k].linestyle:=1;
        end;
      end;
      eclApp.Cells(1,11):='=COUNTA(J6..J'+inttostr(j-1)+')';
      eclApp.Cells(2,11):='=SUM(J6..J'+inttostr(j-1)+')';
      eclApp.Cells(3,13):='=COUNTA(M6..M'+inttostr(j-1)+')';
      eclApp.Cells(3,14):='=COUNTA(N6..N'+inttostr(j-1)+')';
      eclApp.Cells(3,15):='=COUNTA(O6..O'+inttostr(j-1)+')';
      eclApp.Cells(3,16):='=COUNTA(P6..P'+inttostr(j-1)+')';
      eclApp.Cells(3,17):='=COUNTA(Q6..Q'+inttostr(j-1)+')';
      eclApp.Cells(3,18):='=COUNTA(R6..R'+inttostr(j-1)+')';
      eclApp.Cells(3,19):='=COUNTA(S6..S'+inttostr(j-1)+')';
      eclApp.Cells(3,20):='=COUNTA(T6..T'+inttostr(j-1)+')';
      eclApp.Cells(3,21):='=COUNTA(U6..U'+inttostr(j-1)+')';
      eclApp.Cells(3,22):='=COUNTA(V6..V'+inttostr(j-1)+')';
      eclApp.Range['G6:G'+inttostr(j-1)].Font.Color:=clRed;
      eclApp.Range['I6:I'+inttostr(j-1)].Font.Color:=clRed;
      eclApp.Range['H6:H'+inttostr(j-1)].Font.Color:=clBlue;
      eclApp.Range['J6:J'+inttostr(j-1)].Font.Color:=clBlue;
      eclApp.Range['A:W'].Font.Name := 'Calibri';
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
       on  F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

procedure TSamplePlan.Button2Click(Sender: TObject);
begin
  with QDaily do begin
    Active := false;
    SQL.Clear;
    if ComboBox1.ItemIndex = 0 then begin
      SQL.Add('SELECT CONVERT(varchar, CuttingPlan,111) AS PlanD, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
      SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.Warehouse, convert(varchar,main.CuttingPlan, 111) AS CuttingPlan,');
      SQL.Add('case when convert(varchar, cuttingOK, 108) = ''00:00:00'' then 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varchar,main.CuttingOK, 111) AS CuttingOK,');
      SQL.Add('case when cuttingOK is null then  0 when convert(varchar, cuttingOK, 108) = ''00:00:00'' then 0 when convert(varchar, CuttingPlan, 111) <> convert(varchar, cuttingOK, 111) then 0 else isnull(SQplan.Qty,0) end OKQty from (');
      SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,PreparationDate Warehouse,CutDate_first CuttingPlan,CutDate CuttingOK from ShoeTest');
      SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
      SQL.Add('where  convert(varchar, CutDate_first, 111) between '''+formatdatetime('YYYY/MM/DD',DTP3.Date) +''' and '''+formatdatetime('YYYY/MM/DD',DTP4.Date) +'''');
      SQL.Add(') AS main');
      SQL.Add('left join (');
      SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2');
      SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      SQL.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      SQL.Add('group by shoetest2.testno');
      SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
      SQL.Add(') AS main2');
      SQL.Add('group by CuttingPlan');
      SQL.Add('order by CuttingPlan desc');
    end
    else if ComboBox1.ItemIndex = 1 then begin
      SQL.Add('SELECT CONVERT(varchar, StitchingPlan,111) AS PlanD, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
      SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 111) AS StitchingPlan,');
      SQL.Add('case when CONVERT(varchar(8), StitchingOK, 108) = ''00:00:00'' then 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varchar,main.StitchingOK, 111) AS StitchingOK,');
      SQL.Add('case when StitchingOK is null then 0 when CONVERT(varchar(8), StitchingOK, 108) = ''00:00:00'' then 0 when convert(varchar, StitchingPlan, 111) <> convert(varchar, StitchingOK, 111) then 0 else isnull(SQplan.Qty,0) end OKQty from (');
      SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDate StitchingOK from ShoeTest');
      SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
      SQL.Add('where  convert(varchar, StitchingDate_first, 111) between '''+formatdatetime('YYYY/MM/DD',DTP3.Date) +''' and '''+formatdatetime('YYYY/MM/DD',DTP4.Date) +'''');
      SQL.Add(') AS main');
      SQL.Add('left join (');
      SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2');
      SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      SQL.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      SQL.Add('group by shoetest2.testno');
      SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
      SQL.Add(') AS main2');
      SQL.Add('group by StitchingPlan');
      SQL.Add('order by StitchingPlan desc');
    end
    else if ComboBox1.ItemIndex = 2 then begin
      SQL.Add('SELECT CONVERT(varchar, AssemblePlan,111) AS PlanD, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
      SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.StitchingOK, convert(varchar,main.AssemblePlan, 111) AS AssemblePlan,');
      SQL.Add('case when CONVERT(varchar(8), AssembleOK, 108) = ''00:00:00'' then 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varchar,main.AssembleOK, 111) AS AssembleOK,');
      SQL.Add('case when AssembleOK is null then  0 when CONVERT(varchar(8), AssembleOK, 108) = ''00:00:00'' then 0 when convert(varchar, AssemblePlan, 111) <> convert(varchar, AssembleOK, 111) then 0 else isnull(SQplan.Qty,0) end OKQty from (');
      SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,StitchingDate StitchingOK,AssembiyDate_first AssemblePlan,Assemblecomplete AssembleOK from ShoeTest');
      SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
      SQL.Add('where  convert(varchar, AssembiyDate_first, 111) between '''+formatdatetime('YYYY/MM/DD',DTP3.Date) +''' and '''+formatdatetime('YYYY/MM/DD',DTP4.Date) +'''');
      SQL.Add(') AS main');
      SQL.Add('left join (');
      SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2');
      SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      SQL.Add('WHERE YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      SQL.Add('group by shoetest2.testno');
      SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
      SQL.Add(') AS main2');
      SQL.Add('group by AssemblePlan');
      SQL.Add('order by AssemblePlan desc');
    end;
    Active := true;
  end;
end;

end.


