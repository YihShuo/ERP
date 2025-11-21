{

  Copyright (c) 1997-2003 by CoolDev.Com. Part of CoolControls package.
  Modified 2005.3.7 by TieXiong Luo

}

unit ERSplitter;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Graphics, Forms;

type
  NaturalNumber=1..High(Integer);
  PositionAfterOpen=2..High(Integer);
  TWinControlAccess = class(TWinControl);
  // Type defines possible values for the splitter style.
  //
  // <TABLE>
  // Value              Meaning
  // ----------         -------------
  // rsUpdate           The control against which the splitter is aligned is resized based on the current mouse position, and the splitter is moved to that position.
  // rsPattern          A pattern is drawn indicating the new position of the splitter that would result if the user released the mouse at the current position. The splitter does not actually move and no controls are resized. This is the default value for ResizeStyle.
  // </TABLE> 
  TSplitterResizeStyle=(rsUpdate, rsPattern);
  // Type defines possible values for the splitter align.
  // 
  // <TABLE> 
  // Value              Meaning
  // ----------         -------------
  // salBottom          The splitter will function against the top side of the control,
  // salLeft            The splitter will function against the right side of the control, 
  // salRight           The splitter will function against the left side of the control,
  // salTop             The splitter will function against the bottom side of the control,
  TSplitterAlign=(salBottom,salLeft,salRight,salTop);
  // Type defines possible values for the splitter mouse state.
  // 
  // <TABLE> 
  // Value              Meaning
  // ----------         -------------
  // sstNormal          The mouse is moved over the splitter.
  // sstResizing        The mouse when splitter is being dragged.
  // sstSpotClick       The mouse when splitter  is being clicked on.
  TSplitterMouseState=(sstNormal,sstResizing,sstSpotClick);
  // Type defines possible values for splitter state.
  // 
  // <TABLE> 
  // Value              Meaning
  // ----------         -------------
  // ssOpen             Splitter is open.
  // ssClosed           Splitter is closed.
  TSplitterState=(ssOpen,ssClosed);
  // Type defines possible values for cursor position.
  // 
  // <TABLE> 
  // Value              Meaning
  // ----------         -------------
  // cpUnknown
  // cpInsideSpotRect
  // cpOutSideSpotRect
  TCursorPosition=(cpUnknown,cpInsideSpotRect,cpOutSideSpotRect);
  // Event fired when useris about to resize the control the splitter is attached to and controls the possibility.
  TCanResizeEvent=procedure(Sender: TObject;var NewSize: Integer;var Accept: Boolean) of object;
  // Event fired before the splitter is open and controls the allowance of the process.
  TBeforeOpenSpotEvent=procedure(Sender: TObject;var AllowOpen: Boolean) of object;
  // Event fired before the splitter is closed and controls the allowance of the process.
  TBeforeCloseSpotEvent=procedure(Sender: TObject;var AllowClose: Boolean) of object;

type
  // TCoolSpotSplitter is an advanced splitter class. In comparision with the standard one
  // it behaves correctly and neer gets lockednor disappears from the screen yet allows some more
  // detailed control of the splitting process.
  TERSplitter = class(TGraphicControl)
  private
    { Private declarations }
    {Variables from properties}
    //FAboutBox: TCCAboutBox;
    FAlignSplitter : TSplitterAlign;
    FAutoPosition : Boolean;
    FPositionAfterOpen : PositionAfterOpen;
    FSpotSizePercent : NaturalNumber;
    FSpotVisible : Boolean;
    FSpotHighlightColor : TColor;
    FAutoSnap: Boolean;
    FMinSize: NaturalNumber;
    FResizeStyle: TSplitterResizeStyle;
    FOnCanResize: TCanResizeEvent;
    FOnMoved: TNotifyEvent;
    FOnBeforeOpen: TBeforeOpenSpotEvent;
    FOnAfterOpen: TNotifyEvent;
    FOnBeforeClose: TBeforeCloseSpotEvent;
    FOnAfterClose: TNotifyEvent;
    {Local variables}
    FActiveControl: TWinControl;
    FState : TSplitterState;
    FPressed : Boolean;
    FSpotRect: TRect;
    FPositionBeforeClose : Integer;
    FSplitterState : TSplitterMouseState;
    FCursorPosition : TCursorPosition;
    FBrush: TBrush;
    FControl: TControl;
    FDownPos: TPoint;
    FLineDC: HDC;
    FLineVisible: Boolean;
    FMaxSize: Word;
    FNewSize: Integer;
    FOldSize: Integer;
    FOldKeyDown: TKeyEvent;
    FPrevBrush: HBrush;
    FSplit: Integer;
    procedure UpdateSpotRect;
    procedure AllocateLineDC;
    procedure CalcSplitSize(X, Y: Integer; var NewSize, Split: Integer);
    procedure DrawLine;
    function  DrawBounds(Canvas: TCanvas; Bounds: TRect;const AUpperLeftColor,ALowerRightColor: TColor): TRect;
    procedure DrawSpot(const AHighlight,APressed: Boolean);
    function  FindControl: TControl;
    procedure FocusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ReleaseLineDC;
    procedure UpdateControlSize;
    procedure UpdateSize(X, Y: Integer);
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure SetAlign(Value : TSplitterAlign);
    procedure SetState(Value : TSplitterState);
    procedure SetSpotSizePercent(Value : NaturalNumber);
    procedure SetSpotVisible(Value : Boolean);
    procedure RecalcLastPosition;
  protected
    { Protected declarations }
    function  CanResize(var NewSize: Integer): Boolean; {$IFDEF DELPHI4_OR_ABOVE}reintroduce; {$ENDIF} virtual;
    function  DoCanResize(var NewSize: Integer): Boolean; virtual;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;X, Y: Integer); override;
    procedure Paint; override;
    procedure StopSizing; dynamic;
    property  Canvas;
    procedure Notification(ACOmponent: TComponent; Operation: TOperation); override;
    procedure Loaded; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure OpenSplitter;
    procedure CloseSplitter;
    property  State : TSplitterState read FState write SetState;
    function  IsCursorInSpot(const X,Y : Integer):Boolean;
    function  IsCursorInSplitter(const X,Y : Integer):Boolean;
  published
    { Published declarations }
    {Spot custom routines}
    // Displays information about the control and package version.
    //property About: TCCAboutBox read FAboutBox write FAboutBox;
    // The possible values for the splitter align.
    // 
    // <TABLE> 
    // Value              Meaning
    // ----------         -------------
    // salBottom          The splitter will function against the top side of the control,
    // salLeft            The splitter will function against the right side of the control, 
    // salRight           The splitter will function against the left side of the control,
    // salTop             The splitter will function against the bottom side of the control,
    property AlignSplitter : TSplitterAlign read FAlignSplitter write SetAlign default salLeft;
    // The property enables auto positioning for the splitter.
    property AutoPosition : Boolean read FAutoPosition write FAutoPosition;
    // Position of the splitter after it is open.
    property PositionAfterOpen : PositionAfterOpen read FPositionAfterOpen write FPositionAfterOpen;
    // Size in percents of the spot relatively to the splitter size.
    property SpotSizePercent : NaturalNumber read FSpotSizePercent write SetSpotSizePercent;
    // Wether the spot is visible or hidden.
    property SpotVisible : Boolean read FSpotVisible write SetSpotVisible default True;
    // Color of the spot when it is selected.
    property SpotHighlightColor : TColor read FSpotHighlightColor write FSpotHighlightColor default clBtnHighlight;
    {Standart split routines}
    // Whether the control snaps to the nearest grid point after the splitting.
    property AutoSnap: Boolean read FAutoSnap write FAutoSnap default True;
    // Smallest size of the splitter.
    property MinSize: NaturalNumber read FMinSize write FMinSize default 30;
    // Possible values for the splitter style.
    // 
    // <TABLE> 
    // Value              Meaning
    // ----------         -------------
    // rsUpdate           The control against which the splitter is aligned is resized based on the current mouse position, and the splitter is moved to that position.
    // rsPattern          A pattern is drawn indicating the new position of the splitter that would result if the user released the mouse at the current position. The splitter does not actually move and no controls are resized. This is the default value for ResizeStyle.
    // </TABLE> 
    property ResizeStyle: TSplitterResizeStyle read FResizeStyle write FResizeStyle default rsPattern;
    // Control the splitter is assigned to.
    property Control : TControl read FControl write FControl;
    property Color;
    property ParentColor;
    property Visible;
    // Event fired when useris about to resize the control the splitter is attached to and controls the possibility.
    property OnCanResize: TCanResizeEvent read FOnCanResize write FOnCanResize;
    property OnMoved: TNotifyEvent read FOnMoved write FOnMoved;
    // Event fired before the splitter is open and controls the allowance of the process.
    property OnBeforeOpen: TBeforeOpenSpotEvent read FOnBeforeOpen write FOnBeforeOpen;
    // Event fired after the splitter is open and controls the allowance of the process.
    property OnAfterOpen: TNotifyEvent read FOnAfterOpen write FOnAfterOpen;
    // Event fired before the splitter is closed and controls the allowance of the process.
    property OnBeforeClose: TBeforeCloseSpotEvent read FOnBeforeClose write FOnBeforeClose;
    // Event fired after the splitter is closed and controls the allowance of the process.
    property OnAfterClose: TNotifyEvent read FOnAfterClose write FOnAfterClose;
  end;

procedure Register;

implementation

constructor TERSplitter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSpotSizePercent:=50;
  FState:=ssOpen;
  FSpotVisible:=True;
  FResizeStyle:=rsPattern;
  FCursorPosition:=cpUnknown;
  FSpotHighlightColor:=clBtnHighlight;
  FSplitterState:=sstNormal;
  Align:=alNone;
  SetAlign(salLeft);
  FAutoSnap:=True;
  FAutoPosition:=True;
  FMinSize:=30;
  FPositionAfterOpen:=30;
  FOldSize:=30;
  FNewSize:=30;
  FPositionBeforeClose:=FMinSize;
end;

destructor TERSplitter .Destroy;
begin
  FControl:=nil;
  if FBrush<>nil then begin
    FBrush.Free;
    FBrush:=nil;
  end;
  inherited Destroy;
end;

procedure TERSplitter.Loaded;
begin
  inherited Loaded;
  if (csDesigning in ComponentState) then begin
    if FControl=nil then FControl:=FindControl;
  end;
end;

procedure TERSplitter.Notification(AComponent: TComponent;Operation: Toperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation=opRemove) and (FControl<>nil) and (AComponent=FControl) then FControl:=nil;
end;

procedure TERSplitter.AllocateLineDC;
begin
  FLineDC:=GetDCEx(Parent.Handle, 0, DCX_CACHE or DCX_CLIPSIBLINGS or DCX_LOCKWINDOWUPDATE);
  if ResizeStyle=rsPattern then begin
    if FBrush=nil then begin
      FBrush:=TBrush.Create;
      {$IFDEF DELPHI4_OR_ABOVE}
      FBrush.Bitmap:=AllocPatternBitmap(clBlack, clWhite);
      {$ENDIF}
    end;
    FPrevBrush:=SelectObject(FLineDC, FBrush.Handle);
  end;
end;

procedure TERSplitter.UpdateSpotRect;
var
  MiddlePos, S: Integer;
  FRect : TRect;
begin
  FRect:=ClientRect;
  if (Align in [alTop,alBottom]) then begin
    MiddlePos:=FRect.Left+(FRect.Right-FRect.Left) div 2;
    S:=Round(FSpotSizePercent/100*(FRect.Right-FRect.Left)) div 2;
    FSpotRect:=Rect(MiddlePos-S,FRect.Top,MiddlePos+S,FRect.Bottom);
   end else begin
    MiddlePos:=FRect.Top+(FRect.Bottom-FRect.Top) div 2;
    S:=Round(FSpotSizePercent/100*(FRect.Bottom-FRect.Top)) div 2;
    FSpotRect:=Rect(FRect.Left,MiddlePos-S,FRect.Right,MiddlePos+S);
  end;
end;

procedure TERSplitter.DrawLine;
var
  FPoint : TPoint;
begin
  FLineVisible:=not FLineVisible;
  FPoint:=Point(Left,Top);
  if Align in [alLeft,alRight] then FPoint.X:=Left+FSplit else FPoint.Y:=Top+FSplit;
  PatBlt(FLineDC, FPoint.X, FPoint.Y, Width, Height, PATINVERT);
end;

function TERSplitter.DrawBounds(Canvas: TCanvas; Bounds: TRect;const AUpperLeftColor,ALowerRightColor : TColor): TRect;
begin
  Canvas.Pen.Color:=AUpperLeftColor;
  Canvas.MoveTo(Bounds.Left,Bounds.Top);
  Canvas.LineTo(Bounds.Left,Bounds.Bottom);
  Canvas.MoveTo(Bounds.Left,Bounds.Top);
  Canvas.LineTo(Bounds.Right,Bounds.Top);
  Canvas.Pen.Color:=ALowerRightColor;
  Canvas.MoveTo(Bounds.Right-1,Bounds.Top);
  Canvas.LineTo(Bounds.Right-1,Bounds.Bottom);
  Canvas.MoveTo(Bounds.Left,Bounds.Bottom-1);
  Canvas.LineTo(Bounds.Right,Bounds.Bottom-1);
  Inc(Bounds.Left);
  Inc(Bounds.Top);
  Dec(Bounds.Right);
  Dec(Bounds.Bottom);
  Result:=Bounds;
end;

procedure TERSplitter.DrawSpot(const AHighlight,APressed:Boolean);
var
  FRect : TRect;
  MiddlePos, I_count : Integer;
begin
  if FSpotVisible=False then Exit;
  UpdateSpotRect;
  with Canvas, FSpotRect do begin
    FRect:=DrawBounds(Canvas, FSpotRect, clBtnShadow, clBtnShadow);
    if AHighlight=True then Brush.Color:=FSpotHighlightColor
     else Brush.Color:=Color;
    FillRect(FRect);
    if APressed=False then DrawBounds(Canvas,FRect,clBtnHighlight,clBtnFace)
      else DrawBounds(Canvas,FRect,clBtnFace,clBtnHighlight);

    Pen.Color:=clHighlight;
    Brush.Color:=clHighlight;
    if (Align in [alTop,alBottom]) then begin
      MiddlePos:=Top+(Bottom-Top) div 2;
      if ((FState=ssOpen) and (Align=alTop)) or
         ((FState=ssClosed) and (Align=alBottom)) then begin
        Polygon([Point(Left+6,MiddlePos+1),Point(Left+8,MiddlePos-1),Point(Left+10,MiddlePos+1)]);
        Polygon([Point(Right-6,MiddlePos+1),Point(Right-8,MiddlePos-1),Point(Right-10,MiddlePos+1)]);
      end else begin
        Polygon([Point(Left+6,MiddlePos-1),Point(Left+8,MiddlePos+1),Point(Left+10,MiddlePos-1)]);
        Polygon([Point(Right-6,MiddlePos-1),Point(Right-8,MiddlePos+1),Point(Right-10,MiddlePos-1)]);
      end;
      for I_count:=0 to ((Right-Left-32) div 3) do begin
        if APressed=False then begin
          Pixels[Left+15+I_count*3,MiddlePos]:=clHighlightText;
          Pixels[Left+16+I_count*3,MiddlePos+1]:=clHighlight;
        end else begin
          Pixels[Left+15+I_count*3,MiddlePos]:=clHighlight;
          Pixels[Left+16+I_count*3,MiddlePos+1]:=clHighlightText;
        end;
      end;
    end else begin
      MiddlePos:=Left+(Right-Left) div 2;
      if ((FState=ssOpen) and (Align=alLeft)) or
         ((FState=ssClosed) and (Align=alRight)) then begin
        Polygon([Point(MiddlePos+1,Top+6),Point(MiddlePos-1,Top+8),Point(MiddlePos+1,Top+10)]);
        Polygon([Point(MiddlePos+1,Bottom-6),Point(MiddlePos-1,Bottom-8),Point(MiddlePos+1,Bottom-10)]);
      end else begin
        Polygon([Point(MiddlePos-1,Top+6),Point(MiddlePos+1,Top+8),Point(MiddlePos-1,Top+10)]);
        Polygon([Point(MiddlePos-1,Bottom-6),Point(MiddlePos+1,Bottom-8),Point(MiddlePos-1,Bottom-10)]);
      end;
      for I_count:=0 to ((Bottom-Top-32) div 3) do begin
        if APressed=False then begin
          Pixels[MiddlePos,Top+15+I_count*3]:=clHighlightText;
          Pixels[MiddlePos+1,Top+16+I_count*3]:=clHighlight;
        end else begin
          Pixels[MiddlePos,Top+15+I_count*3]:=clHighlight;
          Pixels[MiddlePos+1,Top+16+I_count*3]:=clHighlightText;
        end;
      end;
    end;
  end;
end;

procedure TERSplitter.ReleaseLineDC;
begin
  if FPrevBrush<>0 then SelectObject(FLineDC,FPrevBrush);
  ReleaseDC(Parent.Handle, FLineDC);
  if FBrush<>nil then begin
    FBrush.Free;
    FBrush:=nil;
  end;
end;

procedure TERSplitter.CMMouseEnter(var Message: TMessage);
begin
  inherited;
end;

procedure TERSplitter.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  DrawSpot(False,False);
  FCursorPosition:=cpUnknown;
end;

procedure TERSplitter.SetAlign(Value : TSplitterAlign);
begin
  FAlignSplitter:=Value;
  {$IFDEF DELPHI4_OR_ABOVE}
  case FAlignSplitter of
    salBottom,salTop:begin
      Constraints.MinWidth:=0;
      Constraints.MaxWidth:=0;
      Constraints.MinHeight:=7;
      Constraints.MaxHeight:=7;
    end;
    salLeft,salRight:begin
      Constraints.MinWidth:=7;
      Constraints.MaxWidth:=7;
      Constraints.MinHeight:=0;
      Constraints.MaxHeight:=0;
    end;
  end;
  {$ENDIF}
  case FAlignSplitter of
    salBottom:Align:=alBottom;
    salLeft:Align:=alLeft;
    salRight:Align:=alRight;
    salTop:Align:=alTop;
  end;
end;

procedure TERSplitter.SetState(Value : TSplitterState);
begin
  FState:=Value;
  Repaint;
  if not (csDesigning in ComponentState) then begin
    if (Assigned(FControl)=True) then begin
      case Value of
        ssOpen:OpenSplitter;
        ssClosed:CloseSplitter;
      end;
    end;
  end;
end;

procedure TERSplitter.SetSpotSizePercent(Value : NaturalNumber);
begin
  FSpotSizePercent:=Value;
  Repaint;
end;

procedure TERSplitter.SetSpotVisible(Value : Boolean);
begin
  FSpotVisible:=Value;
  Repaint;
end;

function TERSplitter.FindControl: TControl;
var
  P: TPoint;
  I_count: Integer;
  R, FRReligned : TRect;
begin
  Result:=nil;
  P := Point(Left, Top);
  case Align of
    alLeft: Dec(P.X);
    alRight: Inc(P.X, Width);
    alTop: Dec(P.Y);
    alBottom: Inc(P.Y, Height);
    else Exit;
  end;
  for I_count:=0 to Parent.ControlCount-1 do begin
    Result := Parent.Controls[I_count];
    if (Result.Visible) and (Result.Enabled) then begin
      R := Result.BoundsRect;
      if (R.Right-R.Left)=0 then
        if (Align in [alTop,alLeft]) then Dec(R.Left) else Inc(R.Right);
      if (R.Bottom-R.Top)=0 then
        if (Align in [alTop,alLeft]) then Dec(R.Top) else Inc(R.Bottom);
      if PtInRect(R, P)=True then Exit
       else begin
         if (Result.Align=Self.Align) then begin
           FRReligned:=Result.BoundsRect;
           case Result.Align of
             alLeft:if (FRReligned.Right=FRReligned.Left) and (FRReligned.Left=Self.Width) then Exit;
             alRight:if (FRReligned.Right=FRReligned.Left) and (FRReligned.Right=Self.Left) then Exit;
             alTop:if (FRReligned.Bottom=FRReligned.Top) and (FRReligned.Top=Self.Height) then Exit;
             alBottom:if (FRReligned.Bottom=FRReligned.Top) and (FRReligned.Bottom=Self.Top) then Exit;
           end;
         end;
      end;
    end;
  end;
  Result:=nil;
end;

procedure TERSplitter.Paint;
begin
  Canvas.Brush.Color:=Color;
  Canvas.FillRect(ClientRect);
  if FSpotVisible=True then DrawSpot(False,FPressed);
end;

function TERSplitter.DoCanResize(var NewSize: Integer): Boolean;
begin
  Result:=CanResize(NewSize);
  if Result and (NewSize <= MinSize) and FAutoSnap then NewSize:=1;
end;

function TERSplitter.CanResize(var NewSize: Integer): Boolean;
begin
  Result:=True;
  if Assigned(FOnCanResize) then FOnCanResize(Self, NewSize, Result);
end;

{Always raised, when position changed}
procedure TERSplitter.UpdateControlSize;
begin
  if (Assigned(FControl)=True) then begin
    if FNewSize<>FOldSize then begin
      RecalcLastPosition;
      case Align of
        alLeft: FControl.Width:=FNewSize;
        alTop: FControl.Height:=FNewSize;
        alRight:begin
          Parent.DisableAlign;
          try
            FControl.Left := FControl.Left + (FControl.Width - FNewSize);
            FControl.Width := FNewSize;
          finally
            Parent.EnableAlign;
          end;
        end;
        alBottom:begin
          Parent.DisableAlign;
          try
            FControl.Top := FControl.Top + (FControl.Height - FNewSize);
            FControl.Height := FNewSize;
          finally
            Parent.EnableAlign;
          end;
        end;
      end;
      Update;
      if Assigned(FOnMoved) then FOnMoved(Self);
      FOldSize:=FNewSize;
    end;
    if FNewSize<=1 then begin
      FState:=ssClosed;
    end else begin
      if (FState<>ssClosed) then FState:=ssOpen else begin
        if (FNewSize<=FMinSize) then OpenSplitter else FState:=ssOpen;
      end;
    end;
    DrawSpot(False,FPressed);
  end;
end;

procedure TERSplitter.CalcSplitSize(X, Y: Integer; var NewSize, Split: Integer);
var
  S: Integer;
begin
  if (Assigned(FControl)=False) then Exit;
  if Align in [alLeft, alRight] then Split:=X-FDownPos.X else Split:=Y-FDownPos.Y;
  S:=0;
  case Align of
    alLeft: S:=FControl.Width + Split;
    alRight: S:=FControl.Width - Split;
    alTop: S:=FControl.Height + Split;
    alBottom: S:=FControl.Height - Split;
  end;
  NewSize := S;
  if S < FMinSize then NewSize:=FMinSize
   else if S > FMaxSize then NewSize:=FMaxSize;
  if S <> NewSize then begin
    if Align in [alRight, alBottom] then
      S := S - NewSize else S := NewSize - S;
    Inc(Split, S);
  end;
end;

procedure TERSplitter.UpdateSize(X, Y: Integer);
begin
  CalcSplitSize(X, Y, FNewSize, FSplit);
end;

function TERSplitter.IsCursorInSpot(const X,Y : Integer):Boolean;
begin
  UpdateSpotRect;
  Result:=(FSpotVisible=True) and ((X>=FSpotRect.Left) and (X<=FSpotRect.Right) and
          (Y>=FSpotRect.Top) and (Y<=FSpotRect.Bottom));
end;

function TERSplitter.IsCursorInSplitter(const X,Y : Integer):Boolean;
var
  FRect : TRect;
begin
  FRect:=ClientRect;
  Result:=((X>=FRect.Left) and (X<=FRect.Right) and
          (Y>=FRect.Top) and (Y<=FRect.Bottom));
end;

procedure TERSplitter.MouseDown(Button: TMouseButton; Shift: TShiftState;X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  if Button = mbLeft then begin
    if (Assigned(FControl)=True) then begin
      UpdateSpotRect;
      FDownPos:=Point(X, Y);
      if IsCursorInSpot(X,Y)=True then begin
        FPressed:=True;
        FSplitterState:=sstSpotClick;
        FCursorPosition:=cpInsideSpotRect;
        DrawSpot(True,FPressed);
      end else begin
        FPressed:=False;
        FSplitterState:=sstResizing;
        if (Align in [alLeft, alRight]) then FMaxSize:=Parent.ClientWidth-Width-FMinSize
          else FMaxSize:=Parent.ClientHeight-Height-FMinSize;
        UpdateSize(X, Y);
        AllocateLineDC;
        with ValidParentForm(Self) do
          if ActiveControl<>nil then begin
            FActiveControl:=ActiveControl;
            FOldKeyDown:=TWinControlAccess(FActiveControl).OnKeyDown;
            TWinControlAccess(FActiveControl).OnKeyDown:=FocusKeyDown;
          end;
        if (ResizeStyle in [rsPattern]) then DrawLine;
      end;
    end;
  end;
end;

procedure TERSplitter.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  FLocalNewSize, FLocalSplit : Integer;
begin
  inherited;
  if (ssLeft in Shift) and (Assigned(FControl)=True) then begin
    case FSplitterState of
      sstResizing:begin
        CalcSplitSize(X, Y, FLocalNewSize, FLocalSplit);
        if DoCanResize(FLocalNewSize)=True then begin
          if ResizeStyle in [rsPattern] then DrawLine;
          FNewSize:=FLocalNewSize;
          FSplit:=FLocalSplit;
          case ResizeStyle of
            rsUpdate:UpdateControlSize;
            rsPattern:DrawLine;
          end;
          DrawSpot(False,FPressed);
        end;
      end;
      sstSpotClick:begin
        FPressed:=IsCursorInSpot(X,Y);
        DrawSpot(FPressed,FPressed);
      end;
    end;
  end;
  if (not ((ssLeft in Shift) and (ssRight in Shift))) then begin
    if IsCursorInSpot(X,Y)=True then begin
      if FCursorPosition<>cpInsideSpotRect then begin
        FCursorPosition:=cpInsideSpotRect;
        DrawSpot(True,FPressed);
      end;
      if Cursor<>crDefault then Cursor:=crDefault;
    end else begin
      if FCursorPosition<>cpOutSideSpotRect then begin
        FCursorPosition:=cpOutSideSpotRect;
        DrawSpot(False,FPressed);
      end;
      case FAlignSplitter of
        salBottom,salTop:if Cursor<>crVSplit then Cursor:=crVSplit;
        salLeft,salRight:if Cursor<>crHSplit then Cursor:=crHSplit;
      end;
    end;
  end;
end;

procedure TERSplitter.MouseUp(Button: TMouseButton; Shift: TShiftState;X, Y: Integer);
begin
  inherited;
  if (Assigned(FControl)=True) then begin
    if (FSplitterState=sstSpotClick) and (IsCursorInSpot(X,Y)=True) then begin
      FPressed:=False;
      case FState of
        ssClosed:OpenSplitter;
        ssOpen:CloseSplitter;
      end;
    end;
    if ResizeStyle in [rsPattern] then DrawLine;
    DrawSpot(False,FPressed);
    UpdateControlSize;
    StopSizing;
  end;
end;

procedure TERSplitter.FocusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then StopSizing
   else begin
    if Assigned(FOldKeyDown) then FOldKeyDown(Sender, Key, Shift);
  end;
end;

procedure TERSplitter.StopSizing;
begin
  if (Assigned(FControl)=True) then begin
    if FLineVisible then DrawLine;
    ReleaseLineDC;
    if Assigned(FActiveControl) then begin
      TWinControlAccess(FActiveControl).OnKeyDown:=FOldKeyDown;
      FActiveControl:=nil;
    end;
    FSplitterState:=sstNormal;
    if Assigned(FOnMoved) then FOnMoved(Self);
  end;
end;

procedure TERSplitter.OpenSplitter;
var
  FAllowOpenSpot : Boolean;
begin
  FAllowOpenSpot:=True;
  if Assigned(FOnBeforeOpen) then FOnBeforeOpen(Self,FAllowOpenSpot);
  if FAllowOpenSpot=False then Exit;
  FState:=ssOpen;
  if FAutoPosition=True then begin
    if FPositionBeforeClose<=1 then FNewSize:=FMinSize+1 else FNewSize:=FPositionBeforeClose;
   end else FNewSize:=FPositionAfterOpen;
  FOldSize:=-1;
  UpdateControlSize;
  if Assigned(FOnAfterOpen) then FOnAfterOpen(Self);
end;

procedure TERSplitter.CloseSplitter;
var
  FAllowCloseSpot : Boolean;
begin
  FAllowCloseSpot:=True;
  if Assigned(FOnBeforeClose) then FOnBeforeClose(Self,FAllowCloseSpot);
  if FAllowCloseSpot=False then Exit;
  FState:=ssClosed;
  FNewSize:=1;
  FOldSize:=-1;
  UpdateControlSize;
  if Assigned(FOnAfterClose) then FOnAfterClose(Self);
end;

procedure TERSplitter.RecalcLastPosition;
begin
  case FAlignSplitter of
    salBottom:begin
      if (FControl<>nil) then FPositionBeforeClose:=FControl.Height else FPositionBeforeClose:=Top;
    end;
    salLeft:FPositionBeforeClose:=Left;
    salRight:begin
      if (FControl<>nil) then FPositionBeforeClose:=FControl.Width else FPositionBeforeClose:=Top;
    end;
    salTop:FPositionBeforeClose:=Top;
  end;
end;

procedure Register;
begin
  RegisterComponents('Standard', [TERSplitter]);
end;

end.
