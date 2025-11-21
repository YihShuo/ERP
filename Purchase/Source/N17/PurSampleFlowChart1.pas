unit PurSampleFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh, ComCtrls, jpeg;

type
  TPurSampleFlowChart = class(TForm)
    Button1: TButton;
    tmr1: TTimer;
    Query2: TQuery;
    PageControl1: TPageControl;
    TS2: TTabSheet;
    TS3: TTabSheet;
    shp_ShoeAnalysis: TShape;
    lbl_ShoeAnalysis: TLabel;
    shp_MaterialQuery: TShape;
    lbl_MaterialQuery: TLabel;
    shp_ETD: TShape;
    lbl_ETD: TLabel;
    lbl_Develop: TLabel;
    shp_PurchasStatus: TShape;
    lbl_PurchasStatus: TLabel;
    shp26: TShape;
    lbl30: TLabel;
    shp_MCS: TShape;
    lbl_MCS: TLabel;
    shp_PurchasingOrder: TShape;
    lbl_PurchasingOrder: TLabel;
    Shape6: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape9: TShape;
    Shape10: TShape;
    shp_ChangeList: TShape;
    lbl_Material: TLabel;
    shp_MOQ: TShape;
    shp_Supplier: TShape;
    lbl_Supplier: TLabel;
    Shape15: TShape;
    shp_ShoeCalendar: TShape;
    lbl_ShoeCalendar: TLabel;
    shp_Stock: TShape;
    lbl_Stock: TLabel;
    Label5: TLabel;
    lbl_MOQ: TLabel;
    TS1: TTabSheet;
    Shape11: TShape;
    Shape20: TShape;
    Label6: TLabel;
    shp_PurQtyTrack: TShape;
    lbl_PurQtyTrack: TLabel;
    shp_Coats: TShape;
    lbl_Coats: TLabel;
    shp_BOMReceive: TShape;
    lbl_BOMReceive: TLabel;
    Image2: TImage;
    Image4: TImage;
    shp_Develop: TShape;
    Label2: TLabel;
    Image1: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Shape17: TShape;
    Shape18: TShape;
    Shape21: TShape;
    Shp_FDStatusStock: TShape;
    lbl_FDStatusStock: TLabel;
    Shape19: TShape;
    shp_Forwarder: TShape;
    lbl_Forwarder: TLabel;
    shp_SampleShoe: TShape;
    lbl_SampleShoe: TLabel;
    shp_MatChange: TShape;
    lbl_MatChange: TLabel;
    shp_ArticleMat: TShape;
    lbl_ArticleMat: TLabel;
    Shp_PurColor: TShape;
    lbl_PurColor: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape13: TShape;
    Shape16: TShape;
    Shape14: TShape;
    Shape1: TShape;
    shp_ConfirmPrice: TShape;
    lbl_ConfirmPrice: TLabel;
    shp_Payment: TShape;
    lbl_Payment: TLabel;
    Shape23: TShape;
    Shape5: TShape;
    Label7: TLabel;
    Query1: TQuery;
    shp_Transport: TShape;
    lbl_Transport: TLabel;
    Shape12: TShape;
    shp_Safty: TShape;
    lbl_Safty: TLabel;
    Shape22: TShape;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure lbl_SampleShoeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_SampleShoeMouseLeave(Sender: TObject);
    procedure lbl_ShoeAnalysisMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_ShoeAnalysisMouseLeave(Sender: TObject);
    procedure lbl_ShoeCalendarMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_ShoeCalendarMouseLeave(Sender: TObject);
    procedure lbl_MaterialQueryMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_ETDMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_MaterialQueryMouseLeave(Sender: TObject);
    procedure lbl_ETDMouseLeave(Sender: TObject);
    procedure lbl_MCSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_MCSMouseLeave(Sender: TObject);
    procedure lbl_PurchasStatusMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_PurchasStatusMouseLeave(Sender: TObject);
    procedure lbl_PurchasStatusClick(Sender: TObject);
    procedure lbl_PurchasingOrderMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_PurchasingOrderMouseLeave(Sender: TObject);
    procedure lbl_MCSClick(Sender: TObject);
    procedure lbl_PurchasingOrderClick(Sender: TObject);
    procedure lbl_ETDClick(Sender: TObject);
    procedure lbl_StockMouseLeave(Sender: TObject);
    procedure lbl_StockMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_SupplierMouseLeave(Sender: TObject);
    procedure lbl_MaterialMouseLeave(Sender: TObject);
    procedure lbl_MaterialMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_SupplierClick(Sender: TObject);
    procedure lbl_SupplierMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_MaterialLeadtimeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_MaterialLeadtimeMouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure lbl_PurQtyTrackMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_PurQtyTrackMouseLeave(Sender: TObject);
    procedure lbl_ArticleMatMouseLeave(Sender: TObject);
    procedure lbl_ArticleMatMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_CoatsMouseLeave(Sender: TObject);
    procedure lbl_CoatsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_DevelopClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure lbl_MatChangeMouseLeave(Sender: TObject);
    procedure lbl_MatChangeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_PurColorMouseLeave(Sender: TObject);
    procedure lbl_PurColorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_FDStatusStockMouseLeave(Sender: TObject);
    procedure lbl_FDStatusStockMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TS2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TS1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure shp_DevelopMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_ForwarderMouseLeave(Sender: TObject);
    procedure lbl_ForwarderMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_ConfirmPriceMouseLeave(Sender: TObject);
    procedure lbl_PaymentMouseLeave(Sender: TObject);
    procedure lbl_ConfirmPriceMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_PaymentMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_BOMReceiveMouseLeave(Sender: TObject);
    procedure lbl_BOMReceiveMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_BOMReceiveClick(Sender: TObject);
    procedure lbl_TransportMouseLeave(Sender: TObject);
    procedure lbl_TransportMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbl_SaftyMouseLeave(Sender: TObject);
    procedure lbl_SaftyMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_MaterialQueryClick(Sender: TObject);
    procedure lbl_TransportClick(Sender: TObject);
    procedure lbl_ConfirmPriceClick(Sender: TObject);
    procedure lbl_PaymentClick(Sender: TObject);
    procedure lbl_MOQClick(Sender: TObject);
    procedure lbl_ForwarderClick(Sender: TObject);
    procedure lbl_MaterialClick(Sender: TObject);
    procedure lbl_ShoeAnalysisClick(Sender: TObject);
  private
    procedure Line(x1, y1, x2, y2: Integer; Color: TColor;
      LineWidth: Integer);
    procedure KeepLog(ProgID: String);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSampleFlowChart: TPurSampleFlowChart;
  NDate:TDate;

implementation

uses main1, BOMReceive1, SampleMerge1, PurSample1, TraceSample1,
     SupplierSample1, TraceListSample1 ,PurSampleInvoice1, TransportCharge1,
     PurConfirmPrice1, Payment1, MaterialMOQ1 , ForwarderSample1, SupplierKPI1
     ,SamplePurchaseAnalysis1;
{$R *.dfm}

procedure TPurSampleFlowChart.FormDestroy(Sender: TObject);
begin
  PurSampleFlowChart := nil;
  
end;

procedure TPurSampleFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=Cafree;
    PurSampleFlowChart:=nil;
end;

procedure TPurSampleFlowChart.Line(x1, y1, x2, y2: Integer; Color: TColor;
  LineWidth: Integer);
begin
    With Canvas Do
    begin
       Pen.Width:=LineWidth;
       Pen.Color:=Color;
       MoveTo(x1,y1);
       LineTo(x2,y2);
     end
end;


procedure TPurSampleFlowChart.FormCreate(Sender: TObject);
var x,y:array [0..50] of integer;
begin
  {
  PageControl1.ActivePage:=TS2 ;

  //±±®Ó≈v≠≠
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from BLimits') ;
      sql.Add('where USERID='''+main.edit1.text+'''') ;
      sql.Add('     and MKID=''08'' ') ;
      sql.Add('     and GSBH='''+main.Edit2.text+'''') ;
      active:=true;
    end;
  if query1.Locate('FORMID','SN13',[]) then
     lbl_Supplier.enabled:=true
  else
     lbl_Supplier.Enabled:=false;

  if query1.Locate('FORMID','SN216',[]) then
     lbl_PurchasingOrder.enabled:=true
  else
     lbl_PurchasingOrder.Enabled:=false;

  if query1.Locate('FORMID','SN225',[]) then
     lbl_ETD.enabled:=true
  else
     lbl_ETD.Enabled:=false;

  if query1.Locate('FORMID','SN43',[]) then
     lbl_Payment.enabled:=true
  else
     lbl_Payment.Enabled:=false;

  if query1.Locate('FORMID','SN44',[]) then
     lbl_ConfirmPrice.enabled:=true
  else
     lbl_ConfirmPrice.Enabled:=false;

  if query1.Locate('FORMID','SN57',[]) then
     lbl_MOQ.enabled:=true
  else
     lbl_MOQ.Enabled:=false;



  query1.active:=false;
   }

  //Button1Click(nil);
//   Line(1,50,40,60,clRed,5);
//  LineStart(1,1);
//  LineTo(20,20);
//canvas.pen.color:=clred;
//canvas.pen.style:=psDash;
//DevFlowChart.canvas.moveto(trunc(x[1]),trunc(y[2]));
//DevFlowChart.canvas.lineto(trunc(x[20]),trunc(y[20]));

end;


procedure TPurSampleFlowChart.tmr1Timer(Sender: TObject);
begin
//    Button1Click(nil);
//    tmr1.Enabled:=False;
//    DevFlowChart.OnActivate:=FormActivate;
//    DevFlowChart.OnShow:=FormActivate;
//    DevFlowChart.OnPaint:=FormActivate;
end;

procedure TPurSampleFlowChart.lbl_SampleShoeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_SampleShoe.Color:=clFuchsia;
   shp_SampleShoe.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_SampleShoeMouseLeave(Sender: TObject);
begin
   lbl_SampleShoe.Color:=clSkyBlue;
   shp_SampleShoe.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ShoeAnalysisMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_ShoeAnalysis.Color:=clFuchsia;
   shp_ShoeAnalysis.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_ShoeAnalysisMouseLeave(Sender: TObject);
begin
   lbl_ShoeAnalysis.Color:=clSkyBlue;
   shp_ShoeAnalysis.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ShoeCalendarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_ShoeCalendar.Color:=clFuchsia;
   shp_ShoeCalendar.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_ShoeCalendarMouseLeave(Sender: TObject);
begin
   lbl_ShoeCalendar.Color:=clSkyBlue;
   shp_ShoeCalendar.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MaterialQueryMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_MaterialQuery.Color:=clFuchsia;
   shp_MaterialQuery.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_ETDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_ETD.Color:=clFuchsia;
   shp_ETD.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_MaterialQueryMouseLeave(Sender: TObject);
begin
   lbl_MaterialQuery.Color:=clSkyBlue;
   shp_MaterialQuery.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ETDMouseLeave(Sender: TObject);
begin
   lbl_ETD.Color:=clSkyBlue;
   shp_ETD.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MCSMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_MCS.Color:=clFuchsia;
   shp_MCS.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_MCSMouseLeave(Sender: TObject);
begin
   lbl_MCS.Color:=clSkyBlue;
   shp_MCS.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_PurchasStatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_PurchasStatus.Color:=clFuchsia;
   shp_PurchasStatus.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_PurchasStatusMouseLeave(Sender: TObject);
begin
   lbl_PurchasStatus.Color:=clSkyBlue;
   shp_PurchasStatus.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.KeepLog(ProgID : String);
begin
  {
  with Query2 do
  begin
    sql.Clear;
    sql.Add('insert into proglog (MKID, FORMID, USERID, USERDATE)' ) ;
    sql.add('values ('+#39+'02'+#39+','+#39+ProgID+#39+','+#39+SUser+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
    execsql;
  end;
  }
end;

procedure TPurSampleFlowChart.lbl_PurchasStatusClick(Sender: TObject);
begin
if TraceListSample<>nil then
  begin
    TraceListSample.show;
    TraceListSample.windowstate:=wsmaximized;
  end
  else
    begin
      KeepLog('SN226');
      TraceListSample:=TTraceListSample.create(self);
      TraceListSample.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_PurchasingOrderMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_PurchasingOrder.Color:=clFuchsia;
   shp_PurchasingOrder.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_PurchasingOrderMouseLeave(Sender: TObject);
begin
   lbl_PurchasingOrder.Color:=clSkyBlue;
   shp_PurchasingOrder.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MCSClick(Sender: TObject);
begin
  if SampleMerge<>nil then
    begin
      SampleMerge.show;
      SampleMerge.windowstate:=wsmaximized;
    end
  else
    begin
      SampleMerge:=TSampleMerge.Create(self);
      SampleMerge.Show;
    end;
end;

procedure TPurSampleFlowChart.lbl_PurchasingOrderClick(Sender: TObject);
begin
  if PurSample<>nil then
  begin
    PurSample.show;
    PurSample.windowstate:=wsmaximized;
  end
  else
    begin
      PurSample:=TPurSample.create(self);
      PurSample.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_ETDClick(Sender: TObject);
begin
if TraceSample<>nil then
  begin
    TraceSample.show;
    TraceSample.windowstate:=wsmaximized;
  end
  else
    begin
      TraceSample:=TTraceSample.create(self);
      TraceSample.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_StockMouseLeave(Sender: TObject);
begin
   lbl_Stock.Color:=clSkyBlue;
   shp_Stock.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_StockMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Stock.Color:=clFuchsia;
   shp_Stock.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_SupplierMouseLeave(Sender: TObject);
begin
   lbl_Supplier.Color:=clSkyBlue;
   shp_Supplier.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MaterialMouseLeave(Sender: TObject);
begin
   lbl_Material.Color:=clSkyBlue;
   shp_ChangeList.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MaterialMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Material.Color:=clFuchsia;
   shp_ChangeList.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_SupplierClick(Sender: TObject);
begin
  if SupplierSample<>nil then
  begin
    SupplierSample.show;
    SupplierSample.windowstate:=wsmaximized;
  end
  else
    begin
      SupplierSample:=TSupplierSample.create(self);
      SupplierSample.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_SupplierMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Supplier.Color:=clFuchsia;
   shp_Supplier.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_MaterialLeadtimeMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   lbl_MOQ.Color:=clFuchsia;
   shp_MOQ.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_MaterialLeadtimeMouseLeave(
  Sender: TObject);
begin
   lbl_MOQ.Color:=clSkyBlue;
   shp_MOQ.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.Image3Click(Sender: TObject);
begin
  PageControl1.ActivePage:=TS2 ;
  Image8.Visible:=false;
  Image8.Top:=464;  
end;

procedure TPurSampleFlowChart.lbl_PurQtyTrackMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_PurQtyTrack.Color:=clFuchsia;
   shp_PurQtyTrack.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_PurQtyTrackMouseLeave(Sender: TObject);
begin
   lbl_PurQtyTrack.Color:=clSkyBlue;
   shp_PurQtyTrack.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ArticleMatMouseLeave(Sender: TObject);
begin
   lbl_ArticleMat.Color:=clSkyBlue;
   shp_ArticleMat.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ArticleMatMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_ArticleMat.Color:=clFuchsia;
   shp_ArticleMat.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_CoatsMouseLeave(Sender: TObject);
begin
   lbl_Coats.Color:=clSkyBlue;
   shp_Coats.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_CoatsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Coats.Color:=clFuchsia;
   shp_Coats.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_DevelopClick(Sender: TObject);
begin
  PageControl1.ActivePage:=TS1 ;
  Image7.Visible:=false;
  Image7.Left:=136;  
end;

procedure TPurSampleFlowChart.Image4Click(Sender: TObject);
begin
   PurSampleFlowChart.Close;
end;

procedure TPurSampleFlowChart.lbl_MatChangeMouseLeave(Sender: TObject);
begin
   lbl_MatChange.Color:=clSkyBlue;
   shp_MatChange.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_MatChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_MatChange.Color:=clFuchsia;
   shp_MatChange.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_PurColorMouseLeave(Sender: TObject);
begin
   lbl_PurColor.Color:=clSkyBlue;
   shp_PurColor.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_PurColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_PurColor.Color:=clFuchsia;
   shp_PurColor.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_FDStatusStockMouseLeave(Sender: TObject);
begin
   lbl_FDStatusStock.Color:=clSkyBlue;
   shp_FDStatusStock.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_FDStatusStockMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_FDStatusStock.Color:=clFuchsia;
   shp_FDStatusStock.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.Image4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Visible:=true;
  Image1.Top:=504;
end;

procedure TPurSampleFlowChart.TS2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Visible:=false;
  Image1.Top:=464;
end;

procedure TPurSampleFlowChart.TS1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Image8.Visible:=false;
  Image8.Top:=464;
end;

procedure TPurSampleFlowChart.Image6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//  Image7.Visible:=true;
  Image7.Left:=83;
end;

procedure TPurSampleFlowChart.shp_DevelopMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Image7.Visible:=false;
  Image7.Left:=123;
end;

procedure TPurSampleFlowChart.Image9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Image8.Visible:=true;
  Image8.Top:=504;
end;

procedure TPurSampleFlowChart.lbl_ForwarderMouseLeave(Sender: TObject);
begin
   lbl_Forwarder.Color:=clSkyBlue;
   shp_Forwarder.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ForwarderMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Forwarder.Color:=clFuchsia;
   shp_Forwarder.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_ConfirmPriceMouseLeave(Sender: TObject);
begin
   lbl_ConfirmPrice.Color:=clSkyBlue;
   shp_ConfirmPrice.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_PaymentMouseLeave(Sender: TObject);
begin
   lbl_Payment.Color:=clSkyBlue;
   shp_Payment.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_ConfirmPriceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_ConfirmPrice.Color:=clFuchsia;
   shp_ConfirmPrice.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_PaymentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Payment.Color:=clFuchsia;
   shp_Payment.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_BOMReceiveMouseLeave(Sender: TObject);
begin
   lbl_BOMReceive.Color:=clSkyBlue;
   shp_BOMReceive.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_BOMReceiveMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_BOMReceive.Color:=clFuchsia;
   shp_BOMReceive.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_BOMReceiveClick(Sender: TObject);
begin
  if BOMReceive<>nil then
    begin
      BOMReceive.show;
      BOMReceive.windowstate:=wsmaximized;
    end
  else
    begin
      BOMReceive:=TBOMReceive.Create(self);
      BOMReceive.Show;
    end;
end;

procedure TPurSampleFlowChart.lbl_TransportMouseLeave(Sender: TObject);
begin
   lbl_Transport.Color:=clSkyBlue;
   shp_Transport.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_TransportMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Transport.Color:=clFuchsia;
   shp_Transport.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_SaftyMouseLeave(Sender: TObject);
begin
   lbl_Safty.Color:=clSkyBlue;
   shp_Safty.Brush.Color:=clSkyBlue;
end;

procedure TPurSampleFlowChart.lbl_SaftyMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   lbl_Safty.Color:=clFuchsia;
   shp_Safty.Brush.Color:=clFuchsia;
end;

procedure TPurSampleFlowChart.lbl_MaterialQueryClick(Sender: TObject);
begin
  if PurSampleInvoice<> nil then
  begin
    PurSampleInvoice.show;
    PurSampleInvoice.windowstate:=wsmaximized;
  end
  else
    begin
      PurSampleInvoice:=TPurSampleInvoice.create(self);
      PurSampleInvoice.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_TransportClick(Sender: TObject);
begin
  if TransportCharge<> nil then
  begin
    TransportCharge.show;
    TransportCharge.windowstate:=wsmaximized;
  end
  else
    begin
      TransportCharge:=TTransportCharge.create(self);
      TransportCharge.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_ConfirmPriceClick(Sender: TObject);
begin
 if PurConfirmPrice<> nil then
  begin
    PurConfirmPrice.show;
    PurConfirmPrice.windowstate:=wsmaximized;
  end
  else
    begin
      PurConfirmPrice:=TPurConfirmPrice.create(self);
      PurConfirmPrice.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_PaymentClick(Sender: TObject);
begin
 
 if Payment<> nil then
  begin
    Payment.show;
    Payment.windowstate:=wsmaximized;
  end
  else
    begin
      Payment:=TPayment.create(self);
      Payment.show;
    end;

end;

procedure TPurSampleFlowChart.lbl_MOQClick(Sender: TObject);
begin
  if MaterialMOQ<>nil then
  begin
    MaterialMOQ.show;
    MaterialMOQ.windowstate:=wsmaximized;
  end
  else
    begin
      MaterialMOQ:=TMaterialMOQ.create(self);
      MaterialMOQ.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_ForwarderClick(Sender: TObject);
begin
  if ForwarderSample<>nil then
  begin
    ForwarderSample.show;
    ForwarderSample.windowstate:=wsmaximized;
  end
  else
    begin
      ForwarderSample:=TForwarderSample.create(self);
      ForwarderSample.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_MaterialClick(Sender: TObject);
begin
  if SupplierKPI<>nil then
  begin
    SupplierKPI.show;
    SupplierKPI.windowstate:=wsmaximized;
  end
  else
    begin
      SupplierKPI:=TSupplierKPI.create(self);
      SupplierKPI.show;
    end;
end;

procedure TPurSampleFlowChart.lbl_ShoeAnalysisClick(Sender: TObject);
begin
  if SamplePurchaseAnalysis<>nil then
  begin
      SamplePurchaseAnalysis.show;
      SamplePurchaseAnalysis.windowstate:=wsmaximized;
  end else
  begin
      SamplePurchaseAnalysis:=TSamplePurchaseAnalysis.Create(self);
      SamplePurchaseAnalysis.Show;
  end;
end;

end.
