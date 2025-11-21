unit QHWH2CNO_HQNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls;

type
  TQHWH2CNO_HQNO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    BUYNOEdit: TEdit;
    CGNOEdit: TEdit;
    ZSYWJCEdit: TEdit;
    ZSBHEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox2: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpdQry: TUpdateSQL;
    Query1STNO: TStringField;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1XXCC: TStringField;
    Query1Stage: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1HQNO: TStringField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1zsywjc: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1CQDH: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1YQDate: TDateTimeField;
    Query1ETADate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QHWH2CNO_HQNO: TQHWH2CNO_HQNO;

implementation
  uses main1, QWHS2CNO1, FunUnit;
{$R *.dfm}

procedure TQHWH2CNO_HQNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TQHWH2CNO_HQNO.FormDestroy(Sender: TObject);
begin
  QHWH2CNO_HQNO:=nil;
end;

procedure TQHWH2CNO_HQNO.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select BY_QWHS2.*,ZSZL.zsywjc,CLZL.ywpm,CLZL.dwbh,CLZL.CQDH,CGZLS.VNPrice,CGZLS.USPrice,CGZLS.YQDate,CGZLS.CFMDate as ETADate ');
    SQL.Add('from BY_QWHS2');
    SQL.Add('Left join CGZLS on CGZLS.CGNO=BY_QWHS2.CGNO and CGZLS.CLBH=BY_QWHS2.CLBH');
    SQL.Add('left join CGZL on BY_QWHS2.CGNO=CGZL.CGNO ');
    SQL.Add('left join CLZL on CLZL.CLDH=BY_QWHS2.CLBH ');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
    SQL.Add('where CGZL.GSBH='''+main.Edit2.Text+''' ');
    if CheckBox1.Checked=true then
    begin
     SQL.add('and Convert(smalldatetime,convert(varchar,CGZL.CGDate,111))  between ');
     SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CGNOEdit.Text<>'' then
     SQL.Add('and CGZL.CGNO like '''+CGNOEdit.Text+'%'' ');
    if ZSBHEdit.Text<>'' then
     SQL.Add('and CGZL.ZSBH like '''+ZSBHEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
     SQL.Add('and ZSZL.ZSYWJC like ''%'+ZSYWJCEdit.Text+'%'' ');
    if BUYNOEdit.Text<>'' then
     SQL.Add('and CGZL.CGNO in (Select CGNO from CGZLSS,DDZL where DDZL.DDBH=CGZLSS.ZLBH and DDZL.BUYNO like '''+BUYNOEdit.Text+'%'' Group by CGNO) ');
    if CheckBox2.Checked=true then
     SQL.Add('and BY_QWHS2.HQNO is null ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TQHWH2CNO_HQNO.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('HQNO').AsString<>'' then
  begin
    DBGridEh1.canvas.font.color:=clblue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQHWH2CNO_HQNO.DBGridEh1DblClick(Sender: TObject);
begin
  with QWHS2CNO.qryQWHS2 do
  begin
    if Query1.FieldByName('HQNO').AsString='' then
    begin
      Insert;
      FieldByName('STNO').Value:=Query1.FieldByName('STNO').Value;
      FieldByName('CGNO').Value:=Query1.FieldByName('CGNO').Value;
      FieldByName('CLBH').Value:=Query1.FieldByName('CLBH').Value;
      FieldByName('ZLBH').Value:=Query1.FieldByName('ZLBH').Value;
      FieldByName('ZLBH').Value:=Query1.FieldByName('ZLBH').Value;
      FieldByName('XXCC').Value:=Query1.FieldByName('XXCC').Value;
      FieldByName('Stage').Value:=Query1.FieldByName('Stage').Value;
      FieldByName('YWPM').Value:=Query1.FieldByName('YWPM').Value;
      FieldByName('dwbh').Value:=Query1.FieldByName('dwbh').Value;
      FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
      FieldByName('VNPrice').Value:=Query1.FieldByName('VNPrice').Value;
      FieldByName('USPrice').Value:=Query1.FieldByName('USPrice').Value;
      FieldByName('YQDate').Value:=Query1.FieldByName('YQDate').Value;
      FieldByName('ETADate').Value:=Query1.FieldByName('ETADate').Value;
      FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
      Post;
      Query1.Edit;
      Query1.FieldByName('HQNO').Value:=QWHS2CNO.qryQWHQ.FieldByName('HQNO').Value;
      Query1.Post;
    end;
  end;
end;

procedure TQHWH2CNO_HQNO.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:TbookmarklistEH;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;

    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with QWHS2CNO.qryQWHS2 do
          begin
            if Query1.FieldByName('HQNO').AsString='' then
            begin
              Insert;
              FieldByName('STNO').Value:=Query1.FieldByName('STNO').Value;
              FieldByName('CGNO').Value:=Query1.FieldByName('CGNO').Value;
              FieldByName('CLBH').Value:=Query1.FieldByName('CLBH').Value;
              FieldByName('ZLBH').Value:=Query1.FieldByName('ZLBH').Value;
              FieldByName('ZLBH').Value:=Query1.FieldByName('ZLBH').Value;
              FieldByName('XXCC').Value:=Query1.FieldByName('XXCC').Value;
              FieldByName('Stage').Value:=Query1.FieldByName('Stage').Value;
              FieldByName('YWPM').Value:=Query1.FieldByName('YWPM').Value;
              FieldByName('dwbh').Value:=Query1.FieldByName('dwbh').Value;
              FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
              FieldByName('VNPrice').Value:=Query1.FieldByName('VNPrice').Value;
              FieldByName('USPrice').Value:=Query1.FieldByName('USPrice').Value;
              FieldByName('YQDate').Value:=Query1.FieldByName('YQDate').Value;
              FieldByName('ETADate').Value:=Query1.FieldByName('ETADate').Value;
              FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
              Post;
              Query1.Edit;
              Query1.FieldByName('HQNO').Value:=QWHS2CNO.qryQWHQ.FieldByName('HQNO').Value;
              Query1.Post;
            end;
          end;
        end; //end for loop
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TQHWH2CNO_HQNO.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(QHWH2CNO_HQNO),QHWH2CNO_HQNO.Name);
end;

procedure TQHWH2CNO_HQNO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-7;
  DTP2.Date:=Date();
end;

end.
