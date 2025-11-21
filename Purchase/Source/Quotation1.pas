unit Quotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls;

type
  TQuotation = class(TForm)
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
    BJDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    BJMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    BJMasBJNo: TStringField;
    BJMasZSBH: TStringField;
    BJMasUSERDATE: TDateTimeField;
    BJMasUSERID: TStringField;
    BJMasCFMDate: TDateTimeField;
    BJMasCFMID: TStringField;
    BJMasYN: TStringField;
    BJMasZSYWJC: TStringField;
    BJDetBJNO: TStringField;
    BJDetCLBH: TStringField;
    BJDetUSPrice: TCurrencyField;
    BJDetUSERDate: TDateTimeField;
    BJDetUSERID: TStringField;
    BJDetYN: TStringField;
    BJDetYWPM: TStringField;
    BJDetDWBH: TStringField;
    BJDetVNPrice: TCurrencyField;
    BJDetMemo: TStringField;
    BJDetBJLX: TStringField;
    BJMasGSBH: TStringField;
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
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
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
    DBGrid4: TDBGrid;
    BJMasEXPDATE: TDateTimeField;
    CheckMine: TCheckBox;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    TS5: TTabSheet;
    Panel5: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit6: TEdit;
    Button2: TButton;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    CGDet: TQuery;
    DS5: TDataSource;
    Panel7: TPanel;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE6: TBitBtn;
    Label26: TLabel;
    UPCGDet: TUpdateSQL;
    CGDetCGNO: TStringField;
    CGDetZSBH: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetUSPrice: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetUserDate: TDateTimeField;
    CGDetUserID: TStringField;
    BE1: TBitBtn;
    CGZLCK: TCheckBox;
    Check: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BJDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BJMasAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BE1Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure BE6Click(Sender: TObject);
    procedure BE5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quotation: TQuotation;
  NDate:TDate;

implementation

uses main1, Quotation_ZS1, Quotation_CL1, Quotation_Print1, FunUnit;

{$R *.dfm}

procedure TQuotation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TQuotation.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TQuotation.Button1Click(Sender: TObject);
begin

  with BJMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGBJ.* ,ZSZL.ZSYWJC ');
    sql.add('from CGBJ');
    sql.add('left join ZSZL on CGBJ.ZSBH=ZSZL.ZSDH');
    sql.add('where CGBJ.BJNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CGBJ.ZSBH like ');
    sql.add(''''+edit2.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    //有過濾採購單沒有單價的廠商  就不用過濾時間
    if CGZLCK.Checked=false then
    begin
      if Check.Checked=true then
      begin
        sql.add('and convert(smalldatetime,convert(varchar,CGBJ.USERDATE,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
    end;
    sql.add('and CGBJ.GSBH='+''''+main.edit2.text+'''');
    if checkMine.Checked=true then
      sql.add('and  CGBJ.UserID='''+main.Edit1.Text+''' ');
    if ((Edit4.Text<>'') or (Edit5.Text<>'')) then
    begin
      sql.add('and exists (select BJNO from CGBJS,clzl where CGBJS.BJNO=CGBJ.BJNO and CGBJS.CLBH=CLZL.CLDH ');
      sql.add('and clzl.cldh like '''+Edit4.Text+'%'' ');
      sql.add('and clzl.ywpm like ''%'+Edit5.Text+'%'') ');
    end;
    //採購單沒有單價的廠商
    if CGZLCK.Checked=true then
    begin
      sql.add('and CGBJ.BJNO in ( ');
      sql.add('select Distinct BJNO from ( ');
      sql.add('select CGBJ.ZSBH,CGBJS.CLBH,Max(CGBJ.BJNO) as BJNO from CGBJ ');
      sql.add('inner join CGBJS on CGBJ.BJNO=CGBJS.BJNO ');
      sql.add('inner join ( ');
      sql.add('select CGZL.ZSBH,CGZLS.CLBH from CGZLS,CGZL,CGBJS where CGZL.CGNO=CGZLS.CGNO and CGZL.GSBH=''VA12'' and (CGZL.CGLX=1 or  ');
      sql.add('CGZL.CGLX=2) and ((CGZLS.VNPrice is null and CGZLS.USPrice=0)  or (CGZLS.VNPrice=0 and CGZLS.USPrice is null))  ');
      sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between  ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +''' and CGZLS.USERID='''+main.Edit1.Text+''' group by CGZL.ZSBH,CGZLS.CLBH ) CGZL on CGBJ.ZSBH=CGZL.ZSBH and  ');
      sql.add('CGBJS.CLBH=CGZL.CLBH ');
      sql.add('Group by CGBJ.ZSBH,CGBJS.CLBH ) CGZL) ');
    end;
    sql.add('order by CGBJ.BJNO DESC');
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
  BJDet.Active:=true;
  //關閉更新採購單關連
  BE6.Click;
  CGDet.Active:=false;
end;

procedure TQuotation.FormCreate(Sender: TObject);
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
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  DTP3.Date:=date-60;
  DTP4.date:=date;
end;

procedure TQuotation.BB2Click(Sender: TObject);
begin
with BJMas do
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

procedure TQuotation.BB3Click(Sender: TObject);
begin
if BJDet.recordcount=0 then
  begin
    with BJMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotation.BB4Click(Sender: TObject);
begin
with BJMas do
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

procedure TQuotation.BB5Click(Sender: TObject);
var y,m,a:string;
i,x:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
    BJDet.active:=false;
    BJMas.first;
    for i:=1 to BJMas.RecordCount do
    begin
      case BJMas.updatestatus of
      usinserted:
      begin
        if BJMas.fieldbyname('ZSBH').isnull then
        begin
          BJMas.delete;
        end
        else  begin
//        begin
//          if BJMas.FieldByName('EXPDATE').IsNull then
//          begin
//            showmessage('Please Input Expire date');  //報價單過期日輸入鎖定 by Gary 20130719 待企劃宣導後開啟鎖定功能
//          end
//          else
          //20151023 先檢查當年廠商是否存在 避免廠商資料太多
          with query1 do
          begin
            sql.Clear;
            sql.Add('select Max(BJNO) as BJNO from CGBJ where CGBJ.GSBH='''+main.Edit2.Text+''' and BJNO like '''+y+'%'' and zsbh='''+ BJMas.FieldByName('ZSBH').AsString+''' ');
            sql.add('order by BJNO');
            active:=true;
            if recordcount>0 then
            begin
              Edit1.Text:=FieldByName('BJNO').AsString;
              Check.Checked:=false;
              CheckMine.Checked:=false;
              BB6.Click;
              Button1.Click;
            end;
            active:=false;
            exit;
          end;
          //
          with query1 do    //計算領料單流水號
          begin
            active:=false;
            sql.Clear;
            sql.Add('select BJNO from CGBJ where BJNO like '+''''+y+m+'%'+'''');
            sql.add('order by BJNO');
            active:=true;
            if recordcount >0 then
            begin
              last;
              a:=fieldbyname('BJNO').AsString;
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
          BJMas.edit;
          BJMas.fieldbyname('BJNO').Value:=a;
          BJMas.fieldbyname('GSBH').Value:=main.Edit2.text;
          BJMas.FieldByName('userID').Value:=main.edit1.text;
          BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
          BJMas.FieldByName('CFMID').Value:='NO';
          BJMas.FieldByName('YN').Value:='1';
          if BJMas.FieldByName('EXPDATE').Value <> null then  //如果報價單過期日有輸入
            BJMas.FieldByName('EXPDATE').Value:=formatdatetime('yyyy/mm/dd',BJMas.FieldByName('EXPDATE').Value);
          upMas.apply(ukinsert);
          end;
//        end;
      end;
        usmodified:
             begin
               if BJDet.fieldbyname('UserID').value=main.Edit1.Text then
               begin
                  if BJMas.fieldbyname('YN').value='0'then
                  begin
                    upMas.apply(ukdelete);
                  end else
                  begin
                      if (BJMas.FieldByName('CFMID').value='NO')   then
                      begin
  //                      x:=Trunc(NDate)-Trunc(BJMas.FieldByName('USERDATE').value);
                          if (NDate-BJMas.FieldByName('USERDATE').Value)<3  then
  //                        if (datetostr(Ndate)-datetostr(BJMas.FieldByName('USERDATE').value)>3  then
                            begin
                              BJMas.edit;
                              BJMas.FieldByName('userID').Value:=main.edit1.text;
                              BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                              BJMas.FieldByName('EXPDATE').Value:=formatdatetime('yyyy/mm/dd',BJMas.FieldByName('EXPDATE').Value);
                              upMas.apply(ukmodify);
                            end
                            else
                              begin
                                showmessage(''+datetostr(Ndate)+' '+datetostr(BJMas.FieldByName('USERDATE').value)+' Date>3, can not modify.');
                              end;
                      end else
                      begin
                            showmessage('Already confirmed, can not modify.');
                      end;
                 end;
               end else
               begin
                 showmessage('It is not yours.can not  delete');
               end;
             end;
        end;
       BJMas.next;
      end;
BJMas.active:=false;
BJMas.cachedupdates:=false;
BJMas.requestlive:=false;
BJMas.active:=true; 
BJDet.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TQuotation.BB6Click(Sender: TObject);
begin
with BJMas do
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

procedure TQuotation.BD2Click(Sender: TObject);
begin
if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotation.BD3Click(Sender: TObject);
begin
if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with BJDet do
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

procedure TQuotation.BD4Click(Sender: TObject);
begin
  if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotation.BD5Click(Sender: TObject);
var i:integer;
begin
  with BJDet do
  begin
    first;
    while not BJDet.Eof do
      begin
        if (BJDet.FieldByName('USPrice').IsNull and BJDet.FieldByName('VNPrice').IsNull) then
          begin
            showmessage('The Price can not be empty.');
            abort;
          end;  
        if (not BJDet.FieldByName('USPrice').IsNull) and (not BJDet.FieldByName('VNPrice').IsNull) then
          begin
            showmessage('Can not have two price.');
            abort;
          end;
        next;
      end;
  end;

  try
    BJDet.first;
    for i:=1 to BJDet.RecordCount do
      begin
        case BJDet.updatestatus of
          usinserted:
            begin
              if BJDet.fieldbyname('CLBH').isnull then
                begin
                  BJDet.delete;
                end else
                begin
                     BJDet.edit;
                     BJDet.fieldbyname('BJNO').Value:=BJMas.fieldbyname('BJNO').Value;
                     BJDet.FieldByName('userID').Value:=main.edit1.text;
                     BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     BJDet.FieldByName('BJLX').Value:='1';
                     BJDet.FieldByName('YN').Value:='1';
                     upDet.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
               if BJDet.fieldbyname('UserID').value=main.Edit1.Text then
               begin
                  if BJDet.fieldbyname('YN').value='0'then
                  begin
                    UpDet.apply(ukdelete);
                  end else
                  begin
                      BJDet.edit;
                      BJDet.FieldByName('userID').Value:=main.edit1.text;
                      BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      upDet.apply(ukmodify);
                  end;
               end else
               begin
                 showmessage('It is not yours.can not  delete');
               end;
              end;
        end;
        BJDet.next;
      end;
BJDet.active:=false;
BJDet.cachedupdates:=false;
BJDet.requestlive:=false;
BJDet.active:=true;
bb6.enabled:=false;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TQuotation.BB7Click(Sender: TObject);
begin
close;
end;

procedure TQuotation.BD7Click(Sender: TObject);
begin
close;
end;

procedure TQuotation.BBT1Click(Sender: TObject);
begin
BJMas.First;
end;

procedure TQuotation.BBT2Click(Sender: TObject);
begin
BJMas.prior;
end;

procedure TQuotation.BBT3Click(Sender: TObject);
begin
BJMas.next;
end;

procedure TQuotation.BBT4Click(Sender: TObject);
begin
BJMas.last;
end;

procedure TQuotation.BDT1Click(Sender: TObject);
begin
BJDet.First;
end;

procedure TQuotation.BDT2Click(Sender: TObject);
begin
BJDet.prior;
end;

procedure TQuotation.BDT3Click(Sender: TObject);
begin
BJDet.next;
end;

procedure TQuotation.BDT4Click(Sender: TObject);
begin
BJDet.last;
end;

procedure TQuotation.BD6Click(Sender: TObject);
begin
with BJDet do
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

procedure TQuotation.BJDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  //BDT6.Enabled:=true;
  if (NDate-BJMas.FieldByName('USERDATE').value)>360  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if BJMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TQuotation.DBGrid3DblClick(Sender: TObject);
begin
if  BJMas.Active then
  begin
    if  (BJMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TQuotation.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if BJMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQuotation.DBGrid3EditButtonClick(Sender: TObject);
begin
BBTT1Click(nil);
end;

procedure TQuotation.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //
  if BJDet.FieldByName('YN').value='0' then
  begin
      DBGrid4.canvas.font.color:=clred;
      DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
  if BJDet.FieldByName('BJNO').isnull then
  begin
      DBGrid4.canvas.font.color:=clLime;
      DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
  if ((BJDet.FieldByName('USPrice').AsString='0') or (BJDet.FieldByName('VNPrice').AsString='0'))  then          //
  begin
    if ((DataCol=3) or (DataCol=4))   then
    begin
      DBGrid4.canvas.Brush.Color:=clyellow;
      DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
end;

procedure TQuotation.DBGrid4EditButtonClick(Sender: TObject);
begin
BBTT2click(nil);
end;

procedure TQuotation.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TQuotation.BJMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TQuotation.BBTT2Click(Sender: TObject);
begin
Quotation_CL:=TQuotation_CL.create(self);
Quotation_CL.show;
end;

procedure TQuotation.BBTT1Click(Sender: TObject);
begin
Quotation_ZS:=TQuotation_ZS.create(self);
Quotation_ZS.show;
end;

procedure TQuotation.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS3 then
  begin
    panel1.visible:=true;
    panel6.visible:=false;
    panel7.visible:=false;
  end else if PC1.ActivePage=TS4 then
  begin
    panel1.visible:=false;
    panel6.visible:=true;
    panel7.visible:=false;
  end else if PC1.ActivePage=TS5 then
  begin
    panel1.visible:=false;
    panel6.visible:=false;
    panel7.visible:=true;
  end;
end;

procedure TQuotation.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TQuotation.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TQuotation.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TQuotation.BDT5Click(Sender: TObject);
begin
if BJDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        Quotation_Print:=TQuotation_Print.Create(nil);
        Quotation_Print.quickrep1.prepare;
        Quotation_Print.Qpage1.caption:=inttostr(Quotation_Print.quickrep1.QRPrinter.pagecount);
        Quotation_Print.quickrep1.preview;
        Quotation_Print.Free;
      end;
end;

procedure TQuotation.FormDestroy(Sender: TObject);
begin
Quotation:=nil;
end;

procedure TQuotation.Button2Click(Sender: TObject);
begin
  with CGDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGZL.CGNO,CGZL.ZSBH,CGZLS.CLBH,CLZL.YWPM, CGZLS.USPrice,CGZLS.VNPrice,CGZLS.UserDate,CGZL.UserID from CGZL,CGZLS ');
    SQL.Add('left join CLZL on CLZL.CLDH=CGZLS.CLBH ');
    SQL.Add('where CGZL.CGNO=CGZLS.CGNO  and CGZL.ZSBH=:ZSBH and CGZLS.CLBH in (select CLBH from CGBJS where BJNO=:BJNO ) ');
    SQL.Add('and CGZL.CGNO like '''+Edit6.Text+'%'+''' ');
    SQL.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    if Check.Checked then
    begin
        SQL.Add('and CGZLS.USERID='+''''+main.Edit1.Text+'''');
    end;
    Active:=true;
  end;
  BE4.Enabled:=true;
  BE5.Enabled:=false;
end;

procedure TQuotation.BE1Click(Sender: TObject);
begin
  Panel5.Visible:=true;
end;

procedure TQuotation.BE4Click(Sender: TObject);
var i:integer;
begin
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  CGDet.First;
  for i:=0 to CGDet.RecordCount-1 do
  begin
    if BJDet.Locate('CLBH',CGDet.FieldByName('CLBH').AsString,[]) then
    begin
      CGDet.Edit;
      CGDet.FieldByName('USPrice').Value:=BJDet.FieldByName('USPrice').Value;
      CGDet.FieldByName('VNPrice').Value:=BJDet.FieldByName('VNPrice').Value;
      CGDet.Post;
    end;
    CGDet.next;
  end;
  //
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TQuotation.BE6Click(Sender: TObject);
begin
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BE5.Enabled:=false;
  BE6.Enabled:=false;
end;

procedure TQuotation.BE5Click(Sender: TObject);
var i:integer;
begin
  //
  CGDet.First;
  for i:=0 to CGDet.RecordCount-1 do
  begin
    case CGDet.updatestatus of
      usmodified:
      begin
        CGDet.Edit;
        CGDet.FieldByName('UserID').Value:=main.Edit1.Text;
        CGDet.FieldByName('UserDate').Value:=NDate;
        CGDet.Post;
        UPCGDet.Apply(ukmodify);
      end;
    end;
    CGDet.next;
  end;
  //
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BE5.Enabled:=false;
  BE6.Enabled:=false;  
end;

procedure TQuotation.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //
  if ((CGDet.FieldByName('USPrice').AsString='') and (CGDet.FieldByName('VNPrice').AsString=''))  then          //
  begin
    if ((DataCol=5) or (DataCol=6))   then
    begin
      DBGrid1.canvas.Brush.Color:=clyellow;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
end;

end.
