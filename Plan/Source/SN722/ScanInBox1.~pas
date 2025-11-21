unit ScanInBox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  Grids, DBGrids, inifiles;

type
  TScanInBox = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    Edit4: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    DBGridEh2: TDBGridEh;
    RYQry: TQuery;
    DataSource1: TDataSource;
    SMZL: TQuery;
    SMZLCTS: TIntegerField;
    SMZLDepNO: TStringField;
    SMZLScanDate: TDateTimeField;
    SMZLUSERDATE: TDateTimeField;
    SMZLUSERID: TStringField;
    SMZLDepName: TStringField;
    SMZLDDBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLoldCTS: TIntegerField;
    SMZLTotQty: TIntegerField;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    DepNoGXLB: TStringField;
    DS1: TDataSource;
    UpSMZL: TUpdateSQL;
    Qtemp: TQuery;
    SMDDSS: TQuery;
    SMDDSSYSBH: TStringField;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSDepGXLB: TStringField;
    SMDDSS2: TQuery;
    SMDDSS2DDBH: TStringField;
    SMDDSS2GXLB: TStringField;
    SMDDSS2XXCC: TStringField;
    SMDDSS2LackQty: TIntegerField;
    SMDDSS2okqty: TIntegerField;
    Button1: TButton;
    SMZLCODEBAR: TStringField;
    RYQryDDBH: TStringField;
    RYQryGXLB: TStringField;
    RYQryXXCC: TStringField;
    RYQryQty: TIntegerField;
    RYQryCTS: TIntegerField;
    RYQryokCTS: TIntegerField;
    Splitter1: TSplitter;
    RYQryInBoxBar: TStringField;
    UpdRY: TUpdateSQL;
    RYQryID: TStringField;
    RYQryDepName: TStringField;
    DS2: TDataSource;
    CheckBox: TCheckBox;
    Button4: TButton;
    InfoLab: TLabel;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Qtemp2: TQuery;
    DS3: TDataSource;
    DBGridEh4: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SMZLCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Edit5DblClick(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    DepGXLB:string;
    { Public declarations }
    procedure ReadSetting();
    procedure WriteSetting();
  end;

var
  ScanInBox: TScanInBox;
  NDate:TDate;

implementation

uses  main1, funUnit, ScanInBox_RY1,ScanInBox_Dep1;


function LastInput: DWord;
var
  LInput: TLastInputInfo;
begin
  LInput.cbSize := SizeOf(TLastInputInfo);
  GetLastInputInfo(LInput);
  Result := GetTickCount - LInput.dwTime;
end;

{$R *.dfm}

//
procedure TScanInBox.ReadSetting();
var MyIni :Tinifile;
    DiskNM,DepID:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if FileExists(DiskNM+':\ERP_Temp\ERP_Setting.ini')=true then
    begin
      try
        MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
        DepID:=MyIni.ReadString('Plan_SN722','DepID','');
        //±a¤JDepNO
        DepNo.active:=true;
        if DepNo.Locate('ID',copy(DepID,0,10),[]) then
        begin
          edit2.Text:=DepNo.fieldbyname('ID').Value;
          edit1.Text:=DepNo.fieldbyname('DepName').Value;
          edit3.text:='';
          DepGXLB:=DepNo.fieldbyname('GXLB').Value;
        end;
        //
      finally
        MyIni.Free;
      end;
    end;
  end;
end;
procedure TScanInBox.WriteSetting();
var MyIni :Tinifile;
    DiskNM:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    try
      if(not DirectoryExists(DiskNM+':\ERP_Temp\'))  then ForceDirectories(DiskNM+':\ERP_Temp\');
      MyIni:=Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
      MyIni.WriteString('Plan_SN722','DepID',edit2.Text);
    finally
      MyIni.Free;
    end;
  end;
end;
//
procedure TScanInBox.FormDestroy(Sender: TObject);
begin
  ScanInBox:=nil;
end;

procedure TScanInBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ScanInBox.WriteSetting();
  action:=cafree;
end;

procedure TScanInBox.Timer1Timer(Sender: TObject);
begin
  //label3.Caption := Format('¹«¼Ð¤w¦³ %d ¨S¦³¨Ï¥Î', [(LastInput)div 1000]);
  if (LastInput)div 1000 >300 then
  begin
    edit1.Text:='';
    edit2.text:='';
  end;
end;

procedure TScanInBox.FormCreate(Sender: TObject);
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
  SMZL.Active:=true;
  DepNo.active:=true;
  Edit1.Enabled:=false;
  //Edit3.Enabled:=false;
  Button2.Enabled:=false;
  Button3.Enabled:=false;
end;

procedure TScanInBox.Edit3KeyPress(Sender: TObject; var Key: Char);
var NowQty:integer;
    RY_DDBH:string;
    GBBH:string;
begin
  if key=#13 then
  begin
    //±½´y¥~½cÀË¬d¬O§_'-'­q³æ½s¸¹¤Á´«­q³æ
    if Pos('-',Edit3.text)>0 then
    begin
      Edit5.Text:=Copy(Edit3.text,1,Pos(' ',Edit3.Text+' ')-1);
      Button1.Click;
      Edit3.Text:='';
      abort;
    end;
    //
    if RYQry.Active=false then Exit;
    //¥u¤¹³\¦¨«¬
    if Edit2.text='' then
    begin
        Edit3.SetFocus;
        InfoLab.Caption:='Xin chon Lean truoc.';
        edit3.Text:='';
        abort;
    end;
    if DepGXLB<>'A' then
    begin
        Edit3.SetFocus;
        InfoLab.Caption:='Chi scan cong doan go.';
        edit3.Text:='';
        abort;
    end;
    //20180608 Locate  DDBH when okCTS< CTS*Qty
    RYQry.Filter:='InBoxBar='''+Edit3.text+'''  ';
    RY_DDBH:='';
    RYQry.First;
    if RYQry.Locate('InBoxBar',Edit3.text,[]) then
    begin
      if (RYQry.FieldByName('okCTS').value<(RYQry.FieldByName('CTS').value*RYQry.FieldByName('Qty').value)) then
      begin
        RY_DDBH:=RYQry.fieldbyname('DDBH').value;
      end else // Find Next Record
      begin
        while RYQry.FindNext=true do
        begin
           if (RYQry.FieldByName('okCTS').value<(RYQry.FieldByName('CTS').value*RYQry.FieldByName('Qty').value)) then
           begin
             RY_DDBH:=RYQry.fieldbyname('DDBH').value;
             break;
           end;
        end;
        if RY_DDBH='' then
        begin
          Edit3.SetFocus;
          InfoLab.Caption:='More than Order Qty.'+#39+'¶W¹L¤F½ü¦¸¼Æ¶q'+#39+'Don hang du so luong tua';
          edit3.Text:='';
          abort;
        end;
      end;
    end;
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select top 1 YWCPLH.GBBH from SMDDSS');
      SQL.Add('Left join SMDD on SMDD.DDBH=SMDDSS.DDBH');
      SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
      SQL.Add('Left join YWCPLH on YWCPLH.XieXing=DDZL.XieXing and YWCPLH.SheHao=DDZL.SheHao  and YWCPLH.GBBH=DDZL.DDGB ');
      SQL.Add('where SMDDSS.DDBH like '''+Edit5.Text+'%'' and YWCPLH.GBBH is not null');
      Active:=true;
      if RecordCount>0 then GBBH:=FieldByName('GBBH').AsString else GBBH:='NORMAL';
      Active:=false;
    end;
    //
    with SMDDSS do
    begin
        active:=false;
        Params.Items[0].AsString :=RY_DDBH;
        Params.Items[1].AsString :=Edit3.text;
        Params.Items[2].AsString :=GBBH;
        active:=true;
        if DepGXLB<>fieldbyname('DepGXLB').AsString then
        begin
          Showmessage('Don vi scan khong giong cong doan scan');
          edit3.Text:='';
          exit;
        end;
        if recordcount>0 then
        begin
            qtemp.Active:=false;
            qtemp.SQL.Clear;
            Qtemp.sql.Add('select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty ');
            Qtemp.sql.add('from SMDDSS ');
            Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
            Qtemp.sql.add('where SMDDSS.DDBH='+''''+RYQry.fieldbyname('DDBH').Value+'''');
            Qtemp.sql.add('      and SMDD.SCCX='+''''+RYQry.fieldbyname('GXLB').Value+'''');
            Qtemp.sql.add('      and SMDDSS.XXCC='+''''+RYQry.fieldbyname('XXCC').Value+'''');
            Qtemp.sql.add('      and smdd.gxlb in ('+''''+'C'+'''');
            qtemp.sql.add(','+''''+'S'+''''+','+''''+'A'+''''+','+''''+'O'+''''+')');
            Qtemp.sql.add('group by smdd.ddbh,SMDDSS.GXLB ');
            Qtemp.active:=true;
            if Qtemp.recordcount>0 then
            begin
              Qtemp.active:=false;
              Qtemp.sql.Clear;
              qtemp.SQL.Add('select smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as okQty,isnull((f.okqty),0) as fokqty');
              qtemp.SQL.Add('from Smddss ');
              qtemp.SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
              qtemp.SQL.Add('left join ');
              qtemp.SQL.add('(select k.ddbh,k.gxlb,sum(k.okqty) as okqty from ');
              Qtemp.sql.Add('(select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty');
              Qtemp.sql.add('from SMDDSS ');
              Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
              Qtemp.sql.add('where SMDDSS.DDBH='+''''+RYQry.fieldbyname('DDBH').Value+'''');
              Qtemp.sql.add('      and SMDD.SCCX='+''''+RYQry.fieldbyname('GXLB').Value+'''');
              Qtemp.sql.add('      and SMDDSS.XXCC='+''''+RYQry.fieldbyname('XXCC').Value+'''');
              Qtemp.sql.add('      and smdd.gxlb in ('+''''+'C'+'''');
              qtemp.sql.add(','+''''+'S'+''''+','+''''+'A'+''''+')');
              Qtemp.sql.add(' group by smdd.ddbh,SMDDSS.GXLB,smdd.sccx) as k group by k.ddbh,k.gxlb)');
              qtemp.SQL.Add(' as f on f.ddbh=smdd.ddbh  ');

              Qtemp.sql.add('where SMDDSS.DDBH='+''''+RYQry.fieldbyname('DDBH').Value+'''');
              Qtemp.sql.add('      and SMDD.GXLB='+''''+RYQry.fieldbyname('GXLB').Value+'''');
              Qtemp.sql.add('      and SMDDSS.XXCC='+''''+RYQry.fieldbyname('XXCC').Value+'''');
              Qtemp.sql.add('group by  smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,f.okqty');
              Qtemp.active:=true;
              if Qtemp.recordcount>0 then
                NowQty:=Qtemp.fieldbyname('fokqty').value-Qtemp.fieldbyname('okQty').value;
            end else
                NowQty:=10000;

            if (NowQty<RYQry.fieldbyname('Qty').value) and ((qtemp.fieldbyname('gxlb').Value<>'C') and (qtemp.fieldbyname('gxlb').Value<>'Z') and (qtemp.fieldbyname('gxlb').Value<>'O')) then
            begin
                Edit3.SetFocus;
                InfoLab.Caption:='No enough Qty for Scan.';
                edit3.Text:='';
            end else
            begin
              SMDDSS2.Active:=true;
              if SMDDSS2.fieldbyname('LackQty').value>=SMDDSS.FieldByName('Qty').value then
              begin
                if not((smddss.FieldByName('xh').Value=2) and (smddss.FieldByName('okcts').Value>=1)) then
                begin
                  if SMZL.Locate('CODEBAR',SMDDSS.FieldByName('CODEBAR').Value,[]) then
                  begin
                    SMZL.Edit;
                    SMZL.FieldByName('CTS').Value:=SMZL.FieldByName('CTS').Value+1;
                    SMZL.Post;
                  end else
                  begin
                    SMZL.Insert;
                    SMZL.fieldbyname('DDBH').value:=SMDDSS.FieldByName('DDBH').Value;
                    SMZL.fieldbyname('GXLB').value:=SMDDSS.FieldByName('GXLB').Value;
                    SMZL.fieldbyname('XXCC').value:=SMDDSS.FieldByName('XXCC').Value;
                    SMZL.fieldbyname('XH').value:=SMDDSS.FieldByName('XH').Value;
                    SMZL.fieldbyname('Qty').value:=SMDDSS.FieldByName('Qty').Value;
                    SMZL.fieldbyname('CODEBAR').value:=SMDDSS.FieldByName('CODEBAR').Value;
                    SMZL.fieldbyname('CTS').value:=1;
                    SMZL.fieldbyname('DepNO').value:=edit2.text;
                    SMZL.fieldbyname('DepName').value:=edit1.text;
                    SMZL.fieldbyname('ScanDate').value:=NDate;
                    SMZL.fieldbyname('USERID').value:=main.edit1.text;
                    SMZL.fieldbyname('USERDATE').value:=NDate;
                    SMZL.post;
                  end;
                  Qtemp.active:=false;
                  Qtemp.sql.Clear;
                  Qtemp.sql.Add('insert into SMZL ');
                  Qtemp.sql.add('(CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN,SB) ');
                  Qtemp.sql.add('values('+''''+fieldbyname('CODEBAR').Value+''',1,');
                  Qtemp.sql.add('          '''+edit2.Text+''''+',getdate(),getdate(),' );
                  Qtemp.sql.add('          '''+main.edit1.Text+''''+','+''''+'1'+''''+',null)');
                  Qtemp.sql.add('update SMDDSS ');
                  Qtemp.sql.add('set okCTS=okCTS+1, ScanSDate=case when ScanSDate is null then GETDATE() else ScanSDate end, ScanEDate=GETDATE() ');
                  Qtemp.sql.add('where DDBH='+''''+fieldbyname('DDBH').Value+'''');
                  Qtemp.sql.add('      and GXLB='+''''+ fieldbyname('GXLB').Value+'''');
                  Qtemp.sql.add('      and XXCC='+''''+ fieldbyname('XXCC').Value+'''');
                  Qtemp.sql.add('      and XH='+''''+ fieldbyname('XH').Value+'''');
                  Qtemp.ExecSQL;
                  edit3.text:='';
                  //
                  RYQry.Edit;
                  RYQry.FieldByName('okCTS').value:=RYQry.FieldByName('okCTS').value+1;
                  RYQry.Post;
                  //
                end else
                begin
                  Edit3.SetFocus;
                  InfoLab.Caption:='More than Order Qty.'+#39+'¶W¹L¤F§À¼Æ¼Æ¶q'+#39+'Don hang du so luong tua';
                  edit3.Text:='';
                end;
              end else
              begin
                Edit3.SetFocus;
                InfoLab.Caption:='More than Order Qty.'+#39+'¶W¹L¤F½ü¦¸¼Æ¶q'+#39+'Don hang du so luong tua';
                edit3.Text:='';
              end;
            end;
          end else
          begin
            Edit3.SetFocus;
            InfoLab.Caption:='Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach';
            edit3.Text:='';
          end;
          active:=false;
    end;
    SMDDSS2.Active:=false;
  end;
end;

procedure TScanInBox.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TScanInBox.Button2Click(Sender: TObject);
begin
  SMZL.Active:=false;
  SMZL.Active:=true;
end;

procedure TScanInBox.SMZLCalcFields(DataSet: TDataSet);
begin
  with SMZL do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value;
  end;
end;

procedure TScanInBox.Button1Click(Sender: TObject);
var GBBH:string;
begin
  if Length(Edit5.Text)<10 then Exit;
  //¨ú±o¥~½c¼Ð¬O§_¦³¤À°ê®a§O¤£¦P
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select distinct YWCPLH.GBBH from SMDDSS');
    SQL.Add('Left join SMDD on SMDD.DDBH=SMDDSS.DDBH');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('Left join YWCPLH on YWCPLH.XieXing=DDZL.XieXing and YWCPLH.SheHao=DDZL.SheHao  and YWCPLH.GBBH=DDZL.DDGB ');
    SQL.Add('where SMDDSS.DDBH like '''+Edit5.Text+'%'' and YWCPLH.GBBH is not null');
    Active:=true;
    if RecordCount>0 then GBBH:=FieldByName('GBBH').AsString else GBBH:='NORMAL';
    Active:=false;
  end;
  //
  with RYQry do
  begin
    active:=false;
    sql.clear;
    sql.add('select SMDDSS.DDBH,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS,YWCPLH.InBoxBar,BDepartment.ID,BDepartment.DepName ');
    sql.add('from SMDDSS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    sql.add('left join YWCPLH on YWCPLH.XieXing=DDZL.XieXIng and YWCPLH.SheHao=DDZL.SheHao and YWCPLH.XXCC=SMDDSS.XXCC and YWCPLH.GBBH='''+GBBH+''' ');
    sql.add('where SMDDSS.DDBH like '+''''+Edit5.Text+'%'+'''');
    sql.add('and SMDD.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and SMDDSS.GXLB =''A''');
    if CheckBox.Checked=true then
    sql.add('and okCTS<CTS ');
    sql.Add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH ');
    active:=true;
  end;
  if RYQry.recordcount >0 then
  begin
    //±a¤JDepNO
    if edit2.Text='' then
    begin
      DepNo.active:=true;
      if DepNo.Locate('ID',copy(RYQry.FieldByName('ID').AsString,0,10),[]) then
      begin
        edit2.Text:=DepNo.fieldbyname('ID').Value;
        edit1.Text:=DepNo.fieldbyname('DepName').Value;
        edit3.text:='';
        DepGXLB:=DepNo.fieldbyname('GXLB').Value;
      end;
    end;
    //
    Edit1.Enabled:=true;
    Edit3.Enabled:=true;
    Button2.Enabled:=true;
    Button3.Enabled:=true;
    //
    Edit3.SetFocus;
    InfoLab.Caption:='';
  end else
  begin
    Edit3.SetFocus;
    InfoLab.Caption:='Don hang khong ton tai!';
    Edit3.Text:='';
    Edit5.Text:='';
    abort;
  end;
end;

procedure TScanInBox.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if RYQry.FieldByName('okCTS').value=RYQry.FieldByName('CTS').value*RYQry.FieldByName('Qty').value then
    DBGridEh2.Canvas.Font.Color:=ClBlue;
end;

procedure TScanInBox.Edit5DblClick(Sender: TObject);
begin
  ScanInBox_RY:=TScanInBox_RY.Create(self);
  ScanInBox_RY.Edit2.Text:=Edit1.Text;
  ScanInBox_RY.ShowModal();
  ScanInBox_RY.Free;
end;

procedure TScanInBox.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then Button1.Click;
end;

procedure TScanInBox.Button4Click(Sender: TObject);
begin
  ScanInBox_Dep:=TScanInBox_Dep.Create(self);
  ScanInBox_Dep.ShowModal();
  ScanInBox_Dep.Free;
end;

procedure TScanInBox.FormShow(Sender: TObject);
begin
 ReadSetting();
end;

procedure TScanInBox.DBGridEh2CellClick(Column: TColumnEh);
begin
      //var SelectedValue := DBGridEh1.DataSource.DataSet.FieldByName('DDBH').AsString;
  if DBGridEh2.DataSource.DataSet.FieldByName('GXLB').AsString  <>'A' then panel2.Visible:= false;
  // C?p nh?t truy v?n d? li?u c?a Grid2 d?a trên giá tr? dã ch?n
  Qtemp2.Close;
  Qtemp2.SQL.Text := 'select SMDDSS.DDBH, SMDDSS.GXLB, SMDDSS.XXCC, SMDDSS.okCTS from SMDDSS where SMDDSS.GXLB=''S'' and SMDDSS.DDBH = ''' + DBGridEh2.DataSource.DataSet.FieldByName('DDBH').AsString + ''' and SMDDSS.XXCC = ''' + DBGridEh2.DataSource.DataSet.FieldByName('XXCC').AsString + '''';
  Qtemp2.Open;
  with DBGridEh3 do
  columns[1].Width:=60;
end;

end.
