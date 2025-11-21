unit UccLabel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, dateutils,
  OleCtrls, Printers, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, Buttons,
  ShellApi, menus, Math, ComCtrls, StrUtils, Grids, DBGrids, comobj;

type
  TUccLabel = class(TForm)
    DBGridEh1: TDBGridEh;
    YWDD: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    YWDDDDBH: TStringField;
    YWDDArticle: TStringField;
    YWDDXieMing: TStringField;
    YWDDQty: TFloatField;
    YWDDCTS: TIntegerField;
    CartonBar: TQuery;
    UpBar: TUpdateSQL;
    DS2: TDataSource;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    CartonBarCARTONBAR: TStringField;
    CartonBarDDBH: TStringField;
    CartonBarCARTONNO: TIntegerField;
    CartonBarXH: TStringField;
    CartonBarQty: TIntegerField;
    CartonBarSB: TStringField;
    CartonBarINCS: TSmallintField;
    CartonBarINDATE: TDateTimeField;
    CartonBarOUTCS: TSmallintField;
    CartonBarOUTDATE: TDateTimeField;
    CartonBarINSPECTCS: TIntegerField;
    CartonBarINSPECTDATE: TDateTimeField;
    CartonBarEXEDATE: TDateTimeField;
    CartonBarMEMO: TStringField;
    CartonBarUSERID: TStringField;
    CartonBarUSERDATE: TDateTimeField;
    CartonBarYN: TStringField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Qtemp: TQuery;
    YWBZPOS: TQuery;
    YWDDSB: TStringField;
    YWBZPOS2: TQuery;
    Modify1: TMenuItem;
    YWDDokQty: TIntegerField;
    CartonBarsgw: TFloatField;
    Button5: TButton;
    recc: TQuery;
    Button6: TButton;
    Ad_Packing: TQuery;
    Ad_PackingS: TQuery;
    DS_Packing: TDataSource;
    CartonBarLPNBarCode: TStringField;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PackingStyleCB: TComboBox;
    BgWeight: TEdit;
    Edit5: TEdit;
    YWDDKHPO: TStringField;
    Memo1: TMemo;
    CartonBarKHDDBH1: TStringField;
    CartonBarKHPO: TStringField;
    N1: TMenuItem;
    Excel1: TMenuItem;
    DefaultPCK: TCheckBox;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Delete1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure PackingStyleCBChange(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    PerBgWeight: double;
    { Private declarations }
    function GetWeightQry(): boolean;
    function CheckBgWeigth(): boolean; //檢查輸入手提袋重量
    function GetCheckDigit(input: string): string;
    procedure ShowWeightInfo(DDBH, XH: string);
  public
    { Public declarations }
  end;

var
  UccLabel: TUccLabel;
  sdate, edate, NDate: Tdate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TUccLabel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;

end;

procedure TUccLabel.FormDestroy(Sender: TObject);
begin
  UccLabel := nil;
end;

procedure TUccLabel.Button1Click(Sender: TObject);
begin

  sdate := DTP1.Date;
  edate := DTP2.Date;

  with YWDD do
  begin
    active := false;
    sql.clear;
    sql.add('select YSBH as DDBH,KHPO,Article,XieMing,SUM(Qty) as Qty,SUM(CTS) as CTS,MAX(SB) as SB,SUM(okQty) as OkQty from ( ');
    sql.add('select YWDD.YSBH,YWDD.DDBH,DDZL.KHPO,XXZL.Article,XXZL.XieMing,YWDD.Qty,YWBZPOS.CTS, ');
    sql.add('        (select top 1 isnull(SB,0) SB from YWCP where YWCP.DDBH=YWDD.DDBH  order by SB DESC) as SB ,');
    sql.add('        (select sum(qty) from YWCP where YWCP.DDBH=YWDD.DDBH  group by ddbh) as okQty ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    sql.add('left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS');
    sql.add('                 left join YWDD on YWDD.DDBH=YWBZPOS.DDBH ');
    sql.add('                 where YWDD.YSBH like ''' + edit1.Text +
      '%'') YWBZPOS ');
    sql.add('                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=YWDD.DDBH');
    //sql.add('left join (select top 1 DDBH ,isnull(SB,0) SB from YWCP  order by SB DESC) YWCP on YWCP.DDBH=YWDD.DDBH ');
    sql.add('where DDZL.DDBH like ' + '''' + edit1.Text + '%' + '''');
    sql.add('      and DDZL.KHPO like ' + '''' + '%' + edit5.text + '%' +
      '''');
    sql.add('      and XXZL.article like ' + '''' + '%' + edit2.text + '%' +
      '''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      ''' + formatdatetime('yyyy/MM/dd', sdate) + '''' + 'and ' +
      '''' + formatdatetime('yyyy/MM/dd', edate) + '''');
    sql.add('      and YWDD.GSBH=' + '''' + main.Edit2.Text + '''');
    sql.add('      and YWBZPOS.DDBH is not null ) YWDD ');
    sql.add('Group by YSBH,KHPO,Article,XieMing  ');
    sql.add('order by DDBH');
    //memo2.Text:=sql.Text;
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
    if recordcount > 0 then
    begin
      Panel3.Visible := true;
      cartonbar.Active := true;
    end;
  end;

end;

procedure TUccLabel.Button4Click(Sender: TObject);
begin
  if messagedlg('You really want to delete all carton barcode?', mtinformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    cartonbar.Active := false;
    with Qtemp do
    begin
      active := false;
      sql.clear;
      sql.add('select DDBH from YWCP ');
      sql.add('where DDBH=' + '''' + YWDD.FieldByName('DDBH').Value + '''');
      sql.add('      and SB is not null ');
      active := true;
      if recordcount = 0 then
      begin
        active := false;
        sql.Clear;
        sql.add('delete YWCP ');
        sql.add('where DDBH=' + '''' + YWDD.FieldByName('DDBH').Value + '''');
        execsql;
        cartonbar.Active := true;
      end
      else
      begin
        showmessage(' 請注意，成品已入庫.' + #13 +
          'Pls pay attention, already produced');
        abort;
      end;
    end;
  end;
end;

procedure TUccLabel.Button2Click(Sender: TObject);
var
  OrderListExcel: Variant;
  RowIndex, Offset, i, CTQ, CTZ: integer;
  GsinNo, CustomerPo: string;
  Isbreak: boolean;
  GsinNoList: TStringlist;
begin
  if cartonbar.recordcount > 0 then
  begin
    showmessage('Already send, if you want to import, please delete first.');
    abort;
  end;

  if OpenDialog1.Execute() = true then
  begin
    try
      // Open Excel OLE
      OrderListExcel := CreateOleObject('Excel.Application');
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL' + E.Message), '', MB_OK);
        Exit;
      end;
    end;

    try
      OrderListExcel.WorkBooks.Open(OpenDialog1.FileName);
      OrderListExcel.WorkSheets[1].Activate;

      Offset := 1;
      RowIndex := 1;
      GsinNo := OrderListExcel.Cells[RowIndex + offset, 1];
      CustomerPo := OrderListExcel.Cells[1 + 2, 3];
      Isbreak := false;
      GsinNoList := TStringList.Create;

      if (GsinNo <> 'LPN No.') then
      begin
        ShowMessage('The excel format error');
        Abort;
      end;

      if (CustomerPO <> YWDD.FieldByName('KHPO').Value) then
      begin
        ShowMessage('The imported data is inconsistent with the PO');
        Abort;
      end;

      repeat
        Offset := Offset + 1;
        GsinNo := OrderListExcel.Cells[RowIndex + offset, 1];

        if (Trim(GsinNo) = '') then
        begin
          Isbreak := true;
        end
        else
        begin
          GsinNoList.Add(GsinNo);
        end;

      until Isbreak = true;

      with Cartonbar do
      begin
        YWBZPOS.Active := true;
        YWBZPOS.first;
        while not YWBZPOS.Eof do
        begin
          CTQ := YWBZPOS.fieldbyname('CTQ').Value;
          CTZ := YWBZPOS.fieldbyname('CTZ').Value;
          for i := 0 to CTZ - CTQ do
          begin
            Insert;
            fieldbyname('CartonBar').value := GsinNoList[(i + CTQ) - 1];
            fieldbyname('DDBH').value := YWBZPOS.fieldbyname('DDBH').Value;
            fieldbyname('CartonNO').value := i + CTQ;
            fieldbyname('XH').value := YWBZPOS.fieldbyname('XH').Value;
            fieldbyname('Qty').value := YWBZPOS.fieldbyname('Qty').Value;
            fieldbyname('USERID').value := main.Edit1.text;
            fieldbyname('USERDATE').value := date;
            fieldbyname('YN').value := '1';
            Post;
            UpBar.Apply(ukinsert);
          end;
          YWBZPOS.Next;
        end;
        YWBZPOS.Active := false;
        active := false;
        active := true;
      end;

    except
      // do something
    end;
  end;
end;

procedure TUccLabel.Button3Click(Sender: TObject);
var
  i, CTQ, index, CTZ: integer;
  inputGsinNo, realGsinNo, saveGsinNo, startNo: string;
begin

  if cartonbar.recordcount > 0 then
  begin
    showmessage('Already send, if you want to send again, please delete first.');
    abort;
  end;

  InputQuery('Input Shipment Number',
    'Please enter the starting Shipment Number:', inputGsinNo);

  if (Length(inputGsinNo) <> 20) then
  begin
    ShowMessageFmt('Shipment Number Wrong Length(must be 20): %s',
      [inputGsinNo]);
    Abort;
  end;

  realGsinNo := Copy(inputGsinNo, 4, 16);
  if (RightStr(inputGsinNo, 1) <> GetCheckDigit(realGsinNo)) then
  begin
    ShowMessageFmt('Shipment Number Check Digit Invalid: %s', [inputGsinNo]);
    Abort;
  end;

  with Cartonbar do
  begin
    startNo := IntToStr(StrToint(Copy(inputGsinNo, 12, 8)) - 1);
    YWBZPOS.Active := true;
    YWBZPOS.first;
    while not YWBZPOS.Eof do
    begin
      CTQ := YWBZPOS.fieldbyname('CTQ').Value;
      CTZ := YWBZPOS.fieldbyname('CTZ').Value;
      for i := 0 to CTZ - CTQ do
      begin
        index := StrToInt(startNo) + (i + CTQ);

        // Create Gsin Number
        saveGsinNo := Copy(inputGsinNo, 0, 11) + IntToStr(index);
        saveGsinNo := saveGsinNo + GetCheckDigit(saveGsinNo);

        Insert;
        fieldbyname('CartonBar').value := saveGsinNo;
        fieldbyname('DDBH').value := YWBZPOS.fieldbyname('DDBH').Value;
        fieldbyname('CartonNO').value := i + CTQ;
        fieldbyname('XH').value := YWBZPOS.fieldbyname('XH').Value;
        fieldbyname('Qty').value := YWBZPOS.fieldbyname('Qty').Value;
        fieldbyname('USERID').value := main.Edit1.text;
        fieldbyname('USERDATE').value := date;
        fieldbyname('YN').value := '1';
        Post;
        UpBar.Apply(ukinsert);
      end;
      YWBZPOS.Next;
    end;
    YWBZPOS.Active := false;
    active := false;
    active := true;
  end;

end;

procedure TUccLabel.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if not YWDD.fieldbyname('SB').isnull then
    DBGrideh2.canvas.Font.Color := clBlue;
  if (YWDD.fieldbyname('Qty').Value <> YWDD.fieldbyname('okQty').Value) and (not
    YWDD.fieldbyname('okQty').isnull) then
    DBGrideh2.canvas.Font.Color := clRed;
end;

procedure TUccLabel.Delete1Click(Sender: TObject);
begin
  if CartonBar.recordcount > 0 then
  begin
    if not CartonBar.FieldByName('SB').IsNull then
    begin
      {if messagedlg('Already produce . Really delete?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          Upbar.Apply(ukdelete);
          CartonBar.Active:=false;
          CartonBar.Active:=true;
        end
        else}
      showmessage('Already produced, can not delete one carton.');
      abort;
    end
    else
    begin
      Upbar.Apply(ukdelete);
      CartonBar.Active := false;
      CartonBar.Active := true;
    end;
  end;
end;

procedure TUccLabel.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  DTP1.date := startofthemonth(incmonth(NDate, 1)) + 5;
  DTP2.date := startofthemonth(incmonth(NDate, 2)) + 4;
end;

procedure TUccLabel.Modify1Click(Sender: TObject);
begin

  if CartonBar.recordcount > 0 then
  begin
    if not CartonBar.FieldByName('SB').IsNull then
    begin
      {if messagedlg('Already produce . Really delete?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          Upbar.Apply(ukdelete);
          CartonBar.Active:=false;
          CartonBar.Active:=true;
        end
        else}
      showmessage('Already produced, can not modify the carton.');
      abort;
    end
    else
    begin
      Upbar.Apply(ukmodify);
      CartonBar.Active := false;
      CartonBar.Active := true;
    end;
  end;
end;

procedure TUccLabel.Button5Click(Sender: TObject);
begin
  //
  if CheckBgWeigth() = false then
  begin
    Showmessage('please input exact bag weight!');
    abort;
  end;
  //
  if cartonbar.recordcount = 0 then
  begin
    showmessage('No Cartonbar. Create carton barcode first.');
    abort;
  end;
  //
  with Cartonbar do
  begin
    first;
    while not Eof do
    begin
      //取得鞋型重量輕單
      if GetWeightQry() = false then
        break;

      if recc.RecordCount > 0 then
      begin
        edit;
        fieldbyname('USERID').value := main.Edit1.text;
        fieldbyname('USERDATE').value := date;
        fieldbyname('sgw').Value := recc.fieldbyname('nweigh').Value +
          recc.fieldbyname('oweigh').Value;
        post;
        UpBar.Apply(ukmodify);
      end;
      Next;
    end;
    active := false;
    active := true;
  end;

end;

//檢查手提袋輸入重量
function TUccLabel.CheckBgWeigth(): boolean;
begin
  //
  result := true;
  try
    PerBgWeight := strtofloat(BgWeight.Text);
  except
    result := false;
  end;

  //
end;

//取得鞋子重量
function TUccLabel.GetWeightQry(): boolean;
var
  iRes: boolean;
  msg: string;
begin
  iRes := true;
  //檢查是否鞋型尺寸未輸入
  with recc do
  begin
    active := false;
    sql.clear;
    sql.Add('select ywbzpos.ddCC');
    sql.Add('    from ywbzpos ');
    sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
    sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
    sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
    sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
    sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
    sql.Add('where YWBZPO.DDBH=''' + CartonBar.FieldByName('DDBH').AsString +
      '''  and YWBZPO.xh=''' + CartonBar.FieldByName('xh').AsString + '''');
    sql.Add('and YWXXNew.XXCC is null ');
    active := true;
  end;
  if recc.RecordCount > 0 then
  begin
    recc.First;
    while not recc.Eof do
    begin
      msg := msg + recc.FieldByName('ddCC').AsString + ',';
      recc.Next;
    end;
    msg := copy(msg, 1, length(msg) - 1);
    Showmessage('No weight size:' + msg);
    exit;
  end;
  //取得鞋型標準重量
  with recc do
  begin
    active := false;
    sql.clear;
    sql.Add('select ddzl.ddbh,ywbzpos.xh');
    //計算重量加總 內盒+鞋子淨重 , 鞋子淨重+塑膠套(0g)
    if PackingStyleCB.itemindex = 0 then //鞋淨重+內盒
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0))*ywbzpos.qty) as nweigh');
    if PackingStyleCB.itemindex = 1 then //只算鞋淨重
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0))*ywbzpos.qty) as nweigh');
    if PackingStyleCB.itemindex = 2 then //只算鞋淨重+隔版
      sql.Add('       ,(sum(isnull(YWXXNew.nweigh,0) *ywbzpos.qty)+(' +
        floattostr(PerBgWeight) + ')) as nweigh'); //((0.223*2)+0.094))
    if ((PackingStyleCB.itemindex = 3) or (PackingStyleCB.itemindex = 4)) then
      //361訂單外盒+手提袋
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0)+'
        + floattostr(PerBgWeight) + ')*ywbzpos.qty) as nweigh');

    //
    sql.Add('       ,ywbzpo.clbh,ywwx2.oweigh from ywbzpos ');
    sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
    sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
    sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
    sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
    sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
    sql.Add('where YWBZPO.DDBH=''' + CartonBar.FieldByName('DDBH').AsString +
      '''  and YWBZPO.xh=''' + CartonBar.FieldByName('xh').AsString + '''');
    sql.Add('group by ddzl.ddbh,ywbzpos.xh,ywbzpo.clbh,ywwx2.oweigh ');
    active := true;
  end;
  //回傳
  result := iRes;
end;

//
procedure TUccLabel.Button6Click(Sender: TObject);
begin
  if CheckBgWeigth() = false then
  begin
    Showmessage('please input exact bag weight!');
    exit;
  end;
  //
  ywdd.First;
  while not ywdd.Eof do
  begin
    if cartonbar.recordcount = 0 then
    begin
      showmessage('No Cartonbar. Create carton barcode first.');
      abort;
    end;
    //
    with Cartonbar do
    begin
      first;
      while not Eof do
      begin
        //取得鞋型重量輕單
        if GetWeightQry() = false then
          break;
        if recc.RecordCount > 0 then
        begin
          edit;
          fieldbyname('USERID').value := main.Edit1.text;
          fieldbyname('USERDATE').value := date;
          fieldbyname('sgw').Value := recc.fieldbyname('nweigh').Value +
            recc.fieldbyname('oweigh').Value;
          post;
          UpBar.Apply(ukmodify);
        end;
        Next;
      end;
      active := false;
      active := true;
      Application.ProcessMessages;
    end;
    ywdd.Next;
    //
  end;
end;

//現場測試用
procedure TUccLabel.ShowWeightInfo(DDBH, XH: string);
var
  msg: string;
begin
  //檢查是否鞋型尺寸未輸入
  with recc do
  begin
    active := false;
    sql.clear;
    sql.Add('select ywbzpos.ddCC,YWXXNew.XXCC,YWXXNew.nweigh,YWXXNew.oweigh,ywbzpos.qty');
    sql.Add('    from ywbzpos ');
    sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
    sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
    sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
    sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
    sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
    sql.Add('where YWBZPO.DDBH=''' + DDBH + '''  and YWBZPO.xh=''' + XH + '''');
    //funcObj.WriteErrorLog(sql.Text);
    active := true;
  end;
  if recc.RecordCount > 0 then
  begin
    recc.First;
    msg := 'Size Run List =>' + #13#10;
    msg := 'DDCC,XXCC,NWeight,OWeight,Qty' + #13#10;
    while not recc.Eof do
    begin
      msg := msg + '[' + recc.FieldByName('ddCC').AsString + '],[' +
        recc.FieldByName('XXCC').AsString + '],[' +
        recc.FieldByName('nweigh').AsString + '],[' +
        recc.FieldByName('oweigh').AsString + '],[' +
        recc.FieldByName('qty').AsString + ']' + #13#10;
      recc.Next;
    end;
    //funcObj.WriteErrorLog(datetimetostr(now)+' '+#13#10+msg);
  end;
  //取得鞋型標準重量
  with recc do
  begin
    active := false;
    sql.clear;
    sql.Add('select ddzl.ddbh,ywbzpos.xh');
    //計算重量加總 內盒+鞋子淨重 , 鞋子淨重+塑膠套(0g)
    if PackingStyleCB.itemindex = 0 then //鞋淨重+內盒
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0))*ywbzpos.qty) as nweigh');
    if PackingStyleCB.itemindex = 1 then //只算鞋淨重
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0))*ywbzpos.qty) as nweigh');
    if PackingStyleCB.itemindex = 2 then //只算鞋淨重+隔版
      sql.Add('       ,(sum(isnull(YWXXNew.nweigh,0) *ywbzpos.qty)+(' +
        floattostr(PerBgWeight) + '))  as nweigh'); //(0.223*2)+0.094
    if ((PackingStyleCB.itemindex = 3) or (PackingStyleCB.itemindex = 4)) then
      //361訂單外盒+手提袋
      sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0)+'
        + floattostr(PerBgWeight) + ')*ywbzpos.qty) as nweigh');
    //
    sql.Add('       ,ywbzpo.clbh,ywwx2.oweigh from ywbzpos ');
    sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
    sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
    sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
    sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
    sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
    sql.Add('where YWBZPO.DDBH=''' + DDBH + '''  and YWBZPO.xh=''' + XH + '''');
    sql.Add('group by ddzl.ddbh,ywbzpos.xh,ywbzpo.clbh,ywwx2.oweigh ');
    //funcObj.WriteErrorLog(sql.Text);
    active := true;
  end;
  if recc.RecordCount > 0 then
  begin
    recc.First;
    msg := 'Size Calculation: =>' + #13#10;
    msg := msg + 'Sum(Nweight),OWeigtht: =>' + #13#10;
    while not recc.Eof do
    begin
      msg := msg + '[' + recc.FieldByName('nweigh').AsString + '],[' +
        recc.FieldByName('oweigh').AsString + ']';
      recc.Next;
    end;
    msg := msg + 'Total:' + floattostr(recc.fieldbyname('nweigh').Value +
      recc.fieldbyname('oweigh').Value);
    //funcObj.WriteErrorLog(datetimetostr(now)+' '+#13#10+msg);
  end;
end;

procedure TUccLabel.DBGridEh1DblClick(Sender: TObject);
begin
  ShowWeightInfo(CartonBar.FieldByName('DDBH').AsString,
    CartonBar.FieldByName('XH').AsString);
end;

procedure TUccLabel.PackingStyleCBChange(Sender: TObject);
begin
  if PackingStyleCB.ItemIndex >= 2 then
  begin
    if PackingStyleCB.ItemIndex = 2 then
      BgWeight.Text := '0.54';
    if PackingStyleCB.ItemIndex = 3 then
      BgWeight.Text := '0.06';
    if PackingStyleCB.ItemIndex = 4 then
      BgWeight.Text := '0.04';
    BgWeight.Visible := true
  end
  else
  begin
    BgWeight.Visible := false;
  end;
end;

procedure TUccLabel.Excel1Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if CartonBar.active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel', 'Microsoft   Excel', MB_OK +
        MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to CartonBar.fieldCount - 1 do
      begin
        eclApp.Cells(1, i + 1) := CartonBar.fields[i].FieldName;
      end;
      CartonBar.First;
      j := 2;
      while not CartonBar.Eof do
      begin
        for i := 0 to CartonBar.FieldCount - 1 do
        begin
          eclApp.Cells(j, i + 1) := CartonBar.Fields[i].Value;
        end;
        CartonBar.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible := True;
    except
      on F: Exception do
        showmessage(F.Message);
    end;
  end;
end;

function TUccLabel.GetCheckDigit(input: string): string;
var
  i, total, number, inputLength: Integer;
begin
  total := 0;
  inputLength := Length(input);

  for i := 1 to inputLength do
  begin
    number := StrToInt(input[inputLength - i + 1]);
    if i mod 2 = 0 then
      total := total + number
    else
      total := total + (number * 3);
  end;

  Result := IntToStr((Ceil(total / 10) * 10) - total);
end;

end.
