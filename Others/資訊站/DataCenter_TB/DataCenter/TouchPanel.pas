unit TouchPanel;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, Messages, Windows, D7GesturesHeader;

type
  TTouchEvent = procedure(Sender: TObject; X, Y: Integer) of object;
  TTouchPanel = class(TCustomPanel)
  private
    FOnTouch: TTouchEvent;
    { Private declarations }
  protected
    procedure WMTouch(var Msg: TMessage); message WM_TOUCH;
    { Protected declarations }
  public
    property DockManager;
    { Public declarations }
  published
    property Align;
    property Alignment;
    property Anchors;
    property AutoSize;
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BiDiMode;
    property BorderWidth;
    property BorderStyle;
    property Caption;
    property Color;
    property Constraints;
    property Ctl3D;
    property UseDockManager default True;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FullRepaint;
    property Font;
    property Locked;
    property ParentBiDiMode;
    property ParentBackground;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnCanResize;
    property OnClick;
    property OnConstrainedResize;
    property OnContextPopup;
    property OnDockDrop;
    property OnDockOver;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetSiteInfo;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
    property OnStartDock;
    property OnStartDrag;
    property OnUnDock;
    property OnTouch: TTouchEvent read FOnTouch write FOnTouch;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TTouchPanel]);
end;

procedure TTouchPanel.WMTouch(var Msg: TMessage);
  function TouchPointToPoint(const TouchPoint: TTouchInput): TPoint;
  begin
    Result := Point(TouchPoint.X div 100, TouchPoint.Y div 100);
    PhysicalToLogicalPointFn(Handle, Result);
    Result := ScreenToClient(Result);
  end;
var
  TouchInputs: array of TTouchInput;
  TouchPoint: TPoint;
begin
  SetLength(TouchInputs, Msg.WParam);
  GetTouchInputInfoFn(Msg.LParam, Msg.WParam, @TouchInputs[0], SizeOf(TTouchInput));
  TouchPoint := TouchPointToPoint(TouchInputs[0]);

  if Assigned(FOnTouch) then FOnTouch(Self, TouchPoint.X, TouchPoint.Y);
  CloseTouchInputHandleFn(Msg.LParam);
end;

end.
