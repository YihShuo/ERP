unit OrderPack_CartonPChoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TOrderPack_CartonPChoice = class(TForm)
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    RB4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPack_CartonPChoice: TOrderPack_CartonPChoice;

implementation
  uses OrderPack_CartonPrint1, OrderPack_CartonPrintS1, OrderPack_CartonPrintD1, OrderPack_CartonPrintH1,
  main1;
{$R *.dfm}

procedure TOrderPack_CartonPChoice.Button1Click(Sender: TObject);
begin
  if RB1.Checked=true then
  begin
    OrderPack_CartonPrint:=TOrderPack_CartonPrint.Create(self);
    OrderPack_CartonPrint.QRCompositeReport1.prepare;
    OrderPack_CartonPrint.QRCompositeReport1.Preview;
    OrderPack_CartonPrint.Free;
  end;
  if RB2.Checked=true then
  begin
    OrderPack_CartonPrintS:=TOrderPack_CartonPrintS.Create(self);
    OrderPack_CartonPrintS.QRCompositeReport1.prepare;
    OrderPack_CartonPrintS.QRCompositeReport1.Preview;
    OrderPack_CartonPrintS.Free;
  end;
  if RB3.Checked=true then
  begin
    OrderPack_CartonPrintD:=TOrderPack_CartonPrintD.Create(self);
    OrderPack_CartonPrintD.QRCompositeReport1.prepare;
    OrderPack_CartonPrintD.QRCompositeReport1.Preview;
    OrderPack_CartonPrintD.Free;
  end;
  if RB4.Checked=true then
  begin
    OrderPack_CartonPrintH:=TOrderPack_CartonPrintH.Create(self);
    OrderPack_CartonPrintH.QRCompositeReport1.prepare;
    OrderPack_CartonPrintH.QRCompositeReport1.Preview;
    OrderPack_CartonPrintH.Free;
  end;
  //OrderPack_CartonPChoice.Close;
end;

procedure TOrderPack_CartonPChoice.Button2Click(Sender: TObject);
begin
    OrderPack_CartonPChoice.Close;
end;

procedure TOrderPack_CartonPChoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TOrderPack_CartonPChoice.FormDestroy(Sender: TObject);
begin
  OrderPack_CartonPChoice:=nil;
end;

procedure TOrderPack_CartonPChoice.FormShow(Sender: TObject);
begin
   main.FormLanguage(Pointer(self),self.Name);
end;

end.
