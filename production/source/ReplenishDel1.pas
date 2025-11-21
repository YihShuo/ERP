unit ReplenishDel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, ComCtrls, DB,
  DBTables, Menus,comobj;

type
  TReplenishDel = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel5: TPanel;
    Label5: TLabel;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    BLMas: TQuery;
    DS1: TDataSource;
    BLreason: TQuery;
    UpMas: TUpdateSQL;
    DS2: TDataSource;
    BLMasBLNO: TStringField;
    BLMasZLBH: TStringField;
    BLMasGXLB: TStringField;
    BLMasGSBH: TStringField;
    BLMasQty: TCurrencyField;
    BLMasBLACC: TCurrencyField;
    BLMasBLDate: TDateTimeField;
    BLMasUSERDate: TDateTimeField;
    BLMasUSERID: TStringField;
    BLMasYN: TStringField;
    Upreason: TUpdateSQL;
    DBGridEh3: TDBGridEh;
    BLDet: TQuery;
    DS3: TDataSource;
    Updet: TUpdateSQL;
    Qtemp: TQuery;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    BLreasonBLNO: TStringField;
    BLreasonYYBH: TStringField;
    BLreasonDepNO: TStringField;
    BLreasonQty: TCurrencyField;
    BLreasonUSERDate: TDateTimeField;
    BLreasonUSERID: TStringField;
    BLreasonYN: TStringField;
    BLreasonDepName: TStringField;
    BLreasonYWSM: TStringField;
    BLreasonZWSM: TStringField;
    BLDetZLBH: TStringField;
    BLDetCLBH: TStringField;
    BLDetCLSL: TFloatField;
    BLDetYWPM: TStringField;
    BLDetDWBH: TStringField;
    BLDetQty: TCurrencyField;
    BLDetQtyOld: TCurrencyField;
    BDelRec: TQuery;
    BLMasCFMDate: TDateTimeField;
    BLMasCFMID: TStringField;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    BLDetBWBH: TStringField;
    BLDetBWYW: TStringField;
    BLMaszlQty: TIntegerField;
    BLDetOldPer: TFloatField;
    BLDetNowPer: TFloatField;
    BLDetBLNO: TStringField;
    BLDetUSPrice: TCurrencyField;
    BLDetUSERDate: TDateTimeField;
    BLDetUSERID: TStringField;
    BLDetYN: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    CBX4: TComboBox;
    Button1: TButton;
    Check: TCheckBox;
    POP2: TPopupMenu;
    B2: TMenuItem;
    B1: TMenuItem;
    B3: TMenuItem;
    BLDetDFL: TStringField;
    BLDetZMLB: TStringField;
    ChildMatCK: TCheckBox;
    BLDetZSYWJC: TStringField;
    BLDetBWZW: TStringField;
    BLDetZSDH: TStringField;
    TS3: TTabSheet;
    DBGridEh4: TDBGridEh;
    BLPurMat: TQuery;
    DS4: TDataSource;
    BLPurMatCLBH: TStringField;
    BLPurMatYWPM: TStringField;
    BLPurMatZWPM: TStringField;
    BLPurMatDWBH: TStringField;
    BLPurMatQty: TCurrencyField;
    BLPurMatCSBH: TStringField;
    BLPurMatZSYWJC: TStringField;
    BLPurMatPayVN: TStringField;
    BLPurMatCQDH: TStringField;
    BDT7: TBitBtn;
    BLPurMatZLBH: TStringField;
    BLPurMatARTICLE: TStringField;
    BLPurMatArtName: TStringField;
    BLDetMJBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BLreasonAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure BLDetAfterOpen(DataSet: TDataSet);
    procedure BLMasAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure BLDetNewRecord(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BLDetCalcFields(DataSet: TDataSet);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure ChildMatCKClick(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChildMaterial(BLNO:string;BWBH:string;MJBH:String;ZLBH:String);
  public
    { Public declarations }
  end;

var
  ReplenishDel: TReplenishDel;
  NDate:TDate;

implementation

uses main1, ReplenishDel_ZL1, ReplenishDel_Dep1, ReplenishDel_YY1,
     ReplenishDel_Print1,FunUnit;

{$R *.dfm}

procedure TReplenishDel.FormDestroy(Sender: TObject);
begin
  ReplenishDel:=nil;
end;

procedure TReplenishDel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS1;
    panel1.Visible:=true;
    panel5.Visible:=false;
    action:=canone;
  end else
  begin
      if BD5.enabled then
      begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS2;
          panel1.Visible:=false;
          panel5.Visible:=true;
          action:=canone;
      end else
      begin
        action:=Cafree;
      end;
  end;
end;

procedure TReplenishDel.FormCreate(Sender: TObject);
var i:integer;
begin

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX4.Items.Add(fieldbyname('GX').asstring);
      dbgrideh2.Columns[3].picklist.Add(fieldbyname('GX').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;   
    DTP1.date:=NDate-2;
    DTP2.date:=NDate;
  end;
  PC1.ActivePage:=TS1;
end;

procedure TReplenishDel.Button1Click(Sender: TObject);
begin
  with BLMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCBL.*,DDZL.Pairs as zlQty from SCBL ');
    sql.add('left join DDZL on DDZL.ZLBH=SCBL.ZLBH');
    sql.add('where convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between ');
    sql.add('      '''+formatdatetime('yyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and SCBL.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and SCBL.GSBH='+''''+main.edit2.text+'''');
    if CBX4.text<>'All' then
    begin
      sql.add('       and SCBL.GXLB='+''''+CBX4.Text+'''');
    end;
    if Check.Checked then
    begin
        sql.Add('and SCBL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by SCBL.BLNO DESC ');
    active:=true;
  end;
  BLreason.active:=true;
  BLDet.Active:=true;
  BLPurMat.Active:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
end;

procedure TReplenishDel.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TReplenishDel.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TReplenishDel.BB1Click(Sender: TObject);
begin 
 Edit1.SetFocus;   
end;

procedure TReplenishDel.DBGridEh2DblClick(Sender: TObject);
begin
 {
 if BLMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
    panel1.Visible:=false;
    panel5.Visible:=true;
  end;   }
end;

procedure TReplenishDel.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   DBGrideh2DblClick(nil);
end;

procedure TReplenishDel.BBT1Click(Sender: TObject);
begin
  BLMas.First;
end;

procedure TReplenishDel.BBT2Click(Sender: TObject);
begin
  BLMas.prior;
end;

procedure TReplenishDel.BBT3Click(Sender: TObject);
begin
  BLMas.next;
end;

procedure TReplenishDel.BBT4Click(Sender: TObject);
begin
  BLMas.last;
end;

procedure TReplenishDel.BB2Click(Sender: TObject);
begin

  with BLMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrideh2.columns[2].ButtonStyle:=cbsEllipsis;
  N1.enabled:=false;
  N2.enabled:=false;
  N3.enabled:=false;
  N4.enabled:=false;
  N5.enabled:=false;
end;

procedure TReplenishDel.BB3Click(Sender: TObject);
begin
  if BLReason.recordcount=0 then
  begin
    with BLMas do
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrideh2.columns[2].ButtonStyle:=cbsEllipsis;
  N1.enabled:=false;
  N2.enabled:=false;
  N3.enabled:=false;
  N4.enabled:=false;
  N5.enabled:=false;
end;

procedure TReplenishDel.BB4Click(Sender: TObject);
begin

  with BLMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrideh2.columns[2].ButtonStyle:=cbsEllipsis;
  N1.enabled:=false;
  N2.enabled:=false;
  N3.enabled:=false;
  N4.enabled:=false;
  N5.enabled:=false;
end;

procedure TReplenishDel.DBGridEh2EditButtonClick(Sender: TObject);
begin
  ReplenishDel_ZL:=TReplenishDel_ZL.Create(self);
  ReplenishDel_ZL.show;
end;

procedure TReplenishDel.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  BLDet.Active:=false;
  BLreason.Active:=false;
  BLMas.First;
  while not BLMas.Eof do
  begin
    if  BLMas.FieldByName('ZLBH').IsNull or BLMas.FieldByName('GXLB').IsNull  then
      begin
        showmessage('Pls key order No first.');
        abort;
      end;
    BLMas.next;
  end;
  try
    BLMas.first;
    for i:=1 to BLMas.RecordCount do
      begin
        case BLMas.updatestatus of
          usinserted:
            begin
              with Qtemp do    //計算領料單流水號
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select BLNO from SCBL where BLNO like '+''''+y+m+'%'+'''');
                  sql.add('order by BLNO');
                  active:=true;
                  if recordcount >0 then
                    begin
                      last;
                      a:=fieldbyname('BLNO').AsString;
                      a:=copy(a,7,4);
                      a:=inttostr(strtoint(a)+1);
                      while length(a)<4 do
                        begin
                          a:='0'+a;
                        end;
                    end
                    else
                      begin
                        a:='0001';
                      end;
                  a :=y+m+a;
                  active:=false;
                end;
              BLMas.edit;
              BLMas.fieldbyname('BLNO').Value:=a;
              BLMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
              BLMas.FieldByName('userID').Value:=main.edit1.text; 
              BLMas.FieldByName('BLDate').Value:=Ndate;;
              BLMas.FieldByName('userdate').Value:=Ndate;
              BLMas.fieldbyname('BLACC').Value:=0;  
              BLMas.fieldbyname('Qty').Value:=0;
              BLMas.FieldByName('YN').Value:='1';
              upMas.apply(ukinsert);
            end;
          usmodified:
             begin
               if BLMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if BLMas.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('delete SCBLS ');
                             sql.add('where BLNO='+''''+BLMas.fieldbyname('BLNO').Value+'''');
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'SCBL'+''''+','+''''+BLMas.fieldbyname('BLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+BLMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (BLMas.FieldByName('CFMDate').isnull)   then
                             begin
                               if (NDate-BLMas.FieldByName('USERDATE').value)<=3  then
                                 begin
                                   //20141014訂單編號異動要刪除
                                   if BLMas.FieldByName('ZLBH').OldValue<>BLMas.FieldByName('ZLBH').Value then
                                   begin
                                     with BDelRec do
                                       begin
                                         active:=false;
                                         sql.Clear;
                                         sql.add('delete SCBLS ');
                                         sql.add('where BLNO='+''''+BLMas.fieldbyname('BLNO').Value+'''');
                                         execsql;
                                         active:=false;
                                       end;
                                   end;
                                   BLMas.edit;
                                   BLMas.FieldByName('userID').Value:=main.edit1.text;
                                   BLMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>3, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
                               end;
                         end;
                   end;
             end;
        end;
       BLMas.next;
      end;
  BLMas.active:=false;
  BLMas.cachedupdates:=false;
  BLMas.requestlive:=false;
  BLMas.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  dbgrideh2.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  BLDet.Active:=true;
  BLreason.Active:=true;

end;

procedure TReplenishDel.BB6Click(Sender: TObject);
begin

  with BLMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  dbgrideh2.columns[2].ButtonStyle:=cbsnone;
end;

procedure TReplenishDel.BDT1Click(Sender: TObject);
begin
  BLDet.First;
end;

procedure TReplenishDel.BDT2Click(Sender: TObject);
begin
  BLDet.prior;
end;

procedure TReplenishDel.BDT3Click(Sender: TObject);
begin
  BLDet.next;
end;

procedure TReplenishDel.BDT4Click(Sender: TObject);
begin
  BLDet.last;
end;

procedure TReplenishDel.BLreasonAfterOpen(DataSet: TDataSet);
begin
  with BLReason do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
  N1.Enabled:=true;
  N2.Enabled:=true;
  N3.Enabled:=true;
  N4.Enabled:=false;
  N5.Enabled:=false;

end;

procedure TReplenishDel.PC1Change(Sender: TObject);
begin

  if PC1.ActivePage=TS2 then
  begin
    panel5.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel5.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TReplenishDel.BLDetAfterOpen(DataSet: TDataSet);
begin

  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  if (NDate-BLMas.FieldByName('USERDATE').value)>2  then
  begin
    BD4.Enabled:=false;
  end;
  if BLMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD4.Enabled:=false;
  end;    
  if BLMas.FieldByName('Qty').value=0  then
  begin
    BD4.Enabled:=false;
  end;
  if BLMas.cachedupdates  then
  begin
    BD4.Enabled:=false;
  end;
  if BLReason.requestlive  then
  begin
    BD4.Enabled:=false;
  end;
  BLDet.RequestLive:=false;
  BLDet.CachedUpdates:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TReplenishDel.BLMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TReplenishDel.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if BLMas.FieldByName('YN').value='0' then
  begin
    dbgrideh2.canvas.font.color:=clred;
  end;
end;

procedure TReplenishDel.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if BLReason.FieldByName('YN').value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if BLReason.FieldByName('BLNO').isnull then
  begin
    dbgrideh1.canvas.font.color:=clLime;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TReplenishDel.N1Click(Sender: TObject);
begin
  with BLReason do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  N4.Enabled:=true;
  N5.Enabled:=true;
  DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis  ;
  DBGrideh1.Columns[2].ButtonStyle:=cbsellipsis  ;
end;

procedure TReplenishDel.BLDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TReplenishDel.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGrideh1.selectedfield.fieldname='DepName' then
  begin
    ReplenishDel_Dep:=TReplenishDel_Dep.Create(self);
    ReplenishDel_Dep.Show;
  end;
  if DBGrideh1.selectedfield.fieldname='YWSM' then
  begin
    ReplenishDel_YY:=TReplenishDel_YY.Create(self);
    ReplenishDel_YY.Show;
  end;
end;

procedure TReplenishDel.N2Click(Sender: TObject);
begin
  with BLReason do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    post;
  end;
  N4.Enabled:=true;
  N5.Enabled:=true;
  DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis  ;
  DBGrideh1.Columns[2].ButtonStyle:=cbsellipsis  ;

end;

procedure TReplenishDel.N3Click(Sender: TObject);
begin

  with BLReason do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  N4.Enabled:=true;
  N5.Enabled:=true;
  DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis  ;
  DBGrideh1.Columns[2].ButtonStyle:=cbsellipsis  ;

end;

procedure TReplenishDel.N4Click(Sender: TObject);
var i:integer;
    Qty:real;
    BLNO:string;
begin

  BLReason.First;
  while not BLReason.Eof do
  begin
    if BLReason.FieldByName('DepNO').IsNull or BLReason.FieldByName('YYBH').IsNull then
      begin
        showmessage('Pls key in Department & reason.');
        abort;
      end;
    if BLReason.FieldByName('Qty').IsNull  then
      begin
        showmessage('Pls key Qty first.');
        abort;
      end;
    BLReason.Next;
  end;

  try
    BLReason.first;
    for i:=1 to BLReason.RecordCount do
    begin
        case BLReason.updatestatus of
          usinserted:
            begin
                     BLReason.edit;
                     BLReason.fieldbyname('BLNO').Value:=BLMas.fieldbyname('BLNO').value;
                     BLReason.fieldbyname('Qty').Value:=formatfloat('#,##0.#',BLReason.fieldbyname('Qty').AsFloat); //20141023 四捨五入到小數第一位
                     BLReason.FieldByName('userID').Value:=main.edit1.text;
                     BLReason.FieldByName('userdate').Value:=date;
                     BLReason.FieldByName('YN').Value:='1';
                     UpReason.apply(ukinsert);
            end;
          usmodified:
             begin
              if BLReason.fieldbyname('YN').value='0'then
                begin
                  UpReason.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-BLMas.FieldByName('USERDATE').value)<3  then
                      begin
                        BLReason.edit;
                        BLReason.fieldbyname('Qty').Value:=formatfloat('#,##0.#',BLReason.fieldbyname('Qty').AsFloat); //20141023 四捨五入到小數第一位
                        BLReason.FieldByName('userID').Value:=main.edit1.text;
                        BLReason.FieldByName('userdate').Value:=date;
                        UpReason.apply(ukmodify);
                      end
                      else
                        begin
                          showmessage('Date>3, can not modify.');
                        end;
                  end;
             end;
        end;
        BLReason.next;
    end;
    BLReason.active:=false;
    BLReason.cachedupdates:=false;
    BLReason.requestlive:=false;
    BLReason.active:=true;
    Qty:=0;
    while not BLReason.eof do
    begin
      Qty:=Qty+BLReason.fieldbyname('Qty').Value;
      BLReason.next;
    end;

    with BLMas do
    begin
      BLNO:=fieldbyname('BLNO').Value;
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      UpMas.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
      if locate('BLNO',BLNO,[]) then
      begin
          showmessage('Save ok');
      end;
    end;
    BLReason.First;
    N1.enabled:=true;
    N2.enabled:=true;
    N3.Enabled:=true;
    N4.Enabled:=false;
    N5.Enabled:=false;
    dbgrideh1.columns[0].ButtonStyle:=cbsnone;
    dbgrideh1.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReplenishDel.N5Click(Sender: TObject);
begin
  with BLReason do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;    
  dbgrideh1.columns[0].ButtonStyle:=cbsnone;
  dbgrideh1.columns[2].ButtonStyle:=cbsnone;
end;

procedure TReplenishDel.BD4Click(Sender: TObject);
begin
  with BLDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  B1.Enabled:=true;
  B2.Enabled:=true;
  B3.Enabled:=true;
end;

procedure TReplenishDel.BLDetCalcFields(DataSet: TDataSet);
begin
  with  BLDet do
  begin
    if fieldbyname('CLSL').Value <>0 then
    begin
        fieldbyname('OldPer').Value:=fieldbyname('QtyOld').Value/fieldbyname('CLSL').Value*100;
        fieldbyname('NowPer').Value:=fieldbyname('Qty').Value/fieldbyname('CLSL').Value*100;
    end;
  end;
end;

procedure TReplenishDel.ChildMaterial(BLNO:string;BWBH:string;MJBH:String;ZLBH:String);
begin
  with  Qtemp do
  begin
    Active:=false;
    SQL.CLear;
    SQL.Add('delete SCBLS where BLNO='''+BLNO+''' and BWBH='''+BWBH+''' and CLBH<>'''+MJBH+''' ');
    SQL.Add('insert into SCBLS');
    SQL.Add('select * from (');
    SQL.Add('	select SCBLS.BLNO,SCBLS.BWBH,ZLZLS2.CLBH,SCBLS.Qty*ZLZLS2.syl as Qty,null as USPrice,ZLZLS2.MJBH,ZLZLS2.ZMLB,ZLZLS2.ZSDH,GETDATE() as USERDATE,''21191'' as USERID,''1'' as YN from (');
    SQL.Add('	select BLNO,BWBH,CLBH as MJBH,Qty ');
    SQL.Add('	from SCBLS');
    SQL.Add('	where BLNO='''+BLNO+''' and BWBH='''+BWBH+''' ) SCBLS');
    SQL.Add('	left join (');
    SQL.Add('	select '''+BLNO+''' as BJNO,ZLZLS2.*,Avg(clzhzl.syl) as syl from (');
    SQL.Add('	select BWBH,MJBH,CLBH,CSBH as ZSDH,ZMLB from zlzls2 ');
    SQL.Add('	where ZLBH='''+ZLBH+''' and BWBH='''+BWBH+''' and CLBH<>'''+MJBH+''' ');
    SQL.Add('	Group by BWBH,MJBH,CLBH,CSBH,ZMLB ) ZLZLS2');
    SQL.Add('	left join clzhzl on  clzhzl.cldh=ZLZLS2.MJBH and clzhzl.cldh1=ZLZLS2.CLBH');
    SQL.Add('	Group by ZLZLS2.BWBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZSDH,ZLZLS2.ZMLB ');
    SQL.Add('	) ZLZLS2 on ZLZLS2.BWBH=SCBLS.BWBH and ZLZLS2.MJBH=SCBLS.MJBH');
    SQL.Add(') SCBLS');
    SQL.Add('where CLBH is not null');
    ExecSQL();
  end;
  //
end;
//
procedure TReplenishDel.BD5Click(Sender: TObject);
var i:integer;
begin
  try
    BLDet.First;
    for i:=1 to BLDet.RecordCount do
    begin
      if BLDet.updatestatus=usmodified then
      begin
          if not BLDet.FieldByName('BLNO').isnull     then
          begin
              if  not BLDet.FieldByName('Qty').isnull then
              begin
                  BLDet.edit;
                  BLDet.fieldbyname('Qty').Value:=formatfloat('#,##0.#',BLDet.fieldbyname('Qty').AsFloat); //20141023 四捨五入到小數第一位
                  BLDet.fieldbyname('USERDate').Value:=NDate ;
                  BLDet.fieldbyname('USERID').Value:=main.edit1.text;
                  UPDet.apply(ukmodify);
                  //20191101補母材料，計算子料號用輛
                  if BLDet.fieldbyname('ZMLB').AsString='Y' then
                  ChildMaterial(BLMas.fieldbyname('BLNO').AsString,BLDet.fieldbyname('BWBH').AsString,BLDet.fieldbyname('CLBH').AsString,BLMas.fieldbyname('ZLBH').AsString);
              end else
              begin
                  UPDet.Apply(ukdelete);
                  //20191101補母材料，計算子料號用輛
                  if BLDet.fieldbyname('ZMLB').AsString='Y' then
                     ChildMaterial(BLMas.fieldbyname('BLNO').AsString,BLDet.fieldbyname('BWBH').AsString,BLDet.fieldbyname('CLBH').AsString,BLMas.fieldbyname('ZLBH').AsString);
              end;
          end else
          begin
                if  not BLDet.FieldByName('Qty').isnull  then
                begin
                    if   BLDet.FieldByName('Qty').value<>0 then
                    begin
                        BLDet.edit;
                        BLDet.fieldbyname('Qty').Value:=formatfloat('#,##0.#',BLDet.fieldbyname('Qty').AsFloat); //20141023 四捨五入到小數第一位
                        BLDet.fieldbyname('BLNO').Value:=BLMas.fieldbyname('BLNO').value;
                        BLDet.fieldbyname('USERDate').Value:=NDate ;
                        BLDet.fieldbyname('USERID').Value:=main.edit1.text;
                        BLDet.fieldbyname('YN').Value:='1';
                        UPDet.apply(ukinsert);
                        //20191101補母材料，計算子料號用輛
                        if BLDet.fieldbyname('ZMLB').AsString='Y' then
                        ChildMaterial(BLMas.fieldbyname('BLNO').AsString,BLDet.fieldbyname('BWBH').AsString,BLDet.fieldbyname('CLBH').AsString,BLMas.fieldbyname('ZLBH').AsString);
                    end;
                end;
          end;
      end;
      BLDet.next;
    end;

    BLDet.active:=false;
    BLDet.requestlive:=false;
    BLDet.cachedupdates:=false;
    BLDet.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    B1.Enabled:=false;
    B2.Enabled:=false;
    B3.Enabled:=false;
    //
    BLPurMat.Active:=false;
    BLPurMat.Active:=true;
    showmessage('Succeed');
  except
    showmessage('have wrong');
  end;
end;

procedure TReplenishDel.BD6Click(Sender: TObject);
begin 
  BLDet.active:=false;
  BLDet.requestlive:=false;
  BLDet.cachedupdates:=false;
  BLDet.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TReplenishDel.BDT5Click(Sender: TObject);
begin
  ReplenishDel_Print:=TReplenishDel_Print.create(self);
  ReplenishDel_Print.QRCompositeReport1.preview;
  ReplenishDel_Print.free;
end;

procedure TReplenishDel.B2Click(Sender: TObject);
var DFL,BWBH:string;
begin
  with BLDet do
  begin
    DFL:=fieldbyname('DFL').value;
    BWBH:=fieldbyname('BWBH').Value;
    first;
    while not eof do
    begin
        if fieldbyname('DFL').value=DFL then
        begin
            edit;
            fieldbyname('Qty').Value:=trunc(fieldbyname('CLSL').Value/BLMas.fieldbyname('zlQty').Value*BLMas.fieldbyname('Qty').Value*10+0.99)/10;
            post;
        end;
        next;
    end;
    if locate('BWBH',BWBH,[]) then
      showmessage('Succeed');
  end;
end;

procedure TReplenishDel.B1Click(Sender: TObject);
begin
  with BLDet do
  begin
    edit;
    fieldbyname('Qty').Value:=trunc(fieldbyname('CLSL').Value/BLMas.fieldbyname('zlQty').Value*BLMas.fieldbyname('Qty').Value*10+0.99)/10;
    post;
  end;
end;

procedure TReplenishDel.B3Click(Sender: TObject);
var BWBH:string;
begin
  with BLDet do
  begin 
    BWBH:=fieldbyname('BWBH').Value;
    first;
    while not eof do
    begin
        edit;
        fieldbyname('Qty').Value:=trunc(fieldbyname('CLSL').Value/BLMas.fieldbyname('zlQty').Value*BLMas.fieldbyname('Qty').Value*10+0.99)/10;
        post;
        next;
    end;
    if locate('BWBH',BWBH,[]) then
      showmessage('Succeed');
  end;
end;

procedure TReplenishDel.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  BLDet.active  then
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
          for   i:=0   to   BLDet.fieldcount-1   do
          begin
                eclApp.Cells(1,i+1):=BLDet.fields[i].FieldName;
          end;

          BLDet.First;
          j:=2;
          while   not   BLDet.Eof   do
          begin
            for   i:=0   to  BLDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=BLDet.Fields[i].Value;
            end;
            BLDet.Next;
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
procedure TReplenishDel.ChildMatCKClick(Sender: TObject);
begin
  if ChildMatCK.Checked=true then
  begin
    with BLDet do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select OrdCL.*,SCBLS.Qty ,BLOld.QtyOld,BWZL.YWSM as BWYW,BWZL.ZWSM as BWZW ');
      sql.Add('       ,SCBLS.BLNO,SCBLS.USPrice,SCBLS.USERDate,SCBLS.USERID,SCBLS.YN');
      sql.Add(' from (select ZLZLS2.ZLBH,ZLZLS2.BWBH,ZLZLS2.CLBH, sum(ZLZLS2.CLSL)   CLSL,');
      sql.Add('              CLZL.YWPM,CLZL.DWBH,isnull(XXBWFLS.DFL,''N'') as DFL,MJBH,ZMLB,MAX(CSBH) as ZSDH,MAX(ZSZL.ZSYWJC) as ZSYWJC ');
      sql.Add('       from ZLZLS2');
      sql.Add('       left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH');
      sql.Add('       left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH');
      sql.Add('       left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH');
      sql.Add('       left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      sql.Add('       left join ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH');
      sql.Add('       where ZLZLS2.ZLBH=:ZLBH');
      sql.Add('             and ZLZLS2.CLSL<>0');
      // sql.Add('             and  ZLZLS2.MJBH=''ZZZZZZZZZZ''');
      sql.Add('       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH ,ZLZLS2.BWBH,XXBWFLS.DFL,MJBH,ZMLB) OrdCL');
      sql.Add(' left join   SCBLS on SCBLS.BWBH=OrdCL.BWBH and SCBLS.CLBH=OrdCL.CLBH and SCBLS.BLNO=:BLNO');
      sql.Add(' left join BWZL on BWZL.BWDH=OrdCL.BWBH');
      sql.Add(' left join (select SCBLS.BWBH,SCBLS.CLBH,sum(SCBLS.Qty) as QtyOld from SCBLS');
      sql.Add('            left join SCBL on SCBL.BLNO=SCBLS.BLNO');
      sql.Add('            where SCBL.ZLBH=:ZLBH and SCBLS.BLNO<>:BLNO');
      sql.Add('            group by  SCBLS.BWBH,SCBLS.CLBH) BLOld on BLOld.BWBH=OrdCL.BWBH and BLOld.CLBH=OrdCL.CLBH');
      sql.Add(' order by OrdCL.DFL,OrdCL.BWBH,OrdCL.CLBH,OrdCL.ZLBH');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else
  begin
    with BLDet do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select OrdCL.*,SCBLS.Qty ,BLOld.QtyOld,BWZL.YWSM as BWYW,BWZL.ZWSM as BWZW');
      sql.Add('       ,SCBLS.BLNO,SCBLS.USPrice,SCBLS.USERDate,SCBLS.USERID,SCBLS.YN');
      sql.Add(' from (select ZLZLS2.ZLBH,ZLZLS2.BWBH,ZLZLS2.CLBH, sum(ZLZLS2.CLSL)   CLSL,');
      sql.Add('              CLZL.YWPM,CLZL.DWBH,isnull(XXBWFLS.DFL,''N'') as DFL,MJBH,ZMLB,MAX(CSBH) as ZSDH,MAX(ZSZL.ZSYWJC) as ZSYWJC ');
      sql.Add('       from ZLZLS2');
      sql.Add('       left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH');
      sql.Add('       left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH');
      sql.Add('       left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH');
      sql.Add('       left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      sql.Add('       left join ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH');
      sql.Add('       where ZLZLS2.ZLBH=:ZLBH');
      sql.Add('             and ZLZLS2.CLSL<>0');
      sql.Add('             and  ZLZLS2.MJBH=''ZZZZZZZZZZ''');
      sql.Add('       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH ,ZLZLS2.BWBH,XXBWFLS.DFL,MJBH,ZMLB) OrdCL');
      sql.Add(' left join   SCBLS on SCBLS.BWBH=OrdCL.BWBH and SCBLS.CLBH=OrdCL.CLBH and SCBLS.BLNO=:BLNO');
      sql.Add(' left join BWZL on BWZL.BWDH=OrdCL.BWBH');
      sql.Add(' left join (select SCBLS.BWBH,SCBLS.CLBH,sum(SCBLS.Qty) as QtyOld from SCBLS');
      sql.Add('            left join SCBL on SCBL.BLNO=SCBLS.BLNO');
      sql.Add('            where SCBL.ZLBH=:ZLBH and SCBLS.BLNO<>:BLNO');
      sql.Add('            group by  SCBLS.BWBH,SCBLS.CLBH) BLOld on BLOld.BWBH=OrdCL.BWBH and BLOld.CLBH=OrdCL.CLBH');
      sql.Add(' order by OrdCL.DFL,OrdCL.BWBH,OrdCL.CLBH,OrdCL.ZLBH');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  DBGridEh3.Columns[11].Visible:=ChildMatCK.Checked xor false;
  DBGridEh3.Columns[12].Visible:=ChildMatCK.Checked xor false;
end;

procedure TReplenishDel.BDT7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  BLPurMat.active  then
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
          for   i:=0   to   BLPurMat.fieldcount-1   do
          begin
                eclApp.Cells(1,i+1):=BLPurMat.fields[i].FieldName;
          end;

          BLPurMat.First;
          j:=2;
          while   not   BLPurMat.Eof   do
          begin
            for   i:=0   to  BLPurMat.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=BLPurMat.Fields[i].Value;
            end;
            BLPurMat.Next;
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
