unit VATNo_TKData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DateUtils, Math, fununit;

type
  TVATNo_TKData = class(TForm)
    Panel25: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    button1: TButton;
    Edit1: TEdit;
    DTP2: TDateTimePicker;
    DTP1: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DTP3: TDateTimePicker;
    Label2: TLabel;
    DTP4: TDateTimePicker;
    Qtemp: TQuery;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Query1Declaration: TStringField;
    Query1TKDATE: TDateTimeField;
    Query1DOCNO_MST: TStringField;
    Query1TENDOITAC: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    sign: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VATNo_TKData: TVATNo_TKData;

implementation

uses OriginVATNo1;

{$R *.dfm}

procedure TVATNo_TKData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVATNo_TKData.FormDestroy(Sender: TObject);
begin
  VATNo_TKData:=nil;
end;

procedure TVATNo_TKData.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    active:=true;
    if Qtemp.RecordCount>0 then sign:=true else sign:=false;
  end;
  DTP1.Date:=Date;
  DTP2.Date:=Date;
  DTP3.Date:=Date;
  DTP4.Date:=Date;
end;

procedure TVATNo_TKData.button1Click(Sender: TObject);
begin
  if (Edit1.Text='') and (Edit2.Text='') and (Edit3.Text='') and (CheckBox1.Checked=false) and (CheckBox2.Checked=false)  then
  begin
    ShowMessage('Please enter at least one condition.');
    Abort;
  end;
  //
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  select VATNO as Declaration, VATDATE as TKDATE, ZSBH_MST as DOCNO_MST  ');
    if not sign then
      SQL.Add(' , TEN_NGUOIBAN as TENDOITAC ')
    else
      SQL.Add(' , CAST(dbo.fSignsToNoSigns(TEN_NGUOIBAN) AS VARCHAR(200)) as TENDOITAC');
    SQL.Add('  , USERID, USERDATE ');
    SQL.Add('  from CGZL_VATNO  ');
    SQL.Add('  where 1=1 ');
    if Edit1.Text <> '' then
      SQL.Add(' and VATNO like '''+trim(Edit1.Text)+'%'' ');
    if Edit2.Text <> '' then
      begin
        if not sign then
          SQL.Add(' and TEN_NGUOIBAN like ''%'+Edit2.Text+'%'' ')
        else
          SQL.Add(' and dbo.fSignsToNoSigns(TEN_NGUOIBAN) like ''%'+Edit2.Text+'%'' ');
      end;
    if Edit3.Text <> '' then
      SQL.Add(' and ZSBH_MST like '''+trim(Edit3.Text)+'%''  ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add('  and convert(smalldatetime, convert(varchar,USERDATE,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    end;
    if CheckBox2.Checked=true then
    begin
      SQL.Add('  and convert(smalldatetime, convert(varchar,VATDATE,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ');
    end;
    SQL.Add('  and not exists (select Declaretion_VATNO from CGZL_XUATXU where CGZL_XUATXU.Declaretion_VATNO = CGZL_VATNO.VATNO and CGZL_XUATXU.DOCNO_MST = CGZL_VATNO.ZSBH_MST ) ');
    //
    SQL.Add('  union all  ');
    SQL.Add('  select Declaration, NGAYDANGKY as TKDATE, DOCNO  as DOCNO_MST  ');
    if not sign then
      SQL.Add(' , TENDOITAC ')
    else
      SQL.Add(' , CAST(dbo.fSignsToNoSigns(TENDOITAC) AS VARCHAR(200)) as TENDOITAC');
    SQL.Add('  , USERID, USERDATE ');
    SQL.Add('  from CGZL_Declaration  ');
    SQL.Add('  where 1=1 ');
    if Edit1.Text <> '' then
      SQL.Add(' and Declaration like '''+trim(Edit1.Text)+'%'' ');
    if Edit2.Text <> '' then
      begin
        if not sign then
          SQL.Add(' and TENDOITAC like ''%'+Edit2.Text+'%'' ')
        else
          SQL.Add(' and dbo.fSignsToNoSigns(TENDOITAC) like ''%'+Edit2.Text+'%'' ');
      end;
    if Edit3.Text <> '' then
      SQL.Add(' and DOCNO like '''+trim(Edit3.Text)+'%''  ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add('  and convert(smalldatetime, convert(varchar,USERDATE,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    end;
    if CheckBox2.Checked=true then
    begin
      SQL.Add('  and convert(smalldatetime, convert(varchar,NGAYDANGKY,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ');
    end;
     SQL.Add('  and not exists (select Declaretion_VATNO from CGZL_XUATXU where CGZL_XUATXU.Declaretion_VATNO = CGZL_Declaration.Declaration) ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TVATNo_TKData.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.RecordCount>0 then
  begin
    with OriginVATNo.Query1 do
    begin
      Insert;
      FieldByName('Declaretion_VATNO').Value:=Query1.FieldByName('Declaration').Value;
      FieldByName('DOCNO_MST').Value:=Query1.FieldByName('DOCNO_MST').Value;
      Post;
    end;
  end;
end;

end.
