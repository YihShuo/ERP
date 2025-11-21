unit MaintainanceWorks1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Bde.DBTables, Vcl.ComCtrls;

type
  TMaintainanceWorks = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Button1: TButton;
    TBMtCode: TEdit;
    SCKYears: TCheckBox;
    SCKMon: TCheckBox;
    SCKSea: TCheckBox;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    TmpQuery: TQuery;
    UpTSCD_MtWorks: TUpdateSQL;
    DS1: TDataSource;
    TSCD_MtWorkss: TQuery;
    DS2: TDataSource;
    CBDepartment: TComboBox;
    Query1: TQuery;
    Label3: TLabel;
    DP2: TDateTimePicker;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    bbt5: TBitBtn;
    TSCD_MtWorks: TQuery;
    TSCD_MtWorksmt_code: TStringField;
    TSCD_MtWorksdepartment: TStringField;
    TSCD_MtWorksTSID: TStringField;
    TSCD_MtWorksTSBH: TStringField;
    TSCD_MtWorksLSBH: TStringField;
    TSCD_MtWorksmt_status: TBooleanField;
    TSCD_MtWorksuserid: TStringField;
    TSCD_MtWorksCtype: TStringField;
    TSCD_MtWorksuserdate: TStringField;
    TSCD_MtWorksSBBH: TStringField;
    TSCD_MtWorksVWPM: TStringField;
    TSCD_MtWorksZWPM: TStringField;
    TSCD_MtWorksMon: TBooleanField;
    TSCD_MtWorksSea: TBooleanField;
    TSCD_MtWorksYears: TBooleanField;
    TSCD_MtWorksclass_type: TStringField;
    TSCD_MtWorkssMaintenance_item: TStringField;
    TSCD_MtWorkssChinese_item: TStringField;
    TSCD_MtWorkssMon: TBooleanField;
    TSCD_MtWorkssSea: TBooleanField;
    TSCD_MtWorkssYears: TBooleanField;
    Label1: TLabel;
    TSCD_MtWorksChecked: TBooleanField;
    TSCD_MtWorksTrepeat: TBooleanField;
    TSCD_MtWorksflowflag: TStringField;
    TSCD_MtWorksISOK: TBooleanField;
    TSCD_MtWorksLsMon: TStringField;
    TSCD_MtWorksMon1: TStringField;
    TSCD_MtWorksSea1: TStringField;
    TSCD_MtWorksYears1: TStringField;
    BitBtn2: TBitBtn;
    MtworkItems: TQuery;
    MtworkItemsLSBH: TStringField;
    MtworkItemsMaintenance_item: TStringField;
    MtworkItemsChinese_item: TStringField;
    MtworkItemsMon: TStringField;
    MtworkItemsSea: TStringField;
    MtworkItemsYears: TStringField;
    MtworkItemslang: TStringField;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SCKMonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    function CheckChecked():integer;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure TSCD_MtWorksCheckedChange(Sender: TField);
  private
    { Private declarations }
  public
  end;

var
  MaintainanceWorks: TMaintainanceWorks;

implementation

{$R *.dfm}

uses main1, ExporPrint1, ExportItems1;

procedure TMaintainanceWorks.BB2Click(Sender: TObject);
var
isok:bool;
mttype:string;
index:integer;
begin
  isok:=true;
  if CBDepartment.ItemIndex<0 then
  begin
  Showmessage('Select Department !!!!');
  isok:=false;
  end;

  if isok then
  begin
    index:=0;
    if SCKMon.Checked then inc(index);
    if SCKSea.Checked then inc(index);
    if SCKYears.Checked then inc(index);
    if NOt index=1 then
    begin
      Showmessage('Checked Type !!!!');
      isok:=false;
    end;
  end;
  if isok then
  begin
    with TSCD_MtWorks do
    begin
      TSCD_MtWorks.Active:=true;
      requestlive:=true;
      cachedupdates:=true;
      TSCD_MtWorks.Edit;
      with TmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('select c.DepName,[TSID],[LSBH],');
        sql.Add('a.[SBBH],[VWPM],[ZWPM],');
        sql.Add('cast((select count(TSID) FROM [TSCD_MtWorks] where ');
        if SCKMon.Checked then sql.Add('[Mon]=1');
        if SCKSea.Checked then sql.Add('[Sea]=1');
        if SCKYears.Checked then sql.Add('[Years]=1');
        sql.Add(' and flowflag <>''X'' and DATEDIFF(month,[userdate],'''+FormatDateTime('yyyy-mm-dd', DP2.Date)+''')=0 and TSID=a.TSID and [department]='''+CBDepartment.Text+''') as bit ) Checked');
        sql.Add(',[TSBH],a.[SBBH],[DepName],a.[Status] FROM [TSCD] a ');
        sql.Add('inner join [TSCD_SB] b on a.SBBH=b.SBBH ');
        sql.Add('inner join [TSCD_BDepartment] c on c.id=a.DepID ');
        sql.Add('where  c.DepName = '''+CBDepartment.Text+''' and a.Status in (''N'',''Y'',''M'',''H'',''R'',''F'',''T'') and a.LB=1 ');
        sql.Add('order by a.Label_Tag,a.TSBH,a.Status');
        active:=true;

        while not eof do
        begin
          TSCD_MtWorks.Insert;
          if NOT FieldByName('Checked').AsBoolean then
          begin
            TSCD_MtWorks.FieldByName('Checked').Value := false;
            TSCD_MtWorks.FieldByName('Trepeat').Value := false;
          end
          else
          begin
            TSCD_MtWorks.FieldByName('Trepeat').Value := true;
          end;
          TSCD_MtWorks.FieldByName('TSID').Value := FieldByName('TSID').AsString;
          TSCD_MtWorks.FieldByName('Department').Value := FieldByName('DepName').AsString;
          TSCD_MtWorks.FieldByName('LSBH').Value := mttype;
          TSCD_MtWorks.FieldByName('TSBH').Value := FieldByName('TSBH').AsString;
          TSCD_MtWorks.FieldByName('SBBH').Value := FieldByName('SBBH').AsString;
          TSCD_MtWorks.FieldByName('ZWPM').Value := FieldByName('ZWPM').AsString;
          TSCD_MtWorks.FieldByName('VWPM').Value := FieldByName('VWPM').AsString;
          TSCD_MtWorks.FieldByName('LSBH').Value := FieldByName('LSBH').AsString;
          TSCD_MtWorks.FieldByName('class_type').Value := '';
          TSCD_MtWorks.FieldByName('mt_code').Value := TBMtCode.Text;
          TSCD_MtWorks.FieldByName('Mon').Value := SCKMon.Checked;
          TSCD_MtWorks.FieldByName('Sea').Value := SCKSea.Checked;
          TSCD_MtWorks.FieldByName('Years').Value := SCKYears.Checked;
          TSCD_MtWorks.FieldByName('UserID').Value := Main1.suser;
          TSCD_MtWorks.FieldByName('mt_status').Value := 0;
          TSCD_MtWorks.FieldByName('ISOK').Value := false;
          TSCD_MtWorks.Post;
          Next();
        end;
        Label1.Caption:=IntToStr(TmpQuery.RecordCount);
        if TmpQuery.RecordCount>0 then
        begin
        TSCD_MtWorks.First;
        BB5.Enabled:=true;
        BB6.Enabled:=true;
        BB2.Enabled:=false;
        end
        else
        begin
          showmessage('Can''t find TSCD Maintenance item!!!');
        end;
      end;
    end;
  end;
end;

procedure TMaintainanceWorks.BB4Click(Sender: TObject);
begin
with TSCD_MtWorks do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB4.Enabled:=false;
  BitBtn1.Enabled:=false;
  BB2.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaintainanceWorks.BB5Click(Sender: TObject);
var
i : integer;
index:integer;
msg:string;
cc:boolean;
begin
    try
    TSCD_MtWorks.first;
    for i:=1 to TSCD_MtWorks.RecordCount do
    begin
      index:=CheckChecked();
      if index=1 then
      begin
      case TSCD_MtWorks.updatestatus of
        usinserted:
          begin
            //¥DÀÉ
               if (TSCD_MtWorks.FieldByName('Checked').AsBoolean) and (NOT TSCD_MtWorks.FieldByName('Trepeat').AsBoolean) then
               begin
                 TSCD_MtWorks.edit;
                 if TSCD_MtWorks.FieldByName('Mon').AsBoolean then TSCD_MtWorks.FieldByName('class_type').Value:=1;
                 if TSCD_MtWorks.FieldByName('Sea').AsBoolean then TSCD_MtWorks.FieldByName('class_type').Value:=2;
                 if TSCD_MtWorks.FieldByName('Years').AsBoolean then TSCD_MtWorks.FieldByName('class_type').Value:=3;
                 TSCD_MtWorks.FieldByName('mt_code').Value :=TSCD_MtWorks.FieldByName('mt_code').AsString;
                 TSCD_MtWorks.FieldByName('Mon').Value := TSCD_MtWorks.FieldByName('Mon').AsBoolean ;
                 TSCD_MtWorks.FieldByName('Sea').Value := TSCD_MtWorks.FieldByName('Sea').AsBoolean;
                 TSCD_MtWorks.FieldByName('Years').Value := TSCD_MtWorks.FieldByName('Years').AsBoolean;
                 TSCD_MtWorks.FieldByName('UserID').Value := Main1.suser;
                 upTSCD_MtWorks.apply(ukinsert);
               end;
          end;
        usmodified:
         begin
            if (NOT TSCD_MtWorks.FieldByName('mt_status').AsBoolean) and (NOT TSCD_MtWorks.FieldByName('Checked').AsBoolean) then
            begin
              TSCD_MtWorks.edit;
              TSCD_MtWorks.FieldByName('mt_code').Value:=TSCD_MtWorks.FieldByName('mt_code').AsString;
              TSCD_MtWorks.FieldByName('TSID').Value :=TSCD_MtWorks.FieldByName('TSID').AsString;
              TSCD_MtWorks.FieldByName('USERID').Value:=main.edit1.text;
              TSCD_MtWorks.FieldByName('flowflag').Value:='X';
              //upTSCD_MtWorks.apply(ukdelete);
              upTSCD_MtWorks.apply(ukmodify);
            end
            else
            begin
              msg:='Record is closeed !!!!';
              abort;
            end;
         end;
         usdeleted:
         begin
           TSCD_MtWorks.FieldByName('mt_code').Value:=TSCD_MtWorks.FieldByName('mt_code').AsString;
           TSCD_MtWorks.FieldByName('TSID').Value :=TSCD_MtWorks.FieldByName('TSID').AsString;
           upTSCD_MtWorks.apply(ukdelete);
         end;
      end;
      end;
     TSCD_MtWorks.next;
    end;
    TSCD_MtWorks.active:=false;
    TSCD_MtWorks.cachedupdates:=false;
    TSCD_MtWorks.requestlive:=false;
    TSCD_MtWorks.active:=true;
    BB4.Enabled:=true;
    BitBtn1.Enabled:=true;
    BB2.Enabled:=false;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    showmessage('Succeed.');
    Button1Click(nil);
  except
    Messagedlg(msg,mtwarning,[mbyes],0);
  end;
end;

procedure TMaintainanceWorks.BB6Click(Sender: TObject);
begin
  with TSCD_MtWorks do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb2.enabled:=false;
  bb6.enabled:=false;
  BitBtn1.Enabled:=true;
  bb4.Enabled:=true;
end;

procedure TMaintainanceWorks.BB7Click(Sender: TObject);
begin
close();
end;

procedure TMaintainanceWorks.bbt5Click(Sender: TObject);
begin
  if (TSCD_MtWorks.Active) and (TSCD_MtWorks.RecordCount>0) and (BitBtn1.Enabled) then
  begin
    TSCD_MtWorks.First;
    ExporPrint:=TExporPrint.Create(self);
    ExporPrint.QRLBMtcode.Caption:=TSCD_MtWorks.FieldByName('mt_code').AsString;
    ExporPrint.QRLBDP.Caption:=TSCD_MtWorks.FieldByName('department').AsString;
    ExporPrint.quickrep1.prepare;
    ExporPrint.quickrep1.preview;
    ExporPrint.free;
  end;
end;

procedure TMaintainanceWorks.BitBtn1Click(Sender: TObject);
var index:integer;
begin
  BB2.Enabled:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BitBtn1.Enabled:=false;
  BB4.Enabled:=false;
  with TmpQuery do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select max(mt_code) mt_code FROM [TSCD_MtWorks] where mt_code like ''MT'+FormatDateTime('yymmdd', Now())+'%''') ;
      active:=true;
      if length(TmpQuery.FieldByName('mt_code').AsString)=11 then
      begin
         TBMtCode.Text:=copy(TmpQuery.FieldByName('mt_code').AsString,9,3);
         index:=StrToInt(TBMtCode.Text)+1;
         TBMtCode.Text:='MT'+FormatDateTime('yymmdd', Now())+format('%0.3d',[index]);
      end
      else
      begin
         TBMtCode.Text:='MT'+FormatDateTime('yymmdd', Now())+'001';
      end;
   end;
  TSCD_MtWorks.Active:=false;
  TSCD_MtWorks.SQL.Clear;
  TSCD_MtWorks.SQL.Add('SELECT [mt_code],[department],a.[TSID],[TSBH],a.[LSBH],a.[mt_status],a.[userid],[flowflag]');
  TSCD_MtWorks.SQL.Add(',''Mon'' Ctype,cast(0 as bit) Trepeat ,cast(0 as bit) Checked,convert(char(10), [CycleDate_M], 121) LsMon,ISOK');
  TSCD_MtWorks.SQL.Add(',case when [Mon]=1 then ''V'' end as [Mon1],case when [Sea]=1 then ''V'' end as [Sea1] ,case when [Years]=1 then ''V'' end as [Years1]');
  TSCD_MtWorks.SQL.Add(',a.[userdate],[class_type],a.[SBBH],[VWPM],[ZWPM],[Mon],[Sea],[Years] FROM [TSCD_MtWorks] a ');
  TSCD_MtWorks.SQL.Add('inner join [TSCD_SB] b on a.LSBH=b.LSBH ');
  TSCD_MtWorks.SQL.Add('inner join [TSCD] c on a.[TSID]=c.[TSID] ');
  TSCD_MtWorks.SQL.Add('where 1<>1');
  TSCD_MtWorks.Active:=true;
end;

procedure TMaintainanceWorks.BitBtn2Click(Sender: TObject);
begin
    if (MtworkItems.Active) and (MtworkItems.RecordCount>0) and (BitBtn1.Enabled) then
  begin
    MtworkItems.First;
    ExportItems:=TExportItems.Create(self);
    //ExporPrint.QRLBMtcode.Caption:=TSCD_MtWorks.FieldByName('mt_code').AsString;
    //ExporPrint.QRLBDP.Caption:=TSCD_MtWorks.FieldByName('department').AsString;
    ExportItems.quickrep1.prepare;
    ExportItems.quickrep1.preview;
    ExportItems.free;
  end;
end;

procedure TMaintainanceWorks.Button1Click(Sender: TObject);
var lan:string;
begin
  if BITBTn1.Enabled then
  begin
    BB4.Enabled:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    BB2.Enabled:=false;
    with TSCD_MtWorks do
    begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT [mt_code],[department],a.[TSID],a.[LSBH],[TSBH],a.[mt_status],a.[userid],convert(char(10), [CycleDate_M], 121) LsMon,ISOK');
      sql.Add( ',case when [Mon]=1 then ''V'' end as [Mon1],case when [Sea]=1 then ''V'' end as [Sea1] ,case when [Years]=1 then ''V'' end as [Years1]') ;
      sql.Add(',case [class_type] when 1 then ''Mon'' when 2 then ''Sea'' else ''Years'' end Ctype');
      sql.Add(',cast(1 as bit) Trepeat,cast(1 as bit ) Checked,[flowflag]');
      sql.Add(',a.[userdate],[class_type],a.[SBBH],[VWPM] ,[ZWPM],[Mon],[Sea],[Years] FROM [TSCD_MtWorks] a ');
      sql.Add('left join [TSCD_SB] b on a.LSBH=b.LSBH ');
      sql.Add('inner join [TSCD] c on a.[TSID]=c.[TSID] ');
      sql.Add('where DATEDIFF(month,a.[userdate],'''+FormatDateTime('yyyy-mm-dd', DP2.Date)+''')=0  and a.flowflag <>''X''');
      if Length(CBDepartment.Text)>1 then
      begin
        sql.Add(' and [department]='''+CBDepartment.Text+'''');
      end;
      if Length(TBMtCode.Text)>9 then sql.Add(' and a.[mt_code]='''+TBMtCode.Text+'''');
      active:=true;
      //showmessage(text);
      Label1.Caption:=IntToStr(TSCD_MtWorks.RecordCount);
    end;

    with MtworkItems do
    begin
      active:=false;
      sql.Clear;
      if main.LanguageName='VCLName_VN' then
      begin
        lan:='[Maintenance_item]';
      end
      else
      begin
        lan:='[Chinese_item]'
      end;
      sql.Add('SELECT [LSBH],'+lan+' as lang,[Maintenance_item],[Chinese_item],case when [Mon]=1 then ''V'' end as [Mon],case when [Sea]=1 then ''V'' end as [Sea] ,case when [Years]=1 then ''V'' end as [Years] ');
      sql.Add('FROM [TSCD_Maintenance_item] where [YN]=''1'' and [LSBH] in(SELECT distinct a.[LSBH] FROM [TSCD_MtWorks] a ');
      sql.Add('left join [TSCD_SB] b on a.LSBH=b.LSBH ');
      sql.Add('inner join [TSCD] c on a.[TSID]=c.[TSID] ');
      sql.Add('where DATEDIFF(month,a.[userdate],'''+FormatDateTime('yyyy-mm-dd', DP2.Date)+''')=0  and a.flowflag <>''X''');
      if Length(CBDepartment.Text)>1 then
      begin
        sql.Add(' and [department]='''+CBDepartment.Text+'''');
      end;
      if Length(TBMtCode.Text)>9 then sql.Add(' and a.[mt_code]='''+TBMtCode.Text+'''');
      sql.Add(') group by [LSBH],[Maintenance_item],[Chinese_item],[Mon],[Sea],[Years] ');
      sql.Add('order by [LSBH],[Mon] desc,[Sea] desc,[Years] desc');
      //showmessage(text);
      active:=true;
      Label1.Caption:=IntToStr(TSCD_MtWorks.RecordCount);
    end;
  end;
end;

procedure TMaintainanceWorks.DBGridEh1CellClick(Column: TColumnEh);
var LSBH:string;
var send:bool;
var send1:bool;
begin
  if (Column.FieldName='LSBH') and (not BitBtn1.Enabled) then
  begin
      send1:=false;
      send:= TSCD_MtWorks.FieldByName('Checked').AsBoolean;
      LSBH:=TSCD_MtWorks.FieldByName('LSBH').AsString;
      TSCD_MtWorks.First;
      while NOT TSCD_MtWorks.Eof do begin
        if LSBH=TSCD_MtWorks.FieldByName('LSBH').AsString then
        begin
          TSCD_MtWorks.edit;
          TSCD_MtWorks.FieldByName('Checked').Value:=NOT send;
          //TSCD_MtWorks.post;
          send1:=true;
        end;
        if (send1) and (LSBH<>TSCD_MtWorks.FieldByName('LSBH').AsString) then break;
          TSCD_MtWorks.Next;
      end;
  end;
  if Column.FieldName='mt_code' then
  begin
     with TSCD_MtWorkss do
      begin
        active:=false;
        sql.Clear;
        sql.Add('select LSBH,Maintenance_item,Chinese_item,Mon,Sea,Years from TSCD_Maintenance_item');
        sql.Add('where TSCD_Maintenance_item.LSBH = '''+TSCD_MtWorks.FieldByName('LSBH').AsString+'''');
        if TSCD_MtWorks.FieldByName('Mon').AsBoolean then
        begin
           sql.Add(' and Mon= 1');
        end
        else
        begin
          sql.Add(' and Mon= 0');
        end;
        if TSCD_MtWorks.FieldByName('Sea').AsBoolean then
        begin
           sql.Add(' and Sea= 1');
        end
        else
        begin
          sql.Add(' and Sea= 0');
        end;
        if TSCD_MtWorks.FieldByName('Years').AsBoolean then
        begin
           sql.Add(' and Years= 1');
        end
        else
        begin
          sql.Add(' and Years= 0');
        end;
        sql.Add('order by TSCD_Maintenance_item.LSBH');
        active:=true;
      end;
  end;
end;

procedure TMaintainanceWorks.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TSCD_MtWorks.Active:=false;
  TSCD_MtWorks.SQL.Clear;
  MtworkItems.Active:=false;
  Action:=CaFree;
end;

procedure TMaintainanceWorks.FormCreate(Sender: TObject);
begin
//³¡ªù
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT [DepName] FROM [TSCD_BDepartment] where YN=''1'' and ID in(select distinct DepID from [TSCD]) order by DepName');
    Active:=true;
    tmpQuery.First;
    CBDepartment.Items.Clear;
    while not eof do
    begin
      CBDepartment.Items.Add(FieldByName('DepName').AsString);
      Next();
    end;
    active:=false;
  end;
  DP2.Date:=now() ;
end;

procedure TMaintainanceWorks.FormDestroy(Sender: TObject);
begin
   MaintainanceWorks:=nil;
end;

procedure TMaintainanceWorks.SCKMonClick(Sender: TObject);
var C :TCheckBox;
begin
   C := Sender as TCheckBox;
   if C.Caption='Mon' then
   begin
    SCKSea.Checked:=false;
    SCKYears.Checked:=false;
   end;
   if C.Caption='Sea' then
   begin
    SCKMon.Checked:=false;
    SCKYears.Checked:=false;
   end;
   if C.Caption='Years' then
   begin
    SCKMon.Checked:=false;
    SCKSea.Checked:=false;
   end;
end;

procedure TMaintainanceWorks.TSCD_MtWorksCheckedChange(Sender: TField);
begin
 Showmessage('is check....');
end;

function TMaintainanceWorks.CheckChecked():integer;
var index:integer;
begin
  index:=0;
  if TSCD_MtWorks.FieldByName('Mon').AsBoolean then inc(index);
  if TSCD_MtWorks.FieldByName('Sea').AsBoolean then inc(index);
  if TSCD_MtWorks.FieldByName('Years').AsBoolean then inc(index);
  Result:=index;
end;

end.
