unit EntryFOC_Sample1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,math, GridsEh,
  DBGridEh,IniFiles;

type
  TEntryFOC_Sample= class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Query2: TQuery;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ZSBH: TStringField;
    Query1YWPM: TStringField;
    Query1Qty: TCurrencyField;
    Query1DWBH: TStringField;
    Query1okQty: TCurrencyField;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    MatEdit: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ReadIni();
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  EntryFOC_Sample: TEntryFOC_Sample;
  NDate:TDate;

implementation

uses  EntryFOC1, main1, FunUnit, MaterialArea1, EntryList1;

{$R *.dfm}

procedure TEntryFOC_Sample.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(query1.FieldByName('okQty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TEntryFOC_Sample.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with EntryFOC.ENDet do
  begin
    insert;
    fieldbyname('ZLBH').value:=query1.FieldByName('ZLBH').Value;
    fieldbyname('RKSB').value:='VN';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
    begin
      fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryFOC_Sample.Button1Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NowDate ');
    active:=true;
    NDate:=fieldbyname('NowDate').Value;    
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,');
    sql.add('       max(CGZLSS.CFMDate)as CFMDate,');
    sql.add('       isnull(sum(CGZLSS.qty),0) as Qty, isnull(CGRK.okQty,0) as okQty');
    sql.add('from CGZLS');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join (select KCZLS.* from KCZLS_FOC KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+EntryFOC.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CLZL.CLDH ');
    sql.add('left join CGZLSS on CGZL.CGNO=CGZLSS.CGNO and CGZLSS.CLBH=CGZLS.CLBH');

    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as okQty from KCRKS_FOC KCRKS');
    sql.add('           left join KCRK_FOC KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where 1=1 ');
    sql.add('           and KCRK.ZSNO= '+''''+edit2.Text+'''');
    sql.add('           group by  KCRKS.CLBH ) CGRK')  ;
    sql.add('           on CGRK.CLBH=CGZLS.CLBH') ;
    sql.add('where 1=1');
    sql.add('      and CGZLS.CGNO= '+''''+edit2.Text+'''');
    sql.add('      and CGZL.CGLX='+''''+'6'+'''' );
    if MatEdit.Text<>'' then
    sql.add('      and CGZLSS.CLBH like '''+MatEdit.Text+'%'' ');
    sql.add('group by CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGRK.okQty');
    sql.Add('order by cgzls.clbh');
    active:=true;
  end;
end;

procedure TEntryFOC_Sample.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin 
  if key=#13 then
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with EntryFOC.ENDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
    begin
      fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    post;
  end;
//  button1click(nil);
end;

procedure TEntryFOC_Sample.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    button1click(nil);
end;

procedure TEntryFOC_Sample.FormDestroy(Sender: TObject);
begin
  EntryFOC_Sample:=nil;
end;

procedure TEntryFOC_Sample.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TEntryFOC_Sample.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('okQty').value>=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryFOC_Sample.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklistEh;
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
          //
          with EntryFOC.ENDet do
          begin
              edit;
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
              begin
                  fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
              end else
              begin
                  fieldbyname('Qty').value:=0;
              end;
              insert;
          end;
        end;
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

procedure TEntryFOC_Sample.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with EntryFOC.ENDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
    begin
      fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryFOC_Sample.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryFOC_Sample.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
