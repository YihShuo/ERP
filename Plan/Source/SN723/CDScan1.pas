unit CDScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, ComCtrls,
  Buttons, Menus, Spin;

type
  TCDScan = class(TForm)
    Panel1: TPanel;
    tmpQry: TQuery;
    DS1: TDataSource;
    Edit1: TEdit;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    DispatchSQry: TQuery;
    DispatchSQryZLBH: TStringField;
    DispatchSQryBWBH: TStringField;
    DispatchSQryZWSM: TStringField;
    DispatchSQrySIZE: TStringField;
    DispatchSQryCLBH: TStringField;
    DispatchSQryYWPM: TStringField;
    DispatchSQryYWSM: TStringField;
    DispatchSQryZWPM: TStringField;
    DispatchSQryQty: TIntegerField;
    DispatchSQryXXCC: TStringField;
    DispatchSQryCutNum: TIntegerField;
    DispatchSQryokCutNum: TIntegerField;
    DispatchSQryUSERID: TStringField;
    DispatchSQryUSERDATE: TDateTimeField;
    DispatchSQryScanUser: TStringField;
    DispatchSQryScanDate: TDateTimeField;
    DispatchSQryDLNO: TStringField;
    DispatchSQryYN: TStringField;
    DispatchSQryDepName: TStringField;
    DispatchSQryPlanDate: TDateTimeField;
    DispatchSQryMemo: TStringField;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    tmpDispatchSQry: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    StringField10: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField11: TStringField;
    DateTimeField1: TDateTimeField;
    StringField12: TStringField;
    DateTimeField2: TDateTimeField;
    StringField13: TStringField;
    DateTimeField3: TDateTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoDepName: TStringField;
    DepNMEdit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    seDate: TSpinEdit;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DepNMEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    DepID:string;
    { Public declarations }
    procedure InitCutDispatchS();
  end;

var
  CDScan: TCDScan;

implementation

uses
  main1, CDScan_Det1, CDScan_BDepartment1,FunUnit;

{$R *.dfm}

procedure TCDScan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCDScan.FormDestroy(Sender: TObject);
begin
  CDScan := nil;
end;

procedure TCDScan.Edit1KeyPress(Sender: TObject; var Key: Char);
var IsBreak,IsUpdate:boolean;
    i:integer;
    DLNO,ZLBH,BWBH,SIZE:String;
    Qty:integer;
    tmpList:TStringList;
begin
  if (Key = #13)  then
  begin
    if (length(Edit1.Text) < 11)  then  //裁斷線別
    begin
      if DepNo.Locate('ID',copy(Edit1.Text,0,10),[]) then
      begin
        DepID:=DepNo.fieldbyname('ID').Value;
        DepNMEdit.Text:=DepNo.fieldbyname('DepName').Value;
        Edit1.text:='';
        InitCutDispatchS();
        abort;
      end;
    end;
    if DepNMEdit.text='' then
    begin
        showmessage('Pls select Department first.');
        Edit1.Text:='';
        abort;
    end;
    if (length(Edit1.Text) >= 11)  then //派工單號
    begin
      if Pos('&',Edit1.Text)>0 then
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(Edit1.Text,'&');
        DLNO:=tmpList.Strings[0];
        ZLBH:=tmpList.Strings[1];
        BWBH:=tmpList.Strings[2];
        SIZE:=tmpList.Strings[3];
        Qty:=strtoint(tmpList.Strings[4]);
        tmpList.Free;
        //派工條碼單一部件&尺碼&數量報工
        if DispatchSQry.Locate('DLNO;ZLBH;BWBH;SIZE',vararrayof([DLNO,ZLBH,BWBH,SIZE]),[]) then
        begin
            if DispatchSQry.FieldByName('CutNum').Value>DispatchSQry.FieldByName('okCutNum').Value then
            begin
              DispatchSQry.Edit;
              DispatchSQry.FieldByName('okCutNum').Value:=DispatchSQry.FieldByName('CutNum').Value;
              DispatchSQry.FieldByName('ScanUser').Value:=main.Edit1.Text;
              DispatchSQry.FieldByName('ScanDate').Value:=Date();
              DispatchSQry.Post;
              //
              tmpDispatchSQry.Insert;
              for i:=0 to DispatchSQry.FieldCount-1 do
                 tmpDispatchSQry.Fields[i].Value:=DispatchSQry.Fields[i].Value;
              tmpDispatchSQry.Post;
              //
              with tmpQry do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''' + main.Edit1.Text + ''', ScanDate = GetDate() WHERE DLNO = ''' + Edit1.Text + ''';');
                SQL.Add('UPDATE CutDispatchSS SET ScanQty = Qty WHERE DLNO = ''' + Edit1.Text + ''';');
                ExecSQL;
                Active :=false;
                SQL.Clear;
                SQL.Add('Update CutDispatch Set DepI D =''' + DepID + ''' where DLNO = ''' + Edit1.Text + '''');
                ExecSQL;
              end;
            end;
        end;
      end else
      begin
        //更新整張派工單DLNO
        if DispatchSQry.Locate('DLNO', Edit1.Text, []) then
        begin
            //更新整張派工單DLNO
            IsBreak:=false;
            IsUpdate:=false;
            while ((not DispatchSQry.Eof) and (IsBreak=false)) do
            begin
              if DispatchSQry.FieldByName('CutNum').Value>DispatchSQry.FieldByName('okCutNum').Value then
              begin
                DispatchSQry.Edit;
                DispatchSQry.FieldByName('okCutNum').Value:=DispatchSQry.FieldByName('CutNum').Value;
                DispatchSQry.FieldByName('ScanUser').Value:=main.Edit1.Text;
                DispatchSQry.FieldByName('ScanDate').Value:=Date();
                DispatchSQry.Post;
                //
                tmpDispatchSQry.Insert;
                for i:=0 to DispatchSQry.FieldCount-1 do
                   tmpDispatchSQry.Fields[i].Value:=DispatchSQry.Fields[i].Value;
                tmpDispatchSQry.Post;
                //
                IsUpdate:=true;
              end;
              DispatchSQry.Next;
              if DispatchSQry.FieldByName('DLNO').AsString<>Edit1.Text then IsBreak:=true;
            end;
            //更新資料庫
            if IsUpdate=true then
            begin
              with tmpQry do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''' + main.Edit1.Text + ''', ScanDate = GetDate() WHERE DLNO = ''' + Edit1.Text + ''';');
                SQL.Add('UPDATE CutDispatchS SET ScanQty = Qty WHERE DLNO = ''' + Edit1.Text + ''';');
                ExecSQL;
                Active :=false;
                SQL.Clear;
                SQL.Add('Update CutDispatch Set DepID = ''' + DepID + ''' where DLNO = ''' + Edit1.Text + '''');
                ExecSQL;
              end;
            end else
            begin
              ShowMessage('ma phieu chat scan du so luong/DLNO is already scanned or not in the list.');
            end;
        end else begin
          ShowMessage('ma phieu chat scan du so luong/DLNO is already scanned or not in the list.');
        end;
      end;
      Edit1.Clear;
    end;
  end;
end;

procedure TCDScan.InitCutDispatchS();
begin
  with DispatchSQry do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWPM,BDepartment.DepName,CutDispatch.PlanDate,CutDispatch.Memo FROM CutDispatchS');
   SQL.Add('Left JOIN CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO');
   SQL.Add('Left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH');
   SQL.Add('Left JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH');
   SQL.Add('Left JOIN BDepartment on BDepartment.ID=CutDispatch.DepID');
   SQL.Add('WHERE  IsNull(CutDispatchS.CutNum, 0)>IsNull(CutDispatchS.okCutNum, 0)');
   SQL.Add('and CutDispatch.PlanDate>GetDate()-'+(seDate.Text)+' ');
   SQL.Add('ORDER BY CutDispatchS.BWBH');
   //funcObj.WriteErrorLog(sql.Text);
   Active:=true;
  end;
  Edit1.SetFocus;
end;
procedure TCDScan.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (tmpDispatchSQry.FieldByName('CutNum').AsInteger = tmpDispatchSQry.FieldByName('okCutNum').AsInteger) then
  begin
    DBGridEh2.Canvas.Font.Color := clGreen;
    DBGridEh2.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
end;

procedure TCDScan.N1Click(Sender: TObject);
begin
  CDScan_Det:=TCDScan_Det.Create(self);
  CDScan_Det.Show;
end;

procedure TCDScan.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TCDScan.Button2Click(Sender: TObject);
begin
  tmpDispatchSQry.Active:=false;
  tmpDispatchSQry.Active:=true;
  InitCutDispatchS();
end;

procedure TCDScan.FormCreate(Sender: TObject);
begin
  tmpDispatchSQry.Active:=true;
  DepNo.active:=true;
end;

procedure TCDScan.DepNMEditClick(Sender: TObject);
begin
  CDScan_BDepartment := TCDScan_BDepartment.Create(self);
  CDScan_BDepartment.Show;
end;

end.
