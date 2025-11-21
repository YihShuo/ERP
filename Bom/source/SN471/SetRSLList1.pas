unit SetRSLList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, Comobj, ShellApi, Menus, iniFiles;

type
  TSetRSLList = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    clbh: TLabel;
    Label3: TLabel;
    BuyNoEdit: TEdit;
    Button1: TButton;
    SupEdit: TEdit;
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid1: TDBGridEh;
    RSLQry: TQuery;
    DS1: TDataSource;
    RSLQryCLBH: TStringField;
    RSLQryYWPM: TStringField;
    RSLQryZWPM: TStringField;
    RSLQryDWBH: TStringField;
    RSLQryCQDH: TStringField;
    RSLQryZSDH: TStringField;
    RSLQryzsywjc: TStringField;
    RSLQryPDDate: TDateTimeField;
    RSLQryPDFilePage: TStringField;
    Label1: TLabel;
    DDGBEdit: TEdit;
    Label2: TLabel;
    RYEdit: TEdit;
    GroupBox1: TGroupBox;
    CK2: TCheckBox;
    CK1: TCheckBox;
    CK3: TCheckBox;
    Label4: TLabel;
    SKUEdit: TEdit;
    Label5: TLabel;
    MatNoEdit: TEdit;
    Label6: TLabel;
    MatNMEdit: TEdit;
    SBtn1: TSpeedButton;
    SBtn2: TSpeedButton;
    RSLQryIsExpire: TStringField;
    UpdateSQL1: TUpdateSQL;
    RSLQryID: TFloatField;
    OpenDialog1: TOpenDialog;
    ExeQry: TQuery;
    Pop1: TPopupMenu;
    mnu1: TMenuItem;
    CB4: TCheckBox;
    Label19: TLabel;
    CBX1: TComboBox;
    Label18: TLabel;
    CBX2: TComboBox;
    MatNMEdit1: TEdit;
    CB5: TCheckBox;
    Label7: TLabel;
    MonthLabel: TLabel;
    MonthEdit: TEdit;
    SBtn3: TSpeedButton;
    Label9: TLabel;
    CBX3: TComboBox;
    Label10: TLabel;
    CBX4: TComboBox;
    RSLQryCLSL: TFloatField;
    CheckBox1: TCheckBox;
    RSLQryMemo: TStringField;
    mnu3: TMenuItem;
    Qtemp: TQuery;
    mnu2: TMenuItem;
    N1: TMenuItem;
    Label11: TLabel;
    GenderCombo: TComboBox;
    RSLQryGender: TStringField;
    RSLQryPDFilePageT2: TStringField;
    mnu4: TMenuItem;
    mnu6: TMenuItem;
    mnu5: TMenuItem;
    N2: TMenuItem;
    RSLQryKFGender: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CK1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SBtn1Click(Sender: TObject);
    procedure SBtn2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure mnu1Click(Sender: TObject);
    procedure SBtn3Click(Sender: TObject);
    procedure mnu3Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure mnu4Click(Sender: TObject);
    procedure mnu6Click(Sender: TObject);
    procedure mnu5Click(Sender: TObject);
  private
    MatNoFilterIndex:byte;
    { Private declarations }
    procedure ReadIni();
    procedure DeleteRSLFile(fn:string);
  public
    DCFilePath, PDFilePath, RSLFilePath: string;
    { Public declarations }
  end;
const
  MatNoFilter:array [0..3] of string= ('like','not like','=','<>');
var
  SetRSLList: TSetRSLList;


implementation

uses main1, RSLDDGB1, RSLSupplier1, RSLBatch1, FunUnit, FileTransClient1;

{$R *.dfm}

//當月天數
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TSetRSLList.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\DC\';                    // 先設定上傳的檔案路徑
  PDFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\PD\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCFilePath:=MyIni.ReadString('RSL','Bom_N472_DCFilePath','');
      PDFilePath:=MyIni.ReadString('RSL','Bom_N472_PDFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;
procedure TSetRSLList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSetRSLList.FormDestroy(Sender: TObject);
begin
  SetRSLList:=nil;
end;

procedure TSetRSLList.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i,j:integer;
    YWPM,YWPM1:string;
    InputIsOk:boolean;
    MatNoSQL:string;
    SDate,EDate:TDate;
begin

   InputIsOk:=false;
   if length(RYEdit.Text)>=5 then InputIsOk:=true;
   if ((length(RYEdit.Text)>=4) and (length(MatNoEdit.Text)>=1)) then InputIsOk:=true;
   if ((length(BuyNoEdit.Text)>=4) and (length(MatNoEdit.Text)>=1)) then InputIsOk:=true;
   if length(BuyNoEdit.Text)>=6 then InputIsOk:=true;  //先暫時可以查一整年
   if ((Trim(CBX1.Text)<>'0000') and (Trim(CBX2.Text)<>'00') and (Trim(CBX3.Text)<>'00') and (Trim(CBX4.Text)<>'00') ) then  InputIsOk:=true;
   if InputIsOk=false then
   begin
     Showmessage('Input OrderNo(5) '+#13#10+'Input OrderNo(3) and MatNo(1)'+#13#10+'Input BuyNo(4) and MatNo(1)'+#13#10+'Input BuyNo(6)'+#13#10+'Input GAC');
     abort;
   end;
   if ((Trim(CBX1.Text)<>'0000') and (Trim(CBX2.Text)<>'00') and (Trim(CBX3.Text)<>'00') and (Trim(CBX4.Text)<>'00') ) then
   begin
     SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
     EDate:=EncodeDate(strtoint(CBX3.Text), strtoint(CBX4.Text), 1);
     EDate:=EncodeDate(strtoint(CBX3.Text), strtoint(CBX4.Text), DaysOfItsMonth(EDate));
   end;
  //
  if trim(MatNoEdit.Text)<>'' then
  begin
    tmpList:=funcObj.SplitString(trim(MatNoEdit.Text),'*');
    for i:=0 to tmpList.Count-1 do
    begin
       MatNoSQL:=MatNoSQL+'(:CLBH '+SBtn3.Caption+' '''+tmpList.Strings[i]+'%'') or ';
    end;
    MatNoSQL:='and ('+Copy(MatNoSQL,1,length(MatNoSQL)-4)+')';
    tmpList.Free;
  end;
  //
  if CB5.Checked=true  then
  begin
    with Qtemp do
    begin
    SQL.Clear;
    SQL.Add('select CLBH from (  ');
    SQL.Add('select *,ROW_NUMBER() over (PARTITION BY CSBH ORDER BY CLSL Desc) as  QtyRank   from ( ');
    SQL.Add('select ZLZLS2.CLBH,ZLZLS2.CSBH ,Sum(ZLZLS2.CLSL) as CLSL ');
    SQL.Add('from ZLZLS2 with (nolock) ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  and DDZL.DDZT=''Y'' and DDZL.DDLB=''N''  ');
    SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
    SQL.Add('where 1=1  ');
    if CheckBox1.Checked =true then
    begin
      SQL.Add('       and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
      SQL.Add('       '''+formatdatetime('yyyy/MM/dd',SDate)+''' and '''+formatdatetime('yyyy/MM/dd',EDate)+'''');
    end;
    SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
    SQL.Add('       and ZLZLS2.CLSL<>0 ');
    SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>'' '' ');
    SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>''0000''');
    if RYEdit.Text<>'' then
    SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if SKUEdit.Text<>'' then
    SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
    if MatNoEdit.Text<>'' then
    SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'ZLZLS2.CLBH',[rfReplaceAll, rfIgnoreCase]));
    if DDGBEdit.Text<>'' then
    SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
    if SupEdit.Text<>'' then
    SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');

    SQL.Add('Group by ZLZLS2.CLBH,ZLZLS2.CSBH ) ZLZLS2  ) ZLZLS2   ');
    SQL.Add('left join (  ');
    SQL.Add('select CSBH, Count(CLBH) as Total from (  ');
    SQL.Add('select *,ROW_NUMBER() over (PARTITION BY CSBH ORDER BY CLSL Desc) as  QtyRank   from (  ');
    SQL.Add('select ZLZLS2.CLBH,ZLZLS2.CSBH ,Sum(ZLZLS2.CLSL) as CLSL ');
    SQL.Add('from ZLZLS2 with (nolock) ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  and DDZL.DDZT=''Y'' and DDZL.DDLB=''N''  ');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
    SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
    SQL.Add('where 1=1  ');
    if CheckBox1.Checked =true then
    begin
      SQL.Add('       and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
      SQL.Add('       '''+formatdatetime('yyyy/MM/dd',SDate)+''' and '''+formatdatetime('yyyy/MM/dd',EDate)+'''');
    end;
    SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
    SQL.Add('       and ZLZLS2.CLSL<>0 ');
    SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>'' ''   ');
    SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>''0000''  ');
    if RYEdit.Text<>'' then
    SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if SKUEdit.Text<>'' then
    SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
    if MatNoEdit.Text<>'' then
    SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'ZLZLS2.CLBH',[rfReplaceAll, rfIgnoreCase]));
    if DDGBEdit.Text<>'' then
    SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
    if SupEdit.Text<>'' then
    SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');
    SQL.Add('Group by ZLZLS2.CLBH,ZLZLS2.CSBH ) ZLZLS2 ) ZLZLS2 Group by CSBH ) Supp on ZLZLS2.CSBH=Supp.CSBH  ');
    SQL.Add('where (ZLZLS2.QtyRank<=Round(Supp.Total*0.05+0.5,0)) or QtyRank=''1''');
    Active:=true;
    //funcobj.WriteErrorLog(sql.Text );
    end;
  end;
  //
  with  RSLQry do
  begin
    SQL.Clear;
    SQL.Add('select RSLMat.*,CLZL.clbm from (');
    SQL.Add('select ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,Sum(ZLZLS2.CLSL) as CLSL,CLZL.CQDH,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc,RSLList.PDDate,RSLList.PDFilePage,RSLList.ID, ');
    SQL.Add('Case when  left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) or RSLList.PDDate is null then ''Y'' else ''N'' end as IsExpire,RSLList.Memo,RSLList.Gender,RSLList.PDFilePageT2 ');
    SQL.Add(',Max(case when substring(KFXXZL.Gender,1,3)=''KID'' then ''KIDS'' else null end) as KFGender ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLS2.CLBH ');
    SQL.Add('left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
    SQL.Add('left join XXZL  with (nolock) on XXZl.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('left join KFXXZL on XXZl.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  ');
    //20200407 RSL 串聯臨時料號
    SQL.Add('left join (select ID,GSBH,CLDH,PDDate,PDYN,PDFilePage,Memo,Gender,PDFilePageT2 ');
    SQL.Add('from (');
    SQL.Add('select ID,GSBH,CLZL_LS.JHDH,IsNull(CLZL_LS.JHDH,RSTList.CLDH) as CLDH,PDDate,PDYN,PDFilePage,Memo,Gender,PDFilePageT2,ROW_NUMBER() over (PARTITION BY IsNull(CLZL_LS.JHDH,RSTList.CLDH) ORDER BY PDDate DESC)as  rn ');
    SQL.Add('from RSTList ');
    SQL.Add('left join CLZL_LS on CLZL_LS.CLDH=RSTList.CLDH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ');
    SQL.Add('where RSTList.PDYN=''Y'' and RSTList.PDDate is not null  ) A where A.rn=1) RSLList on  RSLList.CLDH=ZLZLS2.CLBH');
    //
    SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
    SQL.Add('where 1=1 ');

    //  202002 Fix sql run faster
    if CB5.Checked=true  then
    begin
      Qtemp.first;
      if  Qtemp.RecordCount > 0 then
      begin
        SQL.Add('and ZLZLS2.CLBH in (  ');
        for i:=0 to Qtemp.RecordCount-1 do
        begin
          if i < Qtemp.RecordCount-1 then
            SQL.Add('''' +Qtemp.Fields[0].value + ''',');
          Qtemp.next;
        end;
        SQL.Add('''' +Qtemp.Fields[0].value + ''')');
      end;
    end;
    //

    if MatNoEdit.Text<>'' then
    SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'ZLZLS2.CLBH',[rfReplaceAll, rfIgnoreCase]));
    if SKUEdit.Text<>'' then
    SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text<>'' then
    SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
    if DDGBEdit.Text<>'' then
    SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
    if SupEdit.Text<>'' then
    SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');
    if CheckBox1.Checked =true then
    begin
        SQL.Add('       and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
        SQL.Add('       '''+formatdatetime('yyyy/MM/dd',SDate)+''' and '''+formatdatetime('yyyy/MM/dd',EDate)+'''');
    end;
    SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
    SQL.Add('       and ZLZLS2.CLSL<>0 ');
    if MatNMEdit.Text<>'' then
    begin
      tmpList:=FuncObj.SplitString(MatNMEdit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
         YWPM:=YWPM+'(CLZL.YWPM like ''%'+tmpList.Strings[i]+'%'') and ';
      end;
      tmpList.Free;
      if YWPM<>'' then
      begin
        YWPM:=Copy(YWPM,1,length(YWPM)-4);
      end;
    end;
    // 20161001 add  filter YWPM
    if MatNMEdit1.Text<>'' then
    begin
      tmpList:=FuncObj.SplitString(MatNMEdit1.Text,'*');
      for j:=0 to tmpList.Count-1 do
      begin
         YWPM1:=YWPM1+'(CLZL.YWPM like ''%'+tmpList.Strings[j]+'%'') and ';
      end;
      tmpList.Free;
      if YWPM1<>'' then
      begin
        YWPM1:=Copy(YWPM1,1,length(YWPM1)-4);
      end;
    end;
    if ((YWPM <>'') and (YWPM1 <>'') )then
    begin
      sql.Add(' and (('+YWPM+') or  ('+YWPM1+'))');
    end;
    if ((YWPM <>'') and (YWPM1 ='')) then
    begin
      SQl.Add(' and ('+YWPM+')');
    end;
    if ((YWPM ='') and (YWPM1 <>'')) then
    begin
      SQl.Add(' and ('+YWPM1+')');
    end;
    //
    if (CK1.Checked=true) then
    begin
      SQL.Add(' and ((RSLList.PDFilePage is not null and Substring(KFXXZL.Gender,1,3)<>''KID'')  or (RSLList.PDFilePageT2 is not null and Substring(KFXXZL.Gender,1,3)=''KID'') ) ');
      SQL.Add(' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) > left(convert(varchar, getdate(),112), 6) ');
    end else
    begin
      if ((CK2.Checked=true) and (CK3.Checked=true)) then
      begin
        SQL.Add(' and ( (RSLList.PDFilePage is null and RSLList.PDFilePageT2 is null ) or (RSLList.PDFilePageT2 is null and Substring(KFXXZL.Gender,1,3)=''KID'') or  (left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6)) ) ');
      end else
      begin                                             
        if CK2.Checked=true then  SQL.Add(' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ');
        if CK3.Checked=true then  SQL.Add(' and ((RSLList.PDFilePage is null and RSLList.PDFilePageT2 is null) or (RSLList.PDFilePageT2 is null and Substring(KFXXZL.Gender,1,3)=''KID'')) ');
      end;
    end;
    if GenderCombo.Text<>'' then
    SQL.Add('       and KFXXZL.Gender like '''+GenderCombo.Text+'%'' ');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    SQL.Add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');
    SQL.Add('       and SCZL.SCBH is not null');
    SQL.Add('Group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,RSLList.PDDate,RSLList.PDFilePage,RSLList.ID,RSLList.Memo,RSLList.Gender,RSLList.PDFilePageT2   ) RSLMat');
    SQL.Add('left join CLZL on CLZL.CLDH=RSLMat.CLBH ');
    SQL.Add('Order by RSLMat.ZSDH,SubString(RSLMat.CLBH,1,1),SubString(CLZL.clbm,13,4),SubString(CLZL.clbm,1,4) ');
    //memo1.Text:=sql.Text;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  BB4.Enabled:=true;
end;

procedure TSetRSLList.CK1Click(Sender: TObject);
begin

  //CK2.Checked:=false;
  //CK3.Checked:=false;

end;

procedure TSetRSLList.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  RSLQry.FieldByName('IsExpire').AsString='Y' then
    DBGrid1.canvas.font.color:=clBlue;
  if  (RSLQry.FieldByName('PDFilePage').AsString='') and (RSLQry.FieldByName('PDFilePageT2').AsString='') then
    DBGrid1.canvas.font.color:=clRed;
  if  (RSLQry.FieldByName('PDFilePageT2').AsString='') and (RSLQry.FieldByName('KFGender').AsString='KIDS') then
    DBGrid1.canvas.font.color:=clRed;
end;

procedure TSetRSLList.SBtn1Click(Sender: TObject);
begin
  RSLDDGB:=TRSLDDGB.Create(self);
  RSLDDGB.Show;
end;

procedure TSetRSLList.SBtn2Click(Sender: TObject);
begin
  RSLSupplier:=TRSLSupplier.Create(self);
  RSLSupplier.Show;
end;

procedure TSetRSLList.BB4Click(Sender: TObject);
begin
  //
  with RSLQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  //
  DBGrid1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[9].ButtonStyle:=cbsEllipsis;
  mnu1.Enabled:=true;
  mnu2.Enabled:=true;
  mnu3.Enabled:=true;
  mnu4.Enabled:=true;
  mnu5.Enabled:=true;
  mnu6.Enabled:=true;
end;

procedure TSetRSLList.DBGrid1EditButtonClick(Sender: TObject);
var
  UploadObj: TFileTransClient;
  RSLFileNM, SaveFN, Response, FileString, RSLFieldName: string;
begin
  if ((DBGrid1.SelectedField.FieldName = 'PDFilePage') or (DBGrid1.SelectedField.FieldName = 'PDFilePageT2')) then
  begin
    RSLFieldName:=DBGrid1.SelectedField.FieldName;
    if OpenDialog1.Execute then
    begin
      // 輸入 fileName 後上傳資料
      RSLFileNM := StringReplace(ExtractFileName(OpenDialog1.FileName), ExtractFileExt(OpenDialog1.FileName), '', [rfReplaceAll]);
      if InputQuery('Input the FileName', OpenDialog1.FileName, RSLFileNM) then
      begin
        if (RSLFileNM = '') then
        begin
          ShowMessage('FileName cannot be empty !!!');
          Exit;
        end;

        UploadObj := TFileTransClient.Create();
        SaveFN := RSLFileNM + ExtractFileExt(OpenDialog1.FileName);
        FileString := UploadObj.List('QC\' + main.Edit2.Text + '\RSL\');

        // check file exists
        if Pos(SaveFN, FileString) > 0 then
        begin
          if MessageDlg('Override RSL File', mtCustom, [mbYes,mbNo], 0) = mrYes then
          begin
            //上傳
            Response := UploadObj.put(OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
            if Pos(',', Response) > 0 then  //fail
            begin
              ShowMessage(Response);
            end
            else begin
              RSLQry.Edit;
              RSLQry.FieldByName(RSLFieldName).Value := SaveFN;
              ShowMessage(Response);
            end;
          end
          else begin
            ShowMessage('File name exists!');
          end;
        end
        else begin
          //上傳
          Response := UploadObj.put(OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
          if Pos(',', Response) > 0 then  //fail
          begin
            ShowMessage(Response);
          end
          else begin
            RSLQry.Edit;
            RSLQry.FieldByName(RSLFieldName).Value := SaveFN;
            ShowMessage(Response);
          end;
        end;
        UploadObj.Free;
      end;
    end;
  end;
end;

procedure TSetRSLList.BB6Click(Sender: TObject);
begin
  //
  with RSLQry do
  begin
    requestlive:=false;
    cachedupdates:=false;
    Active:=false;
    Active:=true;
  end;
  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  DBGrid1.columns[8].ButtonStyle:=cbsNone;
  DBGrid1.columns[9].ButtonStyle:=cbsNone;
  mnu1.Enabled:=false;
  mnu2.Enabled:=false;  
  mnu3.Enabled:=false;
  mnu4.Enabled:=false;
  mnu5.Enabled:=false;
  mnu6.Enabled:=false;  
end;

procedure TSetRSLList.BB5Click(Sender: TObject);
var i:integer;
    PDDate,PDFilepage,RSLMemo,RSLGender,PDFilepageT2:string;
begin

  try
    RSLQry.first;
    for i:=0 to RSLQry.RecordCount-1 do
    begin
      case RSLQry.updatestatus of
        usmodified:                                                    
        begin
          if RSLQry.FieldByName('PDDate').AsString<>'' then PDDate:=''''+ RSLQry.FieldByName('PDDate').AsString+'''' else PDDate:='Null';
          if RSLQry.FieldByName('PDFilepage').AsString<>'' then PDFilepage:=''''+ RSLQry.FieldByName('PDFilepage').AsString+'''' else PDFilepage:='Null';
          if RSLQry.FieldByName('Memo').AsString<>'' then RSLMemo:=''''+ RSLQry.FieldByName('Memo').AsString+'''' else RSLMemo:='Null';
          if RSLQry.FieldByName('Gender').AsString<>'' then RSLGender:=''''+ RSLQry.FieldByName('Gender').AsString+'''' else RSLGender:='Null';
          if RSLQry.FieldByName('PDFilepageT2').AsString<>'' then PDFilepageT2:=''''+ RSLQry.FieldByName('PDFilepageT2').AsString+'''' else PDFilepageT2:='Null';
          //Delete RSL file
          if ((RSLQry.FieldByName('PDFilepage').OldValue<>null) and (RSLQry.FieldByName('PDFilepage').AsString='')) then
          begin
            DeleteRSLFile(RSLQry.FieldByName('PDFilepage').OldValue);
          end;
          //
          if  RSLQry.FieldByName('ID').AsString='' then
          begin
              with ExeQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Insert into RSTList ( cldh , ZSDH, GSBH, PDYN, PDDate, PDCFM, DCCFM, PDFilepage, Memo, Gender, PDFilepageT2, CreateID, CreateDate, PDUpdateID, PDUpdateDate,UpdateID,UpdateDate) ');
                SQL.Add('Values ('''+RSLQry.FieldByName('CLBH').AsString+''','''+RSLQry.FieldByName('ZSDH').AsString+''','''+main.Edit2.Text+''',''Y'',');
                SQL.Add(PDDate+',''N'',''N'','+PDFilepage+','+RSLMemo+','+RSLGender+','+PDFilepageT2+','''+main.Edit1.Text+''',GetDate(),'''+main.Edit1.Text+''',GetDate(),'''+main.Edit1.Text+''',GetDate()) ');
                ExeQry.ExecSQL();
              end;
          end else
          begin
              with ExeQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update RSTList Set  PDYN=''Y'',PDDate='+PDDate+',PDFilepage='+PDFilepage+',Memo='+RSLMemo+',Gender='+RSLGender+',PDFilepageT2='+PDFilepageT2+',PDUpdateID='''+main.Edit1.Text+''',PDUpdateDate=GetDate(), UpdateID='''+main.Edit1.Text+''',UpdateDate=GetDate() ');
                SQL.Add('where  ID='''+RSLQry.FieldByName('ID').AsString+''' and CLDH='''+RSLQry.FieldByName('CLBH').AsString+'''  ');
                ExeQry.ExecSQL();
              end;
          end;
        end;
      end;
      RSLQry.Next;
    end;

  //
  with RSLQry do
  begin
    requestlive:=false;
    cachedupdates:=false;
    Active:=false;
    Active:=true;
  end;
  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  DBGrid1.columns[8].ButtonStyle:=cbsNone;
  DBGrid1.columns[9].ButtonStyle:=cbsNone;
  mnu1.Enabled:=false;
  mnu2.Enabled:=false;
  mnu3.Enabled:=false;
  mnu4.Enabled:=false;
  mnu5.Enabled:=false;
  mnu6.Enabled:=false;
  except
    on E:Exception do
    begin
      showmessage('have wrong');
      funcObj.WriteErrorLog(E.Message);
    end;
  end;
end;

procedure TSetRSLList.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  ReadIni();
end;

procedure TSetRSLList.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  RSLQry.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   RSLQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=RSLQry.fields[i].FieldName;
          end;
          //
          RSLQry.First;
          j:=2;
          while   not   RSLQry.Eof   do
          begin
            for   i:=0   to  RSLQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=RSLQry.Fields[i].Value;
            end;
            RSLQry.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
         on  F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TSetRSLList.DBGrid1CellClick(Column: TColumnEh);
var
  DownloadObj: TFileTransClient;
  TempText, FileExt: string;
  Path: PChar;
  i: integer;
begin
  if CB4.Checked=true then
  begin
    if (DBGrid1.SelectedField.FieldName = 'PDFilePage') and (not RSLQry.FieldByName('PDFilePage').isnull) then
    begin
      DownloadObj := TFileTransClient.Create();
      if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
        CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
      FileExt := '';
      TempText := RSLQry.FieldByName('PDFilePage').AsString;
      for i := Length(TempText) downto 1 do
      begin
        if (TempText[i] <> '.') then
          FileExt := TempText[i] + FileExt
        else begin
          FileExt := '.' + FileExt;
          Break;
        end;
      end;
      DownloadObj.down(RSLQry.FieldByName('PDFilePage').AsString, 'QC\' + main.Edit2.Text + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\'+RSLQry.FieldByName('PDFilePage').AsString);
      Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePage').AsString);
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
    end;
    //T2 RSL File
    if (DBGrid1.SelectedField.FieldName = 'PDFilePageT2') and (not RSLQry.FieldByName('PDFilePageT2').isnull) then
    begin
      DownloadObj := TFileTransClient.Create();
      if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
        CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
      FileExt := '';
      TempText := RSLQry.FieldByName('PDFilePageT2').AsString;
      for i := Length(TempText) downto 1 do
      begin
        if (TempText[i] <> '.') then
          FileExt := TempText[i] + FileExt
        else begin
          FileExt := '.' + FileExt;
          Break;
        end;
      end;
      DownloadObj.down(RSLQry.FieldByName('PDFilePageT2').AsString, 'QC\' + main.Edit2.Text + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\'+RSLQry.FieldByName('PDFilePageT2').AsString);
      Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePageT2').AsString);
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TSetRSLList.mnu1Click(Sender: TObject);
begin
  RSLBatch:=TRSLBatch.Create(self);
  RSLBatch.RSLFieldName:='PDFilePage';
  RSLBatch.Show;
end;

procedure TSetRSLList.SBtn3Click(Sender: TObject);
var i:integer;
begin
   for i:=0 to High(MatNoFilter) do
   begin
     if MatNoFilter[i]=SBtn3.Caption then
     begin
       if i<High(MatNoFilter) then
         SBtn3.Caption:=MatNoFilter[i+1]
       else
         SBtn3.Caption:=MatNoFilter[0];
       break;
     end;
   end;
end;

procedure TSetRSLList.mnu3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  SetRSLList.RSLQry.disablecontrols;
  bm:=SetRSLList.RSLQry.getbookmark;
  if SetRSLList.DBGrid1.selectedrows.Count=0 then SetRSLList.DBGrid1.SelectedRows.CurrentRowSelected:=true;
  bookmarklist:=SetRSLList.DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SetRSLList.RSLQry.gotobookmark(pointer(bookmarklist[i]));
        with SetRSLList.RSLQry do
        begin
           Edit;
           FieldByName('Memo').AsString:=DBGrid1.Columns[10].PickList[0];
           Post;
        end;
      end;
    finally
      SetRSLList.RSLQry.gotobookmark(bm);
      SetRSLList.RSLQry.freebookmark(bm);
      SetRSLList.RSLQry.enablecontrols;
      showmessage('You have finish copy!');
    end;
  end;
  //
end;

procedure TSetRSLList.DeleteRSLFile(fn:string);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
begin
   UploadObj := TFileTransClient.Create();
   //先檢查是否擋案存在 先刪除
   if fn<>'' then
     Response := UploadObj.delete(fn,'QC\'+main.Edit2.Text+'\RSL\', false);
   //刪除
   if pos(',', Response) > 0 then  //fail
   begin
     showmessage(Response);
   end else
   begin
   end;
   UploadObj.Free;
end;
procedure TSetRSLList.mnu2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  SetRSLList.RSLQry.disablecontrols;
  bm:=SetRSLList.RSLQry.getbookmark;
  if SetRSLList.DBGrid1.selectedrows.Count=0 then SetRSLList.DBGrid1.SelectedRows.CurrentRowSelected:=true;
  bookmarklist:=SetRSLList.DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SetRSLList.RSLQry.gotobookmark(pointer(bookmarklist[i]));
        with SetRSLList.RSLQry do
        begin
           Edit;
           RSLQry.FieldByName('PDFilePage').Value:=null;
           Post;
        end;
      end;
    finally
      SetRSLList.RSLQry.gotobookmark(bm);
      SetRSLList.RSLQry.freebookmark(bm);
      SetRSLList.RSLQry.enablecontrols;
      showmessage('You have finish copy!');
    end;
  end;
end;

procedure TSetRSLList.mnu4Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  SetRSLList.RSLQry.disablecontrols;
  bm:=SetRSLList.RSLQry.getbookmark;
  if SetRSLList.DBGrid1.selectedrows.Count=0 then SetRSLList.DBGrid1.SelectedRows.CurrentRowSelected:=true;
  bookmarklist:=SetRSLList.DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SetRSLList.RSLQry.gotobookmark(pointer(bookmarklist[i]));
        with SetRSLList.RSLQry do
        begin
           Edit;
           FieldByName('Gender').AsString:=DBGrid1.Columns[11].PickList[0];
           Post;
        end;
      end;
    finally
      SetRSLList.RSLQry.gotobookmark(bm);
      SetRSLList.RSLQry.freebookmark(bm);
      SetRSLList.RSLQry.enablecontrols;
      showmessage('You have finish copy!');
    end;
  end;
  //

end;

procedure TSetRSLList.mnu6Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  SetRSLList.RSLQry.disablecontrols;
  bm:=SetRSLList.RSLQry.getbookmark;
  if SetRSLList.DBGrid1.selectedrows.Count=0 then SetRSLList.DBGrid1.SelectedRows.CurrentRowSelected:=true;
  bookmarklist:=SetRSLList.DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SetRSLList.RSLQry.gotobookmark(pointer(bookmarklist[i]));
        with SetRSLList.RSLQry do
        begin
           Edit;
           RSLQry.FieldByName('PDFilePageT2').Value:=null;
           Post;
        end;
      end;
    finally
      SetRSLList.RSLQry.gotobookmark(bm);
      SetRSLList.RSLQry.freebookmark(bm);
      SetRSLList.RSLQry.enablecontrols;
      showmessage('You have finish copy!');
    end;
  end;

end;

procedure TSetRSLList.mnu5Click(Sender: TObject);
begin
  RSLBatch:=TRSLBatch.Create(self);
  RSLBatch.RSLFieldName:='PDFilePageT2';
  RSLBatch.Show;
end;

end.
