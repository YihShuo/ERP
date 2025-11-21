unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,dateutils, DB,
  DBTables, Menus, GridsEh, DBGridEh,ehlibBDE, ComCtrls, comobj;

type
  TOrderList = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrideh;
    SpecMas: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    DBGrid3: TDBGrideh;
    OrdDet: TQuery;
    DS2: TDataSource;
    SpecMasDDBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasDDZT: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    SpecMasXieMing: TStringField;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    SpecMasYSBH: TStringField;
    OrdDetXXCC: TStringField;
    OrdDetDDCC: TStringField;
    OrdDetQty: TIntegerField;
    OrdDetIPrice: TCurrencyField;
    SpecMasQty: TFloatField;
    SpecMasETD: TDateTimeField;
    N2: TMenuItem;
    N3: TMenuItem;
    SpecMasKFJC: TStringField;
    SpecMasPacking: TStringField;
    SpecMasDDMT: TStringField;
    SpecMasDDBZ: TStringField;
    N6: TMenuItem;
    SpecMasKHPO: TStringField;
    SpecMasCountry: TStringField;
    SpecMasKHDDBH1: TStringField;
    N4: TMenuItem;
    YWDDTP: TQuery;
    N5: TMenuItem;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    SpecMasBZDate: TDateTimeField;
    SpecMasKHBH: TStringField;
    SpecMasYSSM: TStringField;
    Button3: TButton;
    SpecMasIMGName: TStringField;
    N7: TMenuItem;
    RB1: TRadioButton;
    RB2: TRadioButton;
    BuyNOEdit: TEdit;
    SpecMasBUYNO: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    CountryEdit: TEdit;
    N8PackingMemo1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpecMasAfterOpen(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N8PackingMemo1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Edit1Paste();
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList;
  sdate,edate,NDate:Tdate;

implementation

uses OrderPO1, OrderMark1, OrderpackMemo1, main1, OrderPack_Print1,
  Orderpack_TP1, Orderpack_Label1, OrderPack_CartonPChoice1, FunUnit,untClipboard;

{$R *.dfm}

procedure TOrderList.FormCreate(Sender: TObject);
var i:integer;
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP1.date:=startofthemonth(incmonth(NDate,1))+5;
  DTP2.date:=startofthemonth(incmonth(NDate,2))+4;

end;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TOrderList.Button1Click(Sender: TObject);
var
  List: TStringList;
  i: Integer;
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;

  List := TStringList.Create;

  with SpecMas do
  begin

    List.Delimiter := ',';
    List.DelimitedText := edit1.Text;

    //Check dau , cuoi cung
    if Copy(edit1.Text, Length(edit1.Text), 1) = ',' then
    edit1.Text := Copy(edit1.Text, 1, Length(edit1.Text)-1);
    List.DelimitedText := edit1.Text;

    if List.Count > 100 then
      begin
        ShowMessage('SpecNo cannot be more than 100');
        List.Free;
        Exit;
      end;

      // FIX  YWDD.BZDate  YWDDBZ.YN=1
    active:=false;
    sql.Clear;
    sql.add('select * from (');
    sql.add('select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,YWDD.KHDDBH1,');
    sql.add('       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC, DDZL.KHBH, KFZL.KFJC,XXZL.IMGName, YWDD.BZDate, ');
    sql.add('       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.DDBH ) as Packing,');
    sql.add('       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDBH ) as DDMT,');
    sql.add('       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDBH and YWDDBZ.YN= 1 )  as DDBZ');
    sql.add('       ,xxzl.yssm,DDZL.BUYNO ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB=''13'' and LBZLS.LBDH=DDZL.Dest');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');

    if edit1.Text <> '' then
      begin
        for i := 0 to List.Count - 1 do
        begin
          if i = 0 then
            SQL.Add('where (DDZL.DDBH like ''%' + List[i] + '%'')')
          else
            SQL.Add('or (DDZL.DDBH like ''%' + List[i] + '%'')');
        end;
      end
    else

    sql.Add('where DDZL.DDBH like '''+edit1.Text+'%'' ');
    sql.add('      and XXZL.XieMing like ''%'+edit2.text+'%'' ');

    if Edit3.Text <>'' then
      sql.add('    and DDZL.Article like '''+Edit3.Text+'%'' ');

    if CountryEdit.Text <> '' then
      sql.Add('    and LBZLS.YWSM  like ''%'+CountryEdit.Text+'%'' ');
    if RB1.Checked=true then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    end else if RB2.Checked=true then
    begin
      sql.add('      and DDZL.BUYNO like '''+BuyNOEdit.Text+'%'' ');
    end;
    sql.add('      and YWDD.GSBH='''+main.edit2.text+''' ');
    sql.add(') YWDD ');
    sql.add('order by YWDD.DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(sql.Text);
    active:=true;
  end;
  OrdDet.Active:=true;
  
end;

procedure TOrderList.N1Click(Sender: TObject);
begin
  OrderPo:=TOrderPO.create(self);
  OrderPO.show;
  //enabled:=false;
end;

procedure TOrderList.SpecMasAfterOpen(DataSet: TDataSet);
begin
if SpecMas.recordcount>0 then
  begin
    N1.Enabled:=true ;
    N2.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
end;

procedure TOrderList.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SpecMas.FieldByName('DDZT').Value<>'Y' then
    DBGrid1.canvas.font.color:= clred   ;

  if (not SpecMas.FieldByName('Packing').isnull) and (not SpecMas.FieldByName('DDMT').isnull) and (not SpecMas.FieldByName('DDBZ').isnull) then //and (not SpecMas.FieldByName('BZDate').isnull) then
    DBGrid1.canvas.font.color:= clblue;
end;

procedure TOrderList.N2Click(Sender: TObject);
begin
  OrderMark:=TOrderMark.create(self);
  OrderMark.show;
end;

procedure TOrderList.N3Click(Sender: TObject);
var
  sl: TStringList;
  SelectedField: TField;
  //a: Integer;
begin
  OrderpackMemo:=TOrderpackMemo.create(self);
  OrderpackMemo.show;

  //Code them thong bao ma da lay
  {sl := TStringList.Create;
  try
    for a := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      DBGrid1.DataSource.DataSet.Bookmark := DBGrid1.SelectedRows[a];
      sl.Add(DBGrid1.DataSource.DataSet.FieldByName('DDBH').AsString);
    end;
    sl.Sort;
    sl.Delimiter := ',';
    //ShowMessage('Cac ma DDBH da lay duoc la ' + sl.DelimitedText);
    OrderpackMemo.Edit1.Text := sl.DelimitedText;
  finally
    sl.Free;
  end;  }
  
   sl := TStringList.Create;
  try
    SelectedField := DBGrid1.DataSource.DataSet.FieldByName('DDBH');
    if Assigned(SelectedField) then
    begin
      sl.Add(SelectedField.AsString);
      OrderpackMemo.Edit1.Text := SelectedField.AsString;
    end;
  finally
    sl.Free;
  end;
end;

procedure TOrderList.FormDestroy(Sender: TObject);
begin
   OrderList:=nil;
end;

procedure TOrderList.N6Click(Sender: TObject);
var PC1,PC2,PC3,a:string;
    List:TStringList;
begin

  List:=TStringList.create();
  List.add('VA12');
  List.add('VA3');
  List.add('VB1');
  List.add('VB2');
  List.add('VB7');

  if (not SpecMas.FieldByName('Packing').isnull) and (not SpecMas.FieldByName('DDMT').isnull) and (not SpecMas.FieldByName('DDBZ').isnull) then
  begin
    OrderPack_Print:=TOrderPack_Print.create(self);
       case List.IndexOf(main.Edit2.Text) of    //判斷登入廠別是否須在報表顯示ISO NO
       0,1,2,3,4:
          begin
            OrderPack_Print.QRLabel46.Enabled:=true;
            OrderPack_Print.QRLabel47.Enabled:=true;
            OrderPack_Print.QRLabel48.Enabled:=true;
          end;
       end;
    OrderPack_Print.QRCompositeReport1.prepare;
    OrderPack_Print.PAGEN1.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    OrderPack_Print.PAGEN2.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    OrderPack_Print.PAGEN3.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    with YWDDTP do
      begin
        Active:=true;
        PC1:='';
        PC2:='';
        PC3:='';
        if recordcount>0 then
          begin
            PC1:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC1.Picture.LoadFromFile();
            next;
          end;
        if recordcount>1 then
          begin
            PC2:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC2.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
            next;
          end;
        if recordcount>2 then
          begin
            PC3:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC3.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
            next;
          end;
        if PC1<>'' then
           OrderPack_Print.QPC1.Picture.LoadFromFile(PC1);
        if PC2<>'' then
           OrderPack_Print.QPC2.Picture.LoadFromFile(PC2);
        if PC3<>'' then
           OrderPack_Print.QPC3.Picture.LoadFromFile(PC3);
        active:=false;
      end;
    try
    if FileExists(OrderList.SpecMas.fieldbyname('IMGName').AsString)=true then
    begin
      OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
      OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
    end;
    except
    showmessage('Can not import picture, Pls contect with IT. 有問題找IT');
    end;
    OrderPack_Print.QRCompositeReport1.Preview;
    OrderPack_Print.free;
  end
  else
    begin
      if messagedlg('Not enough ,are you want to preview first?',mtconfirmation,[mbYes,mbNo],0)=mryes then
        begin
          OrderPack_Print:=TOrderPack_Print.create(self);
            case List.IndexOf(main.Edit2.Text) of    //判斷登入廠別是否須在報表顯示ISO NO
            0,1,2,3:
              begin
                OrderPack_Print.QRLabel46.Enabled:=true;
                OrderPack_Print.QRLabel47.Enabled:=true;
                OrderPack_Print.QRLabel48.Enabled:=true;
              end;
            end;
          OrderPack_Print.QRCompositeReport1.prepare;
          OrderPack_Print.PAGEN1.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          OrderPack_Print.PAGEN2.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          OrderPack_Print.PAGEN3.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          with YWDDTP do
          begin
            Active:=true;
            PC1:='';
            PC2:='';
            PC3:='';
            if recordcount>0 then
              begin
                PC1:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC1.Picture.LoadFromFile();
                next;
              end;
            if recordcount>1 then
              begin
                PC2:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC2.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
                next;
              end;
            if recordcount>2 then
              begin
                PC3:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC3.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
                next;
              end;
            if PC1<>'' then
               OrderPack_Print.QPC1.Picture.LoadFromFile(PC1);
            if PC2<>'' then
               OrderPack_Print.QPC2.Picture.LoadFromFile(PC2);
            if PC3<>'' then
               OrderPack_Print.QPC3.Picture.LoadFromFile(PC3);
            active:=false;
          end;
        try
         if FileExists(OrderList.SpecMas.fieldbyname('IMGName').AsString)=true then
         begin
          OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
          OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
         end;
        except
          showmessage('Can not import picture, Pls contect with IT. 有問題找IT');
        end;
          {try              // 圖片加載不論是否成功都要打印
            a:=SpecMas.fieldbyname('IMGName').AsString  ;
            OrderPack_Print.IMGName1.Picture.LoadFromFile(a);
            OrderPack_Print.IMGName2.Picture.LoadFromFile(a);
          except
            showmessage('No picture of article.');
          end ;  }
          OrderPack_Print.QRCompositeReport1.Preview;
          OrderPack_Print.free;
        end;
    end;
end;

procedure TOrderList.N4Click(Sender: TObject);
begin
  Orderpack_TP:=TOrderpack_TP.create(self);
  Orderpack_TP.show;
end;

procedure TOrderList.N5Click(Sender: TObject);
begin  
  Orderpack_Label:=TOrderpack_Label.create(self);
  Orderpack_Label.show;
end;

procedure TOrderList.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  SpecMas.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SpecMas.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecMas.fields[i].FieldName;
          end;
        SpecMas.First;
        j:=2;
        while   not   SpecMas.Eof   do
          begin
            for   i:=0   to   SpecMas.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecMas.Fields[i].Value;
              end;
            SpecMas.Next;
            inc(j);
          end;

      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TOrderList.N7Click(Sender: TObject);
begin
  OrderPack_CartonPChoice:=TOrderPack_CartonPChoice.Create(self);
  OrderPack_CartonPChoice.Show();
end;

procedure TOrderList.Edit1Paste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalZLBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalZLBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalZLBH:=TotalZLBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalZLBH)>0 then
    begin
      Edit1.Text:=Copy(TotalZLBH,1,length(TotalZLBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;


procedure TOrderList.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    Edit1Paste();
  end;
end;

procedure TOrderList.N8PackingMemo1Click(Sender: TObject);
var
  sl: TStringList;
  a: Integer;
begin
  OrderpackMemo:=TOrderpackMemo.create(self);
  OrderpackMemo.show;
  sl := TStringList.Create;
  try
    DBGrid1.DataSource.DataSet.First;
    while not DBGrid1.DataSource.DataSet.Eof do
    begin
      sl.Add(DBGrid1.DataSource.DataSet.FieldByName('DDBH').AsString);
      DBGrid1.DataSource.DataSet.Next;
    end;
    sl.Sort;
    sl.Delimiter := ',';

    OrderpackMemo.Edit1.Text := sl.DelimitedText;
  finally
    sl.Free;
  end;
end;

end.
