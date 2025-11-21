unit SKU_Price_BUYNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, comobj;

type
  TSKU_Price_BUYNO = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    B_Exit: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query1Article: TStringField;
    Query1Price: TCurrencyField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1Flag: TStringField;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    DS2: TDataSource;
    Query2: TQuery;
    Query2ARTICLE: TStringField;
    Query1BUYNO: TStringField;
    Query2DEVCODE: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure B_ExitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKU_Price_BUYNO: TSKU_Price_BUYNO;

implementation

uses main1;

{$R *.dfm}

procedure TSKU_Price_BUYNO.FormDestroy(Sender: TObject);
begin
  SKU_Price_BUYNO:=nil;
end;

procedure TSKU_Price_BUYNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSKU_Price_BUYNO.Button1Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDZL.ARTICLE,KFXXZL.DEVCODE FROM DDZL');
    SQL.add('left join KFXXZL on KFXXZL.SheHao=DDZL.SheHao and  KFXXZL.XieXing=DDZL.XieXing ');
    SQL.Add('WHERE DDZL.GSBH='''+main.Edit2.Text+''' AND DDZL.Article like ''' + Edit2.Text + '%'' AND DDZL.BUYNO LIKE ''' + Edit1.Text + '%''');
    //SQL.Add('WHERE DDZL.GSBH=''VA12'' AND DDZL.Article like ''' + Edit2.Text + '%'' AND DDZL.BUYNO LIKE ''' + Edit1.Text + '%''');
    SQL.Add('GROUP BY DDZL.ARTICLE,KFXXZL.DEVCODE');
    SQL.Add('ORDER BY DDZL.ARTICLE');
    //showmessage(SQL.text);
    Active := true;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT distinct DDZL.Article, DDZL.BUYNO, CostingPriceList.LYNFOB as Price, CostingPriceList.CheckID as UserID, ');
    SQL.Add('       CostingPriceList.CheckDate as UserDate, ''1'' as YN, CostingPriceList.SKU AS Flag FROM DDZL ');
    //SQL.Add('LEFT JOIN DDZL_Price_BUY ON DDZL_Price_BUY.Article = DDZL.Article AND DDZL_Price_BUY.BUYNO = DDZL.BUYNO ');
        sql.Add(' left join( ');
        sql.Add(' 	select Max(No)as maxNo,SKU,PricingSeason from CostingPriceList ');
        sql.Add(' 	   group by SKU,PricingSeason ');
        sql.Add(' )PricingSeasonNO ');
        sql.Add(' on PricingSeasonNO.SKU =left(DDZL.ARTICLE,charindex(''/'',DDZL.ARTICLE+''/'')-1) ');
        sql.Add(' 	   and DDZL.BUYNO like ''%''+PricingSeasonNO.PricingSeason ');
        sql.Add(' left join CostingPriceList 	');
        sql.Add(' on CostingPriceList.SKU = PricingSeasonNO.SKU	');
        sql.Add('	  and CostingPriceList.PricingSeason =PricingSeasonNO.PricingSeason');
        sql.Add(' 	and PricingSeasonNO.maxNo=CostingPriceList.no');
    SQL.Add('WHERE DDZL.Article = :Article AND DDZL.BUYNO LIKE ''' + Edit1.Text + '%''');
    SQL.Add('ORDER BY DDZL.BUYNO DESC ');
    //showmessage(SQL.text);
    Active := true;
  end;

  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TSKU_Price_BUYNO.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSKU_Price_BUYNO.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSKU_Price_BUYNO.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSKU_Price_BUYNO.BB5Click(Sender: TObject);
var i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL1.Apply(ukDelete);
          end
          else begin
            if (Query1.FieldByName('Flag').IsNull) then
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.text;
              UpdateSQL1.Apply(ukInsert);
            end
            else begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.text;
              UpdateSQL1.Apply(ukModify);
            end;
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSKU_Price_BUYNO.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSKU_Price_BUYNO.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TSKU_Price_BUYNO.Button2Click(Sender: TObject);
var
  a: string;
  eclApp,WorkBook: olevariant;
  i,j: integer;
begin
  if Query2.Active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to 4 do
      begin
        eclApp.Cells(1, i+1) := Query1.Fields[i].FieldName;
      end;
                    
      j:=2;
      Query2.First;
      while not Query2.Eof do
      begin
        Query1.First;
        while not Query1.Eof do
        begin
          for i:=0 to 4 do
          begin
            eclApp.Cells(j, i+1) := Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
        Query2.Next;
      end;
      eclapp.columns.autofit;
      eclApp.Visible := True;
      ShowMessage('Succeed');
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TSKU_Price_BUYNO.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

end.
