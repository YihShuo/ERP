unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables,DBGridS,DBGridEh, Grids
  ,ComCtrls;


type
  Tmain = class(TForm)                                            
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    Image1: TImage;
    SN11: TMenuItem;
    SN12: TMenuItem;
    Query1: TQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    SN21: TMenuItem;
    SN9: TMenuItem;
    SN13: TMenuItem;
    SN91: TMenuItem;
    BOM1: TMenuItem;
    SN41: TMenuItem;
    SN31: TMenuItem;
    SN33: TMenuItem;
    SN32: TMenuItem;
    SN4: TMenuItem;
    SN14: TMenuItem;
    SN34: TMenuItem;
    SN15: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN92: TMenuItem;
    SN93: TMenuItem;
    SN94: TMenuItem;
    SN44: TMenuItem;
    SN45: TMenuItem;
    SN16: TMenuItem;
    SN17: TMenuItem;
    SN18: TMenuItem;
    BLimitHideQry: TQuery;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN53: TMenuItem;
    SN46: TMenuItem;
    N47DeveloptoSimis1: TMenuItem;
    SN22: TMenuItem;
    SN23: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN62: TMenuItem;
    SN63: TMenuItem;
    SN19: TMenuItem;
    SN95: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    N1AHaiQuanData1: TMenuItem;
    SNA: TMenuItem;
    SNA1: TMenuItem;
    SN96: TMenuItem;
    SN151: TMenuItem;
    SN152: TMenuItem;
    SN161: TMenuItem;
    SN162: TMenuItem;
    SN181: TMenuItem;
    SN182: TMenuItem;
    SN191: TMenuItem;
    SN192: TMenuItem;
    SNA2: TMenuItem;
    SN97: TMenuItem;
    SN1B: TMenuItem;
    SN1C: TMenuItem;
    SN15A: TMenuItem;
    SN35: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN91Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN92Click(Sender: TObject);
    procedure SN93Click(Sender: TObject);
    procedure SN94Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SN17Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN46Click(Sender: TObject);
    procedure N47DeveloptoSimis1Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN63Click(Sender: TObject);
    procedure SN95Click(Sender: TObject);
    procedure SN71Click(Sender: TObject);
    procedure SN72Click(Sender: TObject);
    procedure N1AHaiQuanData1Click(Sender: TObject);
    procedure SNA1Click(Sender: TObject);
    procedure SN96Click(Sender: TObject);
    procedure SN151Click(Sender: TObject);
    procedure SN161Click(Sender: TObject);
    procedure SN181Click(Sender: TObject);
    procedure SN191Click(Sender: TObject);
    procedure SN152Click(Sender: TObject);
    procedure SN162Click(Sender: TObject);
    procedure SN182Click(Sender: TObject);
    procedure SN192Click(Sender: TObject);
    procedure SNA2Click(Sender: TObject);
    procedure SN97Click(Sender: TObject);
    procedure SN1BClick(Sender: TObject);
    procedure SN1CClick(Sender: TObject);
    procedure SN15AClick(Sender: TObject);
    procedure SN35Click(Sender: TObject);
  private
     MKID:String;
     LanguageID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
  public
    { Public declarations }
    ServerIP:string;
    LIY_DD,LIY_ERP:String;
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();    
  end;

var
  main: Tmain;
  suser,spwd:string;
implementation
  uses MakeInvoice1, InvoicePL1, RYPrice1, ShippingFlowChart1, FunUnit,
  DetailInVNo1, EntryCheck1, SampleOrder1, Bomshipping11, DeliverAccount1,
  ShipReviseUsage1,WareStock1,DDZL_BOMM1, DetailInSampleOrder1, MaHaiQuan1,
  ShipDateConfirm1, CustomsShoes1, ShippingDestroy1,
  ShippingExportOrderList1, YPZLShipReviseUsage1, YPZL_BOMM1, DM1,
  MaHoaDon1, MaHQvaMaHD1, MaHaiQuanTC1, CGZL2CNO1, QWHS2CNO1, QWHSRpt1,
  ShippingConfirmShoes1, DevtoSimis1, SplitInvoice1, MergeInvoice1,
  Booking1, DozcBill1, DoczCO1, MaHaiQuanKD1, TWShippingOrderList1,
  MakeInvoiceTW1, InvoicePL_TW1, HGUsage1, Bill_Info1,
  Traceability_Material_Receiving1, MaHaiQuan_NK1, MaHoaDon_HD1,
  MaHaiQuan_TC1, MaHaiQuan_KD1, Bill_ShippingFG1,
  Traceability_Shipping_FG1, MaHaiQuanNQ1, MaHaiQuanNKNQ1, MaiHaiQuan14161,
  ShippingUsage1;

{$R *.dfm}
procedure Tmain.showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);  //
begin
   //Create Form and Show Form
   if parentClass<>nil then
   begin
     if fm <> nil then
     begin
        TForm(fm).show;
        TForm(fm).windowstate := wsmaximized;
     end else
     begin
        fm := TControlClass(parentClass).create(self);
        SaveProLog(MKID, miname, main.Edit1.Text);
        TForm(fm).show;
        main.FormLanguage(fm,TForm(fm).Name);
     end;
   end;
end;

procedure Tmain.SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
//---20150817 Projoe 補上由 Nick 所提供之追蹤function log 的程式
//用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
var
  MyQuery: TQuery;
begin
  try
    with MyQuery do
      begin
        MyQuery := TQuery.Create(application);
        DatabaseName := 'DB';

        Close;
        SQL.Clear;
        SQL.Add('insert into PROGLOG (MKID,FORMID,USERID,USERDATE)');
        SQL.Add('values (:MKID,:FORMID,:USERID,:USERDATE)');
        ParamByName('MKID').Value := AMKID;
        ParamByName('FORMID').Value := AFORMID;
        ParamByName('USERID').Value := AUSERID;
        ParamByName('USERDATE').Value := now;
        if not Prepared then
          Prepare;
        ExecSQL;
      end;
  finally
    FreeAndNil(MyQuery);
  end;
end;
//
procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var sline:string;
    textvar:textfile;
    MDIChildIsExists:boolean;
    i:Integer;
begin
  //20141105 檢查子Form是否全部關閉和自動關閉流程Form
  MDIChildIsExists:=false;
  for i:=0 to main.MDIChildCount-1 do
  begin
    if main.MDIChildren[i]<>nil then
    begin
      if main.MDIChildren[i].Name='ShippingFlowChart' then
      begin
        TShippingFlowChart(main.MDIChildren[i]).willClose:=true;
      end else
      begin
        MDIChildIsExists:=true;
        break;
      end;
    end;
  end;
  //
  if MDIChildIsExists=true then //20141105 修改if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
    action:=canone;
  end
    else
      begin
        with query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('update Busers set LASTDATETIME=getdate()' ) ;
            sql.add('where USERID='+''''+edit1.Text+'''' );
            execsql;
          end;
        action:=cafree;
        FuncObj.Free;
  end;

end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
    //20140106
    FuncObj:=TFuncObj.Create;
    FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
    ServerIP:=FuncObj.GetBDE_SERVERIP(DM.DB1.AliasName);
    FuncObj.GetBDE_DATABASENAME(DM.DB1.AliasName,LIY_ERP,LIY_DD);
    //
    shortdateformat:='yyyy/MM/dd';
    {decodedate(date,y,m,d);
    if y>2020 then
    begin
      showmessage('Wrong!!!!!Contact with computer designer');
      application.terminate;
    end;}
     //指定BDE路徑
    Session.NetFileDir := ExtractFileDir(Application.ExeName);
    assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
    reset(textvar);
    readln(textvar,sline);
    if length(sline)<2 then
      begin
        showmessage('Wrong program. Pls run the main program first.');
        closefile(textvar);
        application.Terminate;
      end
      else
        begin
          suser:=copy(sline,0,pos('=',sline)-1);
          spwd:=copy(sline,pos('=',sline)+1,maxint);
          image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
        end;
    closefile(textvar);
    edit1.Text:=suser;
    //showmessage(sline);
    assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
    reset(textvar);
    readln(textvar,sline);
    edit2.Text:=sline;
    readln(textvar,sline);//20200424第二行語言
    LanguageID:=sline;
    Closefile(textvar);
    with Query1 do
    begin
      //---20150817 Projoe 將Params 改為 ParamByName 來增加可讀性
      ParamByName('userid').Value := suser;
      ParamByName('mkid').Value := '16';  MKID:='16';
      ParamByName('GSBH').Value := edit2.text;
      Active := true;
      //
      BLimitHideQry.ParamByName('mkid').Value := '16';
      BLimitHideQry.Active:=true;
      EnableFORMID();    //20211009 功能選單
      BLimitHideQry.Active:=false;
      //
      Active := false;
    end;
   Language();
end;
//20211009 功能選單啟用或停用
procedure Tmain.EnableFORMID();
var i:integer;
    MenuName:String;
    tmpMenuItem:TMenuItem;
begin
  try
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        MenuName:=trim(Copy(MenuName,1,6));
        tmpMenuItem:=TMenuItem(FindComponent(MenuName));
        if (tmpMenuItem<>nil)  then
        begin
          if BLimitHideQry.Locate('FORMID', MenuName, []) then
          begin
             tmpMenuItem.enabled:=Query1.Locate('FORMID', MenuName, []);
             if BLimitHideQry.FieldByName('YN').AsString='2' then //Hide
             tmpMenuItem.visible:=false;
          end;
        end;
     end;
   end;
  except
    on E:Exception do
    begin
      Showmessage(E.Message+' '+MenuName);
    end;
  end;
end;

procedure Tmain.Language();
var i:integer;
    FieldLangeuage:String;
    tmpMenuItem:TMenuItem;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select ForMID,'+FieldLangeuage+' as Langeuage from BLimit WHERE  MKID = '''+MKID+'''  ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      tmpMenuItem:=TMenuItem(FindComponent(Query1.FieldByName('ForMID').AsString));
      if tmpMenuItem<>nil then
      begin
        if Query1.FieldByName('Langeuage').AsString<>'' then
        tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
      end;
      Query1.Next;
    end;
  end;
end;

//子Form功能介面語言
procedure Tmain.FormLanguage(var formObj:Pointer ;mainForm:string);
var i:integer;
    FieldLangeuage:String;
    //
    tmpLabel:TLabel;
    tmpButton:TButton;
    tmpMenuItem:TMenuItem;
    tmpCheckBox:TCheckBox;
    tmpRadioButton:TRadioButton;
    tmpTabSheet:TTabSheet;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,'+FieldLangeuage+' as Langeuage from BLanguage WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TLabel then
          begin
             tmpLabel := (Obj as TLabel);
             tmpLabel.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TButton then
          begin
             tmpButton := (Obj as TButton);
             tmpButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TMenuItem then
          begin
            tmpMenuItem := (Obj as TMenuItem);
            tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TCheckBox then
          begin
            tmpCheckBox := (Obj as TCheckBox);
            tmpCheckBox.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TRadioButton then
          begin
            tmpRadioButton := (Obj as TRadioButton);
            tmpRadioButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TTabSheet then
          begin
            tmpTabSheet := (Obj as TTabSheet);
            tmpTabSheet.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;          
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
    FormDBGridLanguage(formObj,mainForm);
  end;
end;

//子Form功能DBGrid 或 DGBridEh 介面語言
procedure Tmain.FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
var i,j:integer;
    FieldLangeuage:String;
    //
    tmpDBGrid:TDBGrid;
    tmpDBridEh:TDBGridEh;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,FieldName,'+FieldLangeuage+' as Langeuage from BLanguage_DBGrid WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' order by VCLID ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TDBGrid then
          begin
             tmpDBGrid := (Obj as TDBGrid);
             for j:=0 to tmpDBGrid.Columns.Count-1 do
             begin
               if tmpDBGrid.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBGrid.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
          if Obj is TDBGridEh then
          begin
             tmpDBridEh := (Obj as TDBGridEh);
             for j:=0 to tmpDBridEh.Columns.Count-1 do
             begin
               if tmpDBridEh.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBridEh.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
  end;
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(MakeInvoice), TMakeInvoice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(InvoicePL), TInvoicePL, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(RYPrice), TRYPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(DetailInVNo), TDetailInVNo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN91Click(Sender: TObject);
begin
  showFm(Pointer(EntryCheck), TEntryCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
   showFm(Pointer(Sampleorder), TSampleorder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
   showFm(Pointer(Bomshipping1), TBomshipping1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
   showFm(Pointer(DeliverAccount), TDeliverAccount, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
   showFm(Pointer(ShipReviseUsage), TShipReviseUsage, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(WareStock), TWareStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(DDZL_BOMM), TDDZL_BOMM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(DetailInSampleOrder), TDetailInSampleOrder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(ShipDateConfirm), TShipDateConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN92Click(Sender: TObject);
begin
  showFm(Pointer(customsShoes), TcustomsShoes, TMenuItem(Sender).Name);                              
end;

procedure Tmain.SN93Click(Sender: TObject);
begin
  showFm(Pointer(ShippingDestroy), TShippingDestroy, TMenuItem(Sender).Name);
end;

procedure Tmain.SN94Click(Sender: TObject);
begin
   showFm(Pointer(ShippingExportOrderList), TShippingExportOrderList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
   showFm(Pointer(YPZLShipReviseUsage), TYPZLShipReviseUsage, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
   showFm(Pointer(YPZL_BOMM), TYPZL_BOMM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17Click(Sender: TObject);
begin
   showFm(Pointer(MaHQvaMaHD), TMaHQvaMaHD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
   showFm(Pointer(CGZL2CNO), TCGZL2CNO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
   showFm(Pointer(QWHS2CNO), TQWHS2CNO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
   showFm(Pointer(QWHSRpt), TQWHSRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN46Click(Sender: TObject);
begin
  showFm(Pointer(ShippingConfirmShoes), TShippingConfirmShoes, TMenuItem(Sender).Name);
end;

procedure Tmain.N47DeveloptoSimis1Click(Sender: TObject);
begin
  showFm(Pointer(DevtoSimis), TDevtoSimis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(SplitInvoice), TSplitInvoice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(MergeInvoice), TMergeInvoice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  showFm(Pointer(Booking), TBooking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
  showFm(Pointer(DozcBill), TDozcBill, TMenuItem(Sender).Name);
end;

procedure Tmain.SN63Click(Sender: TObject);
begin
  showFm(Pointer(DoczCO), TDoczCO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN95Click(Sender: TObject);
begin
  showFm(Pointer(TWShippingOrderList), TTWShippingOrderList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN71Click(Sender: TObject);
begin
  showFm(Pointer(MakeInvoiceTW), TMakeInvoiceTW, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72Click(Sender: TObject);
begin
  showFm(Pointer(InvoicePL_TW), TInvoicePL_TW, TMenuItem(Sender).Name);
end;

procedure Tmain.N1AHaiQuanData1Click(Sender: TObject);
begin
  showFm(Pointer(HGUsage), THGUsage, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA1Click(Sender: TObject);
begin
  showFm(Pointer(Bill_Info), TBill_Info, TMenuItem(Sender).Name);
end;

procedure Tmain.SN96Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Material_Receiving), TTraceability_Material_Receiving, TMenuItem(Sender).Name);
end;

procedure Tmain.SN151Click(Sender: TObject);
begin
  showFm(Pointer(MaHaiQuan), TMaHaiQuan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN161Click(Sender: TObject);
begin
   showFm(Pointer(MaHoaDon), TMaHoaDon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN181Click(Sender: TObject);
begin
   showFm(Pointer(MaHaiQuanTC), TMaHaiQuanTC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN191Click(Sender: TObject);
begin
  showFm(Pointer(MaHaiQuanKD), TMaHaiQuanKD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN152Click(Sender: TObject);
begin
  showFm(Pointer(MaHaiQuan_NK), TMaHaiQuan_NK, TMenuItem(Sender).Name);
end;

procedure Tmain.SN162Click(Sender: TObject);
begin
  showFm(Pointer(MaHoaDon_HD), TMaHoaDon_HD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN182Click(Sender: TObject);
begin
  showFm(Pointer(MaHaiQuan_TC), TMaHaiQuan_TC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN192Click(Sender: TObject);
begin
  showFm(Pointer(MaHaiQuan_KD), TMaHaiQuan_KD, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA2Click(Sender: TObject);
begin
  showFm(Pointer(Bill_ShippingFG), TBill_ShippingFG, TMenuItem(Sender).Name);
end;

procedure Tmain.SN97Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Shipping_FG), TTraceability_Shipping_FG, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1BClick(Sender: TObject);
begin
   showFm(Pointer(MaHaiQuanNQ), TMaHaiQuanNQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1CClick(Sender: TObject);
begin
   showFm(Pointer(MaHaiQuanNKNQ), TMaHaiQuanNKNQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15AClick(Sender: TObject);
begin
   showFm(Pointer(MaiHaiQuan1416), TMaiHaiQuan1416, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(ShippingUsage), TShippingUsage, TMenuItem(Sender).Name);
end;

end.
