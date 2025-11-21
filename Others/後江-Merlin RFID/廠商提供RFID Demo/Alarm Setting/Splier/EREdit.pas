{
  Write by TieXiong Luo
  Date:2005.3.9
  EMail:robin_lo@163.com
  History:Add MaxValue,MinValue in 2005.10.24
}

unit EREdit;

interface

uses
    Windows,StdCtrls, Classes, SysUtils,Dialogs, Controls;

type
  TInputStyle = (IsHex, IsBinary, IsInteger, IsIntWord, IsFloat, IsAll);
  TAlign = (taLeft, taCentre, taRight);

type
  TEREdit = class(TEdit)
  private
    FDecimals : Integer;
    FIntegrals : Integer;
    FMaxValue : Extended;
    FMinValue : Extended;
    FInputStyle : TInputStyle;
    FAlignment : TAlign;
    procedure SetDecimals(Value: integer);
    procedure SetIntegrals(Value: integer);
    function GetTextAsFloat : Extended;
    procedure SetTextAsFloat(Value: Extended );
    function GetTextAsInteger : Integer;
    procedure SetTextAsInteger(Value: Integer );
    procedure SetInputStyle(Value: TInputStyle);
    procedure SetAlignment(Value: TAlign);
    procedure CheckInteger;
    function CheckValue (NewValue: Extended): Extended;
    procedure CMExit(var Message: TCMExit);   message CM_EXIT;
    //procedure Change; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
  published
    property Integrals : integer read FIntegrals write SetIntegrals;
    property Decimals : integer read FDecimals write SetDecimals;
    property AsFloat : Extended read GetTextAsFloat write SetTextAsFloat;
    property AsInteger : Integer read GetTextAsInteger write SetTextAsInteger;
    property MaxValue : Extended read FMaxValue write FMaxValue;
    property MinValue : Extended read FMinValue write FMinValue;
    property InputStyle : TInputStyle read FInputStyle write SetInputStyle;
    property Align : TAlign read FAlignment write SetAlignment;
    property OnChange;
    property Font;
    property Text;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TEREdit]);
end;

constructor TEREdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Decimals := 1;
  Integrals := 3;
  InputStyle := IsAll;
  Align := taLeft;
  Text := '';
end;

procedure TEREdit.SetInputStyle(Value: TInputStyle);
begin
  FInputStyle := Value;
  case Value of
    IsInteger:Text := '0';
    IsFloat:Text := '0';
    IsAll:Text := '';
  end;
  if (Value = IsInteger) or (Value = IsFloat) then
    Align := taRight;
end;

procedure TEREdit.SetAlignment(Value: TAlign);
var
  Style: DWORD;// ES_LEFT  ES_RIGHT  ES_CENTER;
begin
  if HasParent then begin
    FAlignment := Value;
    Style := GetWindowLong(Handle, GWL_STYLE);
    if Ord(Value) and Style = Ord(Value) then Exit;
    Style := Style + Ord(Value);
    SetWindowLong(Handle, GWL_STYLE, Style);
    Invalidate;
  end;
end;

procedure TEREdit.SetIntegrals(Value: integer);
begin
  if Value > 0 then FIntegrals := Value
  else Fintegrals := 1;
end;

procedure TEREdit.SetDecimals(Value: integer);
begin
  if Value > 0 then FDecimals := Value;
end;

function TEREdit.GetTextAsFloat;
begin
  try
    if Text='' then
      Result := 0
    else
      Result := StrToFloat(Text);
  except
    Result := 0;
  end;
end;

procedure TEREdit.SetTextAsInteger( Value: Integer );
begin
  try
    Text := IntToStr(Value);
  except
    Text := '0';
  end;
  //if (InputStyle=IsIntWord)and(Value=0) then
  //  Text:='';
end;

function TEREdit.GetTextAsInteger;
begin
  try
    if Text='' then
      Result := 0
    else
      Result := StrToIntDef(Text,0);
  except
    Result := 0;
  end;
end;

procedure TEREdit.SetTextAsFloat( Value: Extended );
begin
  Text := FloatToStr(Value);
  //if (InputStyle=IsIntWord)and(Value=0) then
  //  Text:='';
end;
{
procedure TEREdit.Change;
begin
  inherited Changed;
  //防止按删除键删除小数点时，整数大于设定值  ?不知为何不能捕获删除键的键值
  if (FInputStyle=IsFloat)and(Pos('.',Text)=0) then
    if Length(Text)>FIntegrals then
      Text:=Copy(Text,1,FIntegrals);
end;
}
procedure TEREdit.CMExit(var Message: TCMExit);
var
  Value: Extended;
begin
  inherited;
   if (FInputStyle = IsInteger) or (FInputStyle = IsFloat) then
   begin
     Value := StrToFloatDef(Text, 0);
     if CheckValue (Value) <> Value then
       Text := FloatToStr(CheckValue (Value));
   end;

end;

procedure TEREdit.CheckInteger;
begin
  //防止按删除键删除小数点时，整数大于设定值  ?不知为何不能捕获删除键的键值
  if (FInputStyle=IsFloat)and(Pos('.',Text)=0) then
    if Length(Text)>FIntegrals then
      Text:=Copy(Text,1,FIntegrals);
end;

function TEREdit.CheckValue (NewValue: Extended): Extended;
begin
  Result := NewValue;
  if (FMaxValue <> FMinValue) then
  begin
    if NewValue < FMinValue then
      Result := FMinValue
    else if NewValue > FMaxValue then
      Result := FMaxValue;
  end;
end;

procedure TEREdit.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited KeyUp(Key,Shift);
  CheckInteger;
end;

procedure TEREdit.KeyPress(var Key: Char);
var S : String;
    CursorPos : Integer;//光标位置
    OldKey : Char;
begin
   inherited KeyPress(Key);
   OldKey := Key;
   CursorPos := SelStart;
   S := Text;
   if Length(SelText) > 0 then begin //如果文本处于选中状态
     case FInputStyle of
       IsInteger,IsFloat:
         if not (Key in [#48..#57 , #8 , #37 , #39 , #127]) then
            Key:=#0;
       IsHex:
         if not (Key in [#48..#57 , #65..#70 , #97..#102 , #8 , #37 , #39 , #127]) then
            Key:=#0;
       IsBinary:
         if not (Key in [#48 , #49 , #8 , #37 , #39 , #127]) then
            Key:=#0;
     end;//case
   end else
     case FInputStyle of
       IsHex:
         if not (Key in [#48..#57 , #65..#70 , #97..#102 , #8 , #37 , #39 , #127]) then
            Key:=#0;
       IsBinary:
         if not (Key in [#48 , #49 , #8 , #37 , #39 , #127]) then
            Key:=#0;
       IsInteger:
         if not (Key in [#48..#57 , #8 , #37 , #39 , #127]) then
            Key:=#0;
       IsFloat:
         begin
           case Key of
             #8: Key := Key;          //退格键
             #46: begin
                   if Pos('.' , S) > 0 then begin
                     Key := #0;
                     Exit;
                   end else
                    Key := Key;       //只允许输入一次.
                  end;
             #37: Key := Key;         //左移
             #39: Key := Key;         //右移
             #48: Key := Key;         //0
             #49: Key := Key;         //1
             #50: Key := Key;         //2
             #51: Key := Key;         //3
             #52: Key := Key;         //4
             #53: Key := Key;         //5
             #54: Key := Key;         //6
             #55: Key := Key;         //7
             #56: Key := Key;         //8
             #57: Key := Key;         //9
             #127: Key := Key;        //删除键
             else
                  Key := #0;
           end;
           //控制整数长度
           if ((Length(Copy(S, 1 , Pos('.',S)-2)) > FIntegrals - 2)// 整数长度
              and (CursorPos < Pos('.' , S)))//有小数位
              or ((Length(S) > FIntegrals-1) and (Pos('.' , S) = 0)) then //没有小数位时
              if not (Key in [#8,#37,#39,#127]) then
                Key := #0;
           //控制小数长度
           if Pos('.' , S) > 0 then begin
             if CursorPos >= Pos('.' , S) then begin //当光标在小数位置时
               if Length(Copy(S , Pos('.' , S) + 1 , Length(S) - Pos('.' , S))) > FDecimals - 1 then
                 if not (Key in [#8,#37,#39,#127]) then
                   Key:=#0;
             end else if CursorPos < Pos('.' , S) then //当光标在整数位置时
               if Length(Copy(S , 1 , Pos('.' , S) - 1)) > FIntegrals - 1 then
                 if not (Key in [#8,#37,#39,#127]) then
                   Key := #0;
           end;
          //当全部为整数时，处理中间插入小数
          if Pos('.' , S) = 0 then
            if (CursorPos = Length(S) - FDecimals) and //判断小数点插入位置是否在最后一个字符前
               (Length(Copy(S , 1 , Length(S) - FDecimals)) < FIntegrals) and
               (OldKey = #46) then
               Key := #46
            else
            if (CursorPos = Length(S)) and (OldKey = #46) then
               Key := #46;//在整数后面插小数点
         end;//IsFloat begin
     end;//case
end;

end.
