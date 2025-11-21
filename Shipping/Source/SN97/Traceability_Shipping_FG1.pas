unit Traceability_Shipping_FG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, ComCtrls, DBTables, StdCtrls, ExtCtrls,comobj;

type
  TTraceability_Shipping_FG = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Button1: TButton;
    Button3: TButton;
    RYEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    DS3: TDataSource;
    DS4: TDataSource;
    Query1BillNo: TStringField;
    Query1INV_NO: TStringField;
    Query1Shipper: TStringField;
    Query1Consignee: TStringField;
    Query1Notify: TStringField;
    Query1CO_Vessel: TStringField;
    Query1Forwarder: TStringField;
    Query1Carrier: TStringField;
    Query1LoadingDate: TDateTimeField;
    Query1ShippingDate: TDateTimeField;
    Query1ArrivalDate: TDateTimeField;
    Query1DeliveryDate: TDateTimeField;
    Query1DateofReceipt: TDateTimeField;
    Query1Placeofreceipt: TStringField;
    Query1Portofloading: TStringField;
    Query1PortofDischarge: TStringField;
    Query1PlaceofDelivery: TStringField;
    Query1CON_NO: TStringField;
    Query1Quantity_per_container: TIntegerField;
    Query1Total_quantity: TIntegerField;
    Query1Descriptionofitems: TStringField;
    Query2PACKINGSLIP: TStringField;
    Query2INVOICE: TStringField;
    Query2PACKING_LOCATION: TStringField;
    Query2INV_DATE: TDateTimeField;
    Query2SHIPPING_LOCATION: TStringField;
    Query2ShippingDate_Gac: TDateTimeField;
    Query2Shipper: TStringField;
    Query2ARTICLE: TStringField;
    Query2STYLE_NAME: TStringField;
    Query2CONVEYANCE: TStringField;
    Query2CONTAINER: TStringField;
    Query2Quantity_per_container: TIntegerField;
    Query2Total_quantity: TIntegerField;
    Query3CO_No: TStringField;
    Query3INV_NO: TStringField;
    Query3CO_Date: TDateTimeField;
    Query3Exporter: TStringField;
    Query3Producer: TStringField;
    Query3Certificate_Issuer: TStringField;
    Query3Address_Certificate_Issuer: TStringField;
    Query3Seller_Name: TStringField;
    Query3Address_Seller_name: TStringField;
    Query3ARTICLE: TStringField;
    Query3Description: TStringField;
    Query3PAIRS: TIntegerField;
    Query3ValueInvoice: TCurrencyField;
    Query4Invoice: TStringField;
    Query4INV_DATE: TDateTimeField;
    Query4KHPO: TStringField;
    Query4NameBuyer: TStringField;
    Query4AddressBuyer: TStringField;
    Query4NameSeller: TStringField;
    Query4AddressSeller: TStringField;
    Query4CountryOrigin: TStringField;
    Query4ARTICLE: TStringField;
    Query4STYLE_NAME: TStringField;
    Query4PAIRS: TIntegerField;
    Query4Value: TCurrencyField;
    Qtemp: TQuery;
    Query1RYNO: TStringField;
    Query2RYNO: TStringField;
    Query3RYNO: TStringField;
    Query4RYNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Traceability_Shipping_FG: TTraceability_Shipping_FG;

implementation
  uses fununit;

{$R *.dfm}

procedure TTraceability_Shipping_FG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Shipping_FG.FormDestroy(Sender: TObject);
begin
  Traceability_Shipping_FG:=nil;
end;

procedure TTraceability_Shipping_FG.Button1Click(Sender: TObject);
var Inv,Con_no : string;
begin
  if RYEdit.Text = '' then
  begin
    showmessage('Pls key in RY#');
    abort;
  end;
  if PC1.ActivePageIndex=0 then
  begin
     with query1 do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' select Ship_Booking.Bill_FCR_No as BillNo,Ship_Booking.INV_NO,''VINH LONG FOOTWEAR CO.,LTD'' as Shipper,Bill_Shipping.Consignee,Bill_Shipping.Notify ');
        sql.Add('        ,Ship_Booking.CO_Vessel,Ship_Booking.Forwarder,Bill_Shipping.Carrier,Bill_Shipping.LoadingDate,Bill_Shipping.ShippingDate,Bill_Shipping.ArrivalDate ');
        sql.Add('	       ,Bill_Shipping.DeliveryDate,Bill_Shipping.DateofReceipt,''HOCHIMINH'' as Placeofreceipt,''HOCHIMINH'' as Portofloading,Bill_Shipping.PortofDischarge ');
        sql.Add('   	   ,Bill_Shipping.PlaceofDelivery,YWCP.CON_NO,YWCP.Qty as Quantity_per_container ,INVOICE_M.TOTAL_PAIRS as Total_quantity,''CONVERSE FOOTWEAR'' as Descriptionofitems,RYNO ');
        sql.Add(' from Ship_Booking ');
        sql.Add(' left join INVOICE_M on Ship_Booking.INV_NO=Ship_Booking.INV_NO ');
        sql.Add(' left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO and Ship_Booking.INV_NO = INVOICE_D.INV_NO ');
        sql.Add(' left join Bill_Shipping on Ship_Booking.INV_NO=Bill_Shipping.INV_NO and Ship_Booking.Bill_FCR_No=Bill_Shipping.BillNo ');
        sql.Add(' left join (select DDBH,CON_NO,sum(Qty) as Qty from ( select * from YWCP  union all select * from YWCPOld ) YWCP where SB=''3'' group by DDBH,CON_NO ) YWCP on YWCP.DDBH=INVOICE_D.RYNO ');
        sql.Add(' where INVOICE_D.RYNO='''+RYEdit.Text+''' ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
     end;
  end else if PC1.ActivePageIndex=1 then
  begin
     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' select INVOICE_D.INV_NO as PACKINGSLIP#,INVOICE_D.INV_NO as INVOICE#,''VINH LONG FOOTWEAR CO.,LTD'' as PACKING_LOCATION,INVOICE_M.INV_DATE,''VINH LONG FOOTWEAR CO.,LTD'' as SHIPPING_LOCATION ');
        sql.Add('	       ,Ship_Booking.ExFty_Date as ShippingDate_Gac,''VINH LONG FOOTWEAR CO.,LTD'' as Shipper,INVOICE_D.ARTICLE,INVOICE_D.STYLE_NAME ');
        sql.Add('	       ,case when Ship_Booking.Kind_Loading=''CY'' then ''CONTAINER'' when Ship_Booking.Kind_Loading=''CFS'' then ''Truck'' else Ship_Booking.Kind_Loading end as CONVEYANCE ');
        sql.Add(' 	     ,YWCP.CON_NO as CONTAINER#,YWCP.Qty as Quantity_per_container ,INVOICE_M.TOTAL_PAIRS as Total_quantity,RYNO ');
        sql.Add(' from INVOICE_D left join INVOICE_M ');
        sql.Add(' on INVOICE_D.INV_NO=INVOICE_M.INV_NO ');
        sql.Add(' left join Bill_Shipping on INVOICE_D.INV_NO=Bill_Shipping.INV_NO ');
        sql.Add(' left join Ship_Booking on INVOICE_D.INV_NO=Ship_Booking.INV_NO  ');
        sql.Add(' left join (select DDBH,CON_NO,sum(Qty) as Qty from ( select * from YWCP  union all select * from YWCPOld ) YWCP where SB=''3'' group by DDBH,CON_NO ) YWCP on YWCP.DDBH=INVOICE_D.RYNO ');
        sql.Add(' where INVOICE_D.RYNO='''+RYEdit.Text+''' ');
        sql.Add(' order by INVOICE_D.ARTICLE ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
     end;
  end else if PC1.ActivePageIndex=2 then
  begin
     with query3 do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' select Ship_Booking.CO_No,Ship_Booking.INV_NO,Ship_Booking.CO_Date,''VINH LONG FOOTWEAR CO.,LTD'' as Exporter,''VINH LONG FOOTWEAR CO.,LTD'' as Producer,''MOIT'' as Certificate_Issuer ');
        sql.Add('	      ,''SO 12  NGUYEN THI MINH KHAI, Q.1, TP. HO CHI MINH'' as Address_Certificate_Issuer,''VINH LONG FOOTWEAR CO.,LTD'' as Seller_Name  ');
        sql.Add('	      ,''HOA PHU INDUSTRIAL ZONE,THANH HUNG HAMLET,HOA PHU VILLAGE,LONG HO DISTRICT,VINH LONG PROVINCE,VIETNAM'' as Address_Seller_name ');
        sql.Add('	      ,INVOICE_D.ARTICLE,''CONVERSE FOOTWEAR'' as Description,INVOICE_D.PAIRS,Bill_Shipping.ValueInvoice,RYNO ');
        sql.Add(' from Ship_Booking ');
        sql.Add(' left join INVOICE_D on Ship_Booking.INV_NO=INVOICE_D.INV_NO ');
        sql.Add(' left join Bill_Shipping on Ship_Booking.INV_NO=Bill_Shipping.INV_NO ');
        sql.Add(' where INVOICE_D.RYNO='''+RYEdit.Text+''' ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
     end;
  end else if PC1.ActivePageIndex=3 then
  begin
     with query4 do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' select INVOICE_D.INV_NO as Invoice,INVOICE_M.INV_DATE,DDZL.KHPO,Bill_Shipping.NameBuyer,Bill_Shipping.AddressBuyer,''Flourish Thrive development Limited Taiwan Branch'' as NameSeller ');
        sql.Add('	       ,''5F., No13, Lane 370, Sec 4, Ya Tan Road, Da Ya District, Taichung city, Taiwan, R.O.C.'' as AddressSeller,''VIETNAM'' as CountryOrigin  ');
        sql.Add('	       ,INVOICE_D.ARTICLE,INVOICE_D.STYLE_NAME,INVOICE_D.PAIRS,	INVOICE_D.PAIRS * CostingPriceList.LYNFOB as Value,RYNO ');
        sql.Add(' from INVOICE_D left join INVOICE_M ');
        sql.Add(' on INVOICE_D.INV_NO=INVOICE_M.INV_NO ');
        sql.Add(' left join DDZL on INVOICE_D.RYNO=DDZL.DDBH ');
        sql.Add(' left join Bill_Shipping on INVOICE_D.INV_NO=Bill_Shipping.INV_NO ');
        sql.Add(' left join( ');
        sql.Add(' 	select Max(No)as maxNo,SKU,PricingSeason from CostingPriceList ');
        sql.Add(' 	   group by SKU,PricingSeason ');
        sql.Add(' )PricingSeasonNO ');
        sql.Add(' on PricingSeasonNO.SKU =left(DDZL.ARTICLE,charindex(''/'',DDZL.ARTICLE+''/'')-1) ');
        sql.Add(' 	   and DDZL.BUYNO like ''%''+PricingSeasonNO.PricingSeason ');
        sql.Add(' left join CostingPriceList 	');
        sql.Add(' on CostingPriceList.SKU = PricingSeasonNO.SKU	');
        sql.Add('	  and CostingPriceList.PricingSeason =PricingSeasonNO.PricingSeason');
        sql.Add(' 	and PricingSeasonNO.maxNo=CostingPriceList.no');
        sql.Add(' where INVOICE_D.RYNO='''+RYEdit.Text+''' ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
     end;
  end;
end;

procedure TTraceability_Shipping_FG.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    if query1.Active then
    begin
      if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query1.First;
      j:=2;
      while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='10';
            eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query1.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
     if query2.Active then
    begin
      if query2.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query2.First;
      j:=2;
      while   not  query2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
           eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
           eclApp.Cells.Cells.item[j,i+1].font.size:='10';
           eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query2.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else if PC1.ActivePageIndex=2 then
  begin
     if query3.Active then
    begin
      if query3.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh3.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query3.First;
      j:=2;
      while   not  query3.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh3.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
          eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query3.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else if PC1.ActivePageIndex=3 then
  begin
     if query4.Active then
    begin
      if query4.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh4.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh4.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query4.First;
      j:=2;
      while   not  query4.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh4.Columns.Count-1 do
        begin
          if (DBGridEh4.Fields[i].FieldName = 'KHPO')  then
              eclApp.Cells(j,i+1):= #39 + DBGridEh4.Fields[i].Value
          else
              eclApp.Cells(j,i+1):=DBGridEh4.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
          eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query4.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TTraceability_Shipping_FG.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
end;

end.
