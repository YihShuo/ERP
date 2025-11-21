unit ThreadBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, DBCtrls, Grids, DBGrids, StdCtrls ,comobj ,
  ExtCtrls, ComCtrls, GridsEh, DBGridEh;

type
  TThreadBOM = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    TS3: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    Label17: TLabel;
    DBText12: TDBText;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    BDT6: TBitBtn;
    BDT5: TBitBtn;
    BDT4: TBitBtn;
    BDT3: TBitBtn;
    BDT2: TBitBtn;
    BDT1: TBitBtn;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    XXZLSVN: TQuery;
    XXZLSVNXieXing: TStringField;
    XXZLSVNSheHao: TStringField;
    XXZLSVNBWBH: TStringField;
    XXZLSVNYWSM: TStringField;
    XXZLSVNCLBH: TStringField;
    XXZLSVNYWPM: TStringField;
    XXZLSVNDWBH: TStringField;
    XXZLSVNCLSL: TCurrencyField;
    XXZLSVNCSBH: TStringField;
    XXZLSVNFLBH: TStringField;
    XXZLSVNDFL: TStringField;
    XXZLSVNXFL: TStringField;
    XXZLSVNZSYWJC: TStringField;
    XXZLSVNUSERID: TStringField;
    XXZLSVNUSERDATE: TDateTimeField;
    XXZLSVNYN: TStringField;
    DS3: TDataSource;
    UpXXZLSVN: TUpdateSQL;
    DS1: TDataSource;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLJiJie: TStringField;
    XXZLCLID: TStringField;
    XXZLARTICLE: TStringField;
    XXZLBZCC: TStringField;
    XXZLXieGN: TStringField;
    XXZLKFCQ: TStringField;
    XXZLLOGO: TStringField;
    XXZLKHDH: TStringField;
    XXZLCCGB: TStringField;
    XXZLXTGJ: TStringField;
    XXZLXTMH: TStringField;
    XXZLDMGJ: TStringField;
    XXZLDDMH: TStringField;
    XXZLMSGJ: TStringField;
    XXZLMDMH: TStringField;
    XXZLDAOGJ: TStringField;
    XXZLDAOMH: TStringField;
    XXZLIMGName: TStringField;
    XXZLCurrency: TStringField;
    XXZLQPrice: TFloatField;
    XXZLOPrice: TFloatField;
    XXZLIPrice: TFloatField;
    XXZLCPrice: TFloatField;
    XXZLUSERID: TStringField;
    XXZLUSERDATE: TDateTimeField;
    XXZLKFXXCZ: TStringField;
    XXZLKFXXCZ1: TStringField;
    XXZLKFXXCZ2: TStringField;
    XXZLKFXXCZ3: TStringField;
    XXZLGENDER: TStringField;
    XXZLYN: TStringField;
    XXZLKFJC: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure XXZLSVNAfterOpen(DataSet: TDataSet);
    procedure BD7Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThreadBOM: TThreadBOM;

implementation

uses main1, MaterialNew1, ThreadBOM_CL1;

{$R *.dfm}

procedure TThreadBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BD5.Enabled then
  begin
    showmessage('Pls save data first.');
    PC1.ActivePage:=TS3;
    panel1.Visible:=false;
    panel4.Visible:=true;
    action:=canone;
  end
  else
    begin
      if BB5.Enabled then
        begin
           showmessage('Pls save data first.');  
           PC1.ActivePage:=TS1;
           panel1.Visible:=true;
           panel4.Visible:=false;
           action:=canone;
        end
        else
          begin
            action:=cafree;
          end
    end;
end;

procedure TThreadBOM.BB7Click(Sender: TObject);
begin
close;
end;

procedure TThreadBOM.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.*,KFZL.KFJC from XXZL ');
    sql.add('left join kfzl on kfzl.kfdh=XXZl.KHDH ');
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add('and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('and kfzl.kfjc like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    sql.add('and XXZL.YN=''1''');
    //sql.add('and exists(select DDZl.DDBH
    sql.add('order by XXZL.KHDH DESC,XXZL.XieXing');
    active:=true;
  end;
  XXZLSVN.Open;
  panel2.Visible:=false;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
end;

procedure TThreadBOM.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  edit1.SetFocus;
end;

procedure TThreadBOM.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS3;
    Panel4.visible:=true;
    panel1.Visible:=false;
  end;
end;

procedure TThreadBOM.XXZLSVNAfterOpen(DataSet: TDataSet);
begin
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  with XXZLSVN do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  end;
end;

procedure TThreadBOM.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TThreadBOM.BD5Click(Sender: TObject);
var i:integer;
begin
  try
    XXZLSVN.first;
    for i:=1 to XXZLSVN.RecordCount do
      begin
        case XXZLSVN.updatestatus of
          usmodified:
             begin
                  begin
                    XXZLSVN.edit;
                    XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
                    XXZLSVN.FieldByName('userdate').Value:=date;
                    UPXXZLSVN.apply(ukmodify);
                  end;
              end;
        end;
        XXZLSVN.next;
      end;
XXZLSVN.active:=false;
XXZLSVN.cachedupdates:=false;
XXZLSVN.requestlive:=false;
XXZLSVN.active:=true;
bD5.enabled:=false;
bD6.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TThreadBOM.BD6Click(Sender: TObject);
begin
  XXZLSVN.active:=false;
  XXZLSVN.cachedupdates:=false;
  XXZLSVN.requestlive:=false;
  XXZLSVN.active:=true;
  bD5.enabled:=false;
  bD6.enabled:=false;
end;

procedure TThreadBOM.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS1 then
   begin
     Panel1.visible:=true;
     panel4.Visible:=false;
   end
     else
       begin
         Panel4.visible:=true;
         panel1.Visible:=false;
       end;
end;

procedure TThreadBOM.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
end;

procedure TThreadBOM.BDT6Click(Sender: TObject);
var
  eclApp,WorkBook: olevariant;
  //xlsFileName: string;
  i, j: integer;
begin
  if XXZLSVN.Active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   XXZLSVN.fieldCount-1   do
      begin
        eclApp.Cells(1,i+1):=XXZLSVN.fields[i].FieldName;
      end;

      XXZLSVN.First;
      j:=2;
      while not XXZLSVN.Eof do
      begin
        for i:=0 to XXZLSVN.FieldCount-1 do
        begin
          eclApp.Cells(j,i+1):=XXZLSVN.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        XXZLSVN.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      {if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else begin
        a:='Unit List';
      end;
      WorkBook.SaveAS(a);
      WorkBook.close;}
      eclApp.Visible:=True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TThreadBOM.BitBtn2Click(Sender: TObject);
begin
  MaterialNew:=TMaterialNew.create(self);
  MaterialNew.show;
end;

procedure TThreadBOM.BD4Click(Sender: TObject);
begin
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.edit;
  DBGridEh2.columns[2].ButtonStyle:=cbsEllipsis;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TThreadBOM.BBT1Click(Sender: TObject);
begin
  XXZl.First;
end;

procedure TThreadBOM.BBT2Click(Sender: TObject);
begin
  XXZL.Prior;
end;

procedure TThreadBOM.BBT3Click(Sender: TObject);
begin
  XXZl.Next;
end;

procedure TThreadBOM.BBT4Click(Sender: TObject);
begin
  XXZL.Last;
end;

procedure TThreadBOM.BDT1Click(Sender: TObject);
begin
  XXZLSVn.First;
end;

procedure TThreadBOM.BDT2Click(Sender: TObject);
begin
  XXZLSVN.Prior;
end;

procedure TThreadBOM.BDT3Click(Sender: TObject);
begin
  XXZLSVN.next;
end;

procedure TThreadBOM.BDT4Click(Sender: TObject);
begin
  XXZLSVN.last;
end;

procedure TThreadBOM.FormDestroy(Sender: TObject);
begin
  ThreadBOM:=nil;
end;

procedure TThreadBOM.DBGridEh1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS3;
    Panel4.visible:=true;
    panel1.Visible:=false;
  end;
end;

procedure TThreadBOM.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TThreadBOM.DBGridEh2EditButtonClick(Sender: TObject);
begin
  ThreadBOM_CL:=TThreadBOM_CL.create(self);
  ThreadBOM_CL.show;
end;

end.
