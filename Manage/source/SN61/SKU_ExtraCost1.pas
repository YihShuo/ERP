unit SKU_ExtraCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, DB, DBTables;

type
  TSKU_ExtraCost = class(TForm)
    Top1Panel: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    BA1: TBitBtn;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    SeasonEdit: TEdit;
    Edit6: TEdit;
    BuyNoEdit: TEdit;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    Label17: TLabel;
    DBText12: TDBText;
    DBGrid2: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    CK1: TCheckBox;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLArticle: TStringField;
    XXZLCCGB: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLKFJC: TStringField;
    ExtraVN: TQuery;
    DS2: TDataSource;
    ExtraVNXieXing: TStringField;
    ExtraVNSheHao: TStringField;
    ExtraVNBWBH: TStringField;
    ExtraVNCLBH: TStringField;
    ExtraVNCSBH: TStringField;
    ExtraVNVNPrice: TIntegerField;
    ExtraVNUSPrice: TFloatField;
    ExtraVNCLSL: TCurrencyField;
    ExtraVNUSERID: TStringField;
    ExtraVNUSERDATE: TDateTimeField;
    ExtraVNYN: TStringField;
    ExtraVNYWSM: TStringField;
    ExtraVNZSYWJC: TStringField;
    ExtraVNYWPM: TStringField;
    ExtraVNDWBH: TStringField;
    UpExtraVN: TUpdateSQL;
    Top2Panel: TPanel;
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
    BDelRec: TQuery;
    XXZLExtraCount: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure ExtraVNAfterOpen(DataSet: TDataSet);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKU_ExtraCost: TSKU_ExtraCost;

implementation
  uses ExtraBW1, SKU_ExtraSupplier1, FunUnit, main1;
{$R *.dfm}

procedure TSKU_ExtraCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSKU_ExtraCost.FormDestroy(Sender: TObject);
begin
  SKU_ExtraCost:=nil;
end;

procedure TSKU_ExtraCost.BA1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  Panel2.Visible:=true;
end;

procedure TSKU_ExtraCost.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.CCGB,');
    sql.add('       XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,ExtraVN.ExtraCount  ');
    sql.add('from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    sql.add('left join (select XieXing,SheHao,COUNT(BWBH) as ExtraCount from ExtraVN Group by XieXing,SheHao) ExtraVN on ExtraVN.XieXing=XXZL.XieXing and ExtraVN.SheHao=XXZL.SheHao ');
    //201403006 增加前包頭資訊
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add('and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    if SeasonEdit.Text<>'' then
        sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
        sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
    if CK1.Checked then
    begin
      sql.add('and XXZL.YN='+''''+'1'+'''');
    end;
    sql.add('order by KFJC,XXZL.XieXing,XXZL.Shehao');
    active:=true;
  end;
  ExtraVN.Active:=true;
end;

procedure TSKU_ExtraCost.BD2Click(Sender: TObject);
begin

  BD5.Enabled:=true;
  BD6.Enabled:=true;
  with ExtraVN do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid2.columns[2].ButtonStyle:=cbsEllipsis;
  DBGrid2.columns[8].ButtonStyle:=cbsEllipsis;

end;

procedure TSKU_ExtraCost.BD3Click(Sender: TObject);
begin

  BD5.Enabled:=true;
  BD6.Enabled:=true;
  with ExtraVN do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    Post;
  end;

end;

procedure TSKU_ExtraCost.BD4Click(Sender: TObject);
begin
  //
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  with  ExtraVN do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid2.columns[2].ButtonStyle:=cbsEllipsis;
  DBGrid2.columns[8].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSKU_ExtraCost.DBGrid2EditButtonClick(Sender: TObject);
begin
  
  if ((DBGrid2.selectedfield.fieldname='BWBH') or (DBGrid2.selectedfield.fieldname='CLBH')) then
  begin
    ExtraBW:=TExtraBW.Create(self);
    ExtraBW.Show;
  end;
  if DBGrid2.selectedfield.fieldname='CSBH' then
  begin
    SKU_ExtraSupplier:=TSKU_ExtraSupplier.create(self);
    SKU_ExtraSupplier.show;
  end;


end;

procedure TSKU_ExtraCost.PC1Change(Sender: TObject);
begin
   //切換頁面編輯新增取消
   if BA6.Enabled=true then BA6.Click;
   if BD6.Enabled=true then BD6.Click;
   //
   if PC1.ActivePage=TS2 then
   begin
     Top1Panel.visible:=false;
     Top2Panel.Visible:=true;
   end else  if PC1.ActivePage=TS1 then
   begin
     Top1Panel.visible:=true;
     Top2Panel.Visible:=false;
   end;
end;

procedure TSKU_ExtraCost.ExtraVNAfterOpen(DataSet: TDataSet);
begin

  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  with ExtraVN do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  end;
  
end;

procedure TSKU_ExtraCost.BD6Click(Sender: TObject);
begin

  with ExtraVN do
  begin
    Active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.enabled:=false;
  DBGrid2.columns[0].ButtonStyle:=cbsNone;
  DBGrid2.columns[2].ButtonStyle:=cbsNone;
  DBGrid2.columns[8].ButtonStyle:=cbsNone;

end;

procedure TSKU_ExtraCost.BD5Click(Sender: TObject);
var i:integer;
begin

  //檢查單價
  ExtraVN.First;
  with  ExtraVN do
  begin
    for i:=0 to  ExtraVN.RecordCount-1 do
    begin
      if fieldbyname('VNPrice').isnull and fieldbyname('USPrice').isnull  then
      begin
          showmessage('Price can not be empty.');
          abort;
      end;
      if (not fieldbyname('VNPrice').isnull) and (not fieldbyname('USPrice').isnull)  then
      begin
          showmessage('Can not have two price.');
          abort;
      end;
      ExtraVN.Next;
    end;
  end;
  //
  try
    ExtraVN.First;
    for i:=0 to  ExtraVN.RecordCount-1 do
    begin
          case ExtraVN.updatestatus of
            usinserted:
            begin
                if ExtraVN.fieldbyname('BWBH').isnull then
                begin
                  ExtraVN.delete;
                end else
                begin
                  if  ExtraVN.FieldByName('CLSL').IsNull then
                  begin
                    showmessage('Quantity can not be empty.');
                    abort;
                  end;
                  ExtraVN.edit;
                  ExtraVN.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
                  ExtraVN.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
                  ExtraVN.FieldByName('userID').Value:=main.edit1.text;
                  ExtraVN.FieldByName('userdate').Value:=date;
                  ExtraVN.FieldByName('YN').Value:='1';
                  UpExtraVN.apply(ukinsert);
                end;
            end;
            usmodified:
            begin
                if ExtraVN.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'ExtraVN'+''''+','+''''+ExtraVN.fieldbyname('XIEXING').Value+'***'+ExtraVN.fieldbyname('SHEHAO').Value+'''');
                    sql.add(','+''''+ExtraVN.fieldbyname('BWBH').Value+'***'+ExtraVN.fieldbyname('CLBH').Value+''''+','+''''+ExtraVN.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpExtraVN.apply(ukdelete);
                end else
                begin
                  if  ExtraVN.FieldByName('CLSL').IsNull then
                  begin
                    showmessage('Quantity can not be empty.');
                    abort;
                  end;
                  ExtraVN.edit;
                  ExtraVN.FieldByName('userID').Value:=main.edit1.text;
                  ExtraVN.FieldByName('userdate').Value:=date;
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'ExtraVN'+''''+','+''''+ExtraVN.fieldbyname('XIEXING').Value+'***'+ExtraVN.fieldbyname('SHEHAO').Value+'''');
                    sql.add(','+''''+ExtraVN.fieldbyname('BWBH').Value+'***'+ExtraVN.fieldbyname('CLBH').OldValue+'***'+ExtraVN.fieldbyname('CLBH').Value+''''+','+''''+ExtraVN.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  //
                  UpExtraVN.apply(ukmodify);
                end;
            end;
          end;
          ExtraVN.next;
    end;
    //
    ExtraVN.active:=false;
    ExtraVN.cachedupdates:=false;
    ExtraVN.requestlive:=false;
    ExtraVN.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
    DBGrid2.columns[0].ButtonStyle:=cbsNone;
    DBGrid2.columns[2].ButtonStyle:=cbsNone;
    DBGrid2.columns[8].ButtonStyle:=cbsNone;
  except
    on E:Exception do
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
  end;

end;

procedure TSKU_ExtraCost.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ExtraVN.fieldbyname('YN').Value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;

end;

procedure TSKU_ExtraCost.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if XXZl.FieldByName('ExtraCount').IsNull  then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;

end;

end.
