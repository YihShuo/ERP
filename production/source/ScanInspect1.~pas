unit ScanInspect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh;

type
  TScanInspect = class(TForm)
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid2: TDBGridEh;
    ScanData: TQuery;
    DS1: TDataSource;
    UpScan: TUpdateSQL;
    YWBZPOS: TQuery;
    DS2: TDataSource;
    OpenDialog1: TOpenDialog;
    Qtemp: TQuery;
    ScanDataCARTONBAR: TStringField;
    ScanDataXH: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataSB: TStringField;
    ScanDataINSPECTCS: TIntegerField;
    ScanDataINSPECTDATE: TDateTimeField;
    ScanDataMEMO: TStringField;
    ScanDataDDBH: TStringField;
    YWBZPOSDDBH: TStringField;
    YWBZPOSXH: TStringField;
    YWBZPOSDDCC: TStringField;
    YWBZPOSQty: TIntegerField;
    YWBZPOSCTS: TIntegerField;
    YWBZPOSMEMO: TStringField;
    YWBZPOSCTQ: TIntegerField;
    YWBZPOSCTZ: TIntegerField;
    YWBZPOSUSERDATE: TDateTimeField;
    YWBZPOSUSERID: TStringField;
    YWBZPOSYN: TStringField;
    YWBZPOSXXCC: TStringField;
    YWBZPOSArticle: TStringField;
    YWBZPOSXieMing: TStringField;
    YWCP: TQuery;
    Label1: TLabel;
    CBX1: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CBX1Click(Sender: TObject);
    procedure ScanDataAfterDelete(DataSet: TDataSet);
    procedure ScanDataAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInspect: TScanInspect;
  NDate:TDate;
  Filepath:string;
  Myfile:Textfile;

implementation

uses main1, ScanInspect_hand1;

{$R *.dfm}

procedure TScanInspect.FormDestroy(Sender: TObject);
begin
ScanInspect:=nil;
end;

procedure TScanInspect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if ScanData.recordcount>0 then
  begin
    if messagedlg('Still have date not upload to server,discard?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        YWBZPOS.Active:=false;
        YWCP.Active:=false;
        ScanData.Active:=false;
        action:=cafree;
      end
      else
        abort;
  end
  else
    begin
      YWBZPOS.Active:=false;
      YWCP.Active:=false;
      ScanData.Active:=false;
      action:=cafree;
    end;
end;

procedure TScanInspect.BB3Click(Sender: TObject);
begin
ScanData.delete;
end;

procedure TScanInspect.BB1Click(Sender: TObject);
var i:integer;
    s:string;
begin
if messagedlg('You want import form TXT or key in by hand?',mtinformation,[mbyes,mbNo],0)=mrYes then
  begin
    if opendialog1.Execute then
      begin
        filepath:=opendialog1.FileName;
      end;
    if trim(filepath)='' then
      begin
        exit;
      end;
    assignfile(Myfile,filepath);

    try
      reset(myfile);
    except
      showmessage('Have wrong.');
    end;

    try
    YWBZPOS.Active:=false;
    YWCP.Active:=true;
    ScanData.Active:=true;
    i:=0;
    while not seekeof(myfile) do
      begin
        readln(myfile,s);
        s:=trim(s);
        if trim(s)<>'' then
          begin
            with ScanData do
              begin
                s:=trim(copy(s,0,pos(',',s)-1));
                if YWCP.locate('CARTONBAR',s,[]) then
                  begin
                    if YWCP.FieldByName('EXEDATE').IsNull then
                      begin
                        append;
                        fieldbyname('CARTONBAR').Value:=s;
                        fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
                        fieldbyname('XH').Value:=YWCP.fieldbyname('XH').value;
                        fieldbyname('Qty').Value:=YWCP.fieldbyname('Qty').Value;
                        post;
                        label1.Caption:=inttostr(Scandata.RecordCount);
                      end
                      else
                        begin
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          showmessage('Wrong CartonBar. Pls check -----'+s);
                        end;
                  end
                  else
                    begin
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      showmessage('Wrong CartonBar. Pls check -----'+s);
                    end;
                post;
              end;
          end;
        inc(i);
      end;
    closefile(myfile);
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    if CBX1.checked then
      begin
        YWBZPOS.Active:=true;
      end
      else
        begin
          YWBZPOS.Active:=false;
        end;
    except
      showmessage('Have wrong.');
    end;
  end
  else
    begin
      ScanInspect_hand:= TScanInspect_hand.create(self);
      ScanInspect_hand.show;
    end;


end;

procedure TScanInspect.BB4Click(Sender: TObject);
begin
close;
end;

procedure TScanInspect.BB2Click(Sender: TObject);
var i:integer;
CARTONBAR:string;
begin
if not Scandata.Active then
  begin
    abort;
  end;
if Scandata.recordcount=0 then
  begin
    abort;
  end;
YWBZPOS.active:=false;

try
    Scandata.first;
    while not Scandata.Eof do
      begin
        case Scandata.updatestatus of
          usinserted:
            begin
              CARTONBAR:=Scandata.fieldbyname('CARTONBAR').value;
              with Qtemp do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('update YWCP');
                  sql.add('set INSPECTCS=INSPECTCS+1 ');
                  sql.add('    ,INSPECTDATE=getdate()');
                  sql.add('where CARTONBAR='+''''+CARTONBAR+'''');
                  sql.add('      and INSPECTCS is not null ');
                  sql.add('update YWCP');
                  sql.add('set INSPECTCS=1 ');
                  sql.add('    ,INSPECTDATE=getdate()');
                  sql.add('where CARTONBAR='+''''+CARTONBAR+'''');
                  sql.add('      and INSPECTCS is  null ');
                  execsql;
                end;
            end;
        end;
        Scandata.delete;
        Scandata.first;
      end;
    Scandata.active:=true;
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    if messagedlg('Keep to TXT files?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        if trim(filepath)<>'' then
          begin
            assignfile(Myfile,filepath);
            append(myfile);
            write(myfile,'Already write to database and keep.');
            closefile(myfile);
          end;
      end;
    showmessage('Succeed'); 
    label1.Caption:='0';
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end; 
if CBX1.checked then
  begin
    YWBZPOS.Active:=true;
  end
  else
    begin
      YWBZPOS.Active:=false;
    end;
end;

procedure TScanInspect.BitBtn1Click(Sender: TObject);
begin

panel1.Visible:= true;
YWCP.Active:=true;
SCANDATA.active:=true;
if CBX1.checked then
  begin
    YWBZPOS.Active:=true;
  end
  else
    begin
      YWBZPOS.Active:=false;
    end;
edit1.SetFocus;
end;

procedure TScanInspect.Button1Click(Sender: TObject);
begin

Panel1.Visible:=false;
end;

procedure TScanInspect.Edit1KeyPress(Sender: TObject; var Key: Char);
var s:string;
begin
if key=#13 then
  begin
    s:=trim(edit1.Text);
    if s='' then
      begin
        showmessage('Have wrong.');
        abort;
      end;
    try
      if not ScanData.Locate('CARTONBAR',s,[]) then
        begin
          if YWCP.Locate('CARTONBAR',s,[]) then
            begin
              Scandata.last;
              Scandata.append;
              Scandata.fieldbyname('CARTONBAR').Value:=s;
              Scandata.fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
              Scandata.fieldbyname('XH').Value:=YWCP.fieldbyname('XH').value;
              Scandata.fieldbyname('Qty').Value:=YWCP.fieldbyname('Qty').Value;
              Scandata.post;
              label1.Caption:=inttostr(Scandata.RecordCount);
              edit1.Text:='';
              BB2.Enabled:=true;
              BB3.Enabled:=true;
            end
            else
              begin
                windows.beep(1500,500);
                windows.beep(1500,500);
                windows.beep(1500,500);
                edit1.text:='';
              end;
        end
        else
          begin
            windows.beep(1500,500);
            windows.beep(1500,500);
            windows.beep(1500,500);
            edit1.text:='';
          end;
    except
      windows.beep(1500,500);
      windows.beep(1500,500);
      windows.beep(1500,500);
      edit1.text:='';
      //showmessage('Have wrong, pls check the order.');
    end;
  end;

end;

procedure TScanInspect.FormCreate(Sender: TObject);
begin
YWCP.Active:=true;
SCANDATA.active:=true;
end;

procedure TScanInspect.CBX1Click(Sender: TObject);
begin 
if CBX1.checked then
  begin
    YWBZPOS.Active:=true;
  end
  else
    begin
      YWBZPOS.Active:=false;
    end;
end;

procedure TScanInspect.ScanDataAfterDelete(DataSet: TDataSet);
begin

label1.Caption:=inttostr(Scandata.RecordCount);
end;

procedure TScanInspect.ScanDataAfterInsert(DataSet: TDataSet);
begin
//label1.Caption:=inttostr(Scandata.RecordCount);
end;

end.
