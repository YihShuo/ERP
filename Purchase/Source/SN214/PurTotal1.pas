unit PurTotal1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh,IniFiles, Menus, comobj;

type
  TPurTotal = class(TForm)
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
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Query1: TQuery;
    CGMas: TQuery;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    CGMasDH: TStringField;
    CGMasCZ: TStringField;
    CGMasGSBH: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetACCUS: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBJNO: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGDetZWPM: TStringField;
    BDelRec: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    Check: TCheckBox;
    CGDetACCVN: TCurrencyField;
    CGMasPrinttime: TIntegerField;
    CGMasManagerID: TStringField;
    CGMasManagerDate: TDateTimeField;
    CGMasPrintTw: TIntegerField;
    CGMasPrintS: TIntegerField;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    Panel7: TPanel;
    BO7: TBitBtn;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    BO6: TBitBtn;
    DBGrid1: TDBGridEh;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSXXCC: TStringField;
    CGSStage: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    QTemp: TQuery;
    CGSTemp: TQuery;
    CGSDepname: TStringField;
    BitBtn1: TBitBtn;
    BDT6: TBitBtn;
    BDT7: TBitBtn;
    btRepl: TBitBtn;
    CGMaszsywjctw: TStringField;
    CGSMemo: TStringField;
    CGSUser_SG: TStringField;
    CGSUSERNAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);

    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
   
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
    procedure CGMasAfterScroll(DataSet: TDataSet);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btReplClick(Sender: TObject);
  private
    { Private declarations }
    IsAllowUserID:Boolean;
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PurTotal: TPurTotal;
  NDate:TDate;

implementation

uses main1, PurTotal_BJ1, PurTotal_Safe1, PurTotal_ZS1, PurTotal_Print1,
     Quotation1, PurTatol_Cl1, PurTotalTW_Print1, PurRevise1, PurTotal_SGDH1,
     PurTotal_Replenish1, PurTotal_SGDep1,FUNUNIT;

{$R *.dfm}
procedure TPurTotal.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  //
  UserIDList:='100437,90477,102019,103514,104732,47726,102626,16119,51295,004044,001911,001909,001064,012328,320247';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      UserIDList:=MyIni.ReadString('ERP','Purchase_N214_CheckUserID','100437,90477,102019,103514,104732,47726,102626,16119,51295,004044,001911,001909,001064,012328,320247');
    finally
      MyIni.Free;
    end;
  end;

  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;

  TCurrencyField(CGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPurTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      panel6.Visible:=true;
      panel1.Visible:=false;
      action:=canone;
    end else
    begin
      action:=Cafree;
    end;
  end;
end;

procedure TPurTotal.Button1Click(Sender: TObject);
begin 
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as zsywjctw ');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW  ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO like '''+Edit1.Text+'%''');
    sql.add('and ZSZL.ZSYWJC like ''%'+Edit3.Text+'%'' ');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''4'' ');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
    sql.Add('and CGZL.USERID='''+main.Edit1.Text+'''');
    end;
    sql.add('order by CGZL.CGNO DESC');
    active:=true;
  end;
  Panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  check.Checked:=true;
  CGDet.Active:=true;
//  btRepl.Enabled:=true;
end;

procedure TPurTotal.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TPurTotal.BB2Click(Sender: TObject);
begin
  with CGMas do
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

procedure TPurTotal.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  IsAllowUserID:=false;
  ReadIni();
  {if (main.Edit1.Text = '100437') or (main.Edit1.Text = '90477') or (main.Edit1.Text = '102019') or (main.Edit1.Text = '103514') or (main.Edit1.Text = '104732') or
    (main.Edit1.Text = '47726') or (main.Edit1.Text = '102626') or (main.Edit1.Text = '16119') or (main.Edit1.Text = '51295')
    or (main.Edit1.Text = '004044') or (main.Edit1.Text = '001911') or (main.Edit1.Text = '001909') or (main.Edit1.Text = '001064') or (main.Edit1.Text = '012328')
    or (main.Edit1.Text = '320247') then
    btRepl.Enabled := true; }
  if IsAllowUserID=true  then
     btRepl.Enabled := true;
end;

procedure TPurTotal.BB3Click(Sender: TObject);
begin
  if CGDet.recordcount=0 then
  begin
    with CGMas do
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
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BB4Click(Sender: TObject);
begin
  with CGMas do
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

procedure TPurTotal.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    CGDet.Active:=false;
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
      begin
        case CGMas.updatestatus of
          usinserted:
            begin
              if CGMas.fieldbyname('ZSBH').isnull then
                begin
                  CGMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select CGNO from CGZL where CGNO like '+''''+y+m+'%'+'''');
                         sql.add('order by CGNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('CGNO').AsString;
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
                     CGMas.edit;
                     CGMas.fieldbyname('CGNO').Value:=a;  
                     CGMas.fieldbyname('GSBH').Value:=main.edit2.text;
                     CGMas.fieldbyname('CGLX').Value:='4';
                     CGMas.FieldByName('userID').Value:=main.edit1.text;
                     CGMas.FieldByName('userdate').Value:=Ndate;
                     CGMas.FieldByName('CGDate').Value:=Ndate;
                     CGMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
            begin
              if CGMas.FieldByName('YN').AsString<>'5' then
              begin
                if CGMas.FieldByName('UserID').Value=main.Edit1.Text then
                begin
                  if CGMas.fieldbyname('YN').value='0'then
                  begin
                    with BDelRec do
                    begin
                        active:=false;
                        sql.Clear;
                        {sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                        sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())'); }

                        SQL.Add('UPDATE CGZL SET flowflag = ''X'' WHERE CGNO = ''' + CGMas.fieldbyname('CGNO').AsString+''' ');

                        execsql;
                        active:=false;
                    end;
                    //upMas.apply(ukdelete);
                  end else
                  begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                    begin
                      CGMas.edit;
                      CGMas.FieldByName('userID').Value:=main.edit1.text;
                      CGMas.FieldByName('userdate').Value:=Ndate;
                      upMas.apply(ukmodify);
                    end else
                    begin
                       showmessage('Date>7, can not modify.');
                    end;
                  end;
                end else
                begin
                  Showmessage('It is not yours, can not modify.');
                end;
              end else
              begin
                showmessage('Already in warehouse,can not modify');
              end;
            end;
        end;
       CGMas.next;
      end;
      CGMas.active:=false;
      CGMas.cachedupdates:=false;
      CGMas.requestlive:=false;
      CGMas.active:=true;
      CGDet.Active:=true;
      bb5.enabled:=false;
      bb6.enabled:=false;
      BBTT1.Visible:=false;
      dbgrid3.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPurTotal.BB6Click(Sender: TObject);
begin

  with CGMas do
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

procedure TPurTotal.BD2Click(Sender: TObject);
begin

  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BD3Click(Sender: TObject);
begin
  if CGS.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
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
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BD4Click(Sender: TObject);
begin
  if CGS.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BD5Click(Sender: TObject);
var i:integer;
begin
  with CGDet do
    begin
      first;
      while not CGDet.Eof do
        begin
          if CGDet.FieldByName('Qty').IsNull  then
            begin
              edit;
              CGDet.FieldByName('Qty').value:=0;
            end;
          if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('The Price can not be empty.');
              abort;
            end;
          if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('Can not have two price.');
              abort;
            end;
          if CGDet.FieldByName('YQDate').IsNull  then
            begin
              showmessage('YQDate can not be null.');
              abort;
            {end
          else if CGMas.FieldByName('SGDate').Value > CGDet.FieldByName('YQdate').Value then
            begin
              showmessage('SGDate must be less than YQDate !');
              exit;      }
            end;
          next;
        end;
    end;

  try
    CGDet.first;
      for i:=1 to CGDet.RecordCount do
        begin
          case CGDet.updatestatus of
            usinserted:
              begin
                if CGDet.fieldbyname('CLBH').isnull then
                  begin
                    CGDet.delete;
                  end
                   else
                     begin
                       CGDet.edit;
                       CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
                       CGDet.FieldByName('userID').Value:=main.edit1.text;
                       CGDet.FieldByName('userdate').Value:=Ndate;
                       CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                       CGDet.FieldByName('YN').Value:='1';
                       upDet.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                if CGDet.fieldbyname('YN').value='0'then
                begin
                    with BDelRec do
                    begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'CGZLS'+''''+','+''''+CGDet.fieldbyname('CGNO').Value+'''');
                        sql.add(','+''''+CGDet.fieldbyname('CLBH').Value+''''+','+''''+CGDet.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        sql.Add('delete CGZLSS where cgno='''+CGDet.fieldbyname('CGNO').Value+''' and clbh='''+CGDet.fieldbyname('CLBH').Value+'''');
                        execsql;
                        active:=false;
                    end;
                    UpDet.apply(ukdelete);
                  end else
                  begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                    begin
                      if CGS.RecordCount>0 then
                      begin
                         if DBGrid1.getfootervalue(0,DBGrid1.columns[2])<>CGDet.FieldByName('Qty').Value then
                         begin
                           Showmessage('Qty need to the same detail Qty');
                           break;
                         end;
                      end;
                      CGDet.edit;
                      CGDet.FieldByName('userID').Value:=main.edit1.text;
                      CGDet.FieldByName('userdate').Value:=Ndate;
                      CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                      upDet.apply(ukmodify);
                    end else
                    begin
                       showmessage('Date>7, can not modify.');
                    end;
                  end;
                end;
          end;
          CGDet.next;
        end;
        CGDet.active:=false;
        CGDet.cachedupdates:=false;
        CGDet.requestlive:=false;
        CGDet.active:=true;
        bb6.enabled:=false;
        BBTT2.Visible:=false;
        BD5.Enabled:=false;
        BD6.Enabled:=false;
        dbgrid4.columns[0].ButtonStyle:=cbsNone;
        dbgrid4.columns[6].ButtonStyle:=cbsNone;
        dbgrid4.columns[5].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TPurTotal.BD6Click(Sender: TObject);
begin
  with CGDet do
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
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TPurTotal.BBT1Click(Sender: TObject);
begin
  CGMas.First;
end;

procedure TPurTotal.BBT2Click(Sender: TObject);
begin
  CGMas.prior;
end;

procedure TPurTotal.BBT3Click(Sender: TObject);
begin
  CGMas.next;
end;

procedure TPurTotal.BBT4Click(Sender: TObject);
begin
  CGMas.last;
end;

procedure TPurTotal.BDT1Click(Sender: TObject);
begin
  CGDet.First;
end;

procedure TPurTotal.BDT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TPurTotal.BDT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TPurTotal.BDT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TPurTotal.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPurTotal.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPurTotal.CGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO3.Enabled:=true;
  BO7.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  CGS.Active:=true;
  if (((NDate-CGMas.FieldByName('USERDATE').value)>7) or (CGMas.FieldByName('YN').value='5'))   then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;   
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if CGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TPurTotal.DBGrid3DblClick(Sender: TObject);
begin
  if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;



procedure TPurTotal.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TPurTotal.DBGrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='USPrice') or (DBGrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
    begin
      PurTotal_BJ:=TPurTotal_BJ.create(self);
      PurTotal_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
      PurTotal_BJ.show;
    end;
  end;
end;

procedure TPurTotal.BBTT2Click(Sender: TObject);
begin
  if messagedlg('Select from Normal or safe material?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    PurTatol_CL:=TPurTatol_CL.create(self);
    PurTatoL_CL.show;
  end else
  begin
    PurTotal_safe:=TPurTotal_safe.create(self);
    PurTotal_safe.show;
  end;
end;



procedure TPurTotal.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurTotal.BBTT1Click(Sender: TObject);
begin
  PurTotal_ZS:=TPurTotal_ZS.create(self);
  PurTotal_ZS.show;
end;

procedure TPurTotal.CGMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  CGMas.RequestLive:=false;
  CGMas.CachedUpdates:=false;
end;

procedure TPurTotal.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TPurTotal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TPurTotal.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TPurTotal.BDT5Click(Sender: TObject);
var CGNO: String;
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    PurTotal_Print:=TPurTotal_Print.Create(nil);
    PurTotal_Print.quickrep1.prepare;
    PurTotal_Print.Qpage1.caption:=inttostr(PurTotal_Print.quickrep1.QRPrinter.pagecount);
    PurTotal_Print.quickrep1.preview;
    PurTotal_Print.Free;
  end;
end;

procedure TPurTotal.BDT6Click(Sender: TObject);
begin
  Quotation:=TQuotation.create(self);
  Quotation.show;
end;

procedure TPurTotal.CGDetCalcFields(DataSet: TDataSet);
begin
  with CGDet do
  begin
    if FieldByName('USPrice').value<>0 then
    begin
      FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
    end;
    if FieldByName('VNPrice').value<>0 then
    begin
      FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
    end;
  end;
end;

procedure TPurTotal.FormDestroy(Sender: TObject);
begin
  PurTotal:=nil;
end;

procedure TPurTotal.BDT7Click(Sender: TObject);
var CGNO: String;
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    PurTotalTW_Print:=TPurTotalTW_Print.Create(nil);
    PurTotalTW_Print.quickrep1.prepare;
    PurTotalTW_Print.Qpage1.caption:=inttostr(PurTotalTW_Print.quickrep1.QRPrinter.pagecount);
    PurTotalTW_Print.quickrep1.preview;
    PurTotalTW_Print.Free;
  end;
end;

procedure TPurTotal.CGMasAfterScroll(DataSet: TDataSet);
begin
  //已經入庫 Already In Warehouse
  if CGMas.FieldByName('YN').AsString='5' then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end else
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
end;

procedure TPurTotal.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurTotal.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGDet.FieldByName('CGNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurTotal.BO1Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BO2Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TPurTotal.BO5Click(Sender: TObject);
begin
  with CGS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO4.Enabled:=false;
  BO5.Enabled:=false;
end;

procedure TPurTotal.BO7Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TPurTotal.BO3Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;    
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TPurTotal.BO4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
    CGs.first;
    for i:=1 to CGs.RecordCount do
    begin
      case CGs.updatestatus of
        usinserted:
        begin
           CGs.edit;
           CGs.fieldbyname('CGNO').Value:=CGDet.fieldbyname('CGNO').value;
           CGs.fieldbyname('CLBH').Value:=CGDet.fieldbyname('CLBH').value;
           CGs.fieldbyname('ZLBH').Value:=CGs.fieldbyname('ZLBH').Value;
           CGs.fieldbyname('XXCC').Value:='ZZZZZZ';
           CGs.fieldbyname('Stage').Value:='TVu';
           CGs.fieldbyname('CLSL').Value:=CGs.fieldbyname('Qty').Value;
           CGs.FieldByName('YQDate').Value:=CGDet.fieldbyname('YQDate').value;
           CGs.FieldByName('CFMDate').Value:=CGDet.fieldbyname('CFMDate').value;
           CGs.FieldByName('userID').Value:=main.edit1.text;
           CGs.FieldByName('userdate').Value:=date;
           CGs.FieldByName('YN').Value:='1';
           UpOrdMat.apply(ukinsert);
        end;
        usmodified:
        begin
          if CGS.fieldbyname('YN').value='0'then
          begin
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'CGZLSS'+''''+','+''''+CGS.fieldbyname('CGNO').Value+'''');
              sql.add(','+''''+CGS.fieldbyname('CLBH').Value+''''+','+''''+CGS.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            uPOrdMat.apply(ukdelete);
          end else
          begin
            CGS.edit;
            CGS.FieldByName('userID').Value:=main.edit1.text;
            CGS.FieldByName('userdate').Value:=date;
            uPOrdMat.apply(ukmodify);
          end;
        end;
      end;
      CGS.next;
    end;
    CGs.active:=false;
    CGs.cachedupdates:=false;
    CGs.requestlive:=false;
    CGs.active:=true;
    CGS.First;
    Qty:=0;
    while not CGS.eof do
    begin
      Qty:=Qty+CGS.fieldbyname('Qty').Value;
      CGS.next;
    end;

    with CGDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    with Query1 do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    BO4.Enabled:=false;
    BO5.Enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;    
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TPurTotal.BO6Click(Sender: TObject);
var i,j,k,l: integer;
    eclApp,WorkBook:olevariant;
begin
   with Qtemp do
   begin
      Active:=false;
      sql.Clear;
      sql.add('select DISTINCT XXCC ');
      sql.add('from CGZLSS');
      sql.add('where CGNO='''+CGS.FieldByName('CGNO').AsString+'''');
      sql.add('order by XXCC');
      Active:=true;
   end;
   with CGSTemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select cgzlss.CGNO,clzl.CLDH,clzl.ywpm,cgzlss.zlbh as BLNO');
      while not Qtemp.Eof do
      begin
        sql.add('    ,max(case when CGZLSS.XXCC='''+Qtemp.fieldbyname('XXCC').asstring+'''');
        sql.add('    then CGZLSS.Qty end ) as '''+Qtemp.fieldbyname('XXCC').asstring+'''');
        Qtemp.Next;
      end;
      sql.Add('from ( select cgno,zlbh,clbh, xxcc, qty from cgzlss  group by cgno,zlbh,clbh, xxcc, qty ) cgzlss');
      sql.Add('left join clzl on clzl.cldh=cgzlss.clbh ');
      sql.Add('where cgno='''+CGS.FieldByName('CGNO').AsString+'''');
      sql.Add('group by cgzlss.CGNO,clzl.cldh,clzl.ywpm,cgzlss.zlbh');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
       // excel
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[1,1],eclApp.workbooks[1].sheets[1].Cells[1,CGSTemp.fieldcount]].NumberFormatLocal:='@';
        for   i:=0   to   CGSTemp.fieldcount-1   do
        begin
            eclApp.workbooks[1].sheets[1].Cells(1,i+1):=CGSTemp.fields[i].FieldName;
        end;
        CGSTemp.First;
        j:=2;
        while   not   CGSTemp.Eof   do
        begin
          for   i:=0   to  CGSTemp.fieldcount-1  do
          begin
            eclApp.workbooks[1].sheets[1].Cells(j,i+1):=CGSTemp.Fields[i].Value;
          end;
          CGSTemp.Next;
          inc(j);
         // outline
         for l:=1 to 4 do
         begin
          eclApp.range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
         end;
        end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
      //
   end;
end;

procedure TPurTotal.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.Selectedfield.fieldname='ZLBH' then
  begin
    PurTotal_SGDH:=TPurTotal_SGDH.create(self);
    PurTotal_SGDH.Show;
  end;
  if DBGrid1.Selectedfield.fieldname='Depname' then
  begin
    PurTotal_SGDep:=TPurTotal_SGDep.create(self);
    PurTotal_SGDep.Show;
  end;
end;

procedure TPurTotal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGS.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurTotal.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  CGMas.active  then
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
      for   i:=0   to   CGMas.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=CGMas.fields[i].FieldName;
        end;

      CGMas.First;
      j:=2;
      while   not   CGMas.Eof   do
      begin
        for   i:=0   to  CGMas.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=CGMas.Fields[i].Value;
        end;
      CGMas.Next;
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

procedure TPurTotal.BitBtn1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  CGDet.active  then
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
      for   i:=0   to   CGDet.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
        end;

      CGDet.First;
      j:=2;
      while   not   CGDet.Eof   do
      begin
        for   i:=0   to  CGDet.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
        end;
      CGDet.Next;
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

procedure TPurTotal.btReplClick(Sender: TObject);
begin
  if PurTotal_Replenish=nil then
    PurTotal_Replenish:=TPurTotal_Replenish.create(self);
  PurTotal_Replenish.show;
end;

end.
