unit ScanOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh,StrUtils;

type
  TScanOut = class(TForm)
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
    ScanDataCARTONBAR: TStringField;
    ScanDataDDBH: TStringField;
    ScanDataXH: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataSB: TStringField;
    ScanDataINSPECTCS: TIntegerField;
    ScanDataINSPECTDATE: TDateTimeField;
    ScanDataMEMO: TStringField;
    DS1: TDataSource;
    UpScan: TUpdateSQL;
    YWBZPOS: TQuery;
    YWBZPOSDDBH: TStringField;
    YWBZPOSArticle: TStringField;
    YWBZPOSXieMing: TStringField;
    YWBZPOSXH: TStringField;
    YWBZPOSDDCC: TStringField;
    YWBZPOSXXCC: TStringField;
    YWBZPOSQty: TIntegerField;
    YWBZPOSCTS: TIntegerField;
    YWBZPOSMEMO: TStringField;
    YWBZPOSCTQ: TIntegerField;
    YWBZPOSCTZ: TIntegerField;
    YWBZPOSUSERDATE: TDateTimeField;
    YWBZPOSUSERID: TStringField;
    YWBZPOSYN: TStringField;
    DS2: TDataSource;
    OpenDialog1: TOpenDialog;
    Qtemp: TQuery;
    YWCP: TQuery;
    CBX1: TCheckBox;
    Edit2: TEdit;
    ScanDataLPNBarCode: TStringField;
    Label1: TLabel;
    CheckBox1: TRadioButton;
    CheckBox2: TRadioButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CBX1Click(Sender: TObject);
    procedure ScanDataAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanOut: TScanOut;  
  NDate:TDate;
  Filepath:string;
  Myfile:Textfile;

implementation

uses ScanOut_hand1;

{$R *.dfm}

procedure TScanOut.FormDestroy(Sender: TObject);
begin
  ScanOut:=nil;
end;

procedure TScanOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ScanData.recordcount>0 then
  begin
    if messagedlg('Still have date not upload to server,discard?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
        YWBZPOS.Active:=false;
        YWCP.Active:=false;
        ScanData.Active:=false;
        action:=cafree;
    end else
        abort;
  end else
  begin
      YWBZPOS.Active:=false;
      YWCP.Active:=false;
      ScanData.Active:=false;
      action:=cafree;
  end;
end;

procedure TScanOut.BB3Click(Sender: TObject);
begin
  ScanData.delete;
end;

procedure TScanOut.BB1Click(Sender: TObject);
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
                        edit2.text:=inttostr(Scandata.RecordCount);
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
      ScanOut_hand:= TScanOut_hand.create(self);
      ScanOut_hand.show;
    end;

end;

procedure TScanOut.BB4Click(Sender: TObject);
begin
  Close;
end;

procedure TScanOut.BB2Click(Sender: TObject);
var i:integer;
    CARTONBAR:string;
    DDBH:string;
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
              ddbh:=Scandata.fieldbyname('ddbh').value;
              with Qtemp do
              begin
                  active:=false;
                  sql.Clear;
                  sql.add('update YWCP');
                  sql.add('set OUTCS=OUTCS+1 ');
                  sql.add('    ,OUTDATE=getdate()');
                  if  CheckBox1.Checked=true then
                  begin
                  sql.add('    ,SB=''4'' ');
                  end;
                  if CheckBox2.Checked=true then
                  begin
                  sql.add('    ,SB=''2'' ');
                  end;
                  sql.add('where CARTONBAR='+''''+CARTONBAR+'''');
                  sql.add('      and OUTCS is not null  ');
                  sql.add('update YWCP');
                  sql.add('set OUTCS=1 ');
                  sql.add('    ,OUTDATE=getdate()'); 
                  if  CheckBox1.Checked=true then
                  begin
                  sql.add('    ,SB=''4'' ');
                  end;
                  if CheckBox2.Checked=true then
                  begin
                  sql.add('    ,SB=''2'' ');
                  end;
                  sql.add('where CARTONBAR='''+CARTONBAR+'''');
                  sql.add('      and OUTCS is  null  ');

                  {2009/12/04 edit by Bill
                   翻箱時如訂單情況為'5'滿箱不能發料，更改為'2'可開補料}
                  sql.add('update ddzl set yn=''2'' ');
                  sql.add('where ddbh='''+ddbh+'''');
                  sql.add('      and yn=''5'' ');
                  sql.add('update YWDD set SB=''IN'' ');
                  sql.add('where ysbh='''+ddbh+''' ');
                  sql.add('and SB=''OK'' ');
                  //end edit
                  //memo1.text:=sql.text;
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
    edit2.text:='0';
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
  if CBX1.checked then
  begin
    YWBZPOS.Active:=true;
  end else
  begin
      YWBZPOS.Active:=false;
  end;
end;

procedure TScanOut.BitBtn1Click(Sender: TObject);
begin

  panel1.Visible:= true;
  if CBX1.checked then
  begin
    YWBZPOS.Active:=true;
  end else
  begin
      YWBZPOS.Active:=false;
  end;
  edit1.SetFocus;
end;

procedure TScanOut.Button1Click(Sender: TObject);
begin
  Panel1.Visible:=false;
end;

procedure TScanOut.Edit1KeyPress(Sender: TObject; var Key: Char);
var s:string;
begin
  if key=#13 then
  begin
     //20171110 UCC標 weston修改
    if YWCP.Locate('LPNBarcode',RightStr(edit1.Text,15),[]) then
    begin
      s:=YWCP.fieldByName('CARTONBAR').AsString;
    end else
    begin
      s:=trim(edit1.Text);
    end;
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
              Scandata.fieldbyname('DDBH').Value:=ywcp.fieldbyname('DDBH').Value;
              Scandata.fieldbyname('XH').Value:=YWCP.fieldbyname('XH').value;
              Scandata.fieldbyname('Qty').Value:=YWCP.fieldbyname('Qty').Value;
              scandata.fieldbyname('LPNBarCode').Value:=ywcp.fieldbyname('LPNBarCode').Value;
              Scandata.post;
              edit1.Text:='';
              edit2.text:=inttostr(Scandata.RecordCount);
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

procedure TScanOut.CBX1Click(Sender: TObject);
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

procedure TScanOut.ScanDataAfterDelete(DataSet: TDataSet);
begin
  edit2.text:=inttostr(Scandata.RecordCount);
end;

procedure TScanOut.FormCreate(Sender: TObject);
begin
  YWCP.Active:=true;
  SCANDATA.active:=true;
end;

end.
