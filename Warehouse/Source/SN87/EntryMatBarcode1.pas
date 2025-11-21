unit EntryMatBarcode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  Buttons, ShellApi;

type
  TEntryMatBarcode = class(TForm)
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CGNOEdit: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SuppEdit: TEdit;
    Check: TCheckBox;
    MatNoEdit: TEdit;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    BO6: TBitBtn;
    BO7: TBitBtn;
    Label1: TLabel;
    RKEdit: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    KCRKS: TQuery;
    DS1: TDataSource;
    KCRKSRKNO: TStringField;
    KCRKSZSBH: TStringField;
    KCRKSZSJC: TStringField;
    KCRKSCLBH: TStringField;
    KCRKSYWPM: TStringField;
    KCRKSQty: TCurrencyField;
    KCRKSPackQty: TIntegerField;
    KCRKSBQty: TFloatField;
    UpdKCKRS: TUpdateSQL;
    DS2: TDataSource;
    KCRKSScan: TQuery;
    KCRKSScanRKNO: TStringField;
    KCRKSScanCLBH: TStringField;
    KCRKSScanXH: TStringField;
    KCRKSScanSB: TStringField;
    KCRKSScanQty: TFloatField;
    KCRKSScanUSERDATE: TDateTimeField;
    KCRKSScanUSERID: TStringField;
    KCRKSScanYN: TStringField;
    KCRKSScanLLQty: TFloatField;
    UpdateKCKRScan: TUpdateSQL;
    tmpQry: TQuery;
    KCRKSArticle: TStringField;
    KCRKSBuyNo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure KCRKSScanAfterOpen(DataSet: TDataSet);
    procedure BO6Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryMatBarcode: TEntryMatBarcode;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TEntryMatBarcode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEntryMatBarcode.FormDestroy(Sender: TObject);
begin
  EntryMatBarcode:=nil;
end;

procedure TEntryMatBarcode.BitBtn2Click(Sender: TObject);
begin
  //
  with KCRKS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRKS.RKNO,KCRK.ZSBH,ZSZL.ZSJC,KCRKS.CLBH,CLZL.YWPM,Sum(KCRKS.Qty) as Qty,100 as PackQty,Max(KCRK_IM.BQty) as BQty,');
    SQL.Add('    cast((select B.Article + '','' from KCRKS A ,DDZL B  where B.DDBH=A.CGBH and A.RKNO=KCRKS.RKNO group by Article for XML Path ('''')) as varchar(500)) as Article, ');
    SQL.Add('    cast((select B.BuyNo + '','' from KCRKS A ,DDZL B  where B.DDBH=A.CGBH and A.RKNO=KCRKS.RKNO group by BuyNo for XML Path ('''')) as varchar(500)) as BuyNo ');
    SQl.Add('from KCRKS ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    SQL.Add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    SQL.Add('left join (');
    SQL.Add('  select RKNO,CLBH,Sum(Qty) as BQty from KCRKScan');
    SQL.Add('  where  YN<>5 and SB=1 ');
    SQL.Add('  Group by RKNO,CLBH');
    SQL.Add('  ) KCRK_IM on KCRK_IM.RKNO=KCRK.RKNO and  KCRK_IM.CLBH=KCRKS.CLBH');
    SQL.Add('where KCRKS.RKNO like '''+RKEdit.Text+'%''');
    if CGNOEdit.Text<>'' then
      SQl.Add('  and KCRK.ZSNO like '''+CGNOEdit.Text+'%'' ');
    if MatNoEdit.Text<>'' then
      SQl.Add('  and KCRKS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if SuppEdit.Text<>'' then
      SQl.Add('  and ZSZL.ZSJC like '''+SuppEdit.Text+'%'' ');
    SQL.add('    and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
    begin
      SQL.Add('  and KCRK.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('    and KCRK.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('Group by KCRKS.RKNO,KCRK.ZSBH,ZSZL.ZSJC,KCRKS.CLBH,CLZL.YWPM');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  KCRKSScan.Active:=true;
end;

procedure TEntryMatBarcode.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-2;
  DTP2.date:=Date();
end;

procedure TEntryMatBarcode.BitBtn1Click(Sender: TObject);
var i,PackCount,PackQty:integer;
    Qty,RemainQty:double;
    BarCode:integer;
begin
  //
  if KCRKS.Active=false then exit;
  DS2.DataSet:=nil;
  with KCRKSScan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  KCRKS.First;
  for i:=0 to KCRKS.RecordCount-1 do
  begin
    if KCRKS.FieldByName('BQty').IsNull then
    begin
      //
      PackCount:=1;
      RemainQty:=KCRKS.FieldByName('Qty').Value;
      PackQty:=KCRKS.FieldByName('PackQty').Value;
      repeat
        if (RemainQty-PackQty)>0 then
        begin
          BarCode:=BarCode+1;
          KCRKSScan.edit;
          KCRKSScan.fieldbyname('RKNO').Value:=KCRKS.FieldByName('RKNO').Value;
          KCRKSScan.fieldbyname('CLBH').Value:=KCRKS.FieldByName('CLBH').Value;
          KCRKSScan.fieldbyname('XH').Value:=PackCount;
          KCRKSScan.FieldByName('SB').Value:=1;
          KCRKSScan.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
          KCRKSScan.FieldByName('UserID').Value:=main.edit1.text;
          KCRKSScan.FieldByName('UserDate').Value:=Date();
          KCRKSScan.FieldByName('YN').Value:='1';
          UpdateKCKRScan.apply(ukinsert);
        end else
        begin
          BarCode:=BarCode+1;
          KCRKSScan.edit;
          KCRKSScan.fieldbyname('RKNO').Value:=KCRKS.FieldByName('RKNO').Value;
          KCRKSScan.fieldbyname('CLBH').Value:=KCRKS.FieldByName('CLBH').Value;
          KCRKSScan.fieldbyname('XH').Value:=PackCount;
          KCRKSScan.FieldByName('SB').Value:=1;
          KCRKSScan.fieldbyname('Qty').Value:=formatfloat('#,##0.##',RemainQty);
          KCRKSScan.FieldByName('UserID').Value:=main.edit1.text;
          KCRKSScan.FieldByName('UserDate').Value:=Date();
          KCRKSScan.FieldByName('YN').Value:='1';
          UpdateKCKRScan.apply(ukinsert);
        end;
        RemainQty:=RemainQty-PackQty;
        PackCount:=PackCount+1;

      until RemainQty<=0;
      //
    end;
    KCRKS.Next;
  end;
  KCRKSScan.active:=false;
  KCRKSScan.cachedupdates:=false;
  KCRKSScan.requestlive:=false;
  KCRKSScan.active:=true;
  KCRKSScan.Active:=true;
  //
  DS2.DataSet:=KCRKSScan;
end;

procedure TEntryMatBarcode.BO1Click(Sender: TObject);
begin
  with KCRKSScan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Append;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatBarcode.BO2Click(Sender: TObject);
begin
  if KCRKSScan.FieldByName('LLQty').IsNull=false then
  begin
    Showmessage('Have Scan Pack !');
    abort;
  end;
  with KCRKSScan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatBarcode.BO3Click(Sender: TObject);
begin
  if KCRKSScan.FieldByName('LLQty').IsNull=false then
  begin
    Showmessage('Have Scan Pack !');
    abort;
  end;
  with KCRKSScan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatBarcode.BO5Click(Sender: TObject);
begin
  with KCRKSScan do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO4.enabled:=false;
  BO5.enabled:=false;
end;

procedure TEntryMatBarcode.BO4Click(Sender: TObject);
var i,Pack:integer;
begin

  try
      KCRKSScan.first;
      for i:=1 to KCRKSScan.RecordCount do
      begin
        case KCRKSScan.updatestatus of
          usinserted:
          begin
            if KCRKSScan.fieldbyname('Qty').isnull then
            begin
              KCRKSScan.delete;
            end else
            begin
               with tmpQry do
               begin
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('Select top 1 XH from KCRKScan where RKNO='''+KCRKS.fieldbyname('RKNO').AsString+''' and CLBH='''+KCRKS.fieldbyname('CLBH').AsString+''' and SB=1 order by XH Desc');
                 Active:=true;
                 if RecordCount>0 then
                   Pack:=FieldByName('XH').AsInteger+1
                 else
                   Pack:=1;
                 Active:=false;
               end;
               KCRKSScan.edit;
               //
               KCRKSScan.fieldbyname('RKNO').Value:=KCRKS.FieldByName('RKNO').Value;
               KCRKSScan.fieldbyname('CLBH').Value:=KCRKS.FieldByName('CLBH').Value;
               KCRKSScan.fieldbyname('XH').Value:=Pack;
               KCRKSScan.FieldByName('SB').Value:=1;
               KCRKSScan.FieldByName('userID').Value:=main.edit1.text;
               KCRKSScan.FieldByName('userdate').Value:=date;
               KCRKSScan.FieldByName('YN').Value:='1';
               UpdateKCKRScan.apply(ukinsert);
            end;
          end;
          usmodified:
          begin
              if KCRKSScan.fieldbyname('YN').value='0'then
              begin
                UpdateKCKRScan.apply(ukdelete);
              end else
              begin
                if KCRKSScan.FieldByName('LLQty').IsNull then
                begin
                  KCRKSScan.edit;
                  KCRKSScan.FieldByName('userID').Value:=main.edit1.text;
                  KCRKSScan.FieldByName('userdate').Value:=date;
                  UpdateKCKRScan.apply(ukmodify);
                end else
                begin
                  Showmessage('Have Scan Pack ');
                  abort;
                end;
              end;
          end;
        end;
        KCRKSScan.Next;
      end;
    KCRKSScan.active:=false;
    KCRKSScan.cachedupdates:=false;
    KCRKSScan.requestlive:=false;
    KCRKSScan.active:=true;
    BO4.Enabled:=false;
    BO5.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
  //
end;

procedure TEntryMatBarcode.KCRKSScanAfterOpen(DataSet: TDataSet);
begin
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO3.Enabled:=true;
  BO6.Enabled:=true;
  BO7.Enabled:=true;
end;

procedure TEntryMatBarcode.BO6Click(Sender: TObject);
var i,PackCount,PackQty:integer;
    Qty,RemainQty:double;
    BarCode:integer;
begin
  //
  if KCRKS.Active=false then exit;
  DS2.DataSet:=nil;
  with KCRKSScan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  if KCRKS.FieldByName('BQty').IsNull then
  begin
    //
    PackCount:=1;
    RemainQty:=KCRKS.FieldByName('Qty').Value;
    PackQty:=KCRKS.FieldByName('PackQty').Value;
    repeat
      if (RemainQty-PackQty)>0 then
      begin
        BarCode:=BarCode+1;
        KCRKSScan.edit;
        KCRKSScan.fieldbyname('RKNO').Value:=KCRKS.FieldByName('RKNO').Value;
        KCRKSScan.fieldbyname('CLBH').Value:=KCRKS.FieldByName('CLBH').Value;
        KCRKSScan.fieldbyname('XH').Value:=PackCount;
        KCRKSScan.FieldByName('SB').Value:=1;
        KCRKSScan.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
        KCRKSScan.FieldByName('UserID').Value:=main.edit1.text;
        KCRKSScan.FieldByName('UserDate').Value:=Date();
        KCRKSScan.FieldByName('YN').Value:='1';
        UpdateKCKRScan.apply(ukinsert);
      end else
      begin
        BarCode:=BarCode+1;
        KCRKSScan.edit;
        KCRKSScan.fieldbyname('RKNO').Value:=KCRKS.FieldByName('RKNO').Value;
        KCRKSScan.fieldbyname('CLBH').Value:=KCRKS.FieldByName('CLBH').Value;
        KCRKSScan.fieldbyname('XH').Value:=PackCount;
        KCRKSScan.FieldByName('SB').Value:=1;
        KCRKSScan.fieldbyname('Qty').Value:=formatfloat('#,##0.##',RemainQty);
        KCRKSScan.FieldByName('UserID').Value:=main.edit1.text;
        KCRKSScan.FieldByName('UserDate').Value:=Date();
        KCRKSScan.FieldByName('YN').Value:='1';
        UpdateKCKRScan.apply(ukinsert);
      end;
      RemainQty:=RemainQty-PackQty;
      PackCount:=PackCount+1;

    until RemainQty<=0;
    //
  end;
  KCRKSScan.active:=false;
  KCRKSScan.cachedupdates:=false;
  KCRKSScan.requestlive:=false;
  KCRKSScan.active:=true;
  KCRKSScan.Active:=true;
  //
  DS2.DataSet:=KCRKSScan;

end;

procedure TEntryMatBarcode.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKSScan.FieldByName('YN').AsString='0' then
  begin
    DBGridEh2.canvas.font.color:=clRed;;
  end;
end;

procedure TEntryMatBarcode.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKS.FieldByName('BQty').IsNull=false then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TEntryMatBarcode.BitBtn3Click(Sender: TObject);
var i,j:integer;
    writeFile:textfile;
    PackingInfo:String;
begin
   //
  if Fileexists(extractfilepath(application.ExeName)+'\EntryMatCode.txt') then
  begin
     assignfile(writeFile,ExtractFilePath(Application.ExeName)+'EntryMatCode.txt');
     rewrite(writeFile);
     KCRKS.First;
     for i:=0 to KCRKS.RecordCount-1 do
     begin
       for j:=0 to KCRKSScan.RecordCount-1 do
       begin
         PackingInfo:='';
         PackingInfo:=PackingInfo+KCRKSScan.fieldByName('RKNO').AsString+'-'+KCRKSScan.fieldByName('CLBH').AsString+'-'+KCRKSScan.fieldByName('XH').AsString+'&'
                                 +KCRKSScan.fieldByName('Qty').AsString+'&'+Copy(KCRKS.fieldByName('Article').AsString,1,length(KCRKS.fieldByName('Article').AsString)-1)+'&'+Copy(KCRKS.fieldByName('BUYNO').AsString,5,2)+'b';
         append(writeFile);
         writeln(writeFile, PackingInfo);
         KCRKSScan.Next;
       end;
       KCRKS.Next;
     end;
     closefile(writeFile);
     if fileexists(extractfilepath(application.ExeName)+'EntryMatCode.btw') then
     begin
       ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'EntryMatCode.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
     end
     else  begin
       Showmessage('Pls setup the program first. Abort');
     end;
     //
  end;

end;

procedure TEntryMatBarcode.BO7Click(Sender: TObject);
var i,j:integer;
    writeFile:textfile;
    PackingInfo:String;
begin
   //
  if Fileexists(extractfilepath(application.ExeName)+'\EntryMatCode.txt') then
  begin
     assignfile(writeFile,ExtractFilePath(Application.ExeName)+'EntryMatCode.txt');
     rewrite(writeFile);
     KCRKS.First;
     for j:=0 to KCRKSScan.RecordCount-1 do
     begin
       PackingInfo:='';
       PackingInfo:=PackingInfo+KCRKSScan.fieldByName('RKNO').AsString+'-'+KCRKSScan.fieldByName('CLBH').AsString+'-'+KCRKSScan.fieldByName('XH').AsString+'&'
                               +KCRKSScan.fieldByName('Qty').AsString+'&'+Copy(KCRKS.fieldByName('Article').AsString,1,length(KCRKS.fieldByName('Article').AsString)-1)+'&'+Copy(KCRKS.fieldByName('BUYNO').AsString,5,2)+'b';
       append(writeFile);
       writeln(writeFile, PackingInfo);
       KCRKSScan.Next;
     end;
     KCRKS.Next;
     //
     closefile(writeFile);
     if fileexists(extractfilepath(application.ExeName)+'EntryMatCode.btw') then
     begin
       ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'EntryMatCode.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
     end
     else  begin
       Showmessage('Pls setup the program first. Abort');
     end;
  end;
end;

end.
