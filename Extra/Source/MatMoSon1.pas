unit MatMoSon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, GridsEh, DBGridEh, Buttons, ExtCtrls,
  Menus;

type
  TMatMoSon = class(TForm)
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
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    ZHMas: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    ZHDet: TQuery;
    UpSQL2: TUpdateSQL;
    DS2: TDataSource;
    Panel3: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    ZHMasCLDH: TStringField;
    ZHMasZWPM: TStringField;
    ZHMasYWPM: TStringField;
    ZHMasDWBH: TStringField;
    ZHDetcldh: TStringField;
    ZHDetcldh1: TStringField;
    ZHDetccq: TStringField;
    ZHDetccq1: TStringField;
    ZHDetsyl: TFloatField;
    ZHDetzsdh: TStringField;
    ZHDetUSERID: TStringField;
    ZHDetUSERDATE: TDateTimeField;
    ZHDetYN: TStringField;
    ZHDetYWPM: TStringField;
    ZHDetZWPM: TStringField;
    ZHDetDWBH: TStringField;
    Label3: TLabel;
    POP1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ZHMasUSERID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure ZHDetAfterInsert(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatMoSon: TMatMoSon;

implementation

uses MatMoSon_M1, MatMoSon_S1, main1;

{$R *.dfm}

procedure TMatMoSon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMatMoSon.Button2Click(Sender: TObject);
begin
with ZHMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct CLZHZL.CLDH ,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZHZL.USERID ');
    sql.add('from CLZHZL');
    sql.add('left join CLZl on CLZl.CLDH=CLZHZL.CLDH');
    sql.add('where  CLZHZL.CLDH like '+''''+edit2.Text+'%'+'''');
    sql.add('  and CLZL.YWPM like '+''''+'%'+edit1.Text+'%'+''''); 
    sql.add('  and CLZL.ZWPM like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and CLZHZL.YN='+''''+'2'+'''');
    sql.add('order by CLZHZL.CLDH ');
    active:=true;
  end;
ZHDet.Active:=true;
BB2.enabled:=true;  
BB4.enabled:=true;

end;

procedure TMatMoSon.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMatMoSon.BB2Click(Sender: TObject);
begin
DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis;
ZHMas.Insert;
BB5.enabled:=true;
BB6.enabled:=true;
N1.Enabled:=true;
N2.Enabled:=true;
N3.Enabled:=true;
end;

procedure TMatMoSon.DBGridEh1EditButtonClick(Sender: TObject);
begin
  MatMoSon_M:=TMatMoSon_M.create(self);
  MatMoSon_M.show;
end;

procedure TMatMoSon.DBGridEh2EditButtonClick(Sender: TObject);
begin
if ZHMas.recordcount>0 then
  begin
    MatMoSon_S:=TMatMoSon_S.create(self);
    MatMoSon_S.show;
  end;
end;

procedure TMatMoSon.ZHDetAfterInsert(DataSet: TDataSet);
begin
DBGrideh2.Columns[0].ButtonStyle:=cbsellipsis;
end;

procedure TMatMoSon.N1Click(Sender: TObject);
begin
with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    insert;
  end;
end;

procedure TMatMoSon.N2Click(Sender: TObject);
begin 
with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;

end;

procedure TMatMoSon.N3Click(Sender: TObject);
begin

with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
end;

procedure TMatMoSon.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if ZHDet.FieldByName('YN').value='0' then
  begin
    dbgrideh2.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMatMoSon.BB5Click(Sender: TObject);
var i:integer;
begin
try

    ZHDet.first;
      for i:=1 to ZHDet.RecordCount do
        begin
          case ZHDet.updatestatus of
            usinserted:
              begin
                if ZHDet.fieldbyname('USERID').value=main.edit1.text then
                  begin
                    if ZHDet.fieldbyname('CLDH1').isnull then
                      begin
                        ZHDet.delete;
                      end
                      else
                        begin
                          upSQL2.apply(ukinsert);
                        end;
                  end
                  else
                    begin
                      showmessage('It is not yours, can not modify it.');
                    end;

              end;
            usmodified:
              begin
                if ((ZHDet.fieldbyname('USERID').value=main.edit1.text) or (ZHDet.FieldByName('USERDATE').value>(date-10))) then
                  begin
                    if ZHDet.fieldbyname('YN').value='0'then
                      begin
                        UpSQL2.apply(ukdelete);
                      end
                      else
                        begin
                          upsql2.apply(ukmodify);
                        end;
                  end
                  else
                    begin
                      showmessage('It is not yours, can not modify it.');
                    end;
              end;
          end;
          zhDet.next;
        end;

      zhDet.Active:=false;
      ZHDet.cachedupdates:=false;
      ZHDet.RequestLive:=false;
      ZHMas.active:=false;
      ZHMas.Active:=true;
      ZHDet.Active:=true;
      BB5.Enabled:=false;
      BB6.Enabled:=false;
      BB2.Enabled:=true;  
      BB4.Enabled:=true;
      DBGrideh1.columns[0].buttonstyle:=cbsnone;
      DBGrideh2.columns[0].buttonstyle:=cbsnone;
      N1.Enabled:=false;
      N2.Enabled:=false;
      N3.Enabled:=false;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TMatMoSon.BB6Click(Sender: TObject);
begin
with ZHDet do
  begin
    zhDet.Active:=false;
    ZHDet.cachedupdates:=false;
    ZHDet.RequestLive:=false;
    ZHMas.active:=false;
    ZHMas.Active:=true;
    ZHDet.Active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    BB2.Enabled:=true;
    BB4.Enabled:=true;
    DBGrideh1.columns[0].buttonstyle:=cbsnone;
    DBGrideh2.columns[0].buttonstyle:=cbsnone;   
    N1.Enabled:=false;
    N2.Enabled:=false;
    N3.Enabled:=false;
  end;
end;

procedure TMatMoSon.BB4Click(Sender: TObject);
begin
DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis;
ZHMas.edit;
BB5.enabled:=true;
BB6.enabled:=true;
N1.Enabled:=true;
N2.Enabled:=true;
N3.Enabled:=true;
end;

procedure TMatMoSon.FormDestroy(Sender: TObject);
begin
MatMoSon:=nil;
end;

end.
