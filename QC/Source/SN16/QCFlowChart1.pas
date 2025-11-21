unit QCFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TQCFlowChart = class(TForm)
    mainPanel: TPanel;
    shp6: TShape;
    SN56_Back: TShape;
    SN51_Back: TShape;
    SN5B_Back: TShape;
    SN5B_Link: TLabel;
    Shape8: TShape;
    SN51_Link: TLabel;
    SN56_Link: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    SN721_Link: TLabel;
    SN721_Back: TShape;
    SN722_Link: TLabel;
    SN722_Back: TShape;
    SN723_Link: TLabel;
    SN723_Back: TShape;
    SN724_Link: TLabel;
    SN724_Back: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Label2: TLabel;
    SN5F_Back: TShape;
    SN5F_Link: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Authority();
  public
    willClose:boolean;
    { Public declarations }
    procedure LinkMouseLeave(Sender: TObject);
    procedure LinkMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure LinkClick(Sender: TObject);
  end;

var
  QCFlowChart: TQCFlowChart;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TQCFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if willClose=false then
    Action:=caNone
  else
    Action:=caFree;
end;

procedure TQCFlowChart.FormDestroy(Sender: TObject);
begin
  QCFlowChart:=nil;
end;
procedure TQCFlowChart.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;
procedure TQCFlowChart.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;
procedure TQCFlowChart.LinkMouseMove(Sender: TObject;
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

procedure TQCFlowChart.FormCreate(Sender: TObject);
begin
  willClose:=false;
end;
//ลvญญ
procedure TQCFlowChart.Authority();
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

procedure TQCFlowChart.FormShow(Sender: TObject);
begin
  Authority();
  main.FormLanguage(Pointer(self),self.Name);  
end;

end.
