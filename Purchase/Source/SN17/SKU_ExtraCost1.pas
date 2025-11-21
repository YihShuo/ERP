unit SKU_ExtraCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, DB, DBTables,IniFiles;

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
    XXZL: TQuery;
    DS1: TDataSource;
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
    BDelRec: TQuery;
    XXZLExtraCount: TIntegerField;
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
    CK1: TCheckBox;
    DBGrid1: TDBGridEh;
    Splitter1: TSplitter;
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
    DBGrid2: TDBGridEh;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Panel3: TPanel;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE6: TBitBtn;
    DBGrid3: TDBGridEh;
    ExtraVNS: TQuery;
    DS3: TDataSource;
    UpExtraVNS: TUpdateSQL;
    ExtraVNSXieXing: TStringField;
    ExtraVNSSheHao: TStringField;
    ExtraVNSBWBH: TStringField;
    ExtraVNSCLBH: TStringField;
    ExtraVNSBWBH1: TStringField;
    ExtraVNSCLBH1: TStringField;
    ExtraVNSUSERID: TStringField;
    ExtraVNSUSERDATE: TDateTimeField;
    ExtraVNSYN: TStringField;
    ExtraVNSYWPM: TStringField;
    ExtraVNSYWSM: TStringField;
    ExtraVNVNPrice: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure ExtraVNAfterOpen(DataSet: TDataSet);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLAfterOpen(DataSet: TDataSet);
    procedure ExtraVNSAfterOpen(DataSet: TDataSet);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BE5Click(Sender: TObject);
    procedure BE6Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  SKU_ExtraCost: TSKU_ExtraCost;

implementation
  uses ExtraBW1, SKU_ExtraSupplier1, SKU_ExtraXXZLS1, FunUnit, main1;
{$R *.dfm}
procedure TSKU_ExtraCost.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(ExtraVN.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

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
  Panel2.Visible:=true;
end;

procedure TSKU_ExtraCost.Button1Click(Sender: TObject);
begin
  //
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
  ExtraVNS.Active:=true;
  Panel2.Visible:=false;
  //
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
  if ExtraVNS.RecordCount>0 then
  begin
    showmessage('Please Delete Extra Material');
    abort;
  end;
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
  if ExtraVNS.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
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

procedure TSKU_ExtraCost.ExtraVNAfterOpen(DataSet: TDataSet);
begin

  //BD2.Enabled:=true;
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
  //
  ExtraVNS.Active:=false;
  try
    ExtraVN.First;
    for i:=0 to  ExtraVN.RecordCount-1 do
    begin
          case ExtraVN.updatestatus of
            usinserted:
            begin
                if ExtraVN.Fieldbyname('BWBH').isnull then
                begin
                  ExtraVN.delete;
                end else
                begin
                  ExtraVN.Edit;
                  ExtraVN.FieldByName('userID').Value:=main.edit1.text;
                  ExtraVN.FieldByName('userdate').Value:=date;
                  ExtraVN.FieldByName('YN').Value:='1';
                  UpExtraVN.apply(ukinsert);
                end;
            end;
            usmodified:
            begin
                if ExtraVN.Fieldbyname('YN').value='0'then
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
                  if ExtraVN.FieldByName('VNPrice').isnull and ExtraVN.FieldByName('USPrice').isnull  then
                  begin

                  end else
                  begin
                    if (not ExtraVN.FieldByName('VNPrice').isnull) and (not ExtraVN.FieldByName('USPrice').isnull)  then
                    begin
                        showmessage('Can not have two price.');
                        abort;
                    end else
                    begin
                      //
                      with BDelRec do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('Select * from EXTRAVN where ');
                        sql.add('XieXing='''+ExtraVN.fieldbyname('XieXing').AsString+''' and SheHao='''+ExtraVN.fieldbyname('SheHao').AsString+''' ');
                        sql.add('and BWBH='''+ExtraVN.fieldbyname('BWBH').AsString+''' and CLBH='''+ExtraVN.fieldbyname('CLBH').AsString+''' ');
                        active:=true;
                      end;
                      if BDelRec.RecordCount>0 then
                      begin
                        ExtraVN.edit;
                        ExtraVN.FieldByName('userID').Value:=main.edit1.text;
                        ExtraVN.FieldByName('userdate').Value:=date;
                        UpExtraVN.apply(ukmodify);
                      end else
                      begin
                        ExtraVN.Edit;
                        ExtraVN.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
                        ExtraVN.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
                        ExtraVN.FieldByName('BWBH').Value:=Copy(ExtraVN.fieldbyname('CLBH').value,1,4);
                        ExtraVN.FieldByName('CLBH').Value:=ExtraVN.fieldbyname('CLBH').value;
                        ExtraVN.FieldByName('userID').Value:=main.edit1.text;
                        ExtraVN.FieldByName('userdate').Value:=date;
                        ExtraVN.FieldByName('YN').Value:='1';
                        UpExtraVN.apply(ukinsert);
                      end;
                    end;
                  end;
                  //
                end;
            end;
          end;
         // ExtraVNS.next;
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
    ExtraVNS.Active:=true;
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

procedure TSKU_ExtraCost.XXZLAfterOpen(DataSet: TDataSet);
begin
  Top2Panel.Visible:=true;
end;

procedure TSKU_ExtraCost.ExtraVNSAfterOpen(DataSet: TDataSet);
begin
  //
  BE2.Enabled:=true;
  BE3.Enabled:=true;
  BE4.Enabled:=true;
  with ExtraVNS do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BE5.Enabled:=false;
    BE6.Enabled:=false;
  end;
  //
end;

procedure TSKU_ExtraCost.BE2Click(Sender: TObject);
begin
  //
  BE5.Enabled:=true;
  BE6.Enabled:=true;
  with ExtraVNS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSKU_ExtraCost.BE3Click(Sender: TObject);
begin

  BE5.Enabled:=true;
  BE6.Enabled:=true;
  with ExtraVNS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    Post;
  end;
  
end;

procedure TSKU_ExtraCost.BE4Click(Sender: TObject);
begin
  //
  BE5.Enabled:=true;
  BE6.Enabled:=true;
  with  ExtraVNS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;

  //
end;

procedure TSKU_ExtraCost.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ExtraVNS.fieldbyname('YN').Value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
  end;
end;

procedure TSKU_ExtraCost.DBGrid3EditButtonClick(Sender: TObject);
begin
  //
  if (DBGrid3.selectedfield.fieldname='YWSM')  then
  begin
    //
    SKU_ExtraXXZLS:=TSKU_ExtraXXZLS.Create(self);
    SKU_ExtraXXZLS.Show();
  end;
  //
end;

procedure TSKU_ExtraCost.BE5Click(Sender: TObject);
var i:integer;
begin
  //
  try
    ExtraVNS.First;
    for i:=0 to  ExtraVNS.RecordCount-1 do
    begin
          case ExtraVNS.updatestatus of
            usinserted:
            begin
                if ExtraVN.Fieldbyname('BWBH').isnull then
                begin
                  ExtraVNS.delete;
                end else
                begin
                  ExtraVNS.Edit;
                  ExtraVNS.FieldByName('XieXing').Value:=ExtraVN.fieldbyname('XieXing').value;
                  ExtraVNS.FieldByName('SheHao').Value:=ExtraVN.fieldbyname('SheHao').value;
                  ExtraVNS.FieldByName('BWBH').Value:=ExtraVN.fieldbyname('BWBH').value;
                  ExtraVNS.FieldByName('CLBH').Value:=ExtraVN.fieldbyname('CLBH').value;
                  ExtraVNS.FieldByName('userID').Value:=main.edit1.text;
                  ExtraVNS.FieldByName('userdate').Value:=date;
                  ExtraVNS.FieldByName('YN').Value:='1';
                  UpExtraVNS.apply(ukinsert);
                end;
            end;
            usmodified:
            begin
                if ExtraVNS.Fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'ExtraVNS'+''''+','+''''+ExtraVNS.fieldbyname('XIEXING').Value+'***'+ExtraVNS.fieldbyname('SHEHAO').Value+'''');
                    sql.add(','+''''+ExtraVNS.fieldbyname('BWBH1').Value+'***'+ExtraVNS.fieldbyname('CLBH1').Value+''''+','+''''+ExtraVNS.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpExtraVNS.apply(ukdelete);
                end else
                begin
                  ExtraVNS.edit;
                  ExtraVNS.FieldByName('userID').Value:=main.edit1.text;
                  ExtraVNS.FieldByName('userdate').Value:=date;
                  UpExtraVNS.apply(ukmodify);
                  //=============================
                end;
            end;
          end;
          ExtraVNS.next;
    end;
    //
    ExtraVNS.active:=false;
    ExtraVNS.cachedupdates:=false;
    ExtraVNS.requestlive:=false;
    ExtraVNS.active:=true;
    BE5.enabled:=false;
    BE6.enabled:=false;
    DBGrid3.columns[0].ButtonStyle:=cbsNone;
  except
    on E:Exception do
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
  end;


end;

procedure TSKU_ExtraCost.BE6Click(Sender: TObject);
begin
  with ExtraVNS do
  begin
    Active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BE5.enabled:=false;
  BE6.enabled:=false;
  DBGrid3.columns[0].ButtonStyle:=cbsNone;
end;

procedure TSKU_ExtraCost.DBGrid2CellClick(Column: TColumnEh);
begin
 if ((Column.FieldName='USPrice') or  (Column.FieldName='USPrice')) then
 begin
   BD4.Click;
 end;
end;

procedure TSKU_ExtraCost.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
