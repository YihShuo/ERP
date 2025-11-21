unit ExtraList1;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls;

type
  TExtraList = class(TForm)
    Panel6: TPanel;
    Label7: TLabel;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid2: TDBGrid;
    JGMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasJGLX: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGMasYN: TStringField;
    JGMasZSYWJC: TStringField;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetVNPrice: TFloatField;
    JGDetVNACC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraList: TExtraList;

implementation

uses main1;

{$R *.dfm}

procedure TExtraList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TExtraList.Button1Click(Sender: TObject);
begin
with JGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('where JGNO='+''''+edit1.Text+'''');
    active:=true;
  end;
if JGMas.recordcount>0 then
  begin
    JGDet.Active:=true;
    button2.Enabled:=true;
    button3.Enabled:=true;
  end
  else
    begin
      button2.Enabled:=false;
      button3.Enabled:=false;
    end;
end;

procedure TExtraList.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TExtraList.Button2Click(Sender: TObject);
begin  
if  JGMas.fieldbyname('YN').Value='2'   then
  begin
    showmessage('Pls contect with computer designer.');
    abort;
  end;

if JGMas.FieldByName('CFMID1').value='NO' then
  begin
    try
    with JGDet do
      begin
        first;
        while not eof do
          begin
            if updatestatus=usmodified then
              begin
                if not fieldbyname('Qty').isnull then
                  begin
                    UPdet.apply(ukmodify);
                  end
                  else
                    begin
                      showmessage('Qty can not be empty.');
                      abort;
                    end;
              end;
            next;
          end;
        active:=false;
        active:=true;
      end;
      with JGMas do
        begin
          edit;
          fieldbyname('CFMID1').Value:=main.edit1.text;
          fieldbyname('CFMDATE1').Value:=date;
          UPMas.Apply(ukmodify);
        end;
    except
      showmessage('Have wrong.');
    end;
  end;
end;

procedure TExtraList.Button3Click(Sender: TObject);
begin
if  JGMas.fieldbyname('YN').Value='2'   then
  begin
    showmessage('Alread account. Pls contect with computer designer.');
    abort;
  end;
      with JGMas do
        begin
          edit;
          fieldbyname('CFMID1').Value:='NO';
          fieldbyname('CFMDATE1').Value:=date;
          UPMas.Apply(ukmodify);
        end;
      JGDet.Active:=false;
      JGDet.Active:=true;
end;

procedure TExtraList.JGDetAfterOpen(DataSet: TDataSet);
begin 
if JGDet.recordcount>0 then
  begin
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;
  end
  else
    begin
      BDT1.Enabled:=false;
      BDT2.Enabled:=false;
      BDT3.Enabled:=false;
      BDT4.Enabled:=false;
    end;
end;

procedure TExtraList.BDT1Click(Sender: TObject);
begin
JGDet.First;
end;

procedure TExtraList.BDT2Click(Sender: TObject);
begin
JGDet.prior;
end;

procedure TExtraList.BDT3Click(Sender: TObject);
begin
JGDet.next;
end;

procedure TExtraList.BDT4Click(Sender: TObject);
begin
JGDet.last;
end;

procedure TExtraList.FormDestroy(Sender: TObject);
begin
ExtraList:=nil;
end;

end.
