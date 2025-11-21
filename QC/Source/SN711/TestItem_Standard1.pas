unit TestItem_Standard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TTestItem_Standard = class(TForm)
    ItemView: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ItemViewDblClick(Sender: TObject);
    
  private
    { Private declarations }
    brand: string;
  public
    { Public declarations }
  end;

var
  TestItem_Standard: TTestItem_Standard;

implementation
  uses QC_DailyBonding1;

{$R *.dfm}

procedure TTestItem_Standard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTestItem_Standard.FormDestroy(Sender: TObject);
begin
  TestItem_Standard:=nil;
end;

procedure TTestItem_Standard.FormCreate(Sender: TObject);
var MyItem: TListItem;
begin
  brand:=QC_DailyBonding.LabTS.fieldbyname('kfjc').AsString;
  if brand <>'' then
    begin
      ItemView.Items.Clear;
      if ((brand='ADIDAS') or (brand='REEBOK')) then
        begin
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-13';
            MyItem.SubItems.Add('3.5 N/mm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-13';
            MyItem.SubItems.Add('2.7 N/mm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-13';
            MyItem.SubItems.Add('2.5 N/mm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-13';
            MyItem.SubItems.Add('2.0 N/mm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-13';
            MyItem.SubItems.Add('1.7 N/mm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FGT-02';
            MyItem.SubItems.Add('50,000 cycles');
          end;
        if ((brand='TOMMY') or (brand='CONVERSE')) then
          begin
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'C-FSM-09';
            MyItem.SubItems.Add('2.5 kg/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'C-FSM-09';
            MyItem.SubItems.Add('2.0 kg/cm');
            //20160505
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'C-FSM-09';
            MyItem.SubItems.Add('3.0 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'C-FSM-05';
            MyItem.SubItems.Add('100,000 cycles');

          end;
          //add brand 'HOKA' in 20150520
        if ((brand='SANUK') or (brand='HOKA') or (brand='TEVA') or (brand='UGG')) then
          begin
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('3.2 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('3.0 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('3.0 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('2.7 kgf/cm');

            // add 2 standard in 20150512
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('2.56 kgf/cm');

            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('2.4 kgf/cm');
            //
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('2.0 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-01';
            MyItem.SubItems.Add('1.3 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'FST-07';
            MyItem.SubItems.Add('125,000 cycles');
         end;
         // add brand K-SWISS and PALLADIUM 20160616
        if ((brand='K-SWISS') or (brand='PALLADIUM')) then
          begin
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'SATRA TM 77-01';
            MyItem.SubItems.Add('15000 Cycles');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'KS-13-01';
            MyItem.SubItems.Add('3.0 kgf/cm');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'SATRA TM-92(1)';
            MyItem.SubItems.Add('100000 Cycles');
            //
            MyItem := ItemView.Items.Add;
            MyItem.Caption := 'SATRA TM-92';
            MyItem.SubItems.Add('200000 Cycles');
         end;
      end
  else
    begin
      showmessage('Pls select Article first!');
      abort;
    end;

end;

procedure TTestItem_Standard.ItemViewDblClick(Sender: TObject);
begin
  if ItemView.Selected.Caption='' then
    begin
      showmessage('Pls select rigt postition!');
    end
  else
    begin
      with QC_DailyBonding.LabTS do
          begin
            edit;
            fieldbyname('DFL').Value:=ItemView.Selected.Caption;
            fieldbyname('Standard').Value:=ItemView.Selected.SubItems[0];
          end;
     end;
   Close;  
end;
end.
