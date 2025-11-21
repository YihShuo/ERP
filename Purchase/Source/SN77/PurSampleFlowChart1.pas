unit PurSampleFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh, ComCtrls, jpeg, Menus;

type
  TPurSampleFlowChart = class(TForm)
    Button1: TButton;
    PageControl1: TPageControl;
    TS1: TTabSheet;
    SN734_Back: TShape;
    SN734_Link: TLabel;
    SN751_Back: TShape;
    SN751_Link: TLabel;
    SN74_Back: TShape;
    SN74_Link: TLabel;
    lbl_Develop: TLabel;
    SN733_Back: TShape;
    SN733_Link: TLabel;
    shp26: TShape;
    lbl30: TLabel;
    SN72_Back: TShape;
    SN72_Link: TLabel;
    SN731_Back: TShape;
    SN731_Link: TLabel;
    Shape6: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape9: TShape;
    Shape10: TShape;
    SN762_Back: TShape;
    SN762_Link: TLabel;
    SN764_Back: TShape;
    SN763_Back: TShape;
    SN763_Link: TLabel;
    Shape15: TShape;
    SN712_Back: TShape;
    SN712_Link: TLabel;
    SN713_Back: TShape;
    SN713_Link: TLabel;
    Label5: TLabel;
    SN764_Link: TLabel;
    shp_PurQtyTrack: TShape;
    lbl_PurQtyTrack: TLabel;
    shp_Coats: TShape;
    lbl_Coats: TLabel;
    SN711_Back: TShape;
    SN711_Link: TLabel;
    shp_Develop: TShape;
    Shp_FDStatusStock: TShape;
    lbl_FDStatusStock: TLabel;
    SN761_Back: TShape;
    SN761_Link: TLabel;
    SN77_Back: TShape;
    SN77_Link: TLabel;
    Shp_PurColor: TShape;
    lbl_PurColor: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape13: TShape;
    Shape16: TShape;
    Shape14: TShape;
    Shape1: TShape;
    SN753_Back: TShape;
    SN753_Link: TLabel;
    SN754_Back: TShape;
    SN754_Link: TLabel;
    Shape23: TShape;
    Shape5: TShape;
    Label7: TLabel;
    SN752_Back: TShape;
    SN752_Link: TLabel;
    Shape12: TShape;
    SN732_Link: TLabel;
    SN732_Back: TShape;
    Shape11: TShape;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SN713_LinkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    procedure Authority();
    { Private declarations }
  public
    willClose:boolean;
    { Public declarations }
    procedure LinkMouseLeave(Sender: TObject);
    procedure LinkMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure LinkClick(Sender: TObject);    
  end;

var
  PurSampleFlowChart: TPurSampleFlowChart;
  NDate:TDate;

implementation

uses main1;
{$R *.dfm}

procedure TPurSampleFlowChart.FormDestroy(Sender: TObject);
begin
  PurSampleFlowChart := nil;
end;

procedure TPurSampleFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if willClose=false then
    Action:=caNone
  else
    Action:=caFree;

end;

procedure TPurSampleFlowChart.SN713_LinkClick(Sender: TObject);
begin

end;
//Åv­­º]©w MainMenu
procedure TPurSampleFlowChart.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;
procedure TPurSampleFlowChart.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;
procedure TPurSampleFlowChart.LinkMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var NameStr:string;
    tmpShape:TShape;
begin
  TLabel(Sender).Color:=clFuchsia;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clFuchsia;
end;


procedure TPurSampleFlowChart.Authority();
var i,j:integer;
    MenuName:String;
    tmpLabel:TLabel;
    tmpShape:TShape;
begin
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        if TMenuItem(main.Components[i]).Enabled=true then
        begin
           tmpLabel:=TLabel(FindComponent(MenuName+'_Link'));
           if tmpLabel<>nil then
           begin
             tmpLabel.Enabled:=true;
             tmpLabel.OnMouseMove:=LinkMouseMove;
             tmpLabel.OnMouseLeave:=LinkMouseLeave;
             tmpLabel.OnClick:=LinkClick;
           end;
        end;
     end;
   end;
   //
end;

procedure TPurSampleFlowChart.FormShow(Sender: TObject);
begin
  Authority();
end;

end.
