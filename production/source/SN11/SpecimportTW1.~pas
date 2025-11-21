unit SpecimportTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, GridsEh,
  DBGridEh,DBGridEhImpExp, ShellAPI, Zlib;

type
  TSpecimportTW = class(TForm)
    gdMain: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDDBH: TEdit;
    edXieMing: TEdit;
    bnQuery: TButton;
    dsMain: TDataSource;
    qrMain: TQuery;
    Label3: TLabel;
    edCustomer: TEdit;
    qrMainDDBH: TStringField;
    qrMainARTICLE: TStringField;
    qrMainDDZT: TStringField;
    qrMainShipDate: TDateTimeField;
    qrMainPairs: TIntegerField;
    qrMainXieMing: TStringField;
    qrMainKFJC: TStringField;
    qrMainGSBH: TStringField;
    cbNew: TCheckBox;
    qrMainXieXing: TStringField;
    qrMainSheHao: TStringField;
    qrMainCCGB: TStringField;
    qrMainKHBH: TStringField;
    qrMainBB: TStringField;
    qrMainKHPO: TStringField;
    qrMainVersion: TSmallintField;
    qrMainTrader: TStringField;
    qrMainTraderPO: TStringField;
    qrMainDDLB: TStringField;
    qrMainCPLB: TStringField;
    qrMainBZFS: TStringField;
    qrMainDest: TStringField;
    qrMainDDGB: TStringField;
    qrMainDDRQ: TDateTimeField;
    qrMainJYTJ: TStringField;
    qrMainFKTJ: TStringField;
    qrMainTotals: TFloatField;
    qrMainZLBH: TStringField;
    qrMainGSDH: TStringField;
    qrMainCFNO: TStringField;
    qrMainUSERID: TStringField;
    qrMainUSERDATE: TDateTimeField;
    qrMainDDCZ: TStringField;
    qrMainDDPACKSM: TStringField;
    qrMainLABELCHARGE: TFloatField;
    qrMainGender: TStringField;
    qrMainYN: TStringField;
    qrMainDDGB_1: TStringField;
    qrMainSHQR: TStringField;
    cbAll: TCheckBox;
    qrMainBUYNO: TStringField;
    qrSimple: TQuery;
    qrSimpleXieXing: TStringField;
    qrSimpleSheHao: TStringField;
    qrSimpleXieMing: TStringField;
    qrSimpleARTICLE: TStringField;
    qrSimpleSimpleSize: TFloatField;
    qrSimpleSignature: TStringField;
    qrSimpleSingDate: TDateTimeField;
    qrSimpleExpireDate: TDateTimeField;
    qrSimpleUSERID: TStringField;
    qrSimpleUSERDATE: TDateTimeField;
    udMain: TUpdateSQL;
    Label4: TLabel;
    edBuyNo: TEdit;
    bnCopy: TButton;
    chkOrderCancel: TCheckBox;
    CheckBox1: TCheckBox;
    qrMainRYTYPE: TStringField;
    SampleShoeCK: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bnQueryClick(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
    procedure gdMainKeyPress(Sender: TObject; var Key: Char);
    procedure qrMainNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure bnCopyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecimportTW: TSpecimportTW;

implementation

uses SpecImport1, main1, FunUnit;

{$R *.dfm}

procedure TSpecimportTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  SpecImport.enabled:=true;
end;

procedure TSpecimportTW.gdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

//判定訂單狀態(未審及取消-> 紅色;正常分割訂單->黃色;正常未分割訂單->黑色
 if qrMain.FieldByName('SHQR').value<>'Y' then
    gdMain.canvas.font.color:=clred;

 if qrMain.FieldByName('DDZT').value='C' then
    gdMain.canvas.font.color:=clred;

 if qrMain.FieldByName('DDZT').value='S' then
    gdMain.canvas.font.color:=clBlue;
  //是否已經匯入
 if not qrMain.FieldByName('GSBH').isnull then
    gdMain.canvas.font.color:=clLime;

end;

procedure TSpecimportTW.bnQueryClick(Sender: TObject);
//var
  //f:textfile;
begin

  with qrMain do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZLTW.*,XXZl.XieMing,KFZL.KFJC,DDZL.GSBH,lbzls.YWSM as DDGB,ZLZL.SHQR');
    sql.add('from DDZLTW ');
    sql.add('left join XXZL on DDZlTW.XieXing=XXZl.XieXing and DDZlTW.SheHao=XXZl.SheHao');
    sql.add('left join kfzl on KFZl.KFDH=DDZLTW.KHBH');
    sql.add('left join DDZL on DDZl.DDBH=DDZLTW.DDBH');
    sql.add('left join ZLZL on DDZlTW.ZLBH=ZLZL.ZLBH ');
    sql.add('left join LBZLS on lbzls.lb=''06'' and lbzls.lbdh=DDZLTW.DDGB ');

    sql.add('where DDZLTW.DDBH like ''%'+edDDBH.Text+'%'' ');
    if cbAll.Checked=true then
    begin
        sql.add('       and Convert(smalldatetime,convert(varchar,DDZLTW.Shipdate,111)) between ');
        sql.add('         '''+formatdatetime('yyyy/MM/dd',SpecImport.sdate)+''' and '''+formatdatetime('yyyy/MM/dd',SpecImport.edate)+''' ');
    end;
    sql.add('       and XXZL.XieMing like ''%'+edXieMing.Text+'%'' ');
    sql.add('       and KFZL.KFJC like ''%'+edCustomer.Text+'%'' ');
    if edBuyNo.Text<>''  then
      sql.Add('       and DDZLTW.BUYNO like ''%'+edBuyNo.Text+'%'' ');
    if not chkOrderCancel.Checked then
    begin
      sql.Add('and ddzltw.ddzt <>''C''');
    end;
    if cbNew.Checked then
      sql.add('       and not exists(select DDBH from DDZl where DDZl.DDBH=DDZLTW.DDBH )');
    sql.add('order by DDZLTW.DDBH ');
    funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;


end;

procedure TSpecimportTW.gdMainDblClick(Sender: TObject);
var
  i,j:integer;
begin
  with qrMain do
  begin
      if (not Active) or (recordcount=0) then
          abort;
      if ((FieldByName('SHQR').value<>'Y') and (Checkbox1.Checked=false)) then
          abort;
      if not FieldByName('GSBH').isnull  then
      begin
        showmessage('Pls discuss with '+qrMain.fieldbyname('GSBH').value+' first.');
        abort;
      end;
  end;

  //檢查是否有樣品鞋
  if SampleShoeCK.Checked=true then
  begin
    qrSimple.Active:=false;
    qrSimple.Active:=true;

    if qrSimple.Locate('xiexing;shehao',vararrayof([qrMain.fieldbyname('XieXing').Value,qrMain.fieldbyname('SheHao').Value]),[]) then
      if qrSimple.FieldByName('ExpireDate').value < qrMain.fieldbyname('ShipDate').Value then
        showmessage('Sample shoes is exceed of ExpireDate, RY can not be import')
      //因為確認鞋未補上所以先不鎖
      //abort;
      else
        if qrSimple.FieldByName('ExpireDate').value-30 < qrMain.fieldbyname('ShipDate').Value then
            showmessage('Sample shoes will be exceed ')
    else
      showmessage('No sample shoes, RY can not be import');
      //因為確認鞋未補上所以先不鎖
      //abort;
  end;
  // 樣品鞋判斷結束


  qrMain.Edit;
  qrMain.FieldByName('GSBH').Value:=main.Edit2.Text;

  with SpecImport.qrMain do
  begin
    edit;
    for i:=0 to qrMain.FieldCount-1 do
      for j:= 0 to SpecImport.qrMain.FieldCount-1 do
       if qrMain.Fields[i].FieldName = SpecImport.qrMain.fields[j].FieldName then
       begin
          SpecImport.qrMain.fields[j].Value:= qrMain.Fields[i].Value;
          break;
       end;
    fieldbyname('USERID').Value:=main.edit1.text;
    fieldbyname('USERDate').Value:=date;
    post;     //寫入前一筆新增
    insert;   //DB增加一筆資料
  end;
end;

procedure TSpecimportTW.gdMainKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    gdMainDblClick(nil);
end;

procedure TSpecimportTW.qrMainNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TSpecimportTW.FormDestroy(Sender: TObject);
begin
  SpecimportTW:=nil;
end;

procedure TSpecimportTW.bnCopyClick(Sender: TObject);
var bm:Tbookmark;
i,j,k:integer;
Qty:real;
bookmarklist:tbookmarklistEh;
begin
 with qrMain do
  begin
      if (not Active) or (recordcount=0) then
          abort;
      if (FieldByName('SHQR').value<>'Y')  and (messagedlg('Still holding, really import?',mtinformation,[mbYes,mbNo],0)<>mrYes) then
          abort;
      if not FieldByName('GSBH').isnull  then
      begin
        showmessage('Pls discuss with '+qrMain.fieldbyname('GSBH').value+' first.');
        abort;
      end;
  end;
  //檢查是否有樣品鞋
  if SampleShoeCK.Checked=true then
  begin
    qrSimple.Active:=false;
    qrSimple.Active:=true;

    if qrSimple.Locate('xiexing;shehao',vararrayof([qrMain.fieldbyname('XieXing').Value,qrMain.fieldbyname('SheHao').Value]),[]) then
      if qrSimple.FieldByName('ExpireDate').value < qrMain.fieldbyname('ShipDate').Value then
        showmessage('Sample shoes is exceed of ExpireDate, RY can not be import')
      //因為確認鞋未補上所以先不鎖
      //abort;
      else
        if qrSimple.FieldByName('ExpireDate').value-30 < qrMain.fieldbyname('ShipDate').Value then
            showmessage('Sample shoes will be exceed ')
    else
      showmessage('No sample shoes, RY can not be import');
      //因為確認鞋未補上所以先不鎖
      //abort;
  end;
  // 樣品鞋判斷結束
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not qrMain.Active) then
    begin
      abort;
    end;
  if (qrMain.recordcount<1) then
    begin
      abort;
    end;
  //with query1 do
   // begin
  qrMain.disablecontrols;
  bm:=qrMain.getbookmark;
  bookmarklist:=gdMain.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           qrMain.gotobookmark(pointer(bookmarklist[i]));
           qrMain.Edit;
           qrMain.FieldByName('GSBH').Value:=main.Edit2.Text;
           if qrmain.FieldByName('SHQR').value='Y' then
           begin
                with SpecImport.qrMain do
                begin
                  edit;
                  for j:=0 to qrMain.FieldCount-1 do
                    for k:= 0 to SpecImport.qrMain.FieldCount-1 do
                     if qrMain.Fields[j].FieldName = SpecImport.qrMain.fields[k].FieldName then
                     begin
                        SpecImport.qrMain.fields[k].Value:= qrMain.Fields[j].Value;
                        break;
                     end;
                  fieldbyname('USERID').Value:=main.edit1.text;
                  fieldbyname('USERDate').Value:=date;
                  post;     //寫入前一筆新增
                  insert;   //DB增加一筆資料
                end;
           end;
             //

        end;
      finally
        begin
          qrMain.gotobookmark(bm);
          qrMain.freebookmark(bm);
          qrMain.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TSpecimportTW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
