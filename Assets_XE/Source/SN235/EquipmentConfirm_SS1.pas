unit EquipmentConfirm_SS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DBTables, DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentConfirm_SS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Qtemp: TQuery;
    DelMas: TQuery;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    DelDet: TQuery;
    DS2: TDataSource;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasLB: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelMasDepName: TStringField;
    TSCD: TQuery;
    UpdateSQL1: TUpdateSQL;
    DelDetLLNO: TStringField;
    DelDetTSID: TStringField;
    DelDetPARAMENT1: TStringField;
    DelDetVALUE1: TStringField;
    DelDetPARAMENT2: TStringField;
    DelDetVALUE2: TStringField;
    DelDetPARAMENT3: TStringField;
    DelDetVALUE3: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetCOLUMN1: TStringField;
    DelDetCOLUMN2: TStringField;
    DelDetCOLUMN3: TStringField;
    DelDetSBBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDepName: TStringField;
    DelDetDepID_Memo: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetNSX: TStringField;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    DelDetPARAMENT4: TStringField;
    DelDetVALUE4: TStringField;
    DelDetCOLUMN4: TStringField;
    Splitter1: TSplitter;
    DelDetTSBH: TStringField;
    DelDetQty: TFloatField;
    DelDetPARAMENT5: TStringField;
    DelDetVALUE5: TStringField;
    DelDetCOLUMN5: TStringField;
    DelDetPARAMENT6: TStringField;
    DelDetVALUE6: TStringField;
    DelDetCOLUMN6: TStringField;
    DelMasYWSM: TStringField;
    DelMasZWSM: TStringField;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DBGrid2ColumnShow();
  public
    { Public declarations }
  end;

var
  EquipmentConfirm_SS: TEquipmentConfirm_SS;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

//異動單 Column Show or Not
procedure TEquipmentConfirm_SS.DBGrid2ColumnShow();
var i:integer;
begin
  //
  for i:=5 to 22 do
  begin
    DBGrid2.Columns[i].Visible:=false;
    DBGrid2.Columns[i].ReadOnly:=true;
    DBGrid2.Columns[i].PickList.Clear;
    DBGrid2.Columns[13].Width:=115;
  end;
  //
  with EquipmentConfirm_SS.DelMas do
  begin
    if DelMas.fieldbyname('LB').AsString ='BBBBBBBBBB' then  //Bao Phe
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.columns[7].ButtonStyle:=cbsnone;
      DBGrid2.Columns[7].Title.Caption:='報廢|Bo Phe';
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].Title.Caption:='報廢原因|Nguyen nhan';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end else
    if DelMas.fieldbyname('LB').AsString ='LLLLLLLLLL' then   //Chuyen vi tri
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='部門|Don vi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end else
    if DelMas.fieldbyname('LB').AsString ='MMMMMMMMMM' then  //Cho Muon
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='廠別|Xuong/Don vi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='起始日|Ngay Bat Dau';
      DBGrid2.Columns[12].Visible:=true;
      DBGrid2.Columns[12].Title.Caption:='結束日|Ngay Ket Thuc';
      DBGrid2.Columns[15].Visible:=true;
      DBGrid2.Columns[15].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[22].Visible:=true;
      DBGrid2.Columns[22].Title.Caption:='聯絡人|nguoi lien lac';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='HHHHHHHHHH' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='倉庫|ton kho';
      DBGrid2.columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].Title.Caption:='借出歸還日|Ngay Hoan Tra Thuc Te';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='SSSSSSSSSS' then  //Chuyen vi tri
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='新位置|Vi chi moi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='RRRRRRRRRR' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='倉庫|ton kho';
      DBGrid2.columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].Title.Caption:='歸還入庫日|Ngay Hoan Tra Thuc Te';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='DDDDDDDDDD' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='故障原因|Nguyen do';
      //工務輸入報修
      DBGrid2.Columns[10].Visible:=true;
      DBGrid2.Columns[10].ReadOnly:=false;
      DBGrid2.Columns[10].Title.Caption:='送廠內外|ngoai ra';
      DBGrid2.Columns[10].PickList.add('1');
      DBGrid2.Columns[10].PickList.add('2');
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].ReadOnly:=false;
      DBGrid2.Columns[13].Title.Caption:='維修處理|ket qua';
      DBGrid2.Columns[13].Width:=200;
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='FFFFFFFFFF' then  //Cho Muon
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='廠別|Xuong/Don vi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='起始日|Ngay Bat Dau';
      DBGrid2.Columns[12].Visible:=true;
      DBGrid2.Columns[12].Title.Caption:='結束日|Ngay Ket Thuc';
      DBGrid2.Columns[15].Visible:=true;
      DBGrid2.Columns[15].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[22].Visible:=true;
      DBGrid2.Columns[22].Title.Caption:='聯絡人|nguoi lien lac';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='TTTTTTTTTT' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='倉庫|ton kho';
      DBGrid2.columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].Title.Caption:='借入歸還日|Ngay Hoan Tra Thuc Te';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    //
    if DelMas.fieldbyname('LB').AsString ='CCCCCCCCCC' then  //Thay doi DepIDMemo
    begin
      DBGrid2.Columns[6].Visible:=true;
      DBGrid2.Columns[6].Title.Caption:='備註|DepIDMemo';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
  end;
  //
end;
//

procedure TEquipmentConfirm_SS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEquipmentConfirm_SS.FormDestroy(Sender: TObject);
begin
  EquipmentConfirm_SS:=nil;
end;

procedure TEquipmentConfirm_SS.FormCreate(Sender: TObject);
var i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Ndate-30;
  DTP2.Date:=Ndate;
end;

procedure TEquipmentConfirm_SS.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    DelDet.Active:=false;
    TSCD.Active:=false;
    Active:=false;
    sql.Clear;
    sql.add('select TSCD_KCSS.*,BDepartment.DepName,CAST(dbo.fSignsToNoSigns(TSCD_LB.YWSM) AS VARCHAR(200)) as YWSM,TSCD_LB.ZWSM  ');
    sql.add('from TSCD_KCSS ');
    sql.add('left join TSCD_BDepartment BDepartment on TSCD_KCSS.DepID=BDepartment.ID  ');
    sql.Add('left join TSCD_LB on TSCD_LB.LB=TSCD_KCSS.LB ');
    sql.add('where 1=1 and ISNULL(flowflag,'''')<>''X'' ');
    if CheckBox1.Checked=false then
    SQL.Add(' and TSCD_KCSS.CFMID=''NO'' ');
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCSS.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and TSCD_KCSS.LLNO like '+''''+edit1.Text+'%'+'''');
    //sql.add('and BDepartment.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by TSCD_KCSS.LLNO  ');
    //funcObj.WriteErrorLog(SQL.Text);
    active:=true;
  end;
  if delmas.RecordCount>0 then
  begin
    DelDet.Active:=true;
  end;
end;

procedure TEquipmentConfirm_SS.Button2Click(Sender: TObject);
var i:integer;
begin
  if DelMas.FieldByName('CFMID').AsString<>'NO' then
  begin
    Showmessage('Already Confirm,can''t confirm again ');
    Exit;
  end;

  try
    if DelDet.RecordCount>0  then
    begin
      with DelDet do
      begin
        edit;
        UPdet.apply(ukmodify);
        active:=false;
        active:=true;
      end;
    end;
    //
    if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      DelDet.First;
      if DelDet.RecordCount>0  then
      begin
        while not DelDet.Eof do
        begin
          //20230216紀錄日期
          with Qtemp do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Insert into TSCD_History ');
            SQL.Add('Select GetDate() as SYSDate,TSCD.* from TSCD where TSID='''+DelDet.fieldbyname('TSID').AsString+''' ');
            Execsql;
          end;
          //
          with TSCD do
          begin
            active:=false;
            sql.Clear;
            sql.add('Update TSCD Set ');
            for i:=0 to 5 do  //5 cot
            begin
                if  DelDet.Fields[2+i].AsString<>'' then
                  sql.add(DelDet.Fields[2+i].AsString+'='''+DelDet.Fields[8+i].AsString+''', ');
            end;
            //借出歸還,退回清空借出
            if DelMas.fieldbyname('LB').AsString='HHHHHHHHHH' then  sql.add('JDTS=null, JDBDate=null , JDEDATE=null, ');
            //借入歸還,退回清空借出
            if DelMas.fieldbyname('LB').AsString='TTTTTTTTTT' then  sql.add('JRTS=null, JRBDate=null , JREDATE=null, ');
            //
            sql.add('LLNO='''+DelDet.fieldbyname('LLNO').AsString+''',CFMID_LL='''+main.Edit1.Text+''''+',CFMDATE_LL= getdate() ');
            SQL.Add('where TSID='''+DelDet.fieldbyname('TSID').AsString+''' ');
            //funcObj.WriteErrorLog(sql.Text);
            Execsql;
          end;
          DelDet.Next;
        end;
      end;
      with DelMas do
      begin
        edit;
        fieldbyname('CFMID').Value:= main.edit1.text;
        fieldbyname('CFMDATE').Value:=Ndate;
        //fieldbyname('YN').Value:='5';
        UPMas.Apply(ukmodify);
        active:=false;
        active:=true;
      end;
      showmessage('Succeed.');
    end;
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEquipmentConfirm_SS.DelDetAfterOpen(DataSet: TDataSet);
begin
  DBGrid2ColumnShow();
end;

end.
