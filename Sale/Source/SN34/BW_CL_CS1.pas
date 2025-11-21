unit BW_CL_CS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, math, GridsEh,
  DBGridEh, ComCtrls;

type
  TBW_CL_CS = class(TForm)
    XXZLS: TQuery;
    XXZLSBWBH: TStringField;
    XXZLSYWSM: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSCLSL: TFloatField;
    XXZLSXXZLSSVN_CLBH: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSZSJC: TStringField;
    DS: TDataSource;
    DBGrid2: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    XXZLSCSBH: TStringField;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    XXZLSXieXing: TStringField;
    XXZLSSheHao: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BW_CL_CS: TBW_CL_CS;

implementation

uses DestinationPackingBox_Label1, main1;

{$R *.dfm}


procedure TBW_CL_CS.Button1Click(Sender: TObject);
begin
  with XXZLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH, BWZL.YWSM, XXZLS.CLBH, CLZL.YWPM, CLZL.DWBH, XXZLS.CLSL, ');
    sql.Add('       isnull(XXZLS.CSBH,'''') CSBH, isnull(ZSZL.ZSYWJC,'''') ZSYWJC, XXZLSSVN.CLBH as XXZLSSVN_CLBH, XXZLS.BWLB ');
    sql.add('from XXZLS ');
    sql.add('left join BWZL on BWZL.BWDH=XXZLS.BWBH ');
    sql.add('left join CLZL on CLZL.CLDH=XXZLS.CLBH ');
    sql.Add('left join ZSZL on ZSZL.ZSDH=XXZLS.CSBH ');
    sql.add('left join (select XieXing,SheHao,CLBH,BWBH from XXZLSSVN ');
    sql.Add('           where XieXing=:XieXing and Shehao=:SheHao ');
    sql.Add('                 and (CLBH like ''H%'' or CLBH like ''L%'') ');
    sql.Add('           Group by XieXing,SheHao,CLBH,BWBH) XXZLSSVN on XXZLSSVN.XieXing=XXZLS.XieXing and XXZLSSVN.SheHao=XXZLS.SheHao');
    sql.Add('                                                     and XXZLSSVN.BWBH=XXZLS.BWBH and XXZLSSVN.CLBH=XXZLS.CLBH');
    sql.Add('where XXZLS.XieXing=:XieXing and XXZLS.Shehao=:SheHao and XXZLS.BWLB=''3'' ');
    sql.Add('      and (XXZLS.CLBH like ''H%'' or XXZLS.CLBH like ''L%'') ');
    if edit3.Text<>'' then
      sql.Add('    and XXZLS.BWBH like '+''''+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
      sql.Add('    and XXZLS.CLBH like '+''''+edit4.Text+'%'+'''');
    if edit5.Text<>'' then
      sql.Add('    and XXZLS.CSBH like '+''''+edit5.Text+'%'+'''');
    active:=true;
  end;
end;

procedure TBW_CL_CS.FormDestroy(Sender: TObject);
begin
  BW_CL_CS:=nil;
end;

procedure TBW_CL_CS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TBW_CL_CS.DBGrid2DblClick(Sender: TObject);
begin
  if XXZLS.recordcount>0 then
  begin
    with DestinationPackingBox_Label.XXZLSSVN do
    begin
      edit;
      fieldbyname('BWBH').value:=XXZLS.fieldbyname('BWBH').value;
      fieldbyname('YWSM').value:=XXZLS.fieldbyname('YWSM').value;
      fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=XXZLS.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=XXZLS.fieldbyname('DWBH').value;
      fieldbyname('CLSL').value:=XXZLS.fieldbyname('CLSL').value;
      fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').value;
      fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').value;
      insert;
    end;
  end;
end;

procedure TBW_CL_CS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TBW_CL_CS.Button2Click(Sender: TObject);
  var bm:Tbookmark;
      i:integer;
      bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not XXZLS.Active) then
    begin
      abort;
    end;
    if (XXZLS.recordcount<1) then
    begin
      abort;
    end;
    if XXZLS.FieldByName('XieXing').IsNull then
    begin
      XXZLS.Active:=false;
      close;
      abort;
    end;
    XXZLS.disablecontrols;
    bm:=XXZLS.getbookmark;
    bookmarklist:=DBGrid2.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          XXZLS.gotobookmark(pointer(bookmarklist[i]));
          with DestinationPackingBox_Label.XXZLSSVN do
          begin
            edit;
            fieldbyname('BWBH').value:=XXZLS.fieldbyname('BWBH').value;
            fieldbyname('YWSM').value:=XXZLS.fieldbyname('YWSM').value;
            fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').value;
            fieldbyname('YWPM').value:=XXZLS.fieldbyname('YWPM').value;
            fieldbyname('DWBH').value:=XXZLS.fieldbyname('DWBH').value;
            fieldbyname('CLSL').value:=XXZLS.fieldbyname('CLSL').value;
            fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').value;
            fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').value;
            insert;
          end;
        end;
      finally
      begin
        XXZLS.gotobookmark(bm);
        XXZLS.freebookmark(bm);
        XXZLS.enablecontrols;
        showmessage('You have finish copy!');
      end;
      end;
    end;
  end;
end;

procedure TBW_CL_CS.FormCreate(Sender: TObject);
begin
  XXZLS.Active:=true;
end;

end.
