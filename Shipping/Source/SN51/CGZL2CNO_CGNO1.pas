unit CGZL2CNO_CGNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TCGZL2CNO_CGNO = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    BUYNOEdit: TEdit;
    Label3: TLabel;
    CGNOEdit: TEdit;
    Label6: TLabel;
    ZSYWJCEdit: TEdit;
    ZSBHEdit: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    DS1: TDataSource;
    Query1CGNO: TStringField;
    Query1zsywjc: TStringField;
    Query1CGDate: TDateTimeField;
    Query1STNO: TStringField;
    CheckBox2: TCheckBox;
    UpdQry: TUpdateSQL;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CGZL2CNO_CGNO: TCGZL2CNO_CGNO;

implementation
  uses main1, CGZL2CNO1, FunUnit;
{$R *.dfm}

procedure TCGZL2CNO_CGNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCGZL2CNO_CGNO.FormDestroy(Sender: TObject);
begin
  CGZL2CNO_CGNO:=nil;
end;

procedure TCGZL2CNO_CGNO.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CGZL.CGNO,ZSZL.zsywjc,CGZL.CGDate,BY_QWHSS.STNO ');
    SQL.Add('from CGZL ');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
    SQL.Add('left join ZSZL_Dev on ZSZL.ZSDH=ZSZL_Dev.ZSDH and ZSZL_Dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('left join BY_QWHSS on BY_QWHSS.CGNO=CGZL.CGNO ');
    SQL.Add('where CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.CGLX in (''1'',''2'') ');
    if CheckBox1.Checked=true then
    begin
     SQL.add('and convert(smalldatetime,convert(varchar,CGZL.CGDate,111))  between ');
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
     SQL.Add('and BY_QWHSS.STNO is null ');
    if CheckBox3.Checked=true then
     SQL.Add('and ZSZL_Dev.Bonded=1 ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TCGZL2CNO_CGNO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-7;
  DTP2.Date:=Date();
end;

procedure TCGZL2CNO_CGNO.DBGridEh1DblClick(Sender: TObject);
begin
  //
  with CGZL2CNO.qryQWHSS do
  begin
    if Query1.FieldByName('STNO').AsString='' then
    begin
      Insert;
      FieldByName('CGNO').Value:=Query1.FieldByName('CGNO').Value;
      FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
      FieldByName('CGDate').Value:=Query1.FieldByName('CGDate').Value;
      Post;
      Query1.Edit;
      Query1.FieldByName('STNO').Value:=CGZL2CNO.qryQWHS.FieldByName('STNO').Value;
      Query1.Post;
    end;
  end;
  //
end;

procedure TCGZL2CNO_CGNO.Button2Click(Sender: TObject);
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
          with CGZL2CNO.qryQWHSS do
          begin
            if Query1.FieldByName('STNO').AsString='' then
            begin
              Insert;
              FieldByName('CGNO').Value:=Query1.FieldByName('CGNO').Value;
              FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
              FieldByName('CGDate').Value:=Query1.FieldByName('CGDate').Value;
              Post;
              Query1.Edit;
              Query1.FieldByName('STNO').Value:=CGZL2CNO.qryQWHS.FieldByName('STNO').Value;
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

procedure TCGZL2CNO_CGNO.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('STNO').AsString<>'' then
  begin
    DBGridEh1.canvas.font.color:=clblue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCGZL2CNO_CGNO.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(CGZL2CNO_CGNO),CGZL2CNO_CGNO.Name);
end;

end.
