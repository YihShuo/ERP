unit Dest_BW_CL_CS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TDest_BW_CL_CS = class(TForm)
    DBGrid2: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    XXZLS: TQuery;
    XXZLSBWBH: TStringField;
    XXZLSYWSM: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSCLSL: TFloatField;
    XXZLSCSBH: TStringField;
    XXZLSZSJC: TStringField;
    XXZLSXieXing: TStringField;
    XXZLSSheHao: TStringField;
    DS: TDataSource;
    XXZLSDest: TStringField;
    XXZLSDestination: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dest_BW_CL_CS: TDest_BW_CL_CS;

implementation

  uses DestinationPackingBox_Label1, main1;

{$R *.dfm}

procedure TDest_BW_CL_CS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDest_BW_CL_CS.FormDestroy(Sender: TObject);
begin
  Dest_BW_CL_CS:=nil;
end;

procedure TDest_BW_CL_CS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TDest_BW_CL_CS.Button1Click(Sender: TObject);
begin
  with XXZLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ''ZZZZZZZZZ'' XieXing, ''ZZZ'' SheHao, DDZL.Dest, LBZLS.YWSM as Destination, xxzls.BWBH, BWZL.YWSM, ');
    sql.Add('       isnull(xxzls.CSBH,'''') CSBH, isnull(ZSZL.ZSYWJC,'''') ZSYWJC, xxzls.CLBH, CLZL.YWPM, CLZL.DWBH, xxzls.CLSL ');
    sql.add('from XXZLS ');
    sql.add('left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao ');
    sql.Add('left join DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZLS.SheHao ');
    sql.add('left join LBZLS on LBZLS.LBDH=DDZL.Dest and LBZLS.LB=''13'' ');
    sql.add('left join BWZL on BWZL.BWDH=XXZLS.BWBH ');
    sql.add('left join CLZL on CLZL.CLDH=XXZLS.CLBH ');
    sql.Add('left join ZSZL on ZSZL.ZSDH=XXZLS.CSBH ');
    sql.Add('where (left(xxzls.CLBH,1) = ''H'' or left(xxzls.CLBH,1) = ''L'') and isnull(DDZL.Dest,'''')<>'''' and XXZLS.BWLB=''3'' ');
    if edit1.Text<>'' then
      sql.Add('    and DDZL.Dest = '+''''+edit1.Text+''' ');
    if edit2.Text<>'' then
      sql.Add('    and LBZLS.YWSM like '+''''+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
      sql.Add('    and XXZLS.BWBH like '+''''+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
      sql.Add('    and XXZLS.CLBH like '+''''+edit4.Text+'%'+'''');
    if edit5.Text<>'' then
      sql.Add('    and XXZLS.CSBH like '+''''+edit5.Text+'%'+'''');
    sql.add('      and DDZL.GSBH = '+''''+main.Edit2.Text+''' ');
    sql.add('      and not exists(select bwbh from xxzlssvn ');
    sql.add('                     where XieXing=''ZZZZZZZZZ'' and SheHao=''ZZZ'' and xxzlssvn.cond=DDZL.Dest ');
    sql.add('                           and xxzlssvn.bwbh=xxzls.bwbh and xxzlssvn.CLBH=xxzls.clbh ');
    sql.add('                           and isnull(xxzlssvn.CSBH,'''')=isnull(xxzls.CSBH,'''') and xxzlssvn.clsl=xxzls.clsl) ');
    sql.Add('group by DDZL.Dest,LBZLS.YWSM,xxzls.BWBH,BWZL.YWSM,isnull(xxzls.CSBH,''''),isnull(ZSZL.ZSYWJC,''''), ');
    sql.add('         xxzls.CLBH,CLZL.YWPM,CLZL.DWBH,xxzls.CLSL ');
    sql.add('order by DDZL.Dest,xxzls.BWBH ');
    active:=true;
  end;
end;

procedure TDest_BW_CL_CS.Button2Click(Sender: TObject);
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
          with DestinationPackingBox_Label.query1 do
          begin
            edit;
            fieldbyname('XieXing').value:=XXZLS.fieldbyname('XieXing').value;
            fieldbyname('SheHao').value:=XXZLS.fieldbyname('SheHao').value;
            fieldbyname('cond').value:=XXZLS.fieldbyname('Dest').value;
            fieldbyname('Destination').value:=XXZLS.fieldbyname('Destination').value;
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

procedure TDest_BW_CL_CS.DBGrid2DblClick(Sender: TObject);
begin
  if XXZLS.recordcount>0 then
  begin
    with DestinationPackingBox_Label.query1 do
    begin
      edit;
      fieldbyname('XieXing').value:=XXZLS.fieldbyname('XieXing').value;
      fieldbyname('SheHao').value:=XXZLS.fieldbyname('SheHao').value;
      fieldbyname('cond').value:=XXZLS.fieldbyname('Dest').value;
      fieldbyname('Destination').value:=XXZLS.fieldbyname('Destination').value;
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

end.
