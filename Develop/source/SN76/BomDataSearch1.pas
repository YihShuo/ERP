unit BomDataSearch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;
type
  TBomDataSearch = class(TForm)
    Panel1: TPanel;
    SampleQry: TQuery;
    SampleDS: TDataSource;
    ProdDS: TDataSource;
    ProdQry: TQuery;
    tempQ: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CuttingDie: TLabel;
    Label46: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Button1: TButton;
    jijiet: TEdit;
    Staget: TEdit;
    Buynoc: TCheckBox;
    Buynot: TEdit;
    Shoenamet: TEdit;
    SplitCK: TCheckBox;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    MatNO: TLabel;
    MatEngt: TEdit;
    MatChineset: TEdit;
    MatNOt: TEdit;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    NotMatEngt: TEdit;
    notMatChineset: TEdit;
    NotMatNOt: TEdit;
    SupplierNOt: TEdit;
    SupplierDest: TEdit;
    Outsolet: TEdit;
    Lastt: TEdit;
    DAOMHt: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    devtype: TComboBox;
    CB4: TCheckBox;
    CB7: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    Button3: TButton;
    jijiep: TEdit;
    c2: TCheckBox;
    buynop: TEdit;
    shoenamep: TEdit;
    c1: TCheckBox;
    Panel7: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    matengp: TEdit;
    matchinesep: TEdit;
    matnop: TEdit;
    Panel8: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    NotMatEngp: TEdit;
    NotMatChineseP: TEdit;
    NotMatNop: TEdit;
    suppliernop: TEdit;
    supplierdesp: TEdit;
    Outsolep: TEdit;
    Lastp: TEdit;
    DAOMHp: TEdit;
    Button4: TButton;
    CheckBox2: TCheckBox;
    devtypeep: TComboBox;
    DBGridEh2: TDBGridEh;
    Memo2: TMemo;
    DateCK: TCheckBox;
    DTP1: TDateTimePicker;
    Label38: TLabel;
    DTP2: TDateTimePicker;
    Label37: TLabel;
    Edit4: TEdit;
    Label36: TLabel;
    unit_in: TEdit;
    Label39: TLabel;
    not_unit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
      AppDir:String;
    { Private declarations }
  public
    { Public declarations }
    SQL1: String;
  end;

var
  BomDataSearch: TBomDataSearch;

implementation
   uses main1,FunUnit;
{$R *.dfm}

procedure TBomDataSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBomDataSearch.FormDestroy(Sender: TObject);
begin
  bomdatasearch:=nil;
end;

procedure TBomDataSearch.Button1Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;

begin

  with SampleQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select');
    sql.Add('kfxxzl.jijie,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb as Extra,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if buynoc.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.kfjd Stage,');
    sql.Add('main.fd Developer,');
    sql.Add('main.SampleOrderID SampleOrderMaker,');
    sql.Add('zszl.zsywjc,main.DateCreate_SR');
    sql.Add(' from (');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,ypzls.clbh,kfxxzl.khdh,ypzls.BWBH,ypzls.USERDATE,ypzls.CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR  from ypzls');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
       sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,clzhzl.cldh1,kfxxzl.khdh,ypzls.BWBH,clzhzl.USERDATE,clzhzl.zsdh CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR  from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
           sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select fd,userid,jijie,XieXing,shehao,kfjd,clzhzl.cldh1,khdh,bwbh,clzhzl.USERDATE,clzhzl.zsdh CSBH,CLSL,DateCreate_SR from (');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,clzhzl.CLDH1,kfxxzl.khdh,ypzls.BWBH,clzhzl.USERDATE,clzhzl.zsdh CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR  from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
       sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.CLDH1');
    sql.Add(')main');
    sql.Add('left join kfxxzl on kfxxzl.XieXing=main.XieXing and kfxxzl.shehao=main.shehao');
    sql.Add('left join clzl on clzl.cldh=main.CLBH');
    sql.Add('left join bwzl on bwzl.bwdh=main.BWBH');
    sql.Add('left join ddzl on ddzl.XieXing=main.XieXing and ddzl.shehao=main.shehao');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join xxzlKF on xxzlKF.Xiexing = main.XieXing and xxzlKF.SheHao = main.shehao ');
    SQL.Add('left join xxzlPD on xxzlPD.Xiexing = main.XieXing and xxzlPD.SheHao = main.shehao ');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if supplierNOt.text<>'' then
       sql.Add('and main.csbh like '''+'%'+supplierNOt.Text+'%'+'''');
    if outsolet.text<>'' then
       sql.Add('and kfxxzl.DDMH like '''+'%'+outsolet.Text+'%'+'''');
    if devtype.text<>'' then
       sql.Add('and kfxxzl.devtype like '''+devtype.Text+'''');
    if Lastt.text<>'' then
       sql.Add('and kfxxzl.XTMH like '''+'%'+Lastt.Text+'%'+'''');
    if DAOMHt.text<>'' then
       sql.Add('and kfxxzl.DAOMH like '''+'%'+DAOMHt.Text+'%'+'''');
    if supplierDest.text<>'' then
       sql.Add('and zszl.zsywjc like '''+'%'+supplierDest.Text+'%'+'''');
    if buynot.text<>'' then
       sql.Add('and ddzl.buyno like '''+'%'+buynot.Text+'%'+'''');
    if shoenamet.text<>'' then
       sql.Add('and kfxxzl.xieming like '''+'%'+shoenamet.Text+'%'+'''');

    if Edit4.text<>'' then
       sql.Add('and kfxxzl.devcode like '''+'%'+Edit4.Text+'%'+'''');
    if Edit3.text<>'' then
       sql.Add('and bwzl.bwdh like '''+'%'+Edit3.Text+'%'+'''');
    if Edit1.text<>'' then
       sql.Add('and bwzl.ywsm like '''+'%'+Edit1.Text+'%'+'''');
    if Edit2.text<>'' then
       sql.Add('and bwzl.zwsm like '''+'%'+Edit2.Text+'%'+'''');
    if CB4.Checked=false then
        SQL.Add(' and IsNull(xxzlKF.Dropped,0)=0');
    if CB7.Checked=false then
        SQL.Add(' and IsNull(xxzlPD.Dropped,0)=0');
    if DateCK.Checked=true then
    begin
      sql.add('    and (convert(smalldatetime,convert(varchar,main.DateCreate_SR,111)) between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''') ');
    end;
    if matengt.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(matengt.Text,'*')
      else
        tmpList:=FuncObj.SplitString(matengt.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if MatNot.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(MatNot.Text,'*')
      else
        tmpList:=FuncObj.SplitString(MatNot.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND main.clbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if matchineset.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(matchineset.Text,'*')
      else
        tmpList:=FuncObj.SplitString(matchineset.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.zwpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if unit_in.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(unit_in.Text,'*')
      else
        tmpList:=FuncObj.SplitString(unit_in.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;

    //
    if notmatengt.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notmatengt.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notmatengt.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if notMatnot.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notMatnot.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notMatnot.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND main.clbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if notmatchineset.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notmatchineset.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notmatchineset.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.zwpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if not_unit.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(not_unit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(not_unit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    sql.Add('group by');
    sql.Add('kfxxzl.jijie,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if buynoc.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('main.kfjd,');
    sql.Add('main.fd,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb,');
    sql.Add('main.sampleorderID,');
    sql.Add('zszl.zsywjc,main.DateCreate_SR');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width:=50;
    columns[2].Width:=50;
    columns[11].Width:=450;
    columns[12].Width:=450;
    columns[13].Width:=50;
    columns[14].Width:=50;
    columns[15].Width:=50;
    columns[16].Width:=200;
    columns[17].Width:=50;
    columns[18].Width:=60;
    columns[19].Width:=50;
    columns[23].Width:=80;
  end;
end;

procedure TBomDataSearch.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  tempQ.Close;
  tempQ.SQL.Text := 'Select KHBH from kfzl_GS where GSBH = '''+main.Edit2.Text+'''';
  tempQ.Open;
  SQL1 := '';
  while not tempQ.Eof do
  begin
    if SQL1 = '' then
      SQL1 :=  '('''+TempQ.Fields[0].AsString+''''
    else
      SQL1 := SQL1 + ','''+TempQ.Fields[0].AsString+'''';
    tempQ.Next;
  end;
  SQL1 := SQL1 + ')';
end;

procedure TBomDataSearch.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  sampleqry.active  then
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
        for   i:=0   to   sampleqry.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=sampleqry.fields[i].FieldName;
        end;

        sampleqry.First;
        j:=2;
        while   not   sampleqry.Eof   do
        begin
          for   i:=0   to  sampleqry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=sampleqry.Fields[i].Value;
          end;
        sampleqry.Next;
        inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;


procedure TBomDataSearch.Button3Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;

begin

  with prodQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select');
    sql.Add('kfxxzl.jijie,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.clzmlb as Extra,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if c2.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.csbh,');
    sql.Add('main.bwlb,');
    sql.Add('zszl.zsywjc');
    sql.Add(' from (');
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,xxzls.clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,xxzls.CSBH,xxzls.bwlb from xxzls');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.bwlb from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select jijie,XieXing,shehao,clzhzl.cldh1,khdh,bwbh,clzhzl2.USERDATE,clzhzl2.CSBH,bwlb from (');
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1 as clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.bwlb from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add(')main');
    sql.Add('left join kfxxzl on kfxxzl.XieXing=main.XieXing and kfxxzl.shehao=main.shehao');
    sql.Add('left join clzl on clzl.cldh=main.CLBH');
    sql.Add('left join bwzl on bwzl.bwdh=main.BWBH');
    sql.Add('left join ddzl on ddzl.XieXing=main.XieXing and ddzl.shehao=main.shehao');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if suppliernop.text<>'' then
       sql.Add('and main.csbh like '''+'%'+suppliernop.Text+'%'+'''');
    if devtypeep.text<>'' then
       sql.Add('and kfxxzl.devtype like '''+devtypeep.Text+'''');
    if outsolep.text<>'' then
       sql.Add('and kfxxzl.DDMH like '''+'%'+outsolep.Text+'%'+'''');
    if Lastp.text<>'' then
       sql.Add('and kfxxzl.XTMH like '''+'%'+Lastp.Text+'%'+'''');
    if DAOMHp.text<>'' then
       sql.Add('and kfxxzl.DAOMH like '''+'%'+DAOMHp.Text+'%'+'''');
    if supplierDesp.text<>'' then
       sql.Add('and zszl.zsywjc like '''+'%'+supplierDesp.Text+'%'+'''');
    if buynop.text<>'' then
       sql.Add('and ddzl.buyno like '''+'%'+buynop.Text+'%'+'''');
    if shoenamep.text<>'' then
       sql.Add('and kfxxzl.xieming like '''+'%'+shoenamep.Text+'%'+'''');
    if matengp.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(matengp.Text,'*')
        else
          tmpList:=FuncObj.SplitString(matengp.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if MatNop.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(MatNop.Text,'*')
        else
          tmpList:=FuncObj.SplitString(MatNop.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND main.clbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if matchinesep.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(matchinesep.Text,'*')
        else
          tmpList:=FuncObj.SplitString(matchinesep.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.zwpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if notmatengp.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notmatengp.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notmatengp.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if notMatnop.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notMatnop.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notMatnop.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND main.clbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if notmatchinesep.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notmatchinesep.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notmatchinesep.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.zwpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    sql.Add('group by');
    sql.Add('kfxxzl.jijie,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.clzmlb,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if c2.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('main.bwlb,');
    sql.Add('zszl.zsywjc');
    memo2.text:=sql.text;
    active:=true;
  end;
  with DBGrideh2 do
  begin
    columns[0].Width:=50;
    columns[2].Width:=50;
    columns[10].Width:=450;
    columns[11].Width:=450;
    columns[12].Width:=50;
    columns[13].Width:=50;
    columns[16].Width:=50;
    columns[17].Width:=40;
  end;
end;
procedure TBomDataSearch.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  prodqry.active  then
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
        for   i:=0   to   prodqry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=prodqry.fields[i].FieldName;
          end;

        prodqry.First;
        j:=2;
        while   not   prodqry.Eof   do
          begin
            for   i:=0   to  prodqry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=prodqry.Fields[i].Value;
            end;
          prodqry.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;



procedure TBomDataSearch.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
     memo1.Visible:=true
  else
     memo1.Visible:=false;
end;

procedure TBomDataSearch.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
     memo2.Visible:=true
  else
     memo2.Visible:=false;
end;

end.
