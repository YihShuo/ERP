unit SOPPrcessFlow_Part1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, ComCtrls;

type
  TSOPPrcessFlow_Part = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label22: TLabel;
    ZWSMEdit: TEdit;
    Button3: TButton;
    Label5: TLabel;
    YWSMEdit: TEdit;
    Label1: TLabel;
    BWBHEdit: TEdit;
    GCBWQry: TQuery;
    DS1: TDataSource;
    GCBWQryBWBH: TStringField;
    GCBWQryywsm: TStringField;
    GCBWQryzwsm: TStringField;
    GCBWQryQty1Day: TFloatField;
    GCBWQryzsdh: TStringField;
    GCBWQryzsjc: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    Action:string;
    IsAddTreeRoot:boolean;
    { Private declarations }
    procedure AddTreeView_GC(IsRoot:boolean;Action:String);
  public
    { Public declarations }
    procedure SetParameter(IsAddTreeRoot:boolean;Action:string);
  end;

var
  SOPPrcessFlow_Part: TSOPPrcessFlow_Part;

implementation
  uses SOPProcessFlow1, FunUnit;
{$R *.dfm}

procedure TSOPPrcessFlow_Part.Button3Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from ( ');
    SQL.Add('select GCBW.gcbwdh as BWBH,GCBW.ywsm,GCBW.zwsm,GCBW.Qty1Day,GCBW.zsdh,zszl.zsjc ');
    SQL.Add('from KT_SOPCutS_GCBW GCBW');
    SQL.Add('left join zszl on zszl.zsdh=GCBW.zsdh');
    if IsAddTreeRoot=false then
    begin
    SQL.Add('Union all');
    SQL.Add('Select BWBH,ywsm,zwsm,null,null,null from KT_SOPCut ');
    SQL.Add('left join bwzl on BWZL.bwdh=KT_SOPCut.BWBH ');
    SQL.Add('where XieXing='''+SOPProcessFlow.XXZL.fieldByName('XieXing').AsString+''' and SheHao='''+SOPProcessFlow.XXZL.fieldByName('SheHao').AsString+''' ');
    end;
    SQL.Add(' ) BWZL');
    SQL.Add('where BWBH like '''+BWBHEdit.Text+'%'' ');
    if YWSMEdit.Text<>'' then
    SQL.Add('     and YWSM like ''%'+YWSMEdit.Text+'%'' ');
    if ZWSMEdit.Text<>'' then
    SQL.Add('     and ZWSM like ''%'+ZWSMEdit.Text+'%'' ');
    SQL.Add('order by BWBH');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

procedure TSOPPrcessFlow_Part.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSOPPrcessFlow_Part.FormDestroy(Sender: TObject);
begin
  SOPPrcessFlow_Part:=nil;
end;

procedure TSOPPrcessFlow_Part.AddTreeView_GC(IsRoot:boolean;Action:String);
var Node,AddNode:TTreeNode;
    NodeText:string;
    IsGCorCut:boolean;
begin
  Node:=nil;
  AddNode:=nil;
  Node:=SOPProcessFlow.TreeView.Selected;
  NodeText:=GCBWQry.FieldByName('bwbh').AsString+'-'+GCBWQry.FieldByName('YWSM').AsString+'-'+GCBWQry.FieldByName('ZWSM').AsString;
  if Copy(GCBWQry.FieldByName('bwbh').AsString,1,2)='0G' then IsGCorCut:=true else IsGCorCut:=false;
  //
  if Action='Insert' then
  begin
    if IsRoot=true then
    begin
      if IsGCorCut=true then //只有加工才能第一層
      begin
        AddNode:=SOPProcessFlow.TreeView.Items.Add(nil, NodeText);
      end else
      begin
        Showmessage('Material is not Final Process. Nguyen vat tu khong phia gia cong cuoi cung');
      end;
    end else
    begin
      if Node<>nil then
      begin
        if Copy(Node.Text,1,2)='0G' then
        begin
          AddNode:=SOPProcessFlow.TreeView.Items.AddChild(Node, NodeText);
        end else
        begin
          Showmessage('Can''t Process  back to Material, khong the gia cong ve nguyen vat tu');
        end;
      end;
    end;
    if AddNode<>nil then
    begin
      if IsGCorCut=true then
      begin
        AddNode.ImageIndex:=0;
        AddNode.SelectedIndex:=0;
      end else
      begin
        AddNode.ImageIndex:=1;
        AddNode.SelectedIndex:=1;
      end;
    end;
  end
  else if Action='Modify' then
  begin
    if Node<>nil then
    begin
      Node.Text:=NodeText;
      if IsGCorCut=true then
      begin
        Node.ImageIndex:=0;
        Node.SelectedIndex:=0;
      end else
      begin
        Node.ImageIndex:=1;
        Node.SelectedIndex:=1;
      end;
    end;
  end;
  SOPProcessFlow.TreeView.FullExpand;

end;

//
procedure TSOPPrcessFlow_Part.DBGridEh1DblClick(Sender: TObject);
begin
  AddTreeView_GC(IsAddTreeRoot,Action);
end;

procedure TSOPPrcessFlow_Part.SetParameter(IsAddTreeRoot:boolean;Action:string);
begin
  self.IsAddTreeRoot:=IsAddTreeRoot;
  self.Action:=Action;
end;

end.
