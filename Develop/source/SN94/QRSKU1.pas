unit QRSKU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, math, GridsEh,
  DBGridEh, ComCtrls;

type
  TQRSKU = class(TForm)
    YProom: TQuery;
    YProomdevcode: TStringField;
    YProomarticle: TStringField;
    YProomxieming: TStringField;
    YProomjijie: TStringField;
    YProomfd: TStringField;
    YProomcutting: TStringField;
    YProomyssm: TStringField;
    YProomYPCC: TStringField;
    YProomXTMH: TStringField;
    YProomDDMH: TStringField;
    YProomkfjd: TStringField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRSKU: TQRSKU;

implementation

uses main1, FunUnit, QRFormatTracking1;

{$R *.dfm}

procedure TQRSKU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TQRSKU.FormDestroy(Sender: TObject);
begin
  QRSKU:=nil;
end;

procedure TQRSKU.Button2Click(Sender: TObject);
begin
  with yproom do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kfxxzl.devcode,ypzl.article,left(kfxxzl.devcode,13) as cutting,kfxxzl.xieming,kfxxzl.yssm,');
    sql.add('kfxxzl.jijie,kfxxzl.fd,ypzl.YPCC,ypzl.kfjd,kfxxzl.XTMH,');
    sql.add('kfxxzl.DDMH from ypzl');
    sql.add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    sql.add('where  kfxxzl.devcode is not null');
    if edit1.text<>'' then
      sql.add('and  kfxxzl.devcode like '''+'%'+edit1.text+'%'+'''');
    if edit2.text<>'' then
      sql.add('and  ypzl.article like '''+'%'+edit2.text+'%'+'''');
    active:=true;
  end;
end;

procedure TQRSKU.Button1Click(Sender: TObject);
  var bm:Tbookmark;
      i:integer;
      bookmarklist:tbookmarklist;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not yproom.Active) then
    begin
      abort;
    end;
    if (yproom.recordcount<1) then
    begin
      abort;
    end;
    yproom.disablecontrols;
    bm:=yproom.getbookmark;
    bookmarklist:=DBGrid1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          yproom.gotobookmark(pointer(bookmarklist[i]));
          with QRFormatTracking.SCDet do
          begin
            edit;
            fieldbyname('SKU').Value:=yproom.fieldbyname('article').Value;
            fieldbyname('SR').Value:=yproom.fieldbyname('devcode').Value;
            fieldbyname('Qty').Value:='1';
            insert;
          end;
        end;
      finally
      begin
        yproom.gotobookmark(bm);
        yproom.freebookmark(bm);
        yproom.enablecontrols;
        showmessage('You have finish copy!');
      end;
      end;
    end;
  end;
end;

procedure TQRSKU.DBGrid1DblClick(Sender: TObject);
begin
  if yproom.recordcount>0 then
  begin
    with  QRFormatTracking.SCDet do
    begin
        edit;
        fieldbyname('SKU').Value:=yproom.fieldbyname('article').Value;
        fieldbyname('SR').Value:=yproom.fieldbyname('devcode').Value;
        fieldbyname('Qty').Value:='1';
        insert;
    end;
  end;
end;

end.
