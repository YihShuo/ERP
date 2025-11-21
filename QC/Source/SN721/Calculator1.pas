unit Calculator1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TCalculator = class(TForm)
    edt1: TEdit;
    btnC: TButton;
    btnAdd: TButton;
    btnMultiply: TButton;
    btnDivide: TButton;
    btnEn: TButton;
    btnSubtract: TButton;
    btnEqual: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEnClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculator: TCalculator;
  num : Double;
  cal:integer;

implementation

uses MatQcCheck1;

{$R *.dfm}

procedure TCalculator.FormDestroy(Sender: TObject);
begin
    Calculator:=nil;
end;

procedure TCalculator.btnCClick(Sender: TObject);
begin
    edt1.Clear;
    edt1.SetFocus;
    num:=0;
end;

procedure TCalculator.btnAddClick(Sender: TObject);
begin
   try
    num:=strtofloat(edt1.Text);
    cal:=1;
    edt1.Clear;
    edt1.SetFocus;
   except
      showmessage('You must input number.');
      edt1.SetFocus;
      abort;
   end;
end;

procedure TCalculator.btnEnClick(Sender: TObject);
begin
    if MatQcCheck.qry_Qc.RequestLive then
    begin
        MatQcCheck.qry_Qc.fieldbyName('Qty').value:= strtofloat(edt1.Text);
        close;
    end;
end;

procedure TCalculator.btnEqualClick(Sender: TObject);
begin
   try
    if edt1.Text <> '' then
    begin
        case cal of
            1  :  num:=num + strtofloat(edt1.Text);
            2  :  num:=num - strtofloat(edt1.Text);
            3  :  num:=num * strtofloat(edt1.Text);
            4  :
            begin
              if strtofloat(edt1.Text) <> 0 then
                  num:=num / strtofloat(edt1.Text)
              else abort;
            end;
        end;
    end;
   except
      showmessage('Error,You must input number or number must <> 0.');
      edt1.SetFocus;
      abort;
   end;
   edt1.Text:=floattostr(num);

end;

procedure TCalculator.btnSubtractClick(Sender: TObject);
begin
  try
    num:=strtofloat(edt1.Text);
    cal:=2;
    edt1.Clear;
    edt1.SetFocus;
  except
      showmessage('You must input number.');
      edt1.SetFocus;
      abort;
   end;
end;

procedure TCalculator.btnMultiplyClick(Sender: TObject);
begin
  try
    num:=strtofloat(edt1.Text);
    cal:=3;
    edt1.Clear;
    edt1.SetFocus;
  except
     showmessage('You must input number.');
     edt1.SetFocus;
     abort;
  end;
end;

procedure TCalculator.btnDivideClick(Sender: TObject);
begin
  try
    num:=strtofloat(edt1.Text);
    cal:=4;
    edt1.Clear;
    edt1.SetFocus;
  except
    showmessage('You must input number.');
    edt1.SetFocus;
    abort;
  end;
end;

procedure TCalculator.edt1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       btnEnClick(nil);
end;

end.
