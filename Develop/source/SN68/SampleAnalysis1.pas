unit SampleAnalysis1;

interface           
                                      
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, StdCtrls ,ComObj,
  ComCtrls, MemTableDataEh, ADODB, DataDriverEh, ADODataDriverEh,
  MemTableEh, BDEDataDriverEh, ehlibBDE,
  Mask, DBCtrls, Buttons;

type                                          
  TSampleAnalysis = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    Query1Testno: TStringField;
    Query1FinishedShoe: TFloatField;
    Query1HalfStitchingUpper: TFloatField;
    Query1StitchingUpper: TFloatField;
    Query1LastedUpper: TFloatField;
    Query1UpperComponent: TFloatField;
    Query1BottomComponent: TFloatField;
    Query1Sheet: TFloatField;
    Query1A4: TFloatField;
    Query1ColorSwatchBook: TFloatField;
    Query1CFMSample: TFloatField;
    Query1UpperAndBottomCE: TFloatField;
    Query1Article: TStringField;
    Query1Stage: TStringField;
    Query1FD: TStringField;
    Query1Season: TStringField;
    Query1Purpose: TStringField;
    Query1xieming: TStringField;
    Query1userdate: TDateTimeField;
    Query1complete: TDateTimeField;
    Query1days: TIntegerField;
    Query3: TQuery;
    Query1ypdh: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    DS2: TDataSource;
    Query2: TQuery;
    Panel6: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Seasontext: TComboBox;
    DeveloperText: TComboBox;
    StageText: TComboBox;
    SampleOrderType: TComboBox;
    Button2: TButton;
    Query2season: TStringField;
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
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Panel7: TPanel;
    Query4: TQuery;
    DS4: TDataSource;
    DBGridEh3: TDBGridEh;
    Query4Testno: TStringField;
    Query4Shipping: TFloatField;
    Query4Testing_Bonding_Flexing: TFloatField;
    Query4FitTest: TFloatField;
    Query4WearTest: TFloatField;
    Query4Keeping: TFloatField;
    Query4SocialSample: TFloatField;
    Query4TechTeam: TFloatField;
    Query4TW_BY: TFloatField;
    Query4QC: TFloatField;
    Query4IE: TFloatField;
    Query4Costing: TFloatField;
    Query4Remake_SampleRoomQualityIssued: TFloatField;
    Query4Testing_G105: TFloatField;
    Query4ypdh: TStringField;
    Query4Article: TStringField;
    Query4Stage: TStringField;
    Query4FD: TStringField;
    Query4Season: TStringField;
    Query4Purpose: TStringField;
    Query4xieming: TStringField;
    Query4userdate: TDateTimeField;
    Query4complete: TDateTimeField;
    Query4days: TIntegerField;
    Button3: TButton;
    Info_chk: TCheckBox;
    dtp1: TDateTimePicker;
    lbl8: TLabel;
    dtp2: TDateTimePicker;
    Query4Test: TFloatField;
    Query4SeeStage: TStringField;
    Query1SeeStage: TStringField;
    Query4Trial: TFloatField;
    Query1TBReceiveDate: TDateTimeField;
    dtp11: TDateTimePicker;
    dtp22: TDateTimePicker;
    Query1cutdate: TDateTimeField;
    Query1stitchingDate: TDateTimeField;
    Panel8: TPanel;
    Label6: TLabel;
    Query1Tech_Level: TStringField;
    Label7: TLabel;
    CompleteCombo: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    YPDHEdit: TEdit;
    TestNoEdit: TEdit;
    Button4: TButton;
    Query1preparationDate: TDateTimeField;
    Panel9: TPanel;
    Label10: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Query1ROWID: TFloatField;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    Edit2: TEdit;
    Query1DMatArriveDate: TDateTimeField;
    Query1StitchingPhuFinishDate: TDateTimeField;
    Query1FirstMatOutDate: TDateTimeField;
    Edit3: TEdit;
    Timer3: TTimer;
    Label14: TLabel;
    SREdit: TEdit;
    Materialsready: TCheckBox;
    Stitchingready: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    DevTypeEdit: TComboBox;
    Query1lamination: TBooleanField;
    Query1Sublimation: TBooleanField;
    Query1E_embroidery: TBooleanField;
    Query1printing: TBooleanField;
    Query1S_material: TDateTimeField;
    Query1lamination_send: TDateTimeField;
    Query1lamination_get: TDateTimeField;
    Query1BaoHe_send: TDateTimeField;
    Query1BaoHe_get: TDateTimeField;
    Query1LiMao_Send: TDateTimeField;
    Query1LiMao_Get: TDateTimeField;
    Query1E_embroidery_send: TDateTimeField;
    Query1printing_send: TDateTimeField;
    Query1E_embroidery_get: TDateTimeField;
    Query1printing_get: TDateTimeField;
    Query1DMatArriveDateR3: TDateTimeField;
    Query1Assemblecomplete: TDateTimeField;
    Query1insole_get: TDateTimeField;
    Query1lace_get: TDateTimeField;
    Query1lamination_CRMTO: TBooleanField;
    Query1insole_send: TDateTimeField;
    Query1lace_send: TDateTimeField;
    Query1kietphong: TBooleanField;
    ComboBox2: TComboBox;
    Query1memo2: TMemoField;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Query1Amico: TBooleanField;
    Query1kietphong_Send: TDateTimeField;
    Query1kietphong_Get: TDateTimeField;
    Query1Amico_Send: TDateTimeField;
    Query1Amico_Get: TDateTimeField;
    Query1LiMao: TBooleanField;
    Label18: TLabel;
    ComboBox3: TComboBox;
    Query1groups: TStringField;
    Query1Serino: TIntegerField;
    Query1groups2: TStringField;
    Label19: TLabel;
    Edit4: TEdit;
    Label20: TLabel;
    Edit5: TEdit;
    Frozen: TLabel;
    edit6: TEdit;
    CheckBox1: TCheckBox;
    Query1SeeType: TStringField;
    Query1Laser: TBooleanField;
    GSDH: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Query1Laser_Send: TDateTimeField;
    Query1Laser_Get: TDateTimeField;
    Query1rn: TFloatField;
    Query1DAJU: TBooleanField;
    Query1DAJU_Send: TDateTimeField;
    Query1DAJU_Get: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seasonTextChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Timer3Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1ColumnShow();
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    T1: Integer;
  end;

var
  SampleAnalysis: TSampleAnalysis;

implementation

uses main1;

{$R *.dfm}

procedure TSampleAnalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SampleAnalysis.FormStyle := fsMDIChild;
  SampleAnalysis.WindowState := wsMaximized;
    Action:=caFree;
end;

procedure TSampleAnalysis.FormDestroy(Sender: TObject);
begin
  SampleAnalysis:=nil;
end;

procedure TSampleAnalysis.Button1Click(Sender: TObject);
Var
F : Textfile;

begin
  if (not info_chk.checked) and (length(seasontext.text)<3) and (edit4.text='')  and (edit5.text='') then
  begin
     showmessage('plz choose Season or TB Build Date or groups');
     seasontext.Color:=clred;
     info_chk.Color:=clred;
     abort;
  end;
  DBGridEh1ColumnShow();
  DBGridEh1.frozencols:=strtoint(edit6.text);
  with query1 do
  begin
      active:=false;
      sql.Clear;
      if CompleteCombo.ItemIndex=3 then
         sql.Add('select ROW_NUMBER() OVER(ORDER BY fd desc) AS ROWID,* from (')
      else
         sql.Add('select ROW_NUMBER() OVER(ORDER BY userdate desc) AS ROWID,* from (');
      sql.Add('select shoetest.Testno,');
      sql.Add('isnull(bw01.qty,0) FinishedShoe,');
      sql.Add('isnull(bw02.qty,0) HalfStitchingUpper,');
      sql.Add('isnull(bw03.qty,0) StitchingUpper,');
      sql.Add('isnull(bw04.qty,0) LastedUpper,');
      sql.Add('isnull(bw05.qty,0) UpperComponent,');
      sql.Add('isnull(bw06.qty,0) BottomComponent,');
      sql.Add('isnull(bw07.qty,0) Sheet,');
      sql.Add('isnull(bw08.qty,0) A4,');
      sql.Add('isnull(bw09.qty,0) ColorSwatchBook,');
      sql.Add('isnull(bw10.qty,0) CFMSample,');
      sql.Add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.Add('shoetest.ypdh,shoetest.Article,Stage,SeeStage,shoetest.FD,Season,Purpose,xieming,shoetest.userdate,TBReceiveDate,complete,DATEDIFF (day,FirstMatOutDate,isnull(complete,getdate()) ) days,');
      sql.Add('cutdate,stitchingDate,kfxxzl.kflx Tech_Level,PreparationDate,DMatArriveDate,StitchingPhuFinishDate,FirstMatOutDate,ROW_NUMBER() over (Partition by shoetest.testno Order by kfxxzl.kflx) rn,');
      sql.Add('shoetest.lamination,shoetest.Sublimation,shoetest.E_embroidery,shoetest.printing,shoetest.lamination_CRMTO, ');
      sql.Add('shoetest.S_material,shoetest.lamination_send,shoetest.lamination_get,shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoetest.LiMao_Get, ');
      sql.Add('shoetest.E_embroidery_send,shoetest.printing_send,shoetest.E_embroidery_get,shoetest.printing_get, ');
      sql.Add('shoetest.DMatArriveDateR3,shoetest.Assemblecomplete, ');
      sql.Add('shoetest.insole_get,shoetest.lace_get,shoetest.insole_send,shoetest.lace_send,shoetest.kietphong,shoetest.memo2,shoetest.Amico,');
      sql.Add('shoetest.kietphong_Send,shoetest.kietphong_Get,shoetest.Amico_Send,shoetest.Amico_Get,shoetest.LiMao,ShoeTestPlan.groups,ShoeTestPlan.groups2,ShoeTestPlan.Serino,');
      SQL.Add('shoetest.SeeType,shoetest.Laser,shoetest.Laser_Send,shoetest.Laser_Get,shoetest.DAJU,shoetest.DAJU_Send,shoetest.DAJU_Get');
      sql.Add('from shoetest ');
      sql.Add('left join YPZL on YPZL.YPDH = shoetest.YPDH ');
      sql.Add('LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno');
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
      sql.Add('	left join (select devcode,kflx from kfxxzl where xieming not like ''%NULLIFY%'' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=shoetest.article');
      sql.Add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null) ');
      if GSDH.Text <> '' then
        SQL.Add(' and YPZL.GSDH = '''+GSDH.Text+'''');
      if DevTypeEdit.Text <> '' then
        SQL.Add(' and shoetest.DevTp = '''+DevTypeEdit.Text+'''');
      if Info_chk.Checked then
      begin
        if Combobox2.text ='TBreceiveDate' then begin
           SQL.Add(' and shoetest.TBreceiveDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text ='MainMaterialsReady' then begin
           SQL.Add(' and shoetest.preparationDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text ='StitchingPhuLieuReady' then begin
           SQL.Add(' and shoetest.S_material between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text ='CuttingMaterialReceive' then begin
           SQL.Add(' and shoetest.FirstMatOutDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text ='CuttingFinish' then begin
           SQL.Add(' and shoetest.cutdate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text = 'StitchingPhuLieuGet' then begin
           SQL.Add(' and shoetest.StitchingPhuFinishDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text = 'StitchingFinish' then begin
           SQL.Add(' and shoetest.stitchingDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text = 'AssembleFinish' then begin
           SQL.Add(' and shoetest.Assemblecomplete between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text='BaoBiFinish' then begin
           SQL.Add(' and shoetest.complete between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text='R2 Foxing Receive' then begin
           SQL.Add(' and shoetest.DMatArriveDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end
        else if Combobox2.text='R3 O/S Receive' then begin
           SQL.Add(' and shoetest.DMatArriveDateR3 between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
        end;
      end;
      if Combobox3.ItemIndex = 1 then
         SQL.Add(' and shoetest.lamination = ''1''')
      else if Combobox3.ItemIndex = 2 then
         SQL.Add(' and shoetest.lamination_CRMTO  = ''1''')
      else if Combobox3.ItemIndex = 3 then
         SQL.Add(' and shoetest.Amico  = ''1''')
      else if Combobox3.ItemIndex = 4 then
         SQL.Add(' and shoetest.Sublimation  = ''1''')
      else if Combobox3.ItemIndex = 5 then
         SQL.Add(' and shoetest.kietphong  = ''1''')
      else if Combobox3.ItemIndex = 6 then
         SQL.Add(' and shoetest.E_embroidery  = ''1''')
      else if Combobox3.ItemIndex = 7 then
         SQL.Add(' and shoetest.Printing  = ''1''')
      else if Combobox3.ItemIndex = 8 then
         SQL.Add(' and shoetest.Limao  = ''1''');

      //20201226 weston add
      if CompleteCombo.ItemIndex=1 then
         sql.Add(' and shoetest.complete is not null');
      if CompleteCombo.ItemIndex=2 then
         sql.Add(' and shoetest.complete is  null');
      if CompleteCombo.ItemIndex=3 then  //完成後超過一天消失
         sql.Add(' and (shoetest.complete+1>getdate()  or shoetest.complete is null)');

      if TestNoEdit.Text<>'' then
         sql.Add(' and shoetest.Testno like '''+TestNoEdit.Text+'%'' ');
      if YPDHEdit.Text<>'' then
         sql.Add(' and shoetest.ypdh like '''+YPDHEdit.Text+'%'' ');
      //
      if seasontext.text<>'' then
         sql.Add(' and shoetest.season = '''+seasontext.Text+''' ');
      if StageText.text<>'' then
         sql.Add(' and shoetest.stage = '''+StageText.Text+''' ');
      if DeveloperText.text<>'' then
         sql.Add(' and shoetest.fd = '''+DeveloperText.Text+''' ');
      if SampleOrderType.text<>'' then
         sql.Add(' and left(shoetest.ypdh,4) = '''+SampleOrderType.Text+''' ');

      if SREdit.Text<>'' then
         sql.Add(' and shoetest.ARTICLE like '''+SREdit.Text+'%'' ');
      if Materialsready.Checked then
         SQL.Add(' and shoetest.preparationDate is not null');
      if Stitchingready.Checked then
         SQL.Add(' and shoetest.StitchingPhuFinishDate is not null');
      if edit4.Text<>'' then
         sql.Add(' and shoetestplan.groups like '''+edit4.Text+'%'' ');
      if edit5.Text<>'' then
         sql.Add(' and shoetestplan.groups2 like '''+edit5.Text+'%'' ');
      sql.Add(' group by   shoetest.Testno,');
      sql.add(' isnull(bw01.qty,0),  ');
      sql.add(' isnull(bw02.qty,0) ,');               
      sql.add(' isnull(bw03.qty,0) ,');
      sql.add(' isnull(bw04.qty,0) ,');          
      sql.add(' isnull(bw05.qty,0) ,');
      sql.add(' isnull(bw06.qty,0) ,');
      sql.add(' isnull(bw07.qty,0) ,');
      sql.add(' isnull(bw08.qty,0) ,');         
      sql.add(' isnull(bw09.qty,0) ,');
      sql.add(' isnull(bw10.qty,0) ,');
      sql.add(' isnull(bw11.qty,0) ,');
      sql.add(' shoetest.ypdh,shoetest.Article ,Stage,SeeStage,shoetest.FD,Season,Purpose,xieming,shoetest.userdate,TBReceiveDate,complete,');
      sql.add(' DATEDIFF (day,FirstMatOutDate,isnull(complete,getdate()) ) ,cutdate,stitchingDate,kfxxzl.kflx,preparationDate,DMatArriveDate,StitchingPhuFinishDate,FirstMatOutDate,');
      sql.Add('shoetest.lamination,shoetest.Sublimation,shoetest.E_embroidery,shoetest.printing,shoetest.lamination_CRMTO, ');
      sql.Add('shoetest.S_material,shoetest.lamination_send,shoetest.lamination_get,shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoetest.LiMao_Get, ');
      sql.Add('shoetest.E_embroidery_send,shoetest.printing_send,shoetest.E_embroidery_get,shoetest.printing_get, ');
      sql.Add('shoetest.DMatArriveDateR3,shoetest.Assemblecomplete, ');
      sql.Add('shoetest.insole_get,shoetest.lace_get,shoetest.insole_send,shoetest.lace_send,shoetest.kietphong,shoetest.memo2,shoetest.Amico,shoetest.kietphong_Send,shoetest.kietphong_Get,');
      sql.Add('shoetest.Amico_Send,shoetest.Amico_Get,shoetest.LiMao,ShoeTestPlan.groups,ShoeTestPlan.groups2,ShoeTestPlan.Serino,shoetest.SeeType,shoetest.Laser,shoetest.Laser_Send,shoetest.Laser_Get,shoetest.DAJU,shoetest.DAJU_Send,shoetest.DAJU_Get)main where rn=1 ');

{      if CompleteCombo.ItemIndex=3 then
         sql.add(' order by fd desc')
      else
         sql.add(' order by userdate desc');
}
    //  showmessage(SQL.Text);
      active:=true;

  end;

 with query2 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select season,sum(FinishedShoe) FinishedShoe,');
      sql.Add('sum(HalfStitchingUpper) HalfStitchingUpper,');
      sql.Add('sum(StitchingUpper) StitchingUpper,');
      sql.Add('sum(LastedUpper) LastedUpper,');
      sql.Add('sum(UpperComponent) UpperComponent,');
      sql.Add('sum(BottomComponent) BottomComponent,');
      sql.Add('sum(Sheet) Sheet,');
      sql.Add('sum(A4) A4,');
      sql.Add('sum(ColorSwatchBook) ColorSwatchBook,');
      sql.Add('sum(CFMSample) CFMSample,');
      sql.Add('sum(UpperAndBottomCE) UpperAndBottomCE');
      sql.Add('from (');
      sql.Add('select shoetest.Testno,');
      sql.Add('isnull(bw01.qty,0) FinishedShoe,');
      sql.Add('isnull(bw02.qty,0) HalfStitchingUpper,');
      sql.Add('isnull(bw03.qty,0) StitchingUpper,');
      sql.Add('isnull(bw04.qty,0) LastedUpper,');
      sql.Add('isnull(bw05.qty,0) UpperComponent,');
      sql.Add('isnull(bw06.qty,0) BottomComponent,');
      sql.Add('isnull(bw07.qty,0) Sheet,');
      sql.Add('isnull(bw08.qty,0) A4,');
      sql.Add('isnull(bw09.qty,0) ColorSwatchBook,');
      sql.Add('isnull(bw10.qty,0) CFMSample,');
      sql.Add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.Add('ypdh,Article,Stage,FD,Season,Purpose,xieming,userdate,TBReceiveDate,complete,DATEDIFF (day,TBReceiveDate,isnull(complete,getdate()) ) days from shoetest');
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
      sql.Add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null)');
      if Info_chk.Checked then
      begin
           SQL.Add(' and shoetest.TBReceiveDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
      end;
      //20201226 weston add
      if CompleteCombo.ItemIndex=1 then
         sql.Add(' and shoetest.complete is not null');
      if CompleteCombo.ItemIndex=2 then
         sql.Add(' and shoetest.complete is  null');
      if TestNoEdit.Text<>'' then
         sql.Add(' and shoetest.Testno like '''+TestNoEdit.Text+'%'' ');
      if YPDHEdit.Text<>'' then
         sql.Add(' and shoetest.ypdh like '''+YPDHEdit.Text+'%'' ');
      //
      if seasontext.text<>'' then
         sql.Add(' and shoetest.season = '''+seasontext.Text+''' ');
      if StageText.text<>'' then
         sql.Add(' and shoetest.stage = '''+StageText.Text+''' ');
      if DeveloperText.text<>'' then
         sql.Add(' and shoetest.fd = '''+DeveloperText.Text+''' ');
      if SampleOrderType.text<>'' then
         sql.Add(' and left(shoetest.ypdh,4) = '''+SampleOrderType.Text+''' ');

      sql.Add(')main group by season order by season desc');

      active:=true;
    //
  end;
end;

procedure TSampleAnalysis.FormCreate(Sender: TObject);
var
    NDate:TDate;
begin
    ComboBox2.ItemIndex:=0;
    GSDH.Text:=main.Edit2.Text;
    with query3 do
      begin
         Active:=false;
         Sql.Clear;
         Sql.add('select 	left(convert(varchar,getdate(),111),7)   as NDate');
         active:=true;
         NDate:=fieldbyname('NDate').Value;
         active:=false;
         sql.Clear;
         active:=false;
         sql.Clear;
         sql.add('select jijie from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
         SQL.Add('AND LEN(jijie) < 4 ');
         sql.add('group by jijie');
         sql.add('order by jijie desc');
         active:=true;
         seasonText.items.clear;

         while not eof do
         begin
           seasonText.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;
      seasonText.ItemIndex:=-1;

    DTP1.Date:=Date()-30;
    DTP2.Date:=Date();


    with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select stage from shoetest');
         sql.add('group by stage');
         sql.add('order by stage desc');
         active:=true;
         StageText.items.clear;
         while not eof do
         begin
           StageText.items.add(fieldbyname('stage').asstring );
           next;
         end;
      end;
      StageText.ItemIndex:=-1;

    with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select left(ypdh,4) as ypdh from shoetest');
         sql.add('group by  left(ypdh,4)');
         sql.add('order by  left(ypdh,4) desc');
         active:=true;
         SampleOrderType.items.clear;
         while not eof do
         begin
           SampleOrderType.items.add(fieldbyname('ypdh').asstring );
           next;
         end;
      end;
      SampleOrderType.ItemIndex:=-1;
end;

procedure TSampleAnalysis.seasonTextChange(Sender: TObject);
begin
      with query3 do 
        begin
         active:=false;
         sql.Clear;
         sql.add('select FD from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and kfxxzl.jijie='''+seasontext.text+''' ');
         sql.add('group by FD');
         active:=true;
         DeveloperText.items.clear;
         while not eof do
         begin
           DeveloperText.items.add(fieldbyname('FD').asstring );
           next;
         end;
      end;
      DeveloperText.ItemIndex:=-1;
end;

procedure TSampleAnalysis.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  ACol, Col, Row: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    Col := 1;
    for ACol := 0 to Query1.FieldCount-1 do
    begin
        GSheet.Cells[1, Col] := Query1.Fields.Fields[ACol].FieldName;
        Inc(Col);
    end;
    GSheet.Cells[1, 1] := 'Serino';
    GSheet.Cells[1, 2] := 'Group1';
    GSheet.Cells[1, 3] := 'Group2';
    GSheet.Cells[1, 4] := 'Season';
    GSheet.Cells[1, 5] := 'Testno';
    GSheet.Cells[1, 6] := 'SR';
    GSheet.Cells[1, 7] := 'Stage';
    GSheet.Cells[1, 8] := 'Shoe Name';
    GSheet.Cells[1, 9] := 'Developer';
    GSheet.Cells[1, 10] := 'Purpose';
    GSheet.Cells[1, 11] := 'TB Receive Date';
    GSheet.Cells[1, 12] := 'JNG';
    GSheet.Cells[1, 13] := 'CRMTO';
    GSheet.Cells[1, 14] := 'Amico(TPU)';
    GSheet.Cells[1, 15] := 'Sublimation';
    GSheet.Cells[1, 16] := 'Punching';
    GSheet.Cells[1, 17] := 'Embroidery';
    GSheet.Cells[1, 18] := 'Printing';
    GSheet.Cells[1, 19] := 'LiMao';
    GSheet.Cells[1, 20] := 'Main Materials Ready';
    GSheet.Cells[1, 21] := 'Stitching Accessories Ready';
    GSheet.Cells[1, 22] := 'Assembly Accessories Ready';
    GSheet.Cells[1, 23] := 'Packing Accessories Ready';
    GSheet.Cells[1, 24] := 'lamination Send';
    GSheet.Cells[1, 25] := 'lamination Get';
    GSheet.Cells[1, 26] := 'BaoHe Send';
    GSheet.Cells[1, 27] := 'BaoHe Get';
    GSheet.Cells[1, 28] := 'LiMao Send';
    GSheet.Cells[1, 29] := 'LiMao Get';
    GSheet.Cells[1, 30] := 'Kietphong Send';
    GSheet.Cells[1, 31] := 'Kietphong Get';
    GSheet.Cells[1, 32] := 'Amico Send';
    GSheet.Cells[1, 33] := 'Amico Get';
    GSheet.Cells[1, 34] := 'Cutting Material Receive';
    GSheet.Cells[1, 35] := 'Embroidery Send';
    GSheet.Cells[1, 36] := 'Printing Send';
    GSheet.Cells[1, 37] := 'Embroidery Get';
    GSheet.Cells[1, 38] := 'Printing Get';
    GSheet.Cells[1, 39] := 'Cutting Finished';
    GSheet.Cells[1, 40] := 'Stitching Accessories Receive';
    GSheet.Cells[1, 41] := 'Stitching Finished';
    GSheet.Cells[1, 42] := 'R2 Foxing Receive';
    GSheet.Cells[1, 43] := 'R3 O/S Receive';
    GSheet.Cells[1, 44] := 'Assembly Accessories Receive';
    GSheet.Cells[1, 45] := 'Assembly Finished';
    GSheet.Cells[1, 46] := 'Packing Accessories Receive';
    GSheet.Cells[1, 47] := 'Packing Finished';
    GSheet.Cells[1, 48] := 'Days';
    GSheet.Cells[1, 49] := 'Finished Shoe';
    GSheet.Cells[1, 50] := 'Half Stitching Upper';
    GSheet.Cells[1, 51] := 'Stitching Upper';
    GSheet.Cells[1, 52] := 'Lasted Upper';
    GSheet.Cells[1, 53] := 'Upper Component';
    GSheet.Cells[1, 54] := 'Bottom Component';
    GSheet.Cells[1, 55] := 'Sheet';
    GSheet.Cells[1, 56] := 'A4';
    GSheet.Cells[1, 57] := 'Color Swatch';
    GSheet.Cells[1, 58] := 'CFM Sample';
    GSheet.Cells[1, 59] := 'Upper And Bottom CE';
    GSheet.Cells[1, 60] := 'Tech Level';
    GSheet.Cells[1, 61] := 'TB Build Date';
    GSheet.Cells[1, 62] := 'Sample Order';
    GSheet.Cells[1, 63] := 'Memo2';

    Query1.First;
    Row := 2;
    while not Query1.Eof do
    begin
      Col := 1;
      for ACol := 0 to Query1.FieldCount-1 do
      begin
          GSheet.Cells[Row, Col] := Query1.FieldByName(Query1.Fields.Fields[ACol].FieldName).AsString;
          Inc(Col);
      end;
      Inc(Row);
      Query1.Next;
    end;

    GSheet.Cells.EntireColumn.AutoFit;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TSampleAnalysis.Button3Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  ACol, Col, Row: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    Col := 1;
    for ACol := 0 to Query4.FieldCount-1 do
    begin
        GSheet.Cells[1, Col] := Query4.Fields.Fields[ACol].FieldName;
        Inc(Col);
    end;

    Query4.First;
    Row := 2;
    while not Query4.Eof do
    begin
      Col := 1;
      for ACol := 0 to Query4.FieldCount-1 do
      begin
          GSheet.Cells[Row, Col] := Query4.FieldByName(Query4.Fields.Fields[ACol].FieldName).AsString;
          Inc(Col);
      end;
      Inc(Row);
      Query4.Next;
    end;

    GSheet.Cells.EntireColumn.AutoFit;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TSampleAnalysis.DBGridEh2CellClick(Column: TColumnEh);
var   a:string;
begin
   if  (query2.active) and ((Column.FieldName='FinishedShoe') or
       (Column.FieldName='HalfStitchingUpper') or (Column.FieldName='StitchingUpper') or  (Column.FieldName='LastedUpper') or  (Column.FieldName='UpperComponent') or  (Column.FieldName='BottomComponent') or
       (Column.FieldName='Sheet') or (Column.FieldName='A4') or  (Column.FieldName='ColorSwatchBook') or
       (Column.FieldName='CFMSample') or  (Column.FieldName='UpperAndBottomCE')) then
   begin
      if (Column.FieldName='FinishedShoe')  then
          a:='BW01';
      if (Column.FieldName='HalfStitchingUpper')  then
          a:='BW02';
      if (Column.FieldName='StitchingUpper')  then
          a:='BW03';
      if (Column.FieldName='LastedUpper')  then
          a:='BW04';
      if (Column.FieldName='UpperComponent')  then
          a:='BW05';
      if (Column.FieldName='BottomComponent')  then
          a:='BW06';
      if (Column.FieldName='Sheet')  then
          a:='BW07';
      if (Column.FieldName='A4')  then
          a:='BW08';
      if (Column.FieldName='ColorSwatchBook')  then
          a:='BW09';
      if (Column.FieldName='CFMSample')  then
          a:='BW10';
      if (Column.FieldName='UpperAndBottomCE')  then
          a:='BW11';
      with Query4 do
      begin
       active:=false;
       sql.Clear;
       SQL.Add('select shoetest.Testno,');
       SQL.Add('isnull(md01.qty,0) Shipping,');
       SQL.Add('isnull(md02.qty,0) Testing_Bonding_Flexing,');
       SQL.Add('isnull(md03.qty,0) FitTest,');
       SQL.Add('isnull(md04.qty,0) WearTest,');
       SQL.Add('isnull(md05.qty,0) Keeping,');
       SQL.Add('isnull(md06.qty,0) SocialSample,');
       SQL.Add('isnull(md07.qty,0) TechTeam,');
       SQL.Add('isnull(md08.qty,0) TW_BY,');
       SQL.Add('isnull(md09.qty,0) QC,');
       SQL.Add('isnull(md10.qty,0) IE,');
       SQL.Add('isnull(md11.qty,0) Costing,');
       SQL.Add('isnull(md12.qty,0) Remake_SampleRoomQualityIssued,');
       SQL.Add('isnull(md13.qty,0) Testing_G105,');
       SQL.Add('isnull(md14.qty,0) Test,');
       SQL.Add('isnull(md15.qty,0) Trial,');
       SQL.Add('ypdh,Article,Stage,SeeStage,FD,Season,Purpose,xieming,userdate,complete,DATEDIFF (day,userdate,isnull(complete,getdate()) ) days from shoetest');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD01''');
       SQL.Add('	group by parts,testno)MD01 on MD01.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD02''');
       SQL.Add('	group by parts,testno)MD02 on MD02.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD03''');
       SQL.Add('	group by parts,testno)MD03 on MD03.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD04''');
       SQL.Add('	group by parts,testno)MD04 on MD04.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD05''');
       SQL.Add('	group by parts,testno)MD05 on MD05.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD06''');
       SQL.Add('	group by parts,testno)MD06 on MD06.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD07''');
       SQL.Add('	group by parts,testno)MD07 on MD07.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD08''');
       SQL.Add('	group by parts,testno)MD08 on MD08.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD09''');
       SQL.Add('	group by parts,testno)MD09 on MD09.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD10''');
       SQL.Add('	group by parts,testno)MD10 on MD10.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD11''');
       SQL.Add('	group by parts,testno)MD11 on MD11.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD12''');
       SQL.Add('	group by parts,testno)MD12 on MD12.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD13''');
       SQL.Add('	group by parts,testno)MD13 on MD13.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD14''');
       SQL.Add('	group by parts,testno)MD14 on MD14.testno=shoetest.testno');
       SQL.Add('left join (');
       SQL.Add('	select sum(qty) qty,parts,testno from shoetest2 where parts='''+a+''' and depname=''MD15''');
       SQL.Add('	group by parts,testno)MD15 on MD15.testno=shoetest.testno');
       SQL.Add('WHERE 1=1  and (TBcancel=''0'' or TBcancel is null) ');
       if Info_chk.Checked then
       begin
           SQL.Add(' and shoetest.TBreceivedate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
       end;
       //20201226 weston add
       if CompleteCombo.ItemIndex=1 then
         sql.Add(' and shoetest.complete is not null');
       if CompleteCombo.ItemIndex=2 then
         sql.Add(' and shoetest.complete is  null');
       if TestNoEdit.Text<>'' then
         sql.Add(' and shoetest.Testno like '''+TestNoEdit.Text+'%'' ');
       if YPDHEdit.Text<>'' then
         sql.Add(' and shoetest.ypdh like '''+YPDHEdit.Text+'%'' ');
       //
       if seasontext.text<>'' then
         sql.Add(' and shoetest.season = '''+seasontext.Text+''' ');
       if StageText.text<>'' then
         sql.Add(' and shoetest.stage = '''+StageText.Text+''' ');
       if DeveloperText.text<>'' then
         sql.Add(' and shoetest.fd = '''+DeveloperText.Text+''' ');
       if SampleOrderType.text<>'' then
         sql.Add(' and left(shoetest.ypdh,4) = '''+SampleOrderType.Text+''' ');

       sql.Add('order by shoetest.userdate desc');
       Active:=true;
      // showmessage(a);
      end;

   end;
end;

procedure TSampleAnalysis.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i: Integer;
begin
  if query1.FieldByName('lamination').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1lamination' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('Sublimation').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1Sublimation' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('E_embroidery').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1E_embroidery' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('printing').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1printing' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('lamination_CRMTO').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1lamination_CRMTO' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('kietphong').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1kietphong' then
        Break;
    end;
    if DataCol=i then  
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('LiMao').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1LiMao' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if query1.FieldByName('Amico').AsString = 'True' then
  begin
    for i := 0 to DBGridEh1.FieldCount - 1 do begin
      if DBGridEh1.Fields[i].Name = 'Query1Amico' then
        Break;
    end;
    if DataCol=i then
    begin
      DBGridEh1.canvas.Brush.Color:=clGreen;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
end;

procedure TSampleAnalysis.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   if query1.FieldByName('complete').AsString<>'' then
   begin
      DBGridEh1.canvas.font.color:=claqua;
   end;
end;

procedure TSampleAnalysis.Button4Click(Sender: TObject);
begin
  stagetext.text:='SEE';
  panel6.Visible:=false;
  panel8.Visible:=false;
  panel9.Visible:=true;
//  info_chk.Checked:=true;
{  dbgrideh1.columns[3].Visible:=false;
  dbgrideh1.columns[4].Visible:=false;
  dbgrideh1.columns[12].Visible:=false;
  dbgrideh1.columns[14].Visible:=false;
  dbgrideh1.columns[15].Visible:=false;
  dbgrideh1.columns[16].Visible:=false;
  dbgrideh1.columns[17].Visible:=false;
  dbgrideh1.columns[18].Visible:=false;
  dbgrideh1.columns[19].Visible:=false;
  dbgrideh1.columns[20].Visible:=false;
  dbgrideh1.columns[21].Visible:=false;
  dbgrideh1.columns[22].Visible:=false;
  dbgrideh1.columns[23].Visible:=false;
  dbgrideh1.columns[24].Visible:=false;
  dbgrideh1.columns[25].Visible:=false;
  dbgrideh1.columns[26].Visible:=false;
  dbgrideh1.columns[27].Visible:=false; }
  dbgrideh1.columns[1].Visible:=false;
  dbgrideh1.columns[2].Visible:=false;
  dbgrideh1.columns[4].Visible:=false;
  dbgrideh1.columns[5].Visible:=false;
  dbgrideh1.columns[18].Visible:=false;
  dbgrideh1.columns[21].Visible:=false;
  dbgrideh1.columns[22].Visible:=false;
  dbgrideh1.columns[23].Visible:=false;
  dbgrideh1.columns[24].Visible:=false;
  dbgrideh1.columns[25].Visible:=false;
  dbgrideh1.columns[26].Visible:=false;
  dbgrideh1.columns[27].Visible:=false;
  dbgrideh1.columns[28].Visible:=false;
  dbgrideh1.columns[29].Visible:=false;
  dbgrideh1.columns[30].Visible:=false;
  dbgrideh1.columns[31].Visible:=false;
  dbgrideh1.columns[32].Visible:=false;
  dbgrideh1.columns[33].Visible:=false;

  button1.Click;
  Timer1.Interval := Strtoint(Edit1.Text)*1000;
  Timer2.Interval := strtoint(ComboBox1.Text)*60*1000;
  SampleAnalysis.FormStyle := fsMDIForm;
  SampleAnalysis.WindowState := wsMaximized;

  dbgrideh1.RowHeight:=45;

  Timer1.Enabled := true;
  Timer2.Enabled := true;
  T1 := 2;
end;

procedure TSampleAnalysis.DBGridEh1CellClick(Column: TColumnEh);
begin
  panel6.Visible:=true;
  panel8.Visible:=true;
  panel9.Visible:=false;

  dbgrideh1.columns[1].Visible:=true;
  dbgrideh1.columns[2].Visible:=true;
  dbgrideh1.columns[4].Visible:=true;
  dbgrideh1.columns[5].Visible:=true;
  dbgrideh1.columns[18].Visible:=true;
  dbgrideh1.columns[21].Visible:=true;
  dbgrideh1.columns[22].Visible:=true;
  dbgrideh1.columns[23].Visible:=true;
  dbgrideh1.columns[24].Visible:=true;
  dbgrideh1.columns[25].Visible:=true;
  dbgrideh1.columns[26].Visible:=true;
  dbgrideh1.columns[27].Visible:=true;
  dbgrideh1.columns[28].Visible:=true;
  dbgrideh1.columns[29].Visible:=true;
  dbgrideh1.columns[30].Visible:=true;
  dbgrideh1.columns[31].Visible:=true;
  dbgrideh1.columns[32].Visible:=true;
  dbgrideh1.columns[33].Visible:=true;
  dbgrideh1.RowHeight:=0;
  Timer1.Enabled := false;
  Timer2.Enabled := false;
  SampleAnalysis.FormStyle := fsMDIChild;
  SampleAnalysis.WindowState := wsMaximized;
end;

procedure TSampleAnalysis.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;
  Timer1.Enabled := false;
  Button1.Click;
  T1 := 2;
  Timer2.Enabled := true;
  Timer1.Enabled := true;
end;

procedure TSampleAnalysis.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  if T1 = 2 then
    T1 := 15+strtoint(Edit2.Text)
  else if T1 = DBGridEh1.DataSource.DataSet.RecordCount then
    T1 := 15
  else if T1 > DBGridEh1.DataSource.DataSet.RecordCount then
    T1 := DBGridEh1.DataSource.DataSet.RecordCount
  else
    T1 := T1+strtoint(Edit2.Text);
  if SampleAnalysis.WindowState <> wsMaximized then
      SampleAnalysis.WindowState := wsMaximized;

  query1.Locate('ROWID',inttostr(T1),[loCaseInsensitive,loPartialKey]);
  Timer1.Enabled := true;
end;

procedure TSampleAnalysis.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key := #0;
end;

procedure TSampleAnalysis.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key := #0;
end;

procedure TSampleAnalysis.Timer3Timer(Sender: TObject);
begin
  if Edit3.Text = 'TV' then
    Button4.Click;
  Timer3.Enabled := false;
end;

procedure TSampleAnalysis.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
    dbgrideh1.columns[1].Visible:=false;
    dbgrideh1.columns[2].Visible:=false;
  end;
  if not checkbox1.Checked then
  begin
    dbgrideh1.columns[1].Visible:=true;
    dbgrideh1.columns[2].Visible:=true;
  end;
end;

procedure TSampleAnalysis.DBGridEh1ColumnShow();
begin
  if CheckBox2.Checked=true then
  begin
    DBGridEh1.Columns[11].Visible:=true;
    DBGridEh1.Columns[12].Visible:=true;
    DBGridEh1.Columns[13].Visible:=true;
    DBGridEh1.Columns[14].Visible:=true;
    DBGridEh1.Columns[15].Visible:=true;
    DBGridEh1.Columns[16].Visible:=true;
    DBGridEh1.Columns[17].Visible:=true;
    DBGridEh1.Columns[18].Visible:=true;
    DBGridEh1.Columns[19].Visible:=true;
    DBGridEh1.Columns[20].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[11].Visible:=false;
    DBGridEh1.Columns[12].Visible:=false;
    DBGridEh1.Columns[13].Visible:=false;
    DBGridEh1.Columns[14].Visible:=false;
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh1.Columns[16].Visible:=false;
    DBGridEh1.Columns[17].Visible:=false;
    DBGridEh1.Columns[18].Visible:=false;
    DBGridEh1.Columns[19].Visible:=false;
    DBGridEh1.Columns[20].Visible:=false;
  end;
  //
  if CheckBox3.Checked=true then
  begin
    DBGridEh1.Columns[25].Visible:=true;
    DBGridEh1.Columns[26].Visible:=true;
    DBGridEh1.Columns[27].Visible:=true;
    DBGridEh1.Columns[28].Visible:=true;
    DBGridEh1.Columns[29].Visible:=true;
    DBGridEh1.Columns[30].Visible:=true;
    DBGridEh1.Columns[31].Visible:=true;
    DBGridEh1.Columns[32].Visible:=true;
    DBGridEh1.Columns[33].Visible:=true;
    DBGridEh1.Columns[34].Visible:=true;
    DBGridEh1.Columns[35].Visible:=true;
    DBGridEh1.Columns[36].Visible:=true;
    DBGridEh1.Columns[37].Visible:=true;
    DBGridEh1.Columns[38].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[25].Visible:=false;
    DBGridEh1.Columns[26].Visible:=false;
    DBGridEh1.Columns[27].Visible:=false;
    DBGridEh1.Columns[28].Visible:=false;
    DBGridEh1.Columns[29].Visible:=false;
    DBGridEh1.Columns[30].Visible:=false;
    DBGridEh1.Columns[31].Visible:=false;
    DBGridEh1.Columns[32].Visible:=false;
    DBGridEh1.Columns[33].Visible:=false;
    DBGridEh1.Columns[34].Visible:=false;
    DBGridEh1.Columns[35].Visible:=false;
    DBGridEh1.Columns[36].Visible:=false;
    DBGridEh1.Columns[37].Visible:=false;
    DBGridEh1.Columns[38].Visible:=false;
  end;
  //
  if CheckBox4.Checked=true then
  begin
    DBGridEh1.Columns[40].Visible:=true;
    DBGridEh1.Columns[41].Visible:=true;
    DBGridEh1.Columns[42].Visible:=true;
    DBGridEh1.Columns[43].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[40].Visible:=false;
    DBGridEh1.Columns[41].Visible:=false;
    DBGridEh1.Columns[42].Visible:=false;
    DBGridEh1.Columns[43].Visible:=false;
  end;
end;

procedure TSampleAnalysis.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=true then
  begin
    DBGridEh1.Columns[11].Visible:=true;
    DBGridEh1.Columns[12].Visible:=true;
    DBGridEh1.Columns[13].Visible:=true;
    DBGridEh1.Columns[14].Visible:=true;
    DBGridEh1.Columns[15].Visible:=true;
    DBGridEh1.Columns[16].Visible:=true;
    DBGridEh1.Columns[17].Visible:=true;
    DBGridEh1.Columns[18].Visible:=true;
    DBGridEh1.Columns[19].Visible:=true;
    DBGridEh1.Columns[20].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[11].Visible:=false;
    DBGridEh1.Columns[12].Visible:=false;
    DBGridEh1.Columns[13].Visible:=false;
    DBGridEh1.Columns[14].Visible:=false;
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh1.Columns[16].Visible:=false;
    DBGridEh1.Columns[17].Visible:=false;
    DBGridEh1.Columns[18].Visible:=false;
    DBGridEh1.Columns[19].Visible:=false;
    DBGridEh1.Columns[20].Visible:=false;
  end;
end;

procedure TSampleAnalysis.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked=true then
  begin
    DBGridEh1.Columns[25].Visible:=true;
    DBGridEh1.Columns[26].Visible:=true;
    DBGridEh1.Columns[27].Visible:=true;
    DBGridEh1.Columns[28].Visible:=true;
    DBGridEh1.Columns[29].Visible:=true;
    DBGridEh1.Columns[30].Visible:=true;
    DBGridEh1.Columns[31].Visible:=true;
    DBGridEh1.Columns[32].Visible:=true;
    DBGridEh1.Columns[33].Visible:=true;
    DBGridEh1.Columns[34].Visible:=true;
    DBGridEh1.Columns[35].Visible:=true;
    DBGridEh1.Columns[36].Visible:=true;
    DBGridEh1.Columns[37].Visible:=true;
    DBGridEh1.Columns[38].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[25].Visible:=false;
    DBGridEh1.Columns[26].Visible:=false;
    DBGridEh1.Columns[27].Visible:=false;
    DBGridEh1.Columns[28].Visible:=false;
    DBGridEh1.Columns[29].Visible:=false;
    DBGridEh1.Columns[30].Visible:=false;
    DBGridEh1.Columns[31].Visible:=false;
    DBGridEh1.Columns[32].Visible:=false;
    DBGridEh1.Columns[33].Visible:=false;
    DBGridEh1.Columns[34].Visible:=false;
    DBGridEh1.Columns[35].Visible:=false;
    DBGridEh1.Columns[36].Visible:=false;
    DBGridEh1.Columns[37].Visible:=false;
    DBGridEh1.Columns[38].Visible:=false;
  end;
end;

procedure TSampleAnalysis.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked=true then
  begin
    DBGridEh1.Columns[40].Visible:=true;
    DBGridEh1.Columns[41].Visible:=true;
    DBGridEh1.Columns[42].Visible:=true;
    DBGridEh1.Columns[43].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[40].Visible:=false;
    DBGridEh1.Columns[41].Visible:=false;
    DBGridEh1.Columns[42].Visible:=false;
    DBGridEh1.Columns[43].Visible:=false;
  end;
end;

end.
