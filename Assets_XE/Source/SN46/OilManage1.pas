unit OilManage1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,comobj,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Bde.DBTables,
  Vcl.DBCtrls;

type
  TOilManage = class(TForm)
    qySearch: TQuery;
    qyInsert: TQuery;
    DataSource1: TDataSource;
    qySearchTSID: TStringField;
    qySearchSBBH: TStringField;
    qySearchTSBH: TStringField;
    qySearchDEPID: TStringField;
    qySearchdepname: TStringField;
    qySearchDEPID_MEMO: TStringField;
    qySearchYWPM: TStringField;
    qySearchZWPM: TStringField;
    qySearchVWPM: TStringField;
    qySearch1: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label30: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    btSearch: TButton;
    tbSTSBH: TEdit;
    tbSLSBH: TEdit;
    cbSDepartment: TComboBox;
    tbSName: TEdit;
    Panel1: TPanel;
    Label24: TLabel;
    lbDpName1: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label2: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    tbTSID: TDBEdit;
    tbTSBH: TDBEdit;
    tbSBBH: TDBEdit;
    tbDPID: TDBEdit;
    tbDPMeom: TDBEdit;
    tbYWPM: TDBEdit;
    tbVWPM: TDBEdit;
    tbDpName: TDBEdit;
    tbZWPM: TDBEdit;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel7: TPanel;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label6: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Button1: TButton;
    tbSTISID2: TEdit;
    tbSSBBH2: TEdit;
    cbSOilType2: TComboBox;
    cbDep2: TComboBox;
    tbSSname2: TEdit;
    DBGrid1: TDBGrid;
    qyOilSearch: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    dsOil1: TDataSource;
    qyOilSearchOil_id: TStringField;
    qyOilSearchquty: TIntegerField;
    dtSoil1: TDateTimePicker;
    dtSoil2: TDateTimePicker;
    qyOilSearchOil_date: TStringField;
    qyOilSearchOil_nextDate: TStringField;
    qyOilSearchDEPID: TStringField;
    qyOilSearchTSBH: TStringField;
    qyOilSearchsno: TIntegerField;
    Label20: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    GroupBox6: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label19: TLabel;
    lbSno: TDBText;
    DtStart1: TDateTimePicker;
    DtStart2: TDateTimePicker;
    btOilUpdate2: TButton;
    tbQuty2: TEdit;
    cbOilType2: TComboBox;
    DBtbTSID: TDBEdit;
    Label42: TLabel;
    OpenDialog: TOpenDialog;
    TSCD: TQuery;
    TSCDTSID: TStringField;
    TSCDTSBH: TStringField;
    TSCDSBBH: TStringField;
    TSCDQTY: TFloatField;
    TSCDDEPID: TStringField;
    TSCDdepname: TStringField;
    TSCDDEPID_MEMO: TStringField;
    TSCDstatus: TStringField;
    TSCDuserid: TStringField;
    TSCDuserdate: TDateTimeField;
    TSCDLLNO: TStringField;
    TSCDRKNO: TStringField;
    TSCDLB: TStringField;
    TSCDYN: TStringField;
    TSCDYWPM: TStringField;
    TSCDLabel_Tag: TStringField;
    TSCDZWPM: TStringField;
    TSCDRFID_Tag: TStringField;
    TSCDUSERID_Tag: TStringField;
    TSCDUSERDATE_Tag: TDateTimeField;
    TSCDMemo: TStringField;
    TSCDMSBBH: TStringField;
    TSCDMYWPM: TStringField;
    TSCDMZWPM: TStringField;
    TSCDMachine_Type: TStringField;
    TSCDDepMemo: TStringField;
    TSCDLeanName: TStringField;
    TSCDLean_ID: TStringField;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    qyOilSearchSticky: TStringField;
    qyOilSearchOil_prevDate: TStringField;
    CheckBox1: TCheckBox;
    bbt6: TBitBtn;
    qySearchLSBH: TStringField;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dt2341: TDateTimePicker;
    dt2342: TDateTimePicker;
    btSave234: TButton;
    tbQty234: TEdit;
    cbR324: TComboBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dt2351: TDateTimePicker;
    dt2352: TDateTimePicker;
    tbQty235: TEdit;
    btSave235: TButton;
    ComboBox2: TComboBox;
    cbR325: TComboBox;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dt2391: TDateTimePicker;
    dt2392: TDateTimePicker;
    tbQty239: TEdit;
    btSave239: TButton;
    cbR239: TComboBox;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dt2661: TDateTimePicker;
    dt2662: TDateTimePicker;
    tbQty266: TEdit;
    btSave266: TButton;
    cbR266: TComboBox;
    GroupBox5: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    dt2751: TDateTimePicker;
    dt2752: TDateTimePicker;
    tbQty275: TEdit;
    btSave275: TButton;
    cbR275: TComboBox;
    GroupBox7: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    dtG251: TDateTimePicker;
    dtG252: TDateTimePicker;
    tbQtyG25: TEdit;
    btSaveG25: TButton;
    cbG25: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btSearchClick2(Sender: TObject);
    procedure btSave234Click(Sender: TObject);
    procedure dsOil1DataChange(Sender: TObject; Field: TField);
    procedure btOilUpdate2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbt7Click(Sender: TObject);
    procedure TSCDXLS_Import();
    procedure BitBtn1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OilManage: TOilManage;

implementation

{$R *.dfm}
uses main1;

(*
   mirror 20240801
   機器保養使用油管理，對機器保養時所使用油品數量做紀錄
   油品分 R234、R235、R239、R266、R275
*)
procedure TOilManage.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  (qyOilSearch.active) and (qyOilSearch.RecordCount>0)  then
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
      for  i:=0  to 10   do
      begin
        eclApp.Cells(1,i+1):=qyOilSearch.fields[i].FieldName;
      end;
      qyOilSearch.First;
      j:=2;
      while not qyOilSearch.Eof   do
        begin
          for   i:=0   to  10  do
          begin
            eclApp.Cells(j,i+1):=qyOilSearch.Fields[i].AsString;
          end;
        qyOilSearch.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TOilManage.bbt7Click(Sender: TObject);
begin
  TSCDXLS_Import();
end;

//Excel File Import
procedure TOilManage.TSCDXLS_Import();
var OrderListExcel:Variant;
    OrderExcFN:String;
    offset,RowSIndex:integer;
    Isbreak:Boolean;
    //
    TSID,OIL,QUTY,DATE1,DATE2:String;
begin
  if OpenDialog.Execute=true then
  begin
    try
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
        OrderExcFN:=OpenDialog.FileName;
        OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
        OrderListExcel.WorkSheets[1].Activate;
        //
        RowSIndex:=2;
        Isbreak:=true;
        while(Isbreak) do
        begin
            TSID:=OrderListExcel.Cells[RowSIndex,1];
            OIL:=OrderListExcel.Cells[RowSIndex,2];
            QUTY:=OrderListExcel.Cells[RowSIndex,3];
            DATE1:=OrderListExcel.Cells[RowSIndex,4];
            DATE2:=OrderListExcel.Cells[RowSIndex,5];
          if (TSID<>'') AND (OIL<>'') AND (QUTY<>'') AND (DATE1<>'') AND (DATE2<>'') then
          begin
            inc(RowSIndex);
          end
          else
          begin
            Isbreak:=false;
          end;
        end;
        OrderListExcel.Quit;
        Showmessage(IntToStr(RowSIndex-2));
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        Exit;
      end;
    end;
  end;
end;

procedure TOilManage.BitBtn1Click(Sender: TObject);
var OrderListExcel:Variant;
    OrderExcFN:String;
    offset,RowSIndex:integer;
    Isbreak:Boolean;
    //
    TSID,MName,MId,QUTY,DATE1,COST,REASON:String;
begin
  if OpenDialog1.Execute=true then
  begin
    try
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
        OrderExcFN:=OpenDialog1.FileName;
        OrderListExcel.WorkBooks.Open(OpenDialog1.FileName);
        OrderListExcel.WorkSheets[2].Activate;
        //
        RowSIndex:=2;
        Isbreak:=true;
        while(Isbreak) do
        begin
            TSID:=OrderListExcel.Cells[RowSIndex,1];
            DATE1:=OrderListExcel.Cells[RowSIndex,2];
            REASON:=OrderListExcel.Cells[RowSIndex,3];
            MName:=OrderListExcel.Cells[RowSIndex,4];
            MId:=OrderListExcel.Cells[RowSIndex,5];
            QUTY:=OrderListExcel.Cells[RowSIndex,6];
            COST:=OrderListExcel.Cells[RowSIndex,7];
          if (TSID<>'') AND (REASON<>'') AND (QUTY<>'') AND (DATE1<>'') AND (MName<>'') AND (MId<>'') AND (COST<>'') then
          begin
            inc(RowSIndex);
          end
          else
          begin
            Isbreak:=false;
          end;
        end;
        OrderListExcel.Quit;
        Showmessage(IntToStr(RowSIndex-2));
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        Exit;
      end;
    end;
  end;
end;

procedure TOilManage.btOilUpdate2Click(Sender: TObject);
var rmp:string;
begin
    if Length(DBtbTSID.Text)=11 then
    begin
      rmp:=qyOilSearch.FieldByName('sno').AsString;
      qyinsert.Active:=false;
      qyinsert.SQL.Clear;
      qyinsert.SQL.Add('update [TSCD_OIL] set [Oil_id]='''+cbOilType2.Text+''',[Oil_date]='''+DateToStr(DtStart1.Date)+''',[Oil_nextDate]='''+DateToStr(DtStart1.Date)+''',');
      qyinsert.SQL.Add('[usid]='''+Main1.suser+''',[quty]='+tbQuty2.Text+' where sno='+lbSno.Caption);
      qyinsert.ExecSQL();
      btSearchClick2(nil);
      qyOilSearch.Locate('sno',rmp,[]);
      showmessage('Data Update Success....');
    end;
end;

procedure TOilManage.btSave234Click(Sender: TObject);
var
bt:Tbutton;
quty:string;
dt1:string;
dt2:string;
oil:string;
begin
  if length(tbTSID.Text)=11 then
  begin
      qyinsert.Active:=false;
      qyinsert.SQL.Clear;
      bt:=Sender as Tbutton;
      if (bt.Name='btSave234') and (StrToInt(tbQty234.Text)>0) then
      begin
        oil:='R324';
        quty:=tbQty234.Text;
        dt1:=DateToStr(dt2341.Date);
        dt2:=DateToStr(dt2342.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''R324'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbR324.Text+''')');
        //showmessage(qyinsert.text);
        qyinsert.ExecSQL();
      end;
      if (bt.Name='btSave235') and (StrToInt(tbQty235.Text)>0) then
      begin
        oil:='R325';
        quty:=tbQty235.Text;
        dt1:=DateToStr(dt2351.Date);
        dt2:=DateToStr(dt2352.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''R325'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbR325.Text+''')');
        qyinsert.ExecSQL();
      end;
      if (bt.Name='btSave239') and (StrToInt(tbQty239.Text)>0) then
      begin
        oil:='R239';
        quty:=tbQty239.Text;
        dt1:=DateToStr(dt2391.Date);
        dt2:=DateToStr(dt2392.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''R239'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbR239.Text+''')');
        qyinsert.ExecSQL();
      end;
      if (bt.Name='btSave266') and (StrToInt(tbQty234.Text)>0) then
      begin
        oil:='R266';
        quty:=tbQty266.Text;
        dt1:=DateToStr(dt2661.Date);
        dt2:=DateToStr(dt2662.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''R266'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbR266.Text+''')');
        qyinsert.ExecSQL();
      end;
      if (bt.Name='btSave275') and (StrToInt(tbQty275.Text)>0) then
      begin
        oil:='R275';
        quty:=tbQty275.Text;
        dt1:=DateToStr(dt2751.Date);
        dt2:=DateToStr(dt2752.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''R275'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbR275.Text+''')');
        qyinsert.ExecSQL();
      end;
      if (bt.Name='btSaveG25') and (StrToInt(tbQty275.Text)>0) then
      begin
        oil:='G25';
        quty:=tbQtyG25.Text;
        dt1:=DateToStr(dtG251.Date);
        dt2:=DateToStr(dtG252.Date);
        qyinsert.SQL.Add('if (SELECT  count(*) FROM [TSCD_OIL] where TSBH='''+tbTSBH.Text+''' and Oil_id=''G25'' and DATEDIFF(day,Oil_date,'''+dt1+''')=0  and DATEDIFF(day,Oil_nextDate,'''+dt2+''')=0 )= 0 ');
        qyinsert.SQL.Add('INSERT INTO [TSCD_OIL] ([TSBH],[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Sticky]) VALUES');
        qyinsert.SQL.Add('('''+tbTSBH.Text+''','''+oil+''','''+dt1+''','''+dt2+''','''+Main1.suser+''','+quty+','''+cbG25.Text+''')');
        qyinsert.ExecSQL();
      end;
      showmessage('Save is success...');
  end;
end;

procedure TOilManage.btSearchClick(Sender: TObject);
var sqlstr:string;
begin
  with qySearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSID,TSBH,TSCD.SBBH,TSCD.DEPID,BDepartment.depname,DEPID_MEMO,TSCD_SB.LSBH');
    SQL.Add(',IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM, TSCD_SB.VWPM as VWPM ');
    SQL.Add('from TSCD ');
    SQL.Add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('left join clzl on TSCD.SBBH = clzl.cldh ');
    SQL.Add('left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH ');
    SQL.Add('where 1=1');
    if length(tbSTSBH.Text)>2 then sqlstr:=sqlstr+ ' and TSBH='''+tbSTSBH.Text+'''';
    if length(tbSLSBH.Text)>2 then sqlstr:=sqlstr+ ' and TSCD_SB.LSBH='''+tbSLSBH.Text+'''';
    if cbSDepartment.ItemIndex>0 then sqlstr:=sqlstr+ ' and DepName='''+cbSDepartment.Text+'''';
    if length(tbSName.Text)>2 then sqlstr:=sqlstr+ ' and (TSCD_SB.YWPM like ''%'+tbSName.Text+'%'' OR TSCD_SB.ZWPM like ''%'+tbSName.Text+'%'' OR TSCD_SB.VWPM like ''%'+tbSName.Text+'%'')';
    if length(sqlstr)>10 then
    begin
      SQL.Add(sqlstr);
      //showmessage(text);
      Active:=true;
    end
    else
    begin
      Active:=false;
      SQL.Clear;
    end;
  end;
end;

procedure TOilManage.btSearchClick2(Sender: TObject);
var tmp:string;
begin
  tmp:='' ;
  with qyOilSearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT [sno],TSCD.[TSID],[TSCD_OIL].TSBH,TSCD.DEPID,TSCD.SBBH,BDepartment.depname,DEPID_MEMO');
    SQL.Add(',IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM, TSCD_SB.VWPM as VWPM ');
    SQL.Add(',[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty],[Oil_prevDate],[Sticky] FROM [LIY_ERP].[dbo].[TSCD_OIL] ');
    SQL.Add('inner join TSCD on TSCD.[TSBH]=[TSCD_OIL].[TSBH] ');
    SQL.Add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('left join clzl on TSCD.SBBH = clzl.cldh ');
    SQL.Add('left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH ');

    if CheckBox1.Checked then tmp:=tmp+' AND (Oil_date between '''+DateToStr(dtSoil1.date)+''' and '''+DateToStr(dtSoil2.date)+''') ';
    if cbSOilType2.ItemIndex>0 then tmp:=tmp+'and [Oil_id]='''+cbSOilType2.text+''' ';
    if Length(tbSTISID2.Text)>0 then tmp:=tmp+'and [TSCD_OIL].TSBH like '''+tbSTISID2.Text+'%'' ';
    if Length(tbSSBBH2.Text)>0 then tmp:=tmp+'and TSCD.SBBH like '''+tbSSBBH2.Text+'%'' ';
    if cbDep2.ItemIndex>0 then tmp:=tmp+'and depname ='''+cbDep2.Text+''' ';
    if Length(tbSSname2.Text)>0 then tmp:=tmp+'and (TSCD_SB.YWPM like ''%'+tbSSname2.Text+'%'' or TSCD_SB.ZWPM like ''%'+tbSSname2.Text+'%'' or TSCD_SB.VWPM like ''%'+tbSSname2.Text+'%'')';
    if tmp='' then
    begin
      tmp:='where 1<>1';
    end
    else
    begin
      tmp:= 'where 1=1 '+tmp;
    end;
    SQL.Add(tmp);
    //showmessage(text);
    Active:=true;
  end;
end;


procedure TOilManage.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   if (qySearch.Active) and (qySearch.RecordCount>0) then
    begin
      //取出TSID最後一次加油紀錄，為本次加油紀錄預設值
      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''R324'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQty234.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dt2341.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dt2342.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbR324.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQty234.Text:='0';
        dt2341.Date:=now;
        dt2342.Date:=now;
      end;

      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''R325'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQty235.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dt2351.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dt2352.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbR325.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQty235.Text:='0';
        dt2351.Date:=now;
        dt2352.Date:=now;
      end;

      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''R239'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQty239.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dt2391.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dt2392.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbR239.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQty239.Text:='0';
        dt2391.Date:=now;
        dt2392.Date:=now;
      end;

      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''R266'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQty266.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dt2661.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dt2662.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbR266.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQty266.Text:='0';
        dt2661.Date:=now;
        dt2662.Date:=now;
      end;

      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''R275'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQty275.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dt2751.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dt2752.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbR275.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQty275.Text:='0';
        dt2751.Date:=now;
        dt2752.Date:=now;
      end;

      qySearch1.Active:=false;
      qySearch1.SQL.Clear;
      qySearch1.SQL.Add('SELECT TOP 1 CAST(Oil_date AS datetime)[Oil_date],CAST(Oil_nextDate AS datetime)[Oil_nextDate],[quty],[Sticky] FROM [TSCD_OIL] ');
      qySearch1.SQL.Add('where [TSBH]='''+qySearch.FieldByName('TSBH').asstring+''' and [Oil_id]=''G25'' order by [Oil_date] desc');
      qySearch1.Active:=true;
      if qySearch1.RecordCount>0 then
      begin
        tbQtyG25.Text:=IntToStr(qySearch1.FieldByName('quty').Value);
        dtG251.Date:=qySearch1.FieldByName('Oil_date').AsDateTime;
        dtG252.Date:=qySearch1.FieldByName('Oil_nextDate').AsDateTime;
        cbG25.Text:=qySearch1.FieldByName('Sticky').AsString;
      end
      else
      begin
        tbQtyG25.Text:='0';
        dtG251.Date:=now;
        dtG252.Date:=now;
      end;
   end
   else
   begin
     tbQty234.Text:='0';
     dt2341.Date:=now;
     dt2342.Date:=now;
     tbQty235.Text:='0';
     dt2351.Date:=now;
     dt2352.Date:=now;
     tbQty239.Text:='0';
      dt2391.Date:=now;
      dt2392.Date:=now;
      tbQty266.Text:='0';
      dt2661.Date:=now;
      dt2662.Date:=now;
      tbQty275.Text:='0';
      dt2751.Date:=now;
      dt2752.Date:=now;
      tbQtyG25.Text:='0';
      dtG251.Date:=now;
      dtG252.Date:=now;
   end;
end;

procedure TOilManage.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if qyOilSearch.FieldByName('sno').AsString=lbSno.caption then DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TOilManage.dsOil1DataChange(Sender: TObject; Field: TField);
begin
  if (qyOilSearch.Active) and (qyOilSearch.RecordCount>0) then
  begin
    tbQuty2.Text:=IntToStr(qyOilSearch.FieldByName('quty').Value);
    DtStart1.Date:=strtodate(stringreplace(qyOilSearch.FieldByName('Oil_date').AsString,'-','/',[rfReplaceAll]));
    DtStart2.Date:=strtodate(stringreplace(qyOilSearch.FieldByName('Oil_nextDate').AsString,'-','/',[rfReplaceAll]));
    lbSno.caption:= IntToStr(qyOilSearch.FieldByName('sno').Value);
    cbOilType2.Text:= qyOilSearch.FieldByName('Oil_id').AsString;
  end
  else
  begin
     cbOilType2.Text:='';
     tbQuty2.Text:='0';
     DtStart1.Date:=now;
     DtStart2.Date:=now;
  end;
end;

procedure TOilManage.FormActivate(Sender: TObject);
begin
  cbSDepartment.Clear;
  cbDep2.Clear;
  cbDep2.Items.Add('');
  cbSDepartment.Items.Add('');
  qySearch1.Active:=false;
  qySearch1.SQL.Clear;
  qySearch1.SQL.Add('select distinct depname from TSCD left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID order by depname');
  qySearch1.Active:=true;
  while NOT qySearch1.Eof do
  begin
    cbSDepartment.Items.Add(qySearch1.FieldByName('depname').AsString);
    cbDep2.Items.Add(qySearch1.FieldByName('depname').AsString);
    qySearch1.Next;
  end;
  qySearch1.Active:=false;
end;

procedure TOilManage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TOilManage.FormDestroy(Sender: TObject);
begin
    OilManage:=nil;
end;

(*
procedure TOilManage.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  qyOilSearch.active  then
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
      for  i:=0  to qyOilSearch.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=qyOilSearch.fields[i].FieldName;
      end;
      qyOilSearch.First;
      j:=2;
      while not qyOilSearch.Eof   do
        begin
          for   i:=0   to  qyOilSearch.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qyOilSearch.Fields[i].AsString;
          end;
        qyOilSearch.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end; *)

end.
