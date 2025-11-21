unit EVAscanout1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, DBClient;

type
  TEVAscanout = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    QueryOut: TQuery;
    QueryOutid: TStringField;
    QueryOutid_code: TStringField;
    QueryOutsku: TStringField;
    QueryOutsize: TStringField;
    QueryOutOrder_Qty: TIntegerField;
    QueryOutOUT_QTY: TIntegerField;
    QueryOutScan_In: TIntegerField;
    QueryOutScan_Out: TIntegerField;
    QueryOutQTY: TIntegerField;
    UpdateSQL1: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label5: TLabel;
    EDqty: TEdit;
    QueryOutDDMH: TStringField;
    CDSOut: TClientDataSet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    totaltxt: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure UpdateDataSet();
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SumQty: Integer;
    qrcode_old : String;
    currentqrcode : String;
    FirstTime: Boolean;
  end;

var
  EVAscanout: TEVAscanout;

implementation

uses main1;

{$R *.dfm}

procedure TEVAscanout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  EVAscanout:=nil;
end;

procedure TEVAscanout.UpdateDataSet();
var
id:string;
OUT_QTY:string;
id_code:string;
begin
 if CDSOut.Active then
  begin
  Query1.Active:=false;
  CDSOut.First;
  while not CDSOut.Eof do
  begin
    if CDSOut.FieldValues['OUT_QTY']>0 then
    begin
      id:=CDSOut.FieldByName('id').AsString;
      OUT_QTY:=CDSOut.FieldByName('OUT_QTY').AsString;
      id_code := CDSOut.FieldByName('id_code').AsString;
      Query1.SQL.Clear;
      Query1.sql.add('if (select count (*) from '+main.LIY_DD+'.[dbo].[rubber01f] where id= '''+id+''' and id_code= '''+id_code+''' and ([f_ok]+ '+OUT_QTY+' - [s_ok])<1)>0 ');
      Query1.sql.add('begin INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01fs] ([id],[id_code],[qty],[flag],[userid],[ry]) VALUES('''+id+''','''+id_code+''','+OUT_QTY+',-1,'''+main.edit1.Text+''','''+EDqty.Text+''');');
      Query1.sql.add('update '+main.LIY_DD+'.[dbo].[rubber01f] set [f_ok]=[f_ok] + '+OUT_QTY+' where id= '''+id+''' and id_code= '''+id_code+''' ; end');
      Query1.ExecSQL;
    end;
    CDSOut.Next;
  end;
  CDSOut.EmptyDataSet
  end;
end;

procedure TEVAscanout.Button1Click(Sender: TObject);
var msg:string;
begin
  if (QueryOut.Active) and (QueryOut.RecordCount>0) then
  begin
    msg:='';
    QueryOut.First;
    while not QueryOut.Eof do
    begin
      if QueryOut.FieldValues['OUT_QTY']>QueryOut.FieldValues['QTY'] then msg:=msg+QueryOut.FieldValues['id_code']+'-'+QueryOut.FieldValues['id']+';';
      QueryOut.Next;
    end;
    if msg='' then
    begin
      UpdateDataSet();
    end
    else
    begin
      showmessage('Error : (OUT_QTY > QTY) '+msg);
    end;
  end;
  totaltxt.Caption := '0'
end;

procedure TEVAscanout.Edit1KeyPress(Sender: TObject; var Key: Char);
var
i:Integer;
caption : Integer;
begin
  if (key=#13) and (Length(edit1.text)=13) then
  begin
      currentqrcode := Trim(Edit1.Text);

      if FirstTime then
      begin
        FirstTime := False;
        caption := StrToInt(totaltxt.Caption)+StrToInt(EDqty.Text)
      end
      else
      begin
        if CurrentQRCode = QRCode_Old then
          caption := StrToInt(totaltxt.Caption)+StrToInt(EDqty.Text)
        else
          totaltxt.Caption := '0';
          caption := StrToInt(totaltxt.Caption)+StrToInt(EDqty.Text);
      end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('SELECT [qty]-([f_ok]+'+IntToStr(caption)+') counts ' +
                      'FROM '+main.LIY_DD+'.[dbo].[rubber01f] where ''P''+[id_code]+[id]='''+edit1.text+''' ');
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
	    	Exit;
        edit1.SetFocus;
      end;
      Query1.First;
      if Query1.FieldByName('counts').Value<0 then
      begin
        showmessage('Scan Qty > storage Qty !!!!!');
        edit1.SetFocus;
        edit1.text:='';
        Exit;
      end
      else
      begin
      end;
      with QueryOut do
      begin
      sql.clear;
      sql.Add('SELECT [id],[id_code],(SELECT TOP (1) [DDMH] FROM [dbo].[xxzl] where XieXing=a.XieXing) DDMH,[sku],[color],[size],[qty] Order_Qty,[s_ok] Scan_In,[f_ok] Scan_Out,[s_ok]-[f_ok] QTY, OUT_QTY=0');
      sql.Add(' FROM '+main.LIY_DD+'.[dbo].[rubber01f] a ');
      sql.Add('where [id_code] in (SELECT [id] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F'') and [s_ok]-[f_ok]>0 ');
      sql.Add(' AND ''P''+[id_code]+[id] = '''+edit1.text+'''');
      Open;
      if not IsEmpty then
      begin
        CDSOut.Append;
        CDSOut.FieldByName('id').AsString := FieldByName('id').AsString;
        CDSOut.FieldByName('id_code').AsString := FieldByName('id_code').AsString;
        CDSOut.FieldByName('DDMH').AsString := FieldByName('DDMH').AsString;
        CDSOut.FieldByName('sku').AsString := FieldByName('sku').AsString;
        CDSOut.FieldByName('size').AsString := FieldByName('size').AsString;
        CDSOut.FieldByName('Order_Qty').AsInteger := FieldByName('Order_Qty').AsInteger;
        CDSOut.FieldByName('Scan_In').AsInteger := FieldByName('Scan_In').AsInteger;
        CDSOut.FieldByName('Scan_Out').AsInteger := FieldByName('Scan_Out').AsInteger;
        CDSOut.FieldByName('QTY').AsInteger := FieldByName('QTY').AsInteger;
        totaltxt.Caption:=IntToStr(StrToInt(totaltxt.Caption)+StrToInt(EDqty.Text));
        CDSOut.FieldByName('OUT_QTY').AsInteger := StrToIntDef(EDqty.Text, 0);
         if Caption=CDSOut.FieldByName('qty').AsInteger then
        begin
        Label4.Font.Color:= clRed;
        end
        else
        begin
        Label4.Font.Color:= clNavy;
        end;
        Label3.Caption:=CDSOut.FieldByName('qty').Value;
        Label4.Caption:=IntToStr(Caption);
        GroupBox2.Caption := CDSOut.FieldByName('id_code').AsString + CDSOut.FieldByName('id').AsString;
        edit1.text:='';
        edit1.SetFocus;
        CDSOut.Post;
      end;
      end;
      qrcode_old := CurrentQRCode;
      edit1.text:='';
      edit1.SetFocus;
   end;
 end;
procedure TEVAscanout.FormCreate(Sender: TObject);
begin
  FirstTime := True;
  qrcode_old :='';
  currentqrcode := '';
  with CDSOut do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('id', ftString, 20);
    FieldDefs.Add('id_code', ftString, 20);
    FieldDefs.Add('DDMH', ftString, 20);
    FieldDefs.Add('sku', ftString, 20);
    FieldDefs.Add('size', ftString, 10);
    FieldDefs.Add('Order_Qty', ftInteger);
    FieldDefs.Add('Scan_In', ftInteger);
    FieldDefs.Add('Scan_Out', ftInteger);
    FieldDefs.Add('QTY', ftInteger);
    FieldDefs.Add('OUT_QTY', ftInteger);
    CreateDataSet;
end;

end;

end.
