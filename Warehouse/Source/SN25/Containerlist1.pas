unit Containerlist1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, DBCtrls, ComCtrls, GridsEh,
  DBGridEh, Mask, Buttons, ExtCtrls,math, comobj,IniFiles;

type
  TContainerlist = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DBGrid4: TDBGridEh;
    ENDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    ENMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    BDelRec: TQuery;
    ENMasRKNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasZSBH: TStringField;
    ENMasZSNO: TStringField;
    ENMasDOCNO: TStringField;
    ENMasUSERID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasCFMID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    ENMasYN: TStringField;
    ENMasZSYWJC: TStringField;
    ENDetRKNO: TStringField;
    ENDetCLBH: TStringField;
    ENDetCGBH: TStringField;
    ENDetRKSB: TStringField;
    ENDetQty: TCurrencyField;
    ENDetPaQty: TFloatField;
    ENDetUSPrice: TFloatField;
    ENDetUSACC: TFloatField;
    ENDetCostID: TStringField;
    ENDetUSERID: TStringField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    ENDetYWPM: TStringField;
    ENDetDWBH: TStringField;
    ENDetoldQty: TCurrencyField;
    BBTransfer: TBitBtn;
    ENMasHGRK: TStringField;
    BDDelAll: TBitBtn;
    Label5: TLabel;
    Edit3: TEdit;
    ENDetVNPrice: TCurrencyField;
    ENDetVNACC: TCurrencyField;
    ENDetCWHL: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ENDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BDT6Click(Sender: TObject);
    procedure BBTransferClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDDelAllClick(Sender: TObject);
    
  private
    IsCheck_WH_CostID:string;
    { Private declarations }
    procedure ExportMasterData();
    procedure ExportDetailData();
    procedure ExportPlanFormatData();
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_CostID:string;
    WH_CostID_NK:string;
  end;

var
  Containerlist: TContainerlist;
  NDate:TDate;

implementation

uses main1, Containerlist_Dep1, Containerlist_VNS1, FunUnit, EntryList1;

{$R *.dfm}

procedure TContainerlist.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  WH_CostID:='3311';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_CostID:= MyIni.ReadString('ERP','WH_CostID','');
      WH_CostID_NK:= MyIni.ReadString('ERP','WH_CostID_NK','');
      IsCheck_WH_CostID:= MyIni.ReadString('ERP','IsCheck_WH_CostID','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(ENDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TContainerlist.FormDestroy(Sender: TObject);
begin
  Containerlist:=nil;
end;

procedure TContainerlist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TContainerlist.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TContainerlist.Button1Click(Sender: TObject);
begin
with ENMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select HG_INV.*,ZSZL.ZSYWJC  ');
    sql.add('from HG_INV');
    sql.add('left join ZSZL on HG_INV.ZSBH=ZSZL.ZSDH');
    sql.add('where HG_INV.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    if edit3.Text<>'' then
      sql.Add('      and DocNO like  '+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,HG_INV.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('      and HG_INV.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
      begin
        sql.Add('      and HG_INV.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by RKNO Desc');
    //memo1.Lines:=sql;
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  check.Checked:=true;
  //bbtransfer.Enabled:=true;
  ENDet.Active:=true;
  with Bdelrec do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from blimits where MKID='+''''+'05'+''' and FORMID like '+''''+'SN21'+'%'+'''');
    active:=true;
  end;
  if Bdelrec.RecordCount> 0 then
  begin
    bbtransfer.Enabled:=true;
  end else
  begin
    bbtransfer.Enabled:=false;
  end;
end;

procedure TContainerlist.FormCreate(Sender: TObject);
var i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBGrid3.Columns[6].picklist.add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-2;
  DTP2.date:=date;
  ReadIni();
end;

procedure TContainerlist.BB2Click(Sender: TObject);
begin
  with ENMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TContainerlist.BB3Click(Sender: TObject);
begin
  if ENDet.recordcount=0 then
  begin
    with ENMas do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end
        else
          begin
            showmessage('It is not yours,can not delete.');
          end;
    end;
  end
    else
      begin
        showmessage('Pls delete the Entry Detail first.')
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TContainerlist.BB4Click(Sender: TObject);
begin
  with ENMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TContainerlist.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;

  try
    ENDet.Active:=false;
    ENMas.first;
    for i:=1 to ENMas.RecordCount do
      begin
        case ENMas.updatestatus of
          usinserted:
            begin
              if ENMas.fieldbyname('ZSBH').isnull then
                begin
                  ENMas.delete;
                end
                 else
                   begin
                     with query1 do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select RKNO from HG_INV where RKNO like '+''''+y+m+'%'+'''');
                         sql.add('order by RKNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('RKNO').AsString;
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
                         sql.Clear;
                       end;
                     ENMas.edit;
                     ENMas.fieldbyname('RKNO').Value:=a;
                     ENMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     ENMas.FieldByName('userID').Value:=main.edit1.text;
                     ENMas.FieldByName('userdate').Value:=NDate;
                     ENMas.FieldByName('CFMID').Value:='NO';
                     ENMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if ENMas.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'HG_INV'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
                      sql.add(','+''''+''+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())');
                      execsql;
                      active:=false;
                    end;
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    if (ENMas.FieldByName('CFMID').value='NO')   then
                      begin
                        if NDate-ENMas.FieldByName('userdate').Value<=90  then
                          begin
                            if  ENMas.FieldByName('userID').Value=main.Edit1.Text then
                              begin
                                ENMas.edit;
                                ENMas.FieldByName('userID').Value:=main.edit1.text;
                                ENMas.FieldByName('userdate').Value:=Ndate;
                                upMas.apply(ukmodify);
                              end
                              else
                                begin
                                  showmessage('It is not yours, can not modify.');
                                end;
                          end
                          else
                            begin
                              showmessage('Date > 90, can not modify.');
                            end;
                      end
                      else
                        begin
                          showmessage('Already confirm. Can not modify.');
                        end;
                  end;
             end;
        end;
       ENMas.next;
      end;
  ENMas.active:=false;
  ENMas.cachedupdates:=false;
  ENMas.requestlive:=false;
  ENMas.active:=true;
  ENDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TContainerlist.BB6Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TContainerlist.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TContainerlist.BBTT1Click(Sender: TObject);
begin
  Containerlist_Dep:=TContainerlist_Dep.create(self);
  Containerlist_Dep.show;
end;

procedure TContainerlist.BD2Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  //20140418欄位為key允許新增
  dbgrid4.columns[5].ReadOnly:=false;
  dbgrid4.columns[6].ReadOnly:=false;
end;

procedure TContainerlist.BD3Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TContainerlist.BD4Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  //20140418欄位為key允許新增
  dbgrid4.columns[5].ReadOnly:=true;
  dbgrid4.columns[6].ReadOnly:=true;
end;

procedure TContainerlist.BD5Click(Sender: TObject);
var i:integer;
begin
  with ENDet do
  begin
    first;
    while not ENDet.Eof do
      begin
        if ENDet.FieldByName('Qty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        next;
      end;
  end;
  try
    ENDet.first;
    for i:=1 to ENDet.RecordCount do
      begin
        case ENDet.updatestatus of
          usinserted:
            begin
              if ENDet.fieldbyname('CLBH').isnull then
                begin
                  ENDet.delete;
                end
                else
                  begin
                    if EnMas.FieldByName('USERID').value=main.Edit1.Text then
                      begin
                        ENDet.edit;
                        ENDet.fieldbyname('RKNO').Value:=ENMas.fieldbyname('RKNO').Value;
                        if ENDet.FieldByName('PaQty').IsNull then
                          begin
                            ENDet.fieldbyname('PaQty').Value:=ENDet.fieldbyname('Qty').Value ;
                          end;
                        if not ENDet.FieldByName('USPrice').isnull then
                          begin
                            ENDet.FieldByName('USACC').Value:=trunc(ENDet.FieldByName('USPrice').Value*ENDet.FieldByName('Qty').Value*100+0.5)/100;
                          end;
                        if not ENDet.FieldByName('VNPrice').isnull then
                          begin
                            ENDet.FieldByName('VNACC').Value:=trunc(ENDet.FieldByName('VNPrice').Value*ENDet.FieldByName('Qty').Value+0.5);
                         end;
                        //ENDet.FieldByName('CostID').Value:='331';
                        if IsCheck_WH_CostID='Y' then
                        begin
                          ENDet.FieldByName('CostID').Value:=WH_CostID_NK;
                        end else
                        begin
                          ENDet.FieldByName('CostID').Value:=WH_CostID;
                        end;
                        ENDet.FieldByName('userID').Value:=main.edit1.text;
                        ENDet.FieldByName('userdate').Value:=NDate;
                        ENDet.FieldByName('YN').Value:='1';
                        {-------------------------}
                        //20150518
                        upDet.apply(ukinsert);
                      end  
                      else
                        begin
                          showmessage('It is not yours, can not modify.');
                        end;
                  end;
            end;
          usmodified:
             begin
               if EnMas.FieldByName('USERID').value=main.Edit1.Text then
                 begin
                  if ENDet.fieldbyname('YN').value='0'then
                    begin

                          {---------------------------------}
                          with BDelRec do
                            begin
                              active:=false;
                              sql.Clear;
                              sql.add('insert into BDelRec ');
                              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                              sql.add('values ('+''''+'HG_INVS'+''''+','+''''+EnDet.fieldbyname('RKNO').Value+'''');
                              sql.add(','+''''+Endet.fieldbyname('CLBH').Value+''''+','+''''+EnDet.fieldbyname('USERID').Value+''''+',');
                              sql.add(''''+main.Edit1.Text+''''+',getdate())');
                              execsql;
                              active:=false;
                            end;
                        UpDet.apply(ukdelete);
                        BDelRec.Active:=false;
                    end
                    else
                      begin
                        ENDet.edit;
                        if not ENDet.FieldByName('USPrice').isnull then
                          begin
                            ENDet.FieldByName('USACC').Value:=roundto(ENDet.FieldByName('USPrice').Value*ENDet.FieldByName('Qty').Value,-2);
                          end;
                        if not ENDet.FieldByName('VNPrice').isnull then
                          begin
                            ENDet.FieldByName('VNACC').Value:=roundto(ENDet.FieldByName('VNPrice').Value*ENDet.FieldByName('Qty').Value,0);
                          end;
                        ENDet.FieldByName('userID').Value:=main.edit1.text;
                        ENDet.FieldByName('userdate').Value:=NDate;
                        upDet.apply(ukmodify);
                     end;
                 end
                 else
                   begin
                     showmessage(' It is not yours, can not modify.');
                   end;
             end;
        end;
        ENDet.next;
      end;
  ENDet.active:=false;
  ENDet.cachedupdates:=false;
  ENDet.requestlive:=false;
  ENDet.active:=true;
  bb6.enabled:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TContainerlist.BD6Click(Sender: TObject);
begin
  with ENDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TContainerlist.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TContainerlist.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ENMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;
end;

procedure TContainerlist.ENDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDDelAll.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if (((NDate-ENMas.FieldByName('USERDATE').value)>90) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BDDelAll.Enabled:=false;
  end;
  if ENMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BDDelAll.Enabled:=false;
  end;   
  if ENMas.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BDDelAll.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BDDelAll.Enabled:=false;
  end;
end;

procedure TContainerlist.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TContainerlist.BBTT2Click(Sender: TObject);
begin
   Containerlist_VNS:=TContainerlist_VNS.create(self);
   Containerlist_VNS.EDIT1.text:=Containerlist.EnMas.fieldbyname('ZSBH').AsString;
   Containerlist_VNS.EDIT2.text:=Containerlist.EnMas.fieldbyname('ZSNO').AsString;
   Containerlist_VNS.button1click(nil);
   Containerlist_VNS.Show;
end;



procedure TContainerlist.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ENDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
  end;

  if ENDet.FieldByName('RKNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
  end;
end;
//
procedure TContainerlist.ExportDetailData();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  Endet.active  then
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
          for   i:=0   to   Endet.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Endet.fields[i].FieldName;
            end;

          Endet.First;
          j:=2;
          while   not   Endet.Eof   do
            begin
              for   i:=0   to  Endet.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Endet.Fields[i].Value;
              end;
            Endet.Next;
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
//
//HG_INVS列表出貨
procedure TContainerlist.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    h,i,StartP,EndP:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    //
    IsHead:boolean;
    CLBH_Qty:double;
    CLBH_S,CLBH_E:integer;
    CLBH_Prior,CLBH_Next:String;
begin
    if  Endet.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        IsHead:=false;
        ENMas.disablecontrols;
        bm:=ENMas.getbookmark;
        bookmarklist:=DBGrid3.selectedrows;
        if bookmarklist.count=0 then DBGrid3.SelectedRows.CurrentRowSelected:= true;
        if bookmarklist.count>0 then
        begin
          for h:=0 to bookmarklist.count-1 do
          begin
            ENMas.gotobookmark(pointer(bookmarklist[h]));
            with Query1 do
            begin
              Active:=false;
              sql.Clear;
              sql.Add('Select DDZL.BUYNO,HG_INVS.CGBH,DDZL.Article,HG_INVS.CLBH,CLZL.YWPM,HG_INVS.PaQty as CGQty,HG_INVS.Qty,HG_INV.ZSNO,HG_INV.DOCNO,HG_Sum.MQty as Total from HG_INVS ');
              sql.Add('inner join HG_INV on HG_INV.RKNO=HG_INVS.RKNO ');
              sql.Add('left join DDZL on DDZL.DDBH=HG_INVS.CGBH ');
              sql.Add('left join CLZL on CLZL.CLDH=HG_INVS.CLBH ');
              sql.Add('left join (Select Sum(Qty) as MQty,CLBH from HG_INVS where HG_INVS.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' Group by CLBH ) HG_Sum on HG_Sum.CLBH=HG_INVS.CLBH ');
              sql.Add('where HG_INVS.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' order by HG_INVS.CLBH,HG_INVS.CGBH');
              Active:=true;
            end;
            //欄位名稱
            if IsHead=false then
            begin
              WorkBook:=eclApp.workbooks.Add;
              for   i:=0   to   Query1.fieldcount-1   do
              begin
                eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
              end;
              StartP:=2;
              EndP:=2;
              IsHead:=true;
            end;

            Query1.First;
            while   not   Query1.Eof   do
            begin
                for   i:=0   to  Query1.fieldcount-1  do
                begin
                  eclApp.Cells(EndP,i+1):=Query1.Fields[i].Value;
                end;
              Query1.Next;
              inc(EndP);
            end;
            //合併cells
            eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[StartP,8],eclApp.workbooks[1].sheets[1].Cells[EndP-1,8]].merge; //合併
            eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[StartP,9],eclApp.workbooks[1].sheets[1].Cells[EndP-1,9]].merge; //合併
            eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[1,1],eclApp.workbooks[1].sheets[1].Cells[EndP-1,Query1.fieldcount]].Borders.weight:=2;
            Query1.Active:=false;
            //材料數量合併
            CLBH_Prior:='';
            CLBH_Next:='';
            CLBH_S:=0;
            CLBH_E:=0;
            for i:=StartP to EndP-1 do
            begin
              if CLBH_Prior='' then
              begin
               CLBH_S:=i;
               CLBH_Prior:=eclApp.Cells[i,4];
              end;
              CLBH_Next:=eclApp.Cells[i,4];
              if CLBH_Prior<>CLBH_Next then
              begin
                //材料總數量
                eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[CLBH_S,10],eclApp.workbooks[1].sheets[1].Cells[CLBH_E,10]].merge; //合併
                //重新累計
                CLBH_S:=i;
                CLBH_E:=i;
              end else
              begin
                CLBH_E:=i;
                //最後一筆
                if i=EndP-1 then
                  eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[CLBH_S,10],eclApp.workbooks[1].sheets[1].Cells[CLBH_E,10]].merge; //合併
              end;
              CLBH_Prior:=CLBH_Next;
            end;
            StartP:=EndP;
          end;//for
        end;//if
        ENMas.gotobookmark(bm);
        ENMas.freebookmark(bm);
        ENMas.enablecontrols;
        //
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
//
procedure TContainerlist.BDT6Click(Sender: TObject);
begin
  ExportDetailData();
end;

procedure TContainerlist.ExportMasterData();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if EnMas.Active then
    begin
      if EnMas.recordcount=0 then
        begin
          showmessage('No record.');
          abort;
        end;
    end
    else
      begin
        showmessage('No record.');
        abort;
      end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add; 
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   EnMas.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
      end;
    EnMas.First;
    j:=2;
    while   not  EnMas.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        EnMas.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    EnDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TContainerlist.BBTransferClick(Sender: TObject);
var y,m,TRKNO:string;
    i,j:integer;
    date,RKNO:string;
    IsSuccess:boolean;
begin
  IsSuccess:=false;
  if messagedlg('Do you really want to transfer?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    // check ENDet
    if ENDet.recordcount=0 then
    begin
      showmessage('No data detail, can not transfer!');
      abort;
    end;
    // check transfer
    if ((ENMas.FieldByName('HGRK').IsNull=false)  and (ENMas.FieldByName('HGRK').asstring<>'')) then
    begin
      if messagedlg('Already transfer!,Do you really want to transfer again?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('Select RKNO,CFMID from KCRK where RKNO='''+ENMas.FieldByName('HGRK').asstring+''' ');
          active:=true;
          if FieldByName('CFMID').AsString<>'NO' then
          begin
            Showmessage('Already ConFirm ,Can''t transfer again ');
            abort;
          end else
          begin
            if DBgrid3.SelectedRows.Count=0 then DBgrid3.SelectedRows.CurrentRowSelected:= true;
            TRKNO:=ENMas.FieldByName('HGRK').asstring;
            RKNO:=EnMas.fieldbyname('RKNO').AsString;
            date:=formatdatetime('yyyy/mm/dd hh:mm:ss',now);
            //KCRK
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.add('Delete from KCRK where RKNO='''+TRKNO+''' ');
              sql.Add('insert into KCRK (RKNO,GSBH,CKBH,ZSBH,ZSNO,UserID,UserDate,CFMID,CFMDATE,YN,SB,DOCNO,SampleExPrint,EX_ACC_CFMID,EX_ACC_CFMDate,QCID,QCDate,MeMo,PurConfirm,Payment,Charge,Charge_VN,Charge_Reason,HGLB,SCNO,YN_Date,SFL)');
              sql.Add('select  '''+TRKNO+''' as RKNO,hg_inv.GSBH,HG_INV.CKBH,HG_INV.ZSBH,HG_INV.ZSNO,'''+main.edit1.text+''' as UserID,'''+date+''' as UserDate,');
              sql.Add('HG_INV.CFMID,NULL,HG_INV.YN,NULL as SB ,HG_INV.DOCNO,NULL as SampleExPrint,NULL as EX_ACC_CFMID,NULL as EX_ACC_CFMDate,');
              sql.Add('NULL as QCID,NULL as QCDate,NULL as MeMo,NULL as PurConfirm,NULL as Payment,NULL as Charge,NULL as Charge_VN,NULL as Charge_Reson,''NK'' as HGLB,NULL as SCNO, NULL as YN_Date,''THU MUA'' as SFL  from hg_inv');
              sql.Add('where HG_INV.RKNO='''+RKNO+'''');
              //funcObj.WriteErrorLog(sql.Text);
              execsql;
            end;
            // KCRKS
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.add('Delete from KCRKS where RKNO='''+TRKNO+''' ');
              sql.Add('insert into KCRKS (RKNO,CLBH,CGBH,RKSB,Qty,PaQty,USPrice,USACC,VNPrice,VNACC,CWHL,CostID,UserID,UserDate,YN,FKZT,ExchACC');
              sql.Add(',invno,USPrice_2,USACC_2,VNPrice_2,VNACC_2,DOCNO,VNPriceCT,RKMEMO,CNO,MEMO,HandCarry_USPrice,HandCarry_USACC,Charge,Charge_VN,Charge_Reason,SurCharge,SurCharge_VN,SurCharge_Reason,Flag,GSBH)');
              sql.add('select '''+TRKNO+''' as RKNO,HG_INVS.CLBH,HG_INVS.CGBH,HG_INVS.RKSB,HG_INVS.Qty,HG_INVS.PaQty,HG_INVS.USPrice,HG_INVS.USACC,HG_INVS.VNPrice,HG_INVS.VNACC,');
              sql.Add('HG_INVS.CWHL,HG_INVS.CostID,'''+main.edit1.text+''' AS UserID,'''+date+''' as UserDate,HG_INVS.YN,NULL AS FKZT, NULL AS ExchACC,NULL as invno, NULL as USPrice_2,');
              sql.Add('NULL as USACC_2,NULL as VNPrice_2, NULL as VN_ACC2,'''+EnMas.fieldbyname('ZSNO').Value+''' as DOCNO, NULL as VNPriceCT, NULL as RKMEMO,CLHG.HGBH as CNO,NULL as MEMO, NULL as HandCarry_USPrice,');
              sql.Add('NULL as HandCarry_USACC, NUll as Charge, NULL as Charge_VN,NULL as Charge_Reason, NUll as SurCharge,NUll as SurCharge_VN,NULL as SurCharge_Reason,NULL as Flag,NULL as GSBH FROM HG_INVS left join CLHG on CLHG.CLBH = HG_INVS.CLBH');
              sql.Add('where HG_INVS.RKNO='''+RKNO+'''');
              //funcObj.WriteErrorLog(sql.Text);
              execsql;
            end;
          end;
          Active:=false;
          showmessage('Succeed');
          IsSuccess:=true;
        end;
      end;
      //
    end else
    begin
      with DBgrid3.DataSource.DataSet do
      begin
         if DBgrid3.SelectedRows.Count=0 then DBgrid3.SelectedRows.CurrentRowSelected:= true;
         for j:=0 to DBgrid3.SelectedRows.Count-1 do
         begin
            GotoBookmark(Pointer(DBgrid3.SelectedRows.Items[j]));
            RKNO:=EnMas.fieldbyname('RKNO').AsString;
            // RKNO
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
              active:=true;
              y:=fieldbyname('FY').asstring;
              m:=fieldbyname('FM').asstring;
              NDate:=fieldbyname('NDate').Value;
              active:=false;
            end;
            if length(m)<2 then
              m:='0'+m;
            with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select RKNO from KCRK where RKNO like '+''''+y+m+'%'+'''');
               sql.add('order by RKNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 TRKNO:=fieldbyname('RKNO').AsString;
                 TRKNO:=copy(TRKNO,7,5);
                 TRKNO:=inttostr(strtoint(TRKNO)+1);
                 while length(TRKNO)<5 do
                 begin
                   TRKNO:='0'+TRKNO;
                 end;
               end else
               begin
                 TRKNO:='00001';
               end;
               TRKNO :=y+m+TRKNO;
               active:=false;
               sql.Clear;
              end;
            //
            date:=formatdatetime('yyyy/mm/dd hh:mm:ss',now);
            //KCRK
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('insert into KCRK (RKNO,GSBH,CKBH,ZSBH,ZSNO,UserID,UserDate,CFMID,CFMDATE,YN,SB,DOCNO,SampleExPrint,EX_ACC_CFMID,EX_ACC_CFMDate,QCID,QCDate,MeMo,PurConfirm,Payment,Charge,Charge_VN,Charge_Reason,HGLB,SCNO,YN_Date,SFL)');
              sql.Add('select  '''+TRKNO+''' as RKNO,hg_inv.GSBH,HG_INV.CKBH,HG_INV.ZSBH,HG_INV.ZSNO,'''+main.edit1.text+''' as UserID,'''+date+''' as UserDate,');
              sql.Add('HG_INV.CFMID,NULL,HG_INV.YN,NULL as SB ,HG_INV.DOCNO,NULL as SampleExPrint,NULL as EX_ACC_CFMID,NULL as EX_ACC_CFMDate,');
              sql.Add('NULL as QCID,NULL as QCDate,NULL as MeMo,NULL as PurConfirm,NULL as Payment,NULL as Charge,NULL as Charge_VN,NULL as Charge_Reson,''NK'' as HGLB,NULL as SCNO, NULL as YN_Date,''THU MUA'' as SFL  from hg_inv');
              sql.Add('where HG_INV.RKNO='''+RKNO+'''');
              //funcobj.WriteErrorLog(sql.Text);
              execsql;
            end;
            // KCRKS
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('insert into KCRKS (RKNO,CLBH,CGBH,RKSB,Qty,PaQty,USPrice,USACC,VNPrice,VNACC,CWHL,CostID,UserID,UserDate,YN,FKZT,ExchACC');
              sql.Add(',invno,USPrice_2,USACC_2,VNPrice_2,VNACC_2,DOCNO,VNPriceCT,RKMEMO,CNO,MEMO,HandCarry_USPrice,HandCarry_USACC,Charge,Charge_VN,Charge_Reason,SurCharge,SurCharge_VN,SurCharge_Reason,Flag,GSBH)');
              sql.add('select '''+TRKNO+''' as RKNO,HG_INVS.CLBH,HG_INVS.CGBH,HG_INVS.RKSB,HG_INVS.Qty,HG_INVS.PaQty,HG_INVS.USPrice,HG_INVS.USACC,HG_INVS.VNPrice,HG_INVS.VNACC,');
              sql.Add('HG_INVS.CWHL,HG_INVS.CostID,'''+main.edit1.text+''' AS UserID,'''+date+''' as UserDate,HG_INVS.YN,NULL AS FKZT, NULL AS ExchACC,NULL as invno, NULL as USPrice_2,');
              sql.Add('NULL as USACC_2,NULL as VNPrice_2, NULL as VN_ACC2,'''+EnMas.fieldbyname('ZSNO').Value+''' as DOCNO, NULL as VNPriceCT, NULL as RKMEMO,CLHG.HGBH as CNO,NULL as MEMO, NULL as HandCarry_USPrice,');
              sql.Add('NULL as HandCarry_USACC, NUll as Charge, NULL as Charge_VN,NULL as Charge_Reason, NUll as SurCharge,NUll as SurCharge_VN,NULL as SurCharge_Reason,NULL as Flag,NULL as GSBH FROM HG_INVS left join CLHG on CLHG.CLBH = HG_INVS.CLBH');
              sql.Add('where HG_INVS.RKNO='''+RKNO+'''');
              //funcobj.WriteErrorLog(sql.Text);
              execsql;
            end;
            // update HGRK
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('update HG_INV');
              sql.Add('set HGRK='''+TRKNO+'''');
              sql.Add('where RKNO='''+RKNO+'''');
              execsql;
            end;
          end;
          showmessage('Succeed');
          IsSuccess:=true;
      end;
    end;
    if IsSuccess=true then
    begin
      // show N211 Form
      if Entrylist<>nil then
      begin
        Entrylist.show;
        Entrylist.windowstate:=wsmaximized;
      end else
      begin
        Entrylist:=TEntrylist.create(self);
        Entrylist.show;
      end;
      Entrylist.Edit1.Text:=TRKNO;
      Entrylist.Check.Checked:=false;
      Entrylist.Button1Click(nil);
    end;
  end;
end;

procedure TContainerlist.DBGrid3DblClick(Sender: TObject);
begin
  if  ENMas.Active then
  begin
    if  (ENMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TContainerlist.bbt6Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Export Plan Department Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportPlanFormatData();
  end else
  begin
    ExportMasterData();
  end;
end;

procedure TContainerlist.BDDelAllClick(Sender: TObject);
var i:integer;
begin
  if EnMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with EnDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    EnDet.First;
     for i:=1 to EnDet.RecordCount do
      begin
      edit;
      fieldbyname('YN').Value:='0';
      EnDet.next;
      end;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

end.
