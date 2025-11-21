unit CBY_QC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DB, DBTables, colorbutton, Buttons,
  jpeg, Spin, ComCtrls;

type
  TCBY_QC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_Barcode: TEdit;
    TitleBox_Base: TScrollBox;
    TPASS: TLabel;
    TNG: TLabel;
    FTT: TLabel;
    ColorButton1: TColorButton;
    Orderid: TLabel;
    Sku: TLabel;
    acceptdate: TLabel;
    shippingdate: TLabel;
    size: TLabel;
    pid1: TLabel;
    pid2: TLabel;
    Inspection: TLabel;
    Button1: TButton;
    Label6: TLabel;
    cbbWorkTime: TComboBox;
    RG1: TRadioGroup;
    PC1: TPageControl;
    TS3: TTabSheet;
    TS4: TTabSheet;
    DefectBox: TScrollBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn36: TBitBtn;
    Panel3: TPanel;
    Image7: TImage;
    Panel4: TPanel;
    Panel2: TPanel;
    Shape4: TShape;
    Image1: TImage;
    QNGReason: TQuery;
    QSearch: TQuery;
    QUpdate: TQuery;
    Query1: TQuery;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image8: TImage;
    Panel11: TPanel;
    Panel12: TPanel;
    Shape1: TShape;
    Image9: TImage;
    Image10: TImage;
    Shape2: TShape;
    Panel13: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    Image11: TImage;
    Image12: TImage;
    Panel14: TPanel;
    Image13: TImage;
    Shape3: TShape;
    Image14: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ED_BarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ED_BarcodeChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LOADFTT();
    { Public declarations }
  end;

var
  CBY_QC: TCBY_QC;
  IsPassOnce: Boolean = true;

implementation

uses
  main1;

{$R *.dfm}

procedure TCBY_QC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCBY_QC.FormDestroy(Sender: TObject);
begin
  CBY_QC := nil;
end;

procedure TCBY_QC.FormCreate(Sender: TObject);
begin
  //以下品檢越文名稱
  bitbtn4.Caption := 'Lem mau,khac'#13' mau';
  bitbtn5.Caption := 'Day talon '#13'com,can,bong '#13'bong';
  bitbtn6.Caption := 'Bao mui,de '#13'lon com,can,'#13'bong bong';
  bitbtn7.Caption := 'khong o de,o'#13' de hu,troc '#13'son';

  bitbtn9.Caption := 'Meo mui,meo '#13'got';

  bitbtn12.Caption := 'Khoang cach '#13'giua bo vi '#13'khong deu';
  bitbtn13.Caption := 'Sai kich '#13'thuoc bo vi';
  bitbtn14.Caption := 'Giay bien '#13'dang(khong '#13'can doi,cong'#13',venh)';
  bitbtn15.Caption := 'Nhan (than,'#13'vong co,luoi'#13' ga,...)';
  bitbtn16.Caption := 'Sai size '#13'giay';

  bitbtn18.Caption := 'Com (de '#13'trung,pho, '#13'lot)';
  bitbtn19.Caption := 'cao su bi '#13'bong bong';
  bitbtn22.Caption := 'Ho keo nhan '#13'got,de';
  bitbtn23.Caption := 'Dut chi,long'#13' chi,nhay '#13'mui,sup mi';
  bitbtn25.Caption := 'Mu giay bi '#13'vang';

  bitbtn27.Caption := 'Quet xi '#13'khong deu';
  bitbtn28.Caption := 'Khong in, in sai '#13', in hu';
  bitbtn29.Caption := 'Hut de,'#13' sai de trung';
  bitbtn30.Caption := 'Phoi sai spec';
  bitbtn31.Caption := 'Sai giay';
  bitbtn32.Caption := 'Da theo,'#13' rach da';
  bitbtn33.Caption := 'Vo de trung '#13' nhan lot';
  bitbtn34.Caption := 'Giay song';
  bitbtn35.Caption := 'Dong xi';

  //以下品檢英文名稱  寬度12字元
  {  bitbtn4.Caption := 'Discoloratio'#13'n,unmatched '#13'color';
    bitbtn5.Caption := 'Damaged,x-ra'#13'y,bubble on '#13'foxing';
    bitbtn6.Caption := 'Damaged,x-ra'#13'y,bubble on '#13'toe cap,outs'#13'ole';
    bitbtn7.Caption := 'No eyelets,d'#13'amaged eyele'#13'ts and peel '#13'off paint';
    bitbtn9.Caption := 'Heel/vamp of'#13'f center';
    bitbtn10.Caption := 'Uneven heel '#13'in pair';
    bitbtn11.Caption := 'Uneven vamp '#13'in pair';
    bitbtn12.Caption := 'Mis-aligned '#13'attaching co'#13'mponents';
    bitbtn13.Caption := 'Incorrect di'#13'mension';
    bitbtn14.Caption := 'Deformation('#13'bumps/uneven'#13' looking/cro'#13'oked/banana '#13'shoes)';
    bitbtn15.Caption := 'Wrinkle (upp'#13'er,colar,ton'#13'gue,..)';
    bitbtn16.Caption := 'Incorrect si'#13'zing';
    bitbtn17.Caption := 'Incorrect in'#13'sole';
    bitbtn18.Caption := 'X-ray(insole'#13',heel counte'#13'r,lining)';
    bitbtn19.Caption := 'Bubble on ru'#13'bber';
    bitbtn21.Caption := 'Delamination'#13' at foxing';
    bitbtn22.Caption := 'Delamination'#13' at heel log'#13'o,outsole';
    bitbtn23.Caption := 'Broken,loose'#13',skip stitch'#13',run off sti'#13'tch';
    bitbtn25.Caption := 'Yellowing up'#13'per';    }
  LOADFTT;
end;

procedure TCBY_QC.ED_BarcodeKeyPress(Sender: TObject; var Key: Char);
var
  Order, FilePath: string;
  i: integer;
begin
  if key = #13 then
  begin
    colorbutton1.Enabled := false;
    for i := 0 to CBY_QC.ComponentCount - 1 do
    begin
      if CBY_QC.components[i] is TBitbtn then
        TBitbtn(CBY_QC.Components[i]).Enabled := false;
    end;
    //      exit;
    //    end;
    LOADFTT;
    cbbWorkTime.ItemIndex := 0;
    for i := 0 to cbbWorkTime.items.count - 1 do
    begin
      if cbbWorkTime.Items[i] = FormatDatetime('HH:30', Time()) then
      begin
        cbbWorkTime.ItemIndex := i;
        break;
      end;
    end;

    ED_Barcode.Text := StringReplace(ED_Barcode.Text, '%O', '_', [rfReplaceAll]);

    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT CBY_Orders.* FROM CBY_Orders');
      SQL.Add('WHERE CBY_Orders.workOrderId LIKE ''' + ED_Barcode.Text + '%'' and isnull(Cancel,0) <> 1');
      Active := true;
    end;

    if (QSearch.RecordCount > 0) then
    begin
      FilePath := main.ImagePath + ED_Barcode.Text + '\' + ED_Barcode.Text;
      if FileExists(FilePath + '-1.png') then
      begin
        Image1.Stretch := true;
        try
          Image1.Picture.LoadFromFile(FilePath + '-1.png');
          Image9.Picture.LoadFromFile(FilePath + '-1.png');
        except
          Image1.Picture.Assign(Image7.Picture);
          Image9.Picture.Assign(Image7.Picture);
        end;
      end
      else
      begin
        Image1.Stretch := false;
        Image1.Picture.Assign(Image7.Picture);
        Image9.Stretch := false;
        Image9.Picture.Assign(Image7.Picture);
      end;

      if FileExists(FilePath + '-2.png') then
      begin
        Image2.Stretch := true;
        Image10.Stretch := true;
        try
          Image2.Picture.LoadFromFile(FilePath + '-2.png');
          Image10.Picture.LoadFromFile(FilePath + '-2.png');
        except
          Image2.Picture.Assign(Image7.Picture);
          Image10.Picture.Assign(Image7.Picture);
        end;

      end
      else
      begin
        Image2.Stretch := false;
        Image2.Picture.Assign(Image7.Picture);
        Image10.Stretch := false;
        Image10.Picture.Assign(Image7.Picture);
      end;

      if FileExists(FilePath + '-3.png') then
      begin
        Image3.Stretch := true;
        Image11.Stretch := true;
        try
          Image3.Picture.LoadFromFile(FilePath + '-3.png');
          Image11.Picture.LoadFromFile(FilePath + '-3.png');
        except
          Image3.Picture.Assign(Image7.Picture);
          Image11.Picture.Assign(Image7.Picture);
        end;
      end
      else
      begin
        Image3.Stretch := false;
        Image3.Picture.Assign(Image7.Picture);
        Image11.Stretch := false;
        Image11.Picture.Assign(Image7.Picture);
      end;

      if FileExists(FilePath + '-4.png') then
      begin
        Image4.Stretch := true;
        Image12.Stretch := true;
        try
          Image4.Picture.LoadFromFile(FilePath + '-4.png');
          Image12.Picture.LoadFromFile(FilePath + '-4.png');
        except
          Image4.Picture.Assign(Image7.Picture);
          Image12.Picture.Assign(Image7.Picture);
        end;
      end
      else
      begin
        Image4.Stretch := false;
        Image4.Picture.Assign(Image7.Picture);
        Image12.Stretch := false;
        Image12.Picture.Assign(Image7.Picture);
      end;

      if FileExists(FilePath + '-5.png') then
      begin
        Image5.Stretch := true;
        Image13.Stretch := true;
        try
          Image5.Picture.LoadFromFile(FilePath + '-5.png');
          Image13.Picture.LoadFromFile(FilePath + '-5.png');
        except
          Image5.Picture.Assign(Image7.Picture);
          Image13.Picture.Assign(Image7.Picture);
        end;
      end
      else
      begin
        Image5.Stretch := false;
        Image5.Picture.Assign(Image7.Picture);
        Image13.Stretch := false;
        Image14.Picture.Assign(Image7.Picture);
      end;

      if FileExists(FilePath + '-6.png') then
      begin
        Image6.Stretch := true;
        Image14.Stretch := true;
        try
          Image6.Picture.LoadFromFile(FilePath + '-6.png');
          Image14.Picture.LoadFromFile(FilePath + '-6.png');
        except
          Image6.Picture.Assign(Image7.Picture);
          Image14.Picture.Assign(Image7.Picture);
        end;
      end
      else
      begin
        Image6.Stretch := false;
        Image6.Picture.Assign(Image7.Picture);
        Image14.Stretch := false;
        Image14.Picture.Assign(Image7.Picture);
      end;
      Panel4.Caption := QSearch.FieldByName('workOrderId').AsString;
      Panel5.Caption := QSearch.FieldByName('workOrderId').AsString;
      Panel6.Caption := QSearch.FieldByName('workOrderId').AsString;
      Panel7.Caption := QSearch.FieldByName('workOrderId').AsString;
      Panel8.Caption := QSearch.FieldByName('workOrderId').AsString;
      Panel9.Caption := QSearch.FieldByName('workOrderId').AsString;
      ColorButton1.Enabled := true;

      with query1 do
      begin
        active := false;
        sql.Clear;
        sql.Add('select ID from WOPR_MA where SCBH = ''' + ED_Barcode.Text + '''');
        sql.add('and Result = ''P''');
        active := true;
        if not IsEmpty then
        begin
          showmessage('This order already Pass');
          Inspection.Caption := 'Inspection: PASS';
          colorbutton1.Enabled := false;
          ED_Barcode.Text := '';
          ED_Barcode.SetFocus;
          for i := 0 to CBY_QC.ComponentCount - 1 do
          begin
            if CBY_QC.components[i] is TBitbtn then
              TBitbtn(CBY_QC.Components[i]).Enabled := false;
          end;
        end
        else
        begin
          active := false;
          sql.Clear;
          sql.Add('select count(*) from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) + '%''');
          sql.add('and SCBH = ''' + ED_Barcode.Text + '''');
          sql.add('and Result = ''F''');
          active := true;
          Inspection.Caption := 'Inspection: ' + Fields[0].AsString;
          colorbutton1.Enabled := true;
          for i := 0 to CBY_QC.ComponentCount - 1 do
          begin
            if CBY_QC.components[i] is TBitbtn then
              TBitbtn(CBY_QC.Components[i]).Enabled := true;
          end;
        end;
      end;
    end
    else
    begin
      Image1.Stretch := false;
      Image1.Picture.Assign(Image7.Picture);

      Image2.Stretch := false;
      Image2.Picture.Assign(Image7.Picture);

      Image3.Stretch := false;
      Image3.Picture.Assign(Image7.Picture);

      Image4.Stretch := false;
      Image4.Picture.Assign(Image7.Picture);

      Image5.Stretch := false;
      Image5.Picture.Assign(Image7.Picture);

      Image6.Stretch := false;
      Image6.Picture.Assign(Image7.Picture);

      Panel4.Caption := '';
      ColorButton1.Enabled := false;

      ShowMessage('This order has been cancelled!');
      ED_Barcode.Text := '';
      ED_Barcode.SetFocus;
      colorbutton1.Enabled := false;
      for i := 0 to CBY_QC.ComponentCount - 1 do
      begin
        if CBY_QC.components[i] is TBitbtn then
          TBitbtn(CBY_QC.Components[i]).Enabled := false;
      end;
    end;
    //
    orderid.Caption := 'Order ID:' + QSearch.FieldByName('workOrderId').AsString;
    SKU.Caption := 'SKU:' + QSearch.FieldByName('style').AsString;
    Acceptdate.Caption := 'Accept Date:' + QSearch.FieldByName('factoryAcceptDate').AsString;
    Shippingdate.Caption := 'Shipping Date:' + QSearch.FieldByName('initialEstimatedShipDate').AsString;
    SIZE.Caption := 'SIZE:UNISEX' + QSearch.FieldByName('size').AsString;
    Query1.Active := false;
    Query1.SQL.Clear;
    Query1.SQL.Add('Select * from CBY_Orders_PID where workorderid = ''' + QSearch.FieldByName('workOrderId').AsString + '''');
    Query1.Active := true;
    if not Query1.IsEmpty then
    begin
      Query1.First;
      pid1.Caption := 'PID1:' + Query1.FieldByName('PID').AsString;
      Query1.Next;
      if not Query1.Eof then
        pid2.Caption := 'PID2:' + Query1.FieldByName('PID').AsString;
    end
    else
    begin
      pid1.Caption := 'PID1:';
      pid2.Caption := 'PID2:';
    end;
  end;
end;

procedure TCBY_QC.BitBtn1Click(Sender: TObject);
var
  i: integer;
  ID: string;
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.Add('select ID from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) + '%''');
    sql.add('order by ID');
    active := true;
    if recordcount > 0 then
    begin
      last;
      ID := fieldbyname('ID').AsString;
      ID := copy(ID, 7, 4);
      ID := inttostr(strtoint(ID) + 1);
      while length(ID) < 4 do
      begin
        ID := '0' + ID;
      end;
    end
    else
    begin
      ID := '0001';
    end;
    ID := FormatDatetime('yyMMDD', now()) + ID;
    active := false;
    sql.Clear;
  end;

  with QUpdate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Insert into WOPR_MA ');
    SQL.Add(' (SCDate, SJXH,  GSBH, DepNo, GXLB, SCBH, CC, PrdQty, InsQty, DefQty, Result, ID, UserID, UserDate, YN, YYBH) ');
    SQL.Add('Values ');
    SQL.Add(' (Convert(varchar,GetDate(),111),''' + copy(cbbWorkTime.Text, 1, 2) + ''',''' + main.Edit2.Text +
      ''',''CBY'',''HI'',''' + ED_Barcode.Text + ''',''' + copy(Size.Caption, 12, 4) + ''',1,0,1,''F'', ''' + ID + ''',''' +
      main.Edit1.Text + ''',GetDate(),''1'',''' + TButton(Sender).Hint + ''') ');
    ExecSQL();
  end;

  colorbutton1.Enabled := false;
  for i := 0 to CBY_QC.ComponentCount - 1 do
  begin
    if CBY_QC.Components[i] is TBitbtn then
    begin
      if CBY_QC.components[i] is TBitbtn then
        TBitbtn(CBY_QC.Components[i]).Enabled := false;
    end;
  end;
  LOADFTT;
  ED_Barcode.Text := '';
  ED_Barcode.SetFocus;
  Showmessage('Success');
end;

procedure TCBY_QC.Button1Click(Sender: TObject);
var
  i, j: integer;
  BTNName, btncaption, tmpbtncaption: string;
  tmpBITBTN: TBitBtn;
begin
  {  Query1.Active := false;
    Query1.SQL.Clear;
    Query1.SQL.Add('select YYBH,YWSM from QCBLYY where GSBH = '''+main.Edit2.Text+''' and DFL = ''AR'' ');
    Query1.SQL.Add('and YYBH < ''B'' order by YYBH');
    Query1.Active := true;
    Query1.First;
    for i := 0 to CBY_QC.ComponentCount - 1 do
    begin
      if CBY_QC.Components[i] is TBitbtn then
      begin
        BTNName := TBitbtn(CBY_QC.Components[i]).Name;
        BTNName := trim(Copy(BTNName, 1, 8));
        tmpBITBTN := TBitbtn(FindComponent(BTNName));
        if (tmpBITBTN <> nil) then
        begin
          if Query1.Eof then
            tmpBITBTN.Visible := false
          else begin
            tmpBITBTN.Hint := Query1.fieldbyname('YYBH').AsString;
            btncaption := '';
            tmpbtncaption := Query1.fieldbyname('YWSM').AsString;
            for j := 1 to 5 do begin
              if (j = 1) and (length(tmpbtncaption) <= 12) then begin
                btncaption := tmpbtncaption;
                tmpbtncaption := '';
              end
              else if length(tmpbtncaption) > 12 then begin
                btncaption := btncaption + copy(tmpbtncaption,1,12)+'#13';
                tmpbtncaption := copy(tmpbtncaption,13,length(tmpbtncaption));
              end
              else if tmpbtncaption = '' then
              else if length(tmpbtncaption) < 12 then begin
                btncaption := btncaption + copy(tmpbtncaption,1,length(tmpbtncaption));
                tmpbtncaption := '';
              end
            end;
            tmpBITBTN.Caption := btncaption;
          end;
          Query1.Next;
        end;
      end;
    end;  }
end;

procedure TCBY_QC.ColorButton1Click(Sender: TObject);
var
  i: integer;
  ID: string;
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.Add('select ID from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) + '%''');
    sql.add('order by ID');
    active := true;
    if recordcount > 0 then
    begin
      last;
      ID := fieldbyname('ID').AsString;
      ID := copy(ID, 7, 4);
      ID := inttostr(strtoint(ID) + 1);
      while length(ID) < 4 do
      begin
        ID := '0' + ID;
      end;
    end
    else
    begin
      ID := '0001';
    end;
    ID := FormatDatetime('yyMMDD', now()) + ID;
    active := false;
    sql.Clear;
  end;

  with QUpdate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Insert into WOPR_MA ');
    SQL.Add(' (SCDate, SJXH,  GSBH, DepNo, GXLB, SCBH, CC, PrdQty, InsQty, DefQty, Result, ID, UserID, UserDate, YN, YYBH) ');
    SQL.Add('Values ');
    SQL.Add(' (Convert(varchar,GetDate(),111),''' + copy(cbbWorkTime.Text, 1, 2) + ''',''' + main.Edit2.Text +
      ''',''CBY'',''HI'',''' + ED_Barcode.Text + ''',''' + copy(Size.Caption, 12, 4) + ''',1,1,0,''P'', ''' + ID + ''',''' +
      main.Edit1.Text + ''',GetDate(),''1'','''') ');
    ExecSQL();
  end;
  ColorButton1.Enabled := false;
  for i := 0 to CBY_QC.ComponentCount - 1 do
  begin
    if CBY_QC.Components[i] is TBitbtn then
    begin
      if CBY_QC.components[i] is TBitbtn then
        TBitbtn(CBY_QC.Components[i]).Enabled := false;
    end;
  end;
  LOADFTT;
  ED_Barcode.Text := '';
  ED_Barcode.SetFocus;
  Showmessage('Success');
end;

procedure TCBY_QC.ED_BarcodeChange(Sender: TObject);
var
  i: Integer;
  Order, FilePath: string;
begin
  {  if length(trim(ED_Barcode.Text)) < 8 then begin
      colorbutton1.Enabled := false;
      for i := 0 to CBY_QC.ComponentCount - 1 do
      begin
        if CBY_QC.components[i] is TBitbtn then
          TBitbtn(CBY_QC.Components[i]).Enabled:=false;
      end;
    end
    else begin}
  //    if (RG1.ItemIndex = 1) and (length(trim(ED_Barcode.Text)) < 11) then begin
{  colorbutton1.Enabled := false;
  for i := 0 to CBY_QC.ComponentCount - 1 do
  begin
    if CBY_QC.components[i] is TBitbtn then
      TBitbtn(CBY_QC.Components[i]).Enabled := false;
  end;
  //      exit;
  //    end;
  LOADFTT;
  cbbWorkTime.ItemIndex := 0;
  for i := 0 to cbbWorkTime.items.count - 1 do
  begin
    if cbbWorkTime.Items[i] = FormatDatetime('HH:30', Time()) then
    begin
      cbbWorkTime.ItemIndex := i;
      break;
    end;
  end;

  ED_Barcode.Text := StringReplace(ED_Barcode.Text, '%O', '_', [rfReplaceAll]);

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CBY_Orders.* FROM CBY_Orders');
    SQL.Add('WHERE CBY_Orders.workOrderId LIKE ''' + ED_Barcode.Text + '%'' and isnull(Cancel,0) <> 1');
    Active := true;
  end;

  if (QSearch.RecordCount > 0) then
  begin
    FilePath := main.ImagePath + ED_Barcode.Text + '\' + ED_Barcode.Text;
    if FileExists(FilePath + '-1.png') then
    begin
      Image1.Stretch := true;
      try
        Image1.Picture.LoadFromFile(FilePath + '-1.png');
      except
        Image1.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image1.Stretch := false;
      Image1.Picture.Assign(Image7.Picture);
    end;

    if FileExists(FilePath + '-2.png') then
    begin
      Image2.Stretch := true;
      try
        Image2.Picture.LoadFromFile(FilePath + '-2.png');
      except
        Image2.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image2.Stretch := false;
      Image2.Picture.Assign(Image7.Picture);
    end;

    if FileExists(FilePath + '-3.png') then
    begin
      Image3.Stretch := true;
      try
        Image3.Picture.LoadFromFile(FilePath + '-3.png');
      except
        Image3.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image3.Stretch := false;
      Image3.Picture.Assign(Image7.Picture);
    end;

    if FileExists(FilePath + '-4.png') then
    begin
      Image4.Stretch := true;
      try
        Image4.Picture.LoadFromFile(FilePath + '-4.png');
      except
        Image4.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image4.Stretch := false;
      Image4.Picture.Assign(Image7.Picture);
    end;

    if FileExists(FilePath + '-5.png') then
    begin
      Image5.Stretch := true;
      try
        Image5.Picture.LoadFromFile(FilePath + '-5.png');
      except
        Image5.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image5.Stretch := false;
      Image5.Picture.Assign(Image7.Picture);
    end;

    if FileExists(FilePath + '-6.png') then
    begin
      Image6.Stretch := true;
      try
        Image6.Picture.LoadFromFile(FilePath + '-6.png');
      except
        Image6.Picture.Assign(Image7.Picture);
      end;
    end
    else
    begin
      Image6.Stretch := false;
      Image6.Picture.Assign(Image7.Picture);
    end;

    Panel4.Caption := QSearch.FieldByName('workOrderId').AsString;
    ColorButton1.Enabled := true;

    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add('select ID from WOPR_MA where SCBH = ''' + ED_Barcode.Text + '''');
      sql.add('and Result = ''P''');
      active := true;
      if not IsEmpty then
      begin
        showmessage('This order already Pass');
        Inspection.Caption := 'Inspection: PASS';
        colorbutton1.Enabled := false;
        ED_Barcode.Text := '';
        ED_Barcode.SetFocus;
        for i := 0 to CBY_QC.ComponentCount - 1 do
        begin
          if CBY_QC.components[i] is TBitbtn then
            TBitbtn(CBY_QC.Components[i]).Enabled := false;
        end;
      end
      else
      begin
        active := false;
        sql.Clear;
        sql.Add('select count(*) from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) + '%''');
        sql.add('and SCBH = ''' + ED_Barcode.Text + '''');
        sql.add('and Result = ''F''');
        active := true;
        Inspection.Caption := 'Inspection: ' + Fields[0].AsString;
        colorbutton1.Enabled := true;
        for i := 0 to CBY_QC.ComponentCount - 1 do
        begin
          if CBY_QC.components[i] is TBitbtn then
            TBitbtn(CBY_QC.Components[i]).Enabled := true;
        end;
      end;
    end;
  end
  else
  begin
    Image1.Stretch := false;
    Image1.Picture.Assign(Image7.Picture);

    Image2.Stretch := false;
    Image2.Picture.Assign(Image7.Picture);

    Image3.Stretch := false;
    Image3.Picture.Assign(Image7.Picture);

    Image4.Stretch := false;
    Image4.Picture.Assign(Image7.Picture);

    Image5.Stretch := false;
    Image5.Picture.Assign(Image7.Picture);

    Image6.Stretch := false;
    Image6.Picture.Assign(Image7.Picture);

    Panel4.Caption := '';
    ColorButton1.Enabled := false;

    ShowMessage('This order has been cancelled!');
    ED_Barcode.Text := '';
    ED_Barcode.SetFocus;
    colorbutton1.Enabled := false;
    for i := 0 to CBY_QC.ComponentCount - 1 do
    begin
      if CBY_QC.components[i] is TBitbtn then
        TBitbtn(CBY_QC.Components[i]).Enabled := false;
    end;
  end;
  //
  orderid.Caption := 'Order ID:' + QSearch.FieldByName('workOrderId').AsString;
  SKU.Caption := 'SKU:' + QSearch.FieldByName('style').AsString;
  Acceptdate.Caption := 'Accept Date:' + QSearch.FieldByName('factoryAcceptDate').AsString;
  Shippingdate.Caption := 'Shipping Date:' + QSearch.FieldByName('initialEstimatedShipDate').AsString;
  SIZE.Caption := 'SIZE:UNISEX' + QSearch.FieldByName('size').AsString;
  Query1.Active := false;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from CBY_Orders_PID where workorderid = ''' + QSearch.FieldByName('workOrderId').AsString + '''');
  Query1.Active := true;
  if not Query1.IsEmpty then
  begin
    Query1.First;
    pid1.Caption := 'PID1:' + Query1.FieldByName('PID').AsString;
    Query1.Next;
    if not Query1.Eof then
      pid2.Caption := 'PID2:' + Query1.FieldByName('PID').AsString;
  end
  else
  begin
    pid1.Caption := 'PID1:';
    pid2.Caption := 'PID2:';
  end;      }
  //  end;
end;

procedure TCBY_QC.LOADFTT();
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    //    SQL.ADD('Select Pass,FALSE,PASS+FALSE as TOTAL,case when pass+FALSE > 0 and PASS > 0 then ROUND(PASS * 100/ (PASS+FALSE)  , 2) else 0 end AS FTT from (');
    SQL.ADD('Select Pass,FALSE,PASS+FALSE as TOTAL,case when pass+FALSE > 0 and PASS > 0 then ROUND((select count(*) from WOPR_MA where YYBH is not null and Result = ''P'' and GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.ADD('and SCBH not in (select SCBH from WOPR_MA where Result = ''F'') AND ID like ''' + FormatDatetime('yyMMDD', now()) +
      '%'' and USERID = ''' + main.Edit1.Text + ''') * 100/ (PASS+FALSE)  , 2) else 0 end AS FTT from (');
    SQL.Add('Select count(*) as PASS,(Select count(*) as FALSE from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) +
      '%'' and Result = ''F'' and USERID = ''' + main.Edit1.Text + ''') as FALSE ');
    SQL.Add('from WOPR_MA where ID like ''' + FormatDatetime('yyMMDD', now()) + '%'' and Result = ''P'' and USERID = ''' +
      main.Edit1.Text + '''');
    SQL.ADD(') WOPR_MA');
    //    showmessage(SQL.TEXT);
    Active := true;
    TPASS.Caption := 'Today Pass: ' + Fieldbyname('PASS').AsString;
    TNG.Caption := 'Today NG: ' + Fieldbyname('FALSE').AsString;
    FTT.Caption := 'FTT:' + Fieldbyname('FTT').AsString + '%';
  end;
end;

end.


