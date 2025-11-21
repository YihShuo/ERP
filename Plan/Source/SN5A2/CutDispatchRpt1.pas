unit CutDispatchRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Comobj,
  Menus;

type
  TCutDispatchRpt = class(TForm)
    CutDisQry: TQuery;
    DS2: TDataSource;
    CutDisQryZLBH: TStringField;
    CutDisQryBWBH: TStringField;
    CutDisQryYWSM: TStringField;
    CutDisQryCLBH: TStringField;
    CutDisQryYWPM: TStringField;
    CutDisQrySIZE: TStringField;
    CutDisQryXXCC: TStringField;
    CutDisQryQty: TIntegerField;
    CutDisQryCutNum: TIntegerField;
    CutDisQryokCutNum: TIntegerField;
    CutDisQryZWSM: TStringField;
    PopupMenu: TPopupMenu;
    Detail1: TMenuItem;
    RYCutQry: TQuery;
    DS1: TDataSource;
    RYCutQryZLBH: TStringField;
    RYCutQryDAOMH: TStringField;
    RYCutQryZLBH_NO: TStringField;
    Qtemp: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    ZLBHEdit: TEdit;
    DTP2: TDateTimePicker;
    Button2: TButton;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    XuongCB1: TComboBox;
    DepNMEdit1: TComboBox;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button3: TButton;
    DTP3: TDateTimePicker;
    Button5: TButton;
    DTP4: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    DailyQuery: TQuery;
    DS3: TDataSource;
    DailyQueryScanDate: TStringField;
    DailyQueryID: TStringField;
    DailyQueryDepName: TStringField;
    DailyQueryCutNum: TIntegerField;
    DailyQueryokCutNum: TIntegerField;
    Label8: TLabel;
    Label10: TLabel;
    XuongCB2: TComboBox;
    DepNMEdit2: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PlanDateCK: TCheckBox;
    CutDisQryokQty: TIntegerField;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh2: TDBGridEh;
    DBGridEh4: TDBGridEh;
    CutDisSDetQry: TQuery;
    DS4: TDataSource;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    SMDDQry: TQuery;
    DS5: TDataSource;
    RYCutQryARTICLE: TStringField;
    RYCutQryDEVCODE: TStringField;
    DBGrid2: TDBGridEh;
    Track: TQuery;
    TrackListNo: TStringField;
    TrackDemandDate: TDateTimeField;
    TrackDemandTime: TStringField;
    StringField2: TStringField;
    TrackYWPM: TStringField;
    TrackZWPM: TStringField;
    TrackDWBH: TStringField;
    StringField6: TStringField;
    TrackLotNO: TStringField;
    CurrencyField1: TCurrencyField;
    StringField9: TStringField;
    CurrencyField2: TCurrencyField;
    TrackRemarkS: TStringField;
    TrackUserID: TStringField;
    TrackUserDate: TDateTimeField;
    DataSource1: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Detail1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure XuongCB2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RYCutQryAfterScroll(DataSet: TDataSet);
    procedure PageControl2Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    NDate:TDateTime;
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
    procedure ShowCutDisSDetQry();
  public
    { Public declarations }
  end;

var
  CutDispatchRpt: TCutDispatchRpt;

implementation
   uses CutDispathchRptDet1,FunUnit, main1;
{$R *.dfm}

procedure TCutDispatchRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutDispatchRpt.FormDestroy(Sender: TObject);
begin
  CutDispatchRpt:=nil;
end;

procedure TCutDispatchRpt.Button1Click(Sender: TObject);
begin
   with RYCutQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH as ZLBH_NO,DDZL.ARTICLE,kfxxzl.DEVCODE ');
     SQL.Add('from CutDispatchZL');
     SQL.Add('left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCutNum) as okCutNum from CutDispatchS Group by ZLBH,BWBH,SIZE) ');
     SQL.Add('          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=CutDispatchS.SIZE');
     SQL.Add('left join DDZL on DDZL.DDBH=CutDispatchZL.ZLBH  ');
     SQL.Add('left join kfxxzl on kfxxzl.XieXing=DDZL.XieXing and DDZL.SheHao=kfxxzl.SheHao ');
     SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
     // 琌皌甅OK
     SQL.Add('left join ');
     SQL.Add(' ( select  CutDispatchZL.ZLBH from CutDispatchZL ');
     SQL.Add('   left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCutNum) as okCutNum ');
     SQL.Add('              from CutDispatchS ');
     SQL.Add('              where DLNO in (');
     SQL.Add('                select DLNO from CutDispatchSS ');
     SQL.Add('                inner join SMDD on SMDD.DDBH=CutDispatchSS.DDBH and SMDD.GXLB=''C'' ');
     if PlanDateCK.Checked=true then
     SQL.Add('                where SMDD.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
     SQL.Add('                Group by DLNO) Group by ZLBH,BWBH,SIZE  ');
     SQL.Add('    ) CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=CutDispatchS.SIZE');
     SQL.Add('  where  IsNull(CutDispatchS.okCutNum,0)<CutDispatchZL.CutNum and CutDispatchZL.ZLBH like '''+ZLBHEdit.Text+'%''  ');
     if ((DepNMEdit1.Text<>'') or (XuongCB1.Text<>'') or (PlanDateCK.Checked=true))then
     begin
       SQL.Add('   and CutDispatchZL.ZLBH in (select YSBH from SMDD,BDepartment where SMDD.DepNO=BDepartment.ID ');
       if (DepNMEdit1.Text<>'') then
         SQL.Add('    and BDepartment.DepName like ''%'+DepNMEdit1.Text+'%'' ');
       if (XuongCB1.Text<>'') then
         SQL.Add('    and BDepartment.Xuong='''+XuongCB1.Text+''' ');
       if PlanDateCK.Checked=true then
         SQL.Add('    and SMDD.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
       SQL.Add('   Group by YSBH ) ');
     end;
     SQL.Add('  Group by CutDispatchZL.ZLBH  ) CutDispatchZL_NO on CutDispatchZL_NO.ZLBH=CutDispatchZL.ZLBH');
     //==========
     SQL.Add('where CutDispatchZL.ZLBH like '''+ZLBHEdit.Text+'%'' ');
     if ((DepNMEdit1.Text<>'') or (XuongCB1.Text<>'') or (PlanDateCK.Checked=true))then
     begin
       SQL.Add('   and CutDispatchZL.ZLBH in (select YSBH from SMDD,BDepartment where SMDD.DepNO=BDepartment.ID  ');
       if (DepNMEdit1.Text<>'') then
         SQL.Add('   and BDepartment.DepName like ''%'+DepNMEdit1.Text+'%'' ');
       if (XuongCB1.Text<>'') then
         SQL.Add('   and BDepartment.Xuong='''+XuongCB1.Text+''' ');
       if PlanDateCK.Checked=true then
         SQL.Add('   and SMDD.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
       SQL.Add('  Group by YSBH ) ');
     end;
     if RB2.Checked=true then
       SQL.Add('and CutDispatchZL_NO.ZLBH is not null ');
     if RB3.Checked=true then
       SQL.Add('and CutDispatchZL_NO.ZLBH is null ');
     SQL.Add('Group by CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH,DDZL.ARTICLE,kfxxzl.DEVCODE  ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;


procedure TCutDispatchRpt.Button2Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex=0 then
  begin
    ExportExcel(CutDisSDetQry);
  end else  if PageControl2.ActivePageIndex=1 then
  begin
    ExportExcel(CutDisQry);
  end else  if PageControl2.ActivePageIndex=2 then
  begin
    ExportExcel(SMDDQry);
  end;
end;

procedure TCutDispatchRpt.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if (CutDisQry.FieldByName('CutNum').AsInteger>0) and (CutDisQry.FieldByName('CutNum').AsInteger <= CutDisQry.FieldByName('okCutNum').AsInteger) then
  begin
    DBGridEh2.Canvas.Font.Color := clGreen;
    DBGridEh2.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
  if (CutDisQry.FieldByName('CutNum').AsInteger>0) and (CutDisQry.FieldByName('CutNum').AsInteger > CutDisQry.FieldByName('okCutNum').AsInteger) then
  begin
    DBGridEh2.Canvas.Font.Color := clBlue;
    DBGridEh2.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
   
end;

procedure TCutDispatchRpt.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (RYCutQry.FieldByName('ZLBH_NO').IsNull=true)  then
  begin
    DBGridEh1.Canvas.Font.Color := clGreen;
    DBGridEh1.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
end;

procedure TCutDispatchRpt.Detail1Click(Sender: TObject);
begin
  if RYCutQry.Active=false then Exit;
  CutDispathchRptDet:=TCutDispathchRptDet.Create(self);
  CutDispathchRptDet.ShowModal();
end;

procedure TCutDispatchRpt.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=NDate-7;
  DTP2.Date:=NDate+7;
  DTP3.Date:=NDate;
  DTP4.Date:=NDate;
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND ISNULL(Xuong, '''') <> '''' ');
    SQL.Add('ORDER BY Xuong ');
    Active := true;
    XuongCB1.Items.Clear;
    XuongCB1.Items.Add('');
    XuongCB2.Items.Clear;
    XuongCB2.Items.Add('');
    while not Eof do
    begin
      XuongCB1.Items.Add(FieldByName('Xuong').AsString);
      XuongCB2.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
  //
end;

procedure TCutDispatchRpt.ange(Sender: TObject);
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepName FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND Xuong = ''' + XuongCB1.Text + '''');
    Active := true;
    DepNMEdit1.Items.Clear;
    DepNMEdit1.ITems.Add('');
    while not Eof do
    begin
      DepNMEdit1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;
end;

procedure TCutDispatchRpt.Button3Click(Sender: TObject);
begin
  with DailyQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CutDispatch.*,CutScan.okCutNum from (');
    SQL.Add('select Convert(varchar,CutDispatch.PlanDate,111) as ScanDate,BDepartment.ID,BDepartment.DepName,sum(CutNum) as CutNum from CutDispatchS');
    SQL.Add('Left join CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO');
    SQL.Add('Left join BDepartment on BDepartment.ID=CutDispatch.DepID');
    SQL.Add('where CutDispatch.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ');
    if (DepNMEdit2.Text<>'') then
     SQL.Add('    and BDepartment.DepName like ''%'+DepNMEdit2.Text+'%'' ');
    if (XuongCB2.Text<>'') then
     SQL.Add('    and BDepartment.Xuong='''+XuongCB2.Text+''' ');
    SQL.Add('Group by Convert(varchar,CutDispatch.PlanDate,111),BDepartment.ID,BDepartment.DepName');
    SQL.Add(') CutDispatch');
    SQL.Add('Left join (');
    SQL.Add('  select Convert(varchar,CutDispatchS.ScanDate,111) as ScanDate,BDepartment.ID,Sum(okCutNum) as okCutNum from CutDispatchS');
    SQL.Add('  Left join CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO  ');
    SQL.Add('  Left join BDepartment on BDepartment.ID=CutDispatch.DepID');
    SQL.Add('  where CutDispatchS.ScanDate between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ');
    if (DepNMEdit2.Text<>'') then
     SQL.Add('    and BDepartment.DepName like ''%'+DepNMEdit2.Text+'%'' ');
    if (XuongCB2.Text<>'') then
     SQL.Add('    and BDepartment.Xuong='''+XuongCB2.Text+''' ');
    SQL.Add('  Group by Convert(varchar,CutDispatchS.ScanDate,111),BDepartment.ID,BDepartment.DepName');
    SQL.Add(' ) CutScan on CutDispatch.ScanDate=CutScan.ScanDate and CutDispatch.ID=CutScan.ID ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TCutDispatchRpt.XuongCB2Change(Sender: TObject);
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepName FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND Xuong = ''' + XuongCB2.Text + '''');
    Active := true;
    DepNMEdit2.Items.Clear;
    DepNMEdit2.ITems.Add('');
    while not Eof do
    begin
      DepNMEdit2.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;
end;

procedure TCutDispatchRpt.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

 if  Query.active  then
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
          for  i:=0  to  Query.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
          end;

          Query.First;
          j:=2;
          while   not   Query.Eof   do
          begin
            for   i:=0   to  Query.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query.Fields[i].Value;
            end;
            Query.Next;
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

procedure TCutDispatchRpt.Button5Click(Sender: TObject);
begin
  ExportExcel(DailyQuery);
end;

procedure TCutDispatchRpt.ShowCutDisSDetQry();
var i:integer;
begin
  if PageControl2.ActivePageIndex=0 then
  begin
    CutDisQry.Active:=false;
    //
    if CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString='' then exit;
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select CutDispatchZL.SIZE ');
      SQL.Add('from CutDispatchZL ');
      SQL.Add('where CutDispatchZL.ZLBH = '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('Group by CutDispatchZL.SIZE ');
      Active:=true;
    end;

    with  CutDisSDetQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select CutSize.ZLBH,null as BWBH,null as YWSM,''SIZE'' as ZWSM,null as VWSM  ');
      Qtemp.First;
      while not Qtemp.Eof do
      begin
        SQL.Add('      ,Max(case when CutSize.SIZE='''+Qtemp.FieldByName('SIZE').AsString+''' then Convert(varchar,Qty) end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
      end;
      SQL.Add('        ,Sum(Qty) as Pairs ');
      SQL.Add('from (');
      SQL.Add('select CutDispatchZL.ZLBH,CutDispatchZL.SIZE,MAX(Qty) as Qty ');
      SQL.Add('from CutDispatchZL');
      SQL.Add('where CutDispatchZL.ZLBH = '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('Group by CutDispatchZL.ZLBH, CutDispatchZL.SIZE ) CutSize');
      SQL.Add('Group by CutSize.ZLBH ');
      //
      SQL.Add('Union all ');
      SQL.Add('select CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM,CutDis.VWSM  ');
      Qtemp.First;
      while not Qtemp.Eof do
      begin
        SQL.Add('      ,Max(case when CutDis.SIZE='''+Qtemp.FieldByName('SIZE').AsString+''' then CutOK end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
      end;
      Qtemp.Active:=false;
      SQL.Add('        ,Sum(Qty) as Pairs ');
      SQL.Add('from (  select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,BWZL.YWSM,BWZL.ZWSM,BWZLVN.VWSM,CutDispatchZL.SIZE,(CutDispatchS.okCutNum*CutDispatchZL.Layer/CutDispatchZL.piece) as Qty,case when IsNull(CutDispatchS.okCutNum,0)>=CutDispatchZL.CutNum  then ''OK'' ');
      SQL.Add('               else convert(varchar,CutDispatchS.okCutNum*CutDispatchZL.Layer/CutDispatchZL.piece) end as CutOK   ');
      SQL.Add('from CutDispatchZL');
      SQL.Add('left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCutNum) as okCutNum from CutDispatchS where CutDispatchS.ZLBH ='''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+'''  Group by ZLBH,BWBH,SIZE) ');
      SQL.Add('          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=CutDispatchS.SIZE');
      SQL.Add('left join CLZL on CLZL.cldh=CutDispatchZL.CLBH ');
      SQL.Add('left join BWZL on BWZL.BWDH=CutDispatchZL.BWBH ');
      SQL.Add('left join BWZLVN on BWZLVN.BWDH=CutDispatchZL.BWBH ');
      SQL.Add('where CutDispatchZL.ZLBH ='''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' and CutDispatchZL.PieceS>0  ) CutDis');
      SQL.Add('Group by CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM,CutDis.VWSM');
      //FuncObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //
    DBGridEh4.columns[0].width:=80;
    DBGridEh4.columns[0].Title.Caption:='璹虫|ZLBH';
    DBGridEh4.columns[1].width:=60;
    DBGridEh4.columns[1].Title.Caption:='场絪腹|BWBH';
    DBGridEh4.columns[2].width:=100;
    DBGridEh4.columns[2].Title.Caption:='场璣ゅ|YWSM';
    DBGridEh4.columns[3].width:=60;
    DBGridEh4.columns[3].Title.Caption:='场いゅ|ZWSM';
    DBGridEh4.columns[4].width:=60;
    DBGridEh4.columns[4].Title.Caption:='场禫ゅ|VWSM';
    for i:=5 to CutDisSDetQry.fieldcount-2 do
    begin
      DBGridEh4.columns[i].width:=37;
      DBGridEh4.columns[i].Title.Caption:='へ絏|'+CutDisSDetQry.Fields[i].FieldName;
    end;
    DBGridEh4.columns[i].width:=70;
    DBGridEh4.columns[i].Title.Caption:='蛮计|Pairs';
  end else if PageControl2.ActivePageIndex=1 then
  begin
    CutDisQry.Active:=true;
    Track.Active:=true;
    CutDisSDetQry.Active:=false;
  end else if PageControl2.ActivePageIndex=2 then
  begin
    CutDisQry.Active:=false;
    CutDisSDetQry.Active:=false;
    //
    if CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString='' then exit;
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select CutDispatchZL.SIZE ');
      SQL.Add('from CutDispatchZL ');
      SQL.Add('where CutDispatchZL.ZLBH = '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('Group by CutDispatchZL.SIZE ');
      Active:=true;
    end;
    //
    with  SMDDQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select CutSize.ZLBH ');
      Qtemp.First;
      while not Qtemp.Eof do
      begin
        SQL.Add('      ,Max(case when CutSize.SIZE='''+Qtemp.FieldByName('SIZE').AsString+''' then Convert(varchar,Qty) end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
      end;
      SQL.Add('        ,Sum(Qty) as Pairs ');
      SQL.Add('from (');
      SQL.Add('select CutDispatchZL.ZLBH,CutDispatchZL.SIZE,MAX(Qty) as Qty ');
      SQL.Add('from CutDispatchZL');
      SQL.Add('where CutDispatchZL.ZLBH = '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('Group by CutDispatchZL.ZLBH, CutDispatchZL.SIZE ) CutSize');
      SQL.Add('Group by CutSize.ZLBH ');
      //
      SQL.Add('Union all ');
      SQL.Add('Select DDBH');
      Qtemp.First;
      while not Qtemp.Eof do
      begin
        SQL.Add('      ,Max(case when SMDD.XXCC='''+Qtemp.FieldByName('SIZE').AsString+'''  then Qty end) as '''+Qtemp.FieldByName('SIZE').AsString+''' ');
        Qtemp.Next;
      end;
      SQL.Add('        ,Sum(Qty) as Pairs ');
      SQL.Add('from (');
      SQL.Add('select SMDDS.DDBH,SMDDS.XXCC, case when CutDispatchS_X.DDBH is  null then Qty end as Qty  from  ');
      SQL.Add('(select SMDD.DDBH,SMDDS.XXCC,SMDDS.Qty from SMDDS,SMDD where SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB=''C'' and SMDD.YSBH = '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ) SMDDS ');
      SQL.Add('left join (');
      SQL.Add('select DDBH,SIZE from (');
      SQL.Add('select CutDispatchZL.*,CutDispatchS.CutNum,CutDispatchS.okCutNum from (');
      SQL.Add('select SMDD.DDBH,SMDD.YSBH as ZLBH,SMDDS.XXCC as SIZE,SMDDS.Qty,CutDispatchZL.BWBH,CutDispatchZL.CLBH from SMDD');
      SQL.Add('Left join SMDDS on SMDD.DDBH=SMDDS.DDBH');
      SQL.Add('Left join CutDispatchZL on CutDispatchZL.ZLBH=SMDD.YSBH and CutDispatchZL.SIZE=SMDDS.XXCC');
      SQL.Add('where SMDD.YSBH='''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' and SMDD.GXLB=''C'' )CutDispatchZL');
      SQL.Add('Left join (');
      SQL.Add('Select SMDDS.DDBH,CutDispatchS.ZLBH,CutDispatchS.SIZE,SMDDS.Qty,CutDispatchS.BWBH,CutDispatchS.CLBH,CutDispatchS.CutNum,CutDispatchS.okCutNum from CutDispatchS');
      SQL.Add('Left join CutDispatchSS on CutDispatchSS.DLNO=CutDispatchS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH');
      SQL.Add('Left join SMDDS on SMDDS.DDBH=CutDispatchSS.DDBH and SMDDS.XXCC=CutDispatchS.SIZE');
      SQL.Add('where CutDispatchS.ZLBH='''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+''' ) CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and CutDispatchZL.DDBH=CutDispatchS.DDBH and  CutDispatchZL.SIZE=CutDispatchS.SIZE and CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.CLBH=CutDispatchS.CLBH');
      SQL.Add('where 1=1 and  ( CutNum is null or IsNull(okCutNum,0)<IsNull(CutNum,0) )');
      SQL.Add(') CutDispatchZL');
      SQL.Add('Group by DDBH,SIZE ) CutDispatchS_X on SMDDS.DDBH=CutDispatchS_X.DDBH and SMDDS.XXCC=CutDispatchS_X.SIZE');
      SQL.Add('where SMDDS.DDBH like '''+CutDispatchRpt.RYCutQry.FieldByName('ZLBH').AsString+'%'' )  SMDD');
      SQL.Add('Group by DDBH');
      //funcObj.WriteErrorLog(SQL.Text);
      Active:=true;
      //
      DBGridEh5.columns[0].width:=120;
      DBGridEh5.columns[0].Title.Caption:='璹虫|ZLBH';
      for i:=1 to SMDDQry.fieldcount-2 do
      begin
        DBGridEh5.columns[i].width:=37;
        DBGridEh5.columns[i].Title.Caption:='へ絏|'+SMDDQry.Fields[i].FieldName;
      end;
      DBGridEh5.columns[i].width:=60;
      DBGridEh5.columns[i].Title.Caption:='蛮计|Pairs';
      
    end;
    //

  end;
end;
//
procedure TCutDispatchRpt.RYCutQryAfterScroll(DataSet: TDataSet);
begin
  ShowCutDisSDetQry();
end;

procedure TCutDispatchRpt.PageControl2Change(Sender: TObject);
begin
 ShowCutDisSDetQry();
end;

procedure TCutDispatchRpt.MenuItem1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

 if  Track.active  then
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
          for  i:=0  to  Track.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Track.fields[i].FieldName;
          end;

          Track.First;
          j:=2;
          while   not   Track.Eof   do
          begin
            for   i:=0   to  Track.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Track.Fields[i].Value;
            end;
            Track.Next;
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

end.
