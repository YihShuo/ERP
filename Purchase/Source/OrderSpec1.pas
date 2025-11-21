unit OrderSpec1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Mask, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  Buttons, ExtCtrls,comobj,dateutils, Menus, GridsEh, DBGridEh;

type
  TOrderSpec = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel5: TPanel;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasShipDate: TDateTimeField;
    SpecDet: TQuery;
    SpecDetbwbh: TStringField;
    SpecDetBWMCY: TStringField;
    SpecDetclbh: TStringField;
    SpecDetCLMCY: TStringField;
    SpecDetdwbh: TStringField;
    SpecDetUSAGE: TFloatField;
    SpecDetLOSS: TFloatField;
    SpecDetclsl: TFloatField;
    SpecDetDFL: TStringField;
    SpecDetXFL: TStringField;
    SpecDetYN: TStringField;
    SpecDetLYCC: TStringField;
    DS2: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    CBX2: TComboBox;
    Label4: TLabel;
    CBX3: TComboBox;
    Button1: TButton;
    SpecMasDDZT: TStringField;
    SpecDetCQDH: TStringField;
    SpecDetJGYWSM: TStringField;
    Edit3: TEdit;
    CB1: TCheckBox;
    SpecMasKFJC: TStringField;
    PopupMenu1: TPopupMenu;
    Son1: TMenuItem;
    Image1: TImage;
    SpecMasIMGname: TStringField;
    Size1: TMenuItem;
    SpecDetCLMCZ: TStringField;
    SpecMasDD: TStringField;
    SpecMasXX: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Son1Click(Sender: TObject);
    procedure SpecMasAfterScroll(DataSet: TDataSet);
    procedure Size1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSpec: TOrderSpec;
  sdate,edate,NDate:Tdate;

implementation

uses main1, OrderSpec_Son1, OrderSpec_Size1;

{$R *.dfm}

procedure TOrderSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderSpec.Button1Click(Sender: TObject);
var y,m:word;
begin
  if  not CB1.Checked then
  begin
    if ((length(edit1.Text)<5) and (length(edit2.Text)<3)) then
      begin
        showmessage('Pls setup condition first!');
        abort;
      end;
  end;
  if  CB1.Checked then
  begin
    if (CBX2.text='')or (CBX3.text='')  then
      begin
        showmessage('You have to select the year and month first.');
        abort;
      end;
    y:=strtoint(CBX2.Text);
    m:=strtoint(CBX3.Text);
    if (y>2999) or (y<1900) then
      begin
        showmessage('Pls key in right year');
        abort;
      end;
    if (m=0) or (m>12) then
      begin
        showmessage('Pls key in right month');
        abort;
      end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);
  end;

  with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.DDZT,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,DDZL.CCGB as DD,XXZL.CCGB as XX,XXZL.XieMing,KFZL.KFJC,IMGname');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join kfzl on KFZl.KFDH=DDZL.KHBH');
    sql.Add('where SCZL.SCBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and kfzl.KFJC like');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and SCZL.SCBH=SCZL.ZLBH');
    sql.add('and XXZL.XieMing like ');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    if CB1.Checked then
      begin
        sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      end;
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
  SpecDet.active:=true;
  BBT6.Enabled:=true;
  //panel5.Visible:=false;

end;

procedure TOrderSpec.BB1Click(Sender: TObject);
begin
  Panel5.Visible:=true;
end;

procedure TOrderSpec.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TOrderSpec.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  SpecDet.active  then
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
        for   i:=0   to   SpecDet.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecDet.fields[i].FieldName;
          end;
        SpecDet.First;
        j:=2;
        while   not   SpecDet.Eof   do
          begin
            for   i:=0   to   SpecDet.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecDet.Fields[i].Value;
              end;
            SpecDet.Next;
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

procedure TOrderSpec.FormCreate(Sender: TObject);
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
PC1.activepage:=TS1;
end;

procedure TOrderSpec.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SpecMas.active  then
    begin
    SpecDet.active:=false;
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
      SpecDet.active:=true;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TOrderSpec.FormDestroy(Sender: TObject);
begin
  OrderSpec:=nil;
end;

procedure TOrderSpec.Son1Click(Sender: TObject);
begin
  OrderSpec_Son:=TOrderSpec_Son.create(self);
  OrderSpec_Son.show;
end;

procedure TOrderSpec.SpecMasAfterScroll(DataSet: TDataSet);
begin
  try
    if not SpecMas.FieldByName('IMGname').IsNull then
    begin
      if FileExists(SpecMas.FieldByName('IMGname').AsString)=true then
      image1.picture.LoadFromFile(SpecMas.FieldByName('IMGname').AsString)
    end;
  except

  end;
end;

procedure TOrderSpec.Size1Click(Sender: TObject);
begin  
  OrderSpec_Size:=TOrderSpec_Size.create(self);
  OrderSpec_Size.show;

end;

procedure TOrderSpec.DBGridEh1DblClick(Sender: TObject);
begin
  if SpecMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TOrderSpec.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SpecMas.FieldByName('DDZT').value<>'Y' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if SpecMas.FieldByName('DDZT').value='S' then
  begin
    DBGridEh1.canvas.font.color:=clYellow;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderSpec.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

end.
