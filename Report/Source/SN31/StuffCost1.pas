unit StuffCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, StdCtrls, GridsEh, DBGridEh, ExtCtrls,ComObj,
  Buttons;

type
  TStuffCost = class(TForm)
    pnMid: TPanel;
    gdMain: TDBGridEh;
    bnQuery: TButton;
    cbCompany: TComboBox;
    lbCompany: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    lbTo: TLabel;
    qrMain: TQuery;
    dsMain: TDataSource;
    qrMainzwpm: TStringField;
    qrMainkfjc: TStringField;
    qrMainXieXing: TStringField;
    qrMainQty: TFloatField;
    qrMainDwbh: TStringField;
    qrMainUSERNAME: TStringField;
    qrMainzsjc: TStringField;
    qrMainkind: TStringField;
    qrMainGSBH: TStringField;
    qrGS: TQuery;
    cbMaterial: TCheckBox;
    cbOut: TCheckBox;
    lbSupplier: TLabel;
    edSupplier: TEdit;
    bnSupplier: TButton;
    lbXieXing: TLabel;
    edXieXing: TEdit;
    bnXieXing: TButton;
    lbCFMDate: TLabel;
    qrMainUSPrice: TFloatField;
    qrMainUSACC: TFloatField;
    qrMainVNPrice: TFloatField;
    qrMainVNACC: TFloatField;
    qrMainCLDH: TStringField;
    lbCLDH: TLabel;
    edCLDH: TEdit;
    qrMainCFMDate: TDateTimeField;
    edDDBH: TEdit;
    lbDDBH: TLabel;
    qrMainDDBH: TStringField;
    qrMainCWHL: TIntegerField;
    cbVNACC: TComboBox;
    cbUSACC: TComboBox;
    pnTop: TPanel;
    bnShow: TBitBtn;
    bnExcel: TBitBtn;
    bnCDCHint: TBitBtn;
    qrMainArticle: TStringField;
    qrMainBuyNo: TStringField;
    edArticle: TEdit;
    lbArticle: TLabel;
    edBuyNo: TEdit;
    lbBuyNo: TLabel;
    pnBtm: TPanel;
    bnColumns: TBitBtn;
    bnHide: TButton;
    cbNO: TCheckBox;
    cbCLDH: TCheckBox;
    cbYWPM: TCheckBox;
    cbDWBH: TCheckBox;
    cbQty: TCheckBox;
    cbUSPrice: TCheckBox;
    cbAC: TCheckBox;
    cbCWHL: TCheckBox;
    cbVNPrice: TCheckBox;
    cbVNAC: TCheckBox;
    cbZSJC: TCheckBox;
    cbDDBH: TCheckBox;
    cbXieXing: TCheckBox;
    cbArticle: TCheckBox;
    cbBuyNo: TCheckBox;
    cbKFJC: TCheckBox;
    cbKind: TCheckBox;
    cbUserid: TCheckBox;
    cbCFMDate: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;Column: TColumnEh);
    procedure showData(sField:string;bDesc:boolean);
    procedure bnExcel2Click(Sender: TObject);
    procedure bnSupplierClick(Sender: TObject);
    procedure bnCustomerClick(Sender: TObject);
    procedure bnXieXingClick(Sender: TObject);
    procedure bnHelpClick(Sender: TObject);
    procedure unionDCSQL(sField:string);
    procedure bnShowClick(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure bnCDCHintClick(Sender: TObject);
    procedure bnColumnsClick(Sender: TObject);
    procedure bnHideClick(Sender: TObject);
    procedure cbNOClick(Sender: TObject);
    procedure cbCLDHClick(Sender: TObject);
    procedure cbYWPMClick(Sender: TObject);
    procedure cbDWBHClick(Sender: TObject);
    procedure cbQtyClick(Sender: TObject);
    procedure cbUSPriceClick(Sender: TObject);
    procedure cbACClick(Sender: TObject);
    procedure cbCWHLClick(Sender: TObject);
    procedure cbVNPriceClick(Sender: TObject);
    procedure cbVNACClick(Sender: TObject);
    procedure cbZSJCClick(Sender: TObject);
    procedure cbDDBHClick(Sender: TObject);
    procedure cbXieXingClick(Sender: TObject);
    procedure cbArticleClick(Sender: TObject);
    procedure cbBuyNoClick(Sender: TObject);
    procedure cbKFJCClick(Sender: TObject);
    procedure cbKindClick(Sender: TObject);
    procedure cbUseridClick(Sender: TObject);
    procedure cbCFMDateClick(Sender: TObject);
    procedure showTopUI();
    procedure cbCompanyChange(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  StuffCost: TStuffCost;

implementation

uses SimpleSelection1;

{$R *.dfm}

procedure TStuffCost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TStuffCost.FormDestroy(Sender: TObject);
begin
  StuffCost:=nil;
end;

procedure TStuffCost.bnQueryClick(Sender: TObject);
begin
  showData('cldh',true);
  pnMid.Visible:=false;
end;

procedure TStuffCost.FormCreate(Sender: TObject);
begin

  dtpFrom.Date:= now;
  dtpTo.Date:= now;

  qrGS.SQL.Add('select gsdh from bgszl');
  qrGS.Active:=true;
  qrGS.First;
  while not qrGS.Eof do
    begin
      cbCompany.Items.Add(qrGS.fieldbyname('gsdh').AsString);
      qrGS.Next;
    end;

  cbCompany.ItemIndex:=0;

  showTopUI();
end;

procedure TStuffCost.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var
  bDesc:boolean;
begin
  if Column.Title.SortMarker= smDownEh then bDesc:=false else bDesc:=true;
  showData(Column.FieldName,bDesc);
end;

procedure TStuffCost.showData(sField:string;bDesc:boolean);
var
  sFrom,sTo,sSort:string;
  ff:textfile;
begin

  if bDesc then sSort:='desc' else sSort:='asc';

  sFrom := FormatDateTime('yyyy/mm/dd',dtpFrom.Date);
  sTo:= FormatDateTime('yyyy/mm/dd',dtpTo.Date);

  qrMain.Active:=False;
  qrMain.SQL.Clear;

  with qrMain.sql do
    begin
      if not ((cbCompany.text='CDC') or (cbCompany.text='KDC')) then
        begin
          add('select * from (');
          if cbMaterial.Checked then
            begin
              add('select ');
              add('kcrk.rkno as number,');
              add('clzl.cldh,');
              add('clzl.ywpm,');
              add('clzl.dwbh,');
              add('KCRKS.qty,');
              add('KCRKS.USPrice,');
              add('KCRKS.USacc,');
              add('KCRKS.CWHL,');
              add('KCRKS.VNPrice,');
              add('KCRKS.vnacc,');
              add('zszl.zsjc,');
              add('ddzl.ddbh,');
              add('ddzl.xiexing,');
              add('ddzl.article,');
              add('ddzl.buyno,');
              add('kfzl.kfjc,');
              add('''Material'' as kind,');
              add('KCRKS.USERID,');
              add('kcrk.cfmdate');
              add('from KCRK');
              add('left join KCRKS on KCRKS.RKNO = KCRK.RKNO');
              add('left join DDZL on DDZL.DDBH = KCRKS.CGBH');
              add('left join kfzl on kfzl.kfdh = DDZL.KHBH');
              add('left join clzl on clzl.cldh = KCRKS.CLBH');
              add('left join zszl on zszl.zsdh = KCRK.ZSBH');
              add('where convert(smalldatetime,convert(varchar,KCRK.CFMDATE,111)) between '''+sFrom+''' and '''+sTo+'''');
              if edSupplier.text <> '' then
                add('and kcrk.zsbh like ''%'+edSupplier.Text+'%''');
              add(' and KCRK.GSBH='''+cbCompany.Text+'''');
              if edXieXing.Text <> '' then
                add(' and ddzl.xiexing like ''%'+edXieXing.Text+'%''');
              if edCLDH.text <> '' then
                add(' and clzl.cldh like ''%'+edCLDH.text+'%''');
              if edDDBH.text <>'' then
                add(' and ddzl.ddbh like ''%'+edddbh.Text+'%''');
              if edArticle.Text <> '' then
                add(' and ddzl.article like ''%'+edArticle.Text+'%''');
              if edBuyNo.Text <> '' then
                add(' and ddzl.buyno like ''%'+edBuyNo.Text+'%''');
              if cbOut.Checked then
                add('union all');
            end;

            if cbOut.Checked then
              begin
                add('select ');
                add('JGZL.JGNO as number,');
                add('clzl.cldh,');
                add('clzl.ywpm,');
                add('clzl.dwbh,');
                add('JGZLS.Qty,');
                add('JGZLS.USPrice,');
                add('JGZLS.USACC,');
                add('JGZLS.CWHL,');
                add('JGZLS.VNPrice,');
                add('JGZLS.VNACC,');
                add('zszl.zsjc,');
                add('ddzl.ddbh,');
                add('DDZL.XieXing,');
                add('ddzl.article,');
                add('ddzl.buyno,');
                add('kfzl.kfjc,');
                add('''Outsource'' as kind,');
                add('JGZLS.USERID,');
                add('JGZLS.cfmdate');
                add('from JGZL');
                add('left join JGZLS on JGZL.JGNO = JGZLS.JGNO');
                add('left join JGZLSS on JGZLSS.JGNO = JGZLS.JGNO');
                add('left join DDZL on DDZL.DDBH = JGZLSS.ZLBH');
                add('left join kfzl on kfzl.kfdh = DDZL.KHBH');
                add('left join clzl on clzl.cldh = JGZLS.CLBH');
                add('left join zszl on zszl.zsdh = JGZL.ZSBH');
                add('where convert(smalldatetime,convert(varchar,JGZLS.CFMDate,111)) between '''+sFrom+''' and '''+sTo+'''');
                add(' and JGZLS.zmlb=''ZZZZZZZZZZ''');
                if edSupplier.text <> '' then
                  add('and jgzl.zsbh like ''%'+edSupplier.Text+'%''');
                add(' and JGZL.GSBH='''+cbCompany.Text+'''');
                if edXieXing.Text <> '' then
                  add(' and ddzl.xiexing like ''%'+edXieXing.Text+'%''');
                if edCLDH.text <> '' then
                  add(' and clzl.cldh like ''%'+edCLDH.text+'%''');
                if edDDBH.text <>'' then
                  add(' and ddzl.ddbh like ''%'+edddbh.Text+'%''');
                if edArticle.Text <>'' then
                  add(' and ddzl.article like ''%'+edArticle.Text+'%''');
                if edBuyNo.Text <>'' then
                  add(' and ddzl.buyno like ''%'+edBuyNo.Text+'%''');
              end;
            add(') as data');
              add('where 1=1');

            if cbVNACC.ItemIndex = 1 then
              add(' and (vnacc > 0)')
            else
              if cbVNACC.ItemIndex = 2 then
                add(' and (vnacc = 0 or vnacc is null)');

            if cbUSACC.ItemIndex = 1 then
              add(' and (usacc > 0)')
            else
              if cbUSACC.ItemIndex = 2 then
                add(' and (usacc = 0 or usacc is null)');

            add('order by '+sField +' '+sSort);
        end
      else
        begin
            add('select * from (');
            unionDCSQL('AQty');
            add('union all');
            unionDCSQL('BQty');
            add('union all');
            unionDCSQL('CQty');
            add('union all');
            unionDCSQL('DQty');
            add('union all');
            unionDCSQL('EQty');
            add('union all');
            unionDCSQL('FQty');
            add(') as data ');
            add('order by '+sField +' '+sSort);
        end;


      end;


  assignfile(ff,'sql.txt');
  rewrite(ff);
  writeln(ff,qrmain.sql.text);
  closefile(ff);

  qrMain.Active:=true;

end;

procedure TStuffCost.bnExcel2Click(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,iFields,iCLDH,iValue:integer;
  slSplit:TStringList;
const
  aColW:array[0..16] of integer=(10,30,10,10,10,5,15,5,10,5,5,5,10,15,8,5,10);
begin

  slSplit:=TStringList.Create;
  slSplit.Delimiter:='|';

  if (qrMain.Active = False) or (qrMain.RecordCount = 0) then
  begin
    showmessage('No record.沒有記錄');
    exit;
  end;
  try

    iCLDH:=qrMain.fieldbyname('cldh').Index+1;
    iValue:=qrMain.fieldbyname('value').Index+1;
    iFields:= qrMain.FieldCount;

    eclApp:=CreateOleObject('Excel.Application');
    workBook:=CreateOleObject('Excel.Sheet');
    workBook:=eclApp.workbooks.Add;

    for i:=1 to iFields do
      begin
        eclApp.columns[i].font.size:=8;
        slSplit.DelimitedText:=gdMain.Columns[i-1].Title.Caption;
        eclApp.Cells[2,i]:=slSplit[0];
        eclApp.Cells[3,i]:=slSplit[1];
        eclApp.Cells[2,i].interior.color:=clyellow;
        eclApp.Cells[3,i].interior.color:=clyellow;
        eclApp.columns[i].columnwidth:=aColW[i-1];
      end;

    eclApp.Cells[1,7]:=cbCompany.Text+'生產成本報表'+FormatDateTime('yyyy/mm/dd',dtpFrom.Date)+'到'+FormatDateTime('yyyy/mm/dd',dtpTo.Date);
    eclApp.rows[1].font.size:=12;

    qrMain.First;
    j:=4;
    while not qrMain.Eof do
      begin
        for i:=1 to iFields do eclApp.Cells[j,i]:=qrMain.Fields[i-1].Value;
        inc(j);
        qrMain.Next;
      end;

    eclApp.Cells[j,iCLDH].formula := '=COUNTA(R3C' + inttostr(iCLDH) + ':R' + inttostr(j-1) + 'C' + inttostr(iCLDH) + ')';
    eclApp.Cells[j,iValue].formula := '=SUM(R3C' + inttostr(iValue) + ':R' + inttostr(j-1) + 'C' + inttostr(iValue) + ')';
    eclApp.Cells[j,iCLDH].font.size:=12;
    eclApp.Cells[j,iValue].font.size:=12;
    eclApp.Cells[j,iCLDH].interior.color:=clyellow;
    eclApp.Cells[j,iValue].interior.color:=clyellow;
    eclApp.Visible:=True;
    eclApp := Unassigned;
  except
    Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;

  end;

end;

procedure TStuffCost.bnSupplierClick(Sender: TObject);
begin
  SimpleSelection:=TSimpleSelection.create(self);
  SimpleSelection.setMode(0);
end;

procedure TStuffCost.bnCustomerClick(Sender: TObject);
begin
  SimpleSelection:=TSimpleSelection.create(self);
  SimpleSelection.setMode(1);
end;

procedure TStuffCost.bnXieXingClick(Sender: TObject);
begin
  SimpleSelection:=TSimpleSelection.create(self);
  SimpleSelection.setMode(2);
end;

procedure TStuffCost.bnHelpClick(Sender: TObject);
begin
  showmessage(
    'AQty=Dev Qty'+#13+
    'BQty=Tech Qty'+#13+
    'CQty=NG Qty'+#13+
    'DQty=Defect Qty'+#13+
    'EQty=Special Qty'+#13+
    'FQty=Reserve Qty'+#13+
    'GQty=Reserve Qty'
  );
end;

procedure TStuffCost.unionDCSQL(sField:string);
var
  sFrom,sTo:string;
begin

sFrom := FormatDateTime('yyyy/mm/dd',dtpFrom.Date);
sTo:= FormatDateTime('yyyy/mm/dd',dtpTo.Date);

with qrMain.sql do
  begin
          add('select ');
          add('kcrk.rkno as number,');
          add('clzl.cldh,');
          add('clzl.ywpm,');
          add('clzl.dwbh,');
          add('KCRKS.qty,');
          add('KCRKS.USPrice,');
          add('KCRKS.USacc,');
          add('KCRKS.CWHL,');
          add('KCRKS.VNPrice,');
          add('KCRKS.vnacc,');
          add('zszl.zsjc,');
          add(''''' as ddbh,');
          add(''''' as xiexing,');
          add(''''' as article,');
          add(''''' as buyno,');
          add(''''+sField+''' as kfjc,');
          add('''Material'' as kind,');
          add('KCRKS.USERID,');
          add('kcrk.cfmdate');
          add('from KCRK');
          add('left join KCRKS on KCRKS.RKNO = KCRK.RKNO');
          add('left join clzl on clzl.cldh = KCRKS.CLBH');
          add('left join zszl on zszl.zsdh = KCRK.ZSBH');
          add('left join DC_TLFL on DC_TLFL.DJBH = KCRKS.RKNO and DC_TLFL.CLBH = KCRKS.CLBH and DC_TLFL.DFL1 = KCRKS.CGBH and DC_TLFL.DFL2 = KCRKS.RKSB and LB=''1''');
          add('where convert(smalldatetime,convert(varchar,KCRK.CFMDATE,111)) between '''+sFrom+''' and '''+sTo+'''');
          add(' and '+sField+'>0 ');
          if edSupplier.text <> '' then
            add('and kcrk.zsbh like ''%'+edSupplier.Text+'%''');
          add(' and KCRK.GSBH='''+cbCompany.Text+'''');
          if edCLDH.text <> '' then
            add(' and clzl.cldh like ''%'+edCLDH.text+'%''');

            if cbVNACC.ItemIndex = 1 then
              add(' and (vnacc > 0)')
            else
              if cbVNACC.ItemIndex = 2 then
                add(' and (vnacc = 0 or vnacc is null)');

            if cbUSACC.ItemIndex = 1 then
              add(' and (usacc > 0)')
            else
              if cbUSACC.ItemIndex = 2 then
                add(' and (usacc = 0 or usacc is null)');
  end;

end;

procedure TStuffCost.bnShowClick(Sender: TObject);
begin
  pnMid.Visible:=true;
end;

procedure TStuffCost.bnExcelClick(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,iFields,iField:integer;
  slSplit:TStringList;
const
  aColW:array[0..18] of integer=(10,30,10,10,10,5,15,5,10,5,5,5,5,5,10,15,8,5,10);
begin
  slSplit:=TStringList.Create;
  slSplit.Delimiter:='|';

  if (qrMain.Active = False) or (qrMain.RecordCount = 0) then
  begin
    showmessage('No record.沒有記錄');
    exit;
  end;
  try
    iFields:= qrMain.FieldCount;

    eclApp:=CreateOleObject('Excel.Application');
    workBook:=CreateOleObject('Excel.Sheet');
    workBook:=eclApp.workbooks.Add;

    iField:=1;
    for i:=1 to iFields do
      begin
        if gdMain.Columns[i-1].Visible=true then
          begin
            eclApp.columns[iField].font.size:=8;
            slSplit.DelimitedText:=gdMain.Columns[i-1].Title.Caption;
            eclApp.Cells[2,iField]:=slSplit[0];
            eclApp.Cells[3,iField]:=slSplit[1];
            eclApp.Cells[2,iField].interior.color:=clyellow;
            eclApp.Cells[3,iField].interior.color:=clyellow;
            eclApp.columns[iField].columnwidth:=aColW[i-1];
            iField:=iField+1;
          end;
      end;

    eclApp.Cells[1,7]:=cbCompany.Text+'生產成本報表'+FormatDateTime('yyyy/mm/dd',dtpFrom.Date)+'到'+FormatDateTime('yyyy/mm/dd',dtpTo.Date);
    eclApp.rows[1].font.size:=12;

    qrMain.First;
    j:=4;
    while not qrMain.Eof do
      begin
        iField:=1;
        for i:=1 to iFields do
          if gdMain.Columns[i-1].Visible=true then
            begin
              eclApp.Cells[j,iField]:=qrMain.Fields[i-1].Value;
              inc(iField);
            end;
        inc(j);
        qrMain.Next;
      end;

    eclApp.Cells[j,1].formula := '=COUNTA(R3C' + inttostr(1) + ':R' + inttostr(j-1) + 'C' + inttostr(1) + ')';
    eclApp.Cells[j,1].font.size:=12;
    eclApp.Cells[j,1].interior.color:=clyellow;
    for i:=1 to eclApp.activesheet.usedrange.columns.count do
      if (eclApp.Cells[3,i].value='USACC') or (eclApp.Cells[3,i].value='VNACC') then
        begin
          eclApp.Cells[j,i].formula := '=SUM(R3C' + inttostr(i) + ':R' + inttostr(j-1) + 'C' + inttostr(i) + ')';
          eclApp.Cells[j,i].font.size:=12;
          eclApp.Cells[j,i].interior.color:=clyellow;
        end;

    eclApp.Visible:=True;
    eclApp := Unassigned;
  except
    Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;

  end;

end;

procedure TStuffCost.bnCDCHintClick(Sender: TObject);
begin
  showmessage(
    'AQty=Dev Qty'+#13+
    'BQty=Tech Qty'+#13+
    'CQty=NG Qty'+#13+
    'DQty=Defect Qty'+#13+
    'EQty=Special Qty'+#13+
    'FQty=Reserve Qty'+#13+
    'GQty=Reserve Qty'
  );
end;

procedure TStuffCost.bnColumnsClick(Sender: TObject);
begin
  pnBtm.Visible:=true;
end;

procedure TStuffCost.bnHideClick(Sender: TObject);
begin
  pnBtm.Visible:=false;
end;

procedure TStuffCost.cbNOClick(Sender: TObject);
begin
  gdMain.Columns[0].Visible:=cbNO.Checked;
end;

procedure TStuffCost.cbCLDHClick(Sender: TObject);
begin
  gdMain.Columns[1].Visible:=cbCLDH.Checked;
end;

procedure TStuffCost.cbYWPMClick(Sender: TObject);
begin
  gdMain.Columns[2].Visible:=cbYWPM.Checked;
end;

procedure TStuffCost.cbDWBHClick(Sender: TObject);
begin
  gdMain.Columns[3].Visible:=cbDWBH.Checked;
end;

procedure TStuffCost.cbQtyClick(Sender: TObject);
begin
  gdMain.Columns[4].Visible:=cbQty.Checked;
end;

procedure TStuffCost.cbUSPriceClick(Sender: TObject);
begin
  gdMain.Columns[5].Visible:=cbUSPrice.Checked;
end;

procedure TStuffCost.cbACClick(Sender: TObject);
begin
  gdMain.Columns[6].Visible:=cbAC.Checked;
end;

procedure TStuffCost.cbCWHLClick(Sender: TObject);
begin
  gdMain.Columns[7].Visible:=cbCWHL.Checked;
end;

procedure TStuffCost.cbVNPriceClick(Sender: TObject);
begin
  gdMain.Columns[8].Visible:=cbVNPrice.Checked;
end;

procedure TStuffCost.cbVNACClick(Sender: TObject);
begin
  gdMain.Columns[9].Visible:=cbVNAC.Checked;
end;

procedure TStuffCost.cbZSJCClick(Sender: TObject);
begin
  gdMain.Columns[10].Visible:=cbZSJC.Checked;
end;

procedure TStuffCost.cbDDBHClick(Sender: TObject);
begin
  gdMain.Columns[11].Visible:=cbDDBH.Checked;
end;

procedure TStuffCost.cbXieXingClick(Sender: TObject);
begin
  gdMain.Columns[12].Visible:=cbXieXing.Checked;
end;

procedure TStuffCost.cbArticleClick(Sender: TObject);
begin
  gdMain.Columns[13].Visible:=cbArticle.Checked;
end;

procedure TStuffCost.cbBuyNoClick(Sender: TObject);
begin
  gdMain.Columns[14].Visible:=cbBuyNo.Checked;
end;

procedure TStuffCost.cbKFJCClick(Sender: TObject);
begin
  gdMain.Columns[15].Visible:=cbKFJC.Checked;
end;

procedure TStuffCost.cbKindClick(Sender: TObject);
begin
  gdMain.Columns[16].Visible:=cbKind.Checked;
end;

procedure TStuffCost.cbUseridClick(Sender: TObject);
begin
  gdMain.Columns[17].Visible:=cbUserid.Checked;
end;

procedure TStuffCost.cbCFMDateClick(Sender: TObject);
begin
  gdMain.Columns[18].Visible:=cbCFMDate.Checked;
end;

procedure TStuffCost.showTopUI();
var
  b:boolean;
begin

  b:= not ((cbCompany.Text='CDC') or (cbCompany.Text='KDC'));
  lbXieXing.Visible:=b;
  edXieXing.Visible:=b;
  bnXieXing.Visible:=b;
  lbArticle.Visible:=b;
  edArticle.Visible:=b;
  lbBuyNo.Visible:=b;
  edBuyNo.Visible:=b;
  lbDDBH.Visible:=b;
  edDDBH.Visible:=b;
  cbMaterial.Visible:=b;
  cbOut.visible:=b;

end;
procedure TStuffCost.cbCompanyChange(Sender: TObject);
begin
  showTopUI();
end;

end.
