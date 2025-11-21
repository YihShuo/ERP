unit ERLabel;


interface

//{$i fcIfDef.pas}
//{$Warnings Off}
            
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Math, db, ERText,dbctrls,dbconsts;

type
  TERCustomLabel = class(TGraphicControl)
  private
    // Property Storage Variables
    FAutoSize: Boolean;
    FFocusControl: TWinControl;
    FTextOptions: TERCaptionText;

    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;

    function GetTransparent: Boolean;
    procedure SetFocusControl(Value: TWinControl);
    procedure SetTransparent(Value: Boolean);

    // Message Handlers
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMMouseEnter(var Message: TWMMouse); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TWMMouse); message CM_MOUSELEAVE;
  protected
    // Virtual Property Access Methods
    procedure SetAutoSize(Value: Boolean); virtual;
    function GetLabelText: string; virtual;

    // Virtual Methods
    procedure MouseEnter; virtual;
    procedure MouseLeave; virtual;

    // Overriden Methods
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure Paint; override;
    procedure WndProc(var Message: TMessage); override;

    property Canvas;
  public
    Patch: Variant;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function GetTextEnabled: Boolean; virtual;
    procedure AdjustBounds; virtual;

    property AutoSize: Boolean read FAutoSize write SetAutoSize default True;
    property Caption;
    property FocusControl: TWinControl read FFocusControl write SetFocusControl;
    property TextOptions: TERCaptionText read FTextOptions write FTextOptions;
    property Transparent: Boolean read GetTransparent write SetTransparent default False;

    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  end;

  TERDBCustomLabel = class(TERCustomLabel)
  private
    FDataLink: TFieldDataLink;
    procedure DataChange(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetFieldText: string;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
  protected
    function GetLabelText: string; override;
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure SetAutoSize(Value: Boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function UseRightToLeftAlignment: Boolean; override;
    property Field: TField read GetField;
//  published
//    property Align;
//    property Anchors;
//    property AutoSize default False;
//    property AutoSize;// default False;
//    property BiDiMode;
//    property Caption;
//    property Color;
//    property Constraints;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
//    property DragCursor;
//    property DragKind;
//    property DragMode;
//    property Enabled;
//    property FocusControl;
//    property Font;
//    property ParentBiDiMode;
//    property ParentColor;
//    property ParentFont;
//    property ParentShowHint;
//    property PopupMenu;
//    property TextOptions;
//    property Transparent;
//    property ShowHint;
//    property Visible;
//    property OnClick;
//    property OnContextPopup;
//    property OnDblClick;
//    property OnDragDrop;
//    property OnDragOver;
//    property OnEndDock;
//    property OnEndDrag;
//    property OnMouseEnter;
//    property OnMouseLeave;
//    property OnMouseDown;
//    property OnMouseMove;
//    property OnMouseUp;
//    property OnStartDock;
//    property OnStartDrag;
  end;


  TERLabel = class(TERDBCustomLabel)
  published
    property Align;
    property Anchors;
    property AutoSize;
//    property AutoSize default False;
    property BiDiMode;
    property Caption;
    property Color;
    property Constraints;
    property DataField;
    property DataSource;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FocusControl;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property TextOptions;
    property Transparent;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TERLabel]);
end;

function fcRectWidth(Rect: TRect): Integer;
begin
  result := Rect.Right - Rect.Left;
end;

function fcRectHeight(Rect: TRect): Integer;
begin
  result := Rect.Bottom - Rect.Top;
end;

constructor TERCustomLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  ControlStyle := ControlStyle + [csOpaque, csReplicatable];
  FTextOptions := TERCaptionText.Create(MakeCallbacks(Invalidate, AdjustBounds, GetTextEnabled),
    Canvas, Font);

  FAutoSize := True;
  Height := 17;
  Width := 65;
end;

destructor TERCustomLabel.Destroy;
begin
  FTextOptions.Free;
  inherited;
end;

procedure TERCustomLabel.Paint;
begin
  with Canvas do
  begin
    if not Transparent then
    begin
      Brush.Color := Self.Color;
      Brush.Style := bsSolid;
      FillRect(ClientRect);
    end;
    Brush.Style := bsClear;
    TextOptions.Text := GetLabelText;
    TextOptions.TextRect := ClientRect;
    if TextOptions.DoubleBuffered then
       TextOptions.UpdateFont(Self.Font);

    // Correct for alignment
    TextOptions.Draw;
  end;
end;

function TERCustomLabel.GetTextEnabled: Boolean;
begin
  result := Enabled;
end;

function TERCustomLabel.GetLabelText: string;
begin
    Result := Caption;
end;

procedure TERCustomLabel.AdjustBounds;
var
  DC: HDC;
  ARect: TRect;
  X: Integer;
begin
  if not (csReading in ComponentState) and FAutoSize then
  begin
    DC := GetDC(0);
    Canvas.Handle := DC;
    ARect := TextOptions.CalcDrawRect(True);
    Canvas.Handle := 0;
    ReleaseDC(0, DC);
    x := Left;
    if TextOptions.Alignment = taRightJustify then
      x := (Left + Width) - fcRectWidth(ARect);
    SetBounds(x, Top, fcRectWidth(ARect), fcRectHeight(ARect));
  end;
end;

procedure TERCustomLabel.SetAutoSize(Value: Boolean);
begin
  if FAutoSize <> Value then
  begin
    FAutoSize := Value;
    AdjustBounds;
    Invalidate;
  end;
end;

function TERCustomLabel.GetTransparent: Boolean;
begin
  result := not (csOpaque in ControlStyle);
end;

procedure TERCustomLabel.SetFocusControl(Value: TWinControl);
begin
  FFocusControl := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TERCustomLabel.SetTransparent(Value: Boolean);
begin
  if Transparent <> Value then
  begin
    if Value then
      ControlStyle := ControlStyle - [csOpaque] else
      ControlStyle := ControlStyle + [csOpaque];
    Invalidate;
  end;
end;

procedure TERCustomLabel.Loaded;
begin
  inherited;
  AdjustBounds;
end;

procedure TERCustomLabel.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FFocusControl) then
    FFocusControl := nil;
end;

procedure TERCustomLabel.CMTextChanged(var Message: TMessage);
begin
  TextOptions.Text := Caption;
  AdjustBounds;
  Invalidate;
end;

procedure TERCustomLabel.CMFontChanged(var Message: TMessage);
begin
  inherited;
  AdjustBounds;
end;

procedure TERCustomLabel.CMDialogChar(var Message: TCMDialogChar);
begin
  if (FFocusControl <> nil) and Enabled and (toShowAccel in TextOptions.Options) and
    IsAccel(Message.CharCode, Caption) then
    with FFocusControl do
      if CanFocus then
      begin
        SetFocus;
        Message.Result := 1;
      end;
end;

procedure TERCustomLabel.CMMouseEnter(var Message: TWMMouse);
begin
  inherited;
  MouseEnter;
end;

procedure TERCustomLabel.CMMouseLeave(var Message: TWMMouse);
begin
  inherited;
  MouseLeave;
end;

procedure TERCustomLabel.MouseEnter;
begin
  if Assigned(FOnMouseEnter) then FOnMouseEnter(self);
end;

procedure TERCustomLabel.MouseLeave;
begin
  if Assigned(FOnMouseLeave) then FOnMouseLeave(self);
end;

procedure TERCustomLabel.WndProc(var Message: TMessage);
begin
  inherited;
end;

constructor TERDBCustomLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
//  AutoSize := False;
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
end;

destructor TERDBCustomLabel.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  inherited Destroy;
end;

procedure TERDBCustomLabel.Loaded;
begin
  inherited Loaded;
  if (csDesigning in ComponentState) then DataChange(Self);
end;

procedure TERDBCustomLabel.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TERDBCustomLabel.UseRightToLeftAlignment: Boolean;
begin
  Result := DBUseRightToLeftAlignment(Self, Field);
end;

procedure TERDBCustomLabel.SetAutoSize(Value: Boolean);
begin
  if AutoSize <> Value then
  begin
    if Value and FDataLink.DataSourceFixed then
        DatabaseError('DataSource Fixed');
    inherited SetAutoSize(Value);
  end;
end;

function TERDBCustomLabel.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TERDBCustomLabel.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TERDBCustomLabel.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TERDBCustomLabel.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TERDBCustomLabel.GetField: TField;
begin
  Result := FDataLink.Field;
end;

function TERDBCustomLabel.GetFieldText: string;
  function IsMemoField: boolean;
  begin
     result:= (FDataLink.Field<>Nil) and (FDataLink.Field is TBlobField)
             {$ifdef win32}
               and
              (TBlobField(FDataLink.Field).BlobType=ftMemo)
             {$endif}
  end;
begin
  if FDataLink.Field <> nil then begin
    if IsMemoField then Result := FDataLink.Field.AsString
    else Result := FDataLink.Field.DisplayText;
  end
  else begin
    Result:= Caption;
    if (Result='') and (DataSource<>nil) and
       (csDesigning in ComponentState) then
       Result := Name
  end
end;

procedure TERDBCustomLabel.DataChange(Sender: TObject);
begin
  Caption := GetFieldText;
end;

function TERDBCustomLabel.GetLabelText: string;
begin
  if csPaintCopy in ControlState then
    Result := GetFieldText else
    Result := Caption;
end;

procedure TERDBCustomLabel.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

function TERDBCustomLabel.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TERDBCustomLabel.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;


end.
