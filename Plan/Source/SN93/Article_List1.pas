unit Article_List1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, comobj, Menus  ,Math, IniFiles ,fununit, ComCtrls,
  DBClient;

type
  TArticle_List = class(TForm)
    xxzl: TQuery;
    DS_xxzl: TDataSource;
    xxzlSKU: TStringField;
    xxzlSR: TStringField;
    xxzlDDMH: TStringField;
    xxzlDMGJ: TStringField;
    xxzlDAOMH: TStringField;
    xxzlProduction_Category: TStringField;
    xxzlVERSION: TStringField;
    xxzlHourly_Output: TFloatField;
    xxzlIDL: TIntegerField;
    xxzlIE_DL: TIntegerField;
    xxzlActivation_Time: TDateTimeField;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EDSKU: TEdit;
    EDSR: TEdit;
    EDDAO: TEdit;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    EDDDMH: TEdit;
    EDType: TEdit;
    EDCategory: TEdit;
    Group: TCheckBox;
    DBGridEh3: TDBGridEh;
    Panel1: TPanel;
    Analyze: TButton;
    Button4: TButton;
    CDS: TClientDataSet;
    xxzlRN1: TFloatField;
    xxzlywsm: TStringField;
    xxzlTest_Day: TDateTimeField;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    CK1: TCheckBox;

    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure BAnalyzeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Article_List: TArticle_List;

implementation

{$R *.dfm}

procedure TArticle_List.Button1Click(Sender: TObject);
begin
  with xxzl do
  begin
    active := false;
    sql.Clear;
    if  Group.Checked=true then
      begin
        SQL.Add('Select DENSE_RANK() over(order by SKU,DDMH,DMGJ,DAOMH) as RN1,a.*');
        SQL.Add('from(select ROW_NUMBER() over(PARTITION BY XXZL.ARTICLE,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,IE_ARTICLEDATA.Production_Category order by Activation_Time DESc) as RN,');
      end
    else
      begin
        SQL.Add('Select DENSE_RANK() over(order by XXZL.ARTICLE,XXZL.DDMH,XXZL.DMGJ,XXZL.DAOMH) as RN1,');
      end;
    SQL.Add(' XXZL.ARTICLE as SKU,kfxxzl.DEVCODE as SR,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,IE_ARTICLEDATA.Production_Category,IE_ARTICLEDATA.VERSION  ');
    SQL.Add(',IE_ARTICLEDATA.Hourly_Output,lbzls.ywsm ,IE_ARTICLEDATA.IDL,IE_ARTICLEDATA.IE_DL,Test_Day,IE_ARTICLEDATA.Activation_Time');
    SQL.Add('From IE_ARTICLEDATA inner join xxzl on xxzl.XieXing=IE_ARTICLEDATA.XieXing and IE_ARTICLEDATA.SheHao=xxzl.SheHao  ');
    SQL.Add('left join kfxxzl on IE_ARTICLEDATA.XieXing = kfxxzl.XieXing and IE_ARTICLEDATA.SheHao = kfxxzl.SheHao  ');
    SQL.Add('LEFT JOIN lbzls  ON kfxxzl.xiegn = lbzls.lbdh AND lbzls.lb = ''03''');
    SQL.Add('where 1=1 ');
    if CK1.Checked then
    begin
      sql.add('and XXZL.YN='''+'1''');
    end;
    if EDSKU.Text <> '' then
      sql.add('and xxzl.ARTICLE like ''' + EDSKU.Text + '%'' ');
    if EDSR.Text <> '' then
      sql.add('and kfxxzl.DEVCODE like ''' + EDSR.Text + '%'' ');
    if EDDAO.Text <> '' then
      sql.add('and xxzl.DAOMH like ''' + EDDAO.Text + '%'' ');
    if EDDDMH.Text <> '' then
      sql.add('and xxzl.DDMH like ''' + EDDDMH.Text + '%'' ');
    if EDType.Text <> '' then
      sql.add('and lbzls.ywsm like ''' + EDType.Text + '%'' ');
    if EDCategory.Text <> '' then
      sql.add('and IE_ARTICLEDATA.Production_Category like ''' + EDCategory.Text + '%'' ');
    if  Group.Checked=true then
      sql.add(')a where rn=1 ');
    if CheckBox1.Checked then
      SQL.Add(' order by Activation_Time desc  ')
    else
      SQL.Add(' order by Activation_Time  ');
    //showmessage(SQL.text);
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
end;

procedure TArticle_List.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TArticle_List.FormDestroy(Sender: TObject);
begin
  Article_List := nil;
end;

procedure TArticle_List.Button11Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    if xxzl.Active then
    begin
      if xxzl.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
    begin
        showmessage('No record.');
        abort;
    end;
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh3.Columns[i].Title.Caption;
      end;
      xxzl.First;
      j:=2;
      while   not  xxzl.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGridEh3.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGridEh3.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='10';
          end;
          xxzl.Next;
          inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
end;

procedure TArticle_List.BAnalyzeClick(Sender: TObject);
var sku:String;
    i,j,Hourly_Output:integer;
    IDL,DL,Others_IDL,Others_DL,IE_DL,IE_IDL,TTL:Double;
    CSAP:TStringlist;     
function RoundClassic(R: Real): Int64;
begin
  Result:= Trunc(R);
  if Frac(R) >= 0.5 then
    Result := Result + 1;
end;
begin
    if XXZL.active=false then
      begin
        showmessage('Please query first!');
        exit;
      end;
      
    XXZL.First;  
    CSAP:=TStringList.Create;
    CSAP.commatext:='Cutting,Stitching,Assembly,Packing';
    CDS.Close;
    CDS.FieldDefs.Clear;
    // ²K¥[Äæ¦ì (FieldName, FieldType, Size)
    CDS.FieldDefs.Add('SKU', ftString, 50);
    CDS.FieldDefs.Add('SR', ftString, 50);
    CDS.FieldDefs.Add('DDMH', ftString, 50);
    CDS.FieldDefs.Add('DMGJ', ftString, 50);
    CDS.FieldDefs.Add('DAOMH', ftString, 50);
    CDS.FieldDefs.Add('Hourly_Output', ftString, 50); 
    CDS.FieldDefs.Add('POH', ftFloat);
    CDS.FieldDefs.Add('DL', ftFloat);
    CDS.FieldDefs.Add('IDL', ftFloat);
    CDS.FieldDefs.Add('CUT_DL', ftFloat);
    CDS.FieldDefs.Add('CUT_IDL', ftFloat);
    CDS.FieldDefs.Add('Stitching_DL', ftFloat);
    CDS.FieldDefs.Add('Stitching_IDL', ftFloat);
    CDS.FieldDefs.Add('STOCK-FIT_DL', ftFloat);
    CDS.FieldDefs.Add('STOCK-FIT_IDL', ftFloat);
    CDS.FieldDefs.Add('Assembly_DL', ftFloat);
    CDS.FieldDefs.Add('Assembly_IDL', ftFloat);
    CDS.FieldDefs.Add('Packing_DL', ftFloat);
    CDS.FieldDefs.Add('Packing_IDL', ftFloat);
    CDS.FieldDefs.Add('Others_DL', ftFloat);
    CDS.FieldDefs.Add('Others_IDL', ftFloat);
    CDS.FieldDefs.Add('Others', ftString, 150);
    CDS.FieldDefs.Add('Test_Day', ftString, 15);
    CDS.FieldDefs.Add('VERSION', ftString, 10);
    CDS.FieldDefs.Add('ProdType', ftString, 10);
    CDS.FieldDefs.Add('Activation_Day', ftString, 10);
    CDS.CreateDataSet;
    CDS.Open;
    j:=0;
    for i:=1 to XXZL.RecordCount do
    begin
        if XXZL.fieldbyname('RN1').value<>j then
        begin
            if j<>0 then
              CDS.Post;
            CDS.Append;
            CDS.fieldbyname('SKU').asstring:=XXZL.fieldbyname('SKU').value;
            CDS.fieldbyname('SR').value:=XXZL.fieldbyname('SR').value;
            CDS.fieldbyname('DDMH').value:=XXZL.fieldbyname('DDMH').value;
            CDS.fieldbyname('DMGJ').value:=XXZL.fieldbyname('DMGJ').value;
            CDS.fieldbyname('DAOMH').value:=XXZL.fieldbyname('DAOMH').value;
            CDS.fieldbyname('Hourly_Output').value:=XXZL.fieldbyname('Hourly_Output').value;
            CDS.fieldbyname('VERSION').value:=XXZL.fieldbyname('VERSION').value;
            CDS.fieldbyname('Test_Day').value:=XXZL.fieldbyname('Test_Day').value;
            CDS.fieldbyname('ProdType').value:=XXZL.fieldbyname('ywsm').value;
            CDS.fieldbyname('Activation_Day').value:=XXZL.fieldbyname('Activation_Time').value;
            //IE_IDL:=XXZL.fieldbyname('IDL').value;
            j:=XXZL.fieldbyname('RN1').value;
            IDL:=0;
            Others_IDL:=0;
            DL:=0;
            Others_DL:=0;
            Hourly_Output:=0;
            CDS.fieldbyname('Others').value:='';
        end;  
        if (CSAP.IndexOf(XXZL.fieldbyname('Production_Category').asstring)>0)and (Hourly_Output=0) then
              begin
                if Hourly_Output=0 then
                  begin
                  Hourly_Output:=XXZL.fieldbyname('Hourly_Output').value;
                  IE_DL:=XXZL.fieldbyname('IE_DL').value;
                  IE_IDL:=XXZL.fieldbyname('IDL').value
                  end
                else
                  begin         
                    if XXZL.fieldbyname('IE_DL').asstring<> '' then
                      IE_DL:=RoundClassic(XXZL.fieldbyname('IE_DL').value*Hourly_Output/XXZL.fieldbyname('Hourly_Output').value*100)/100
                    else
                      IE_DL:=0;
                    if XXZL.fieldbyname('IDL').asstring<> '' then
                      IE_IDL:=RoundClassic(XXZL.fieldbyname('IDL').value*Hourly_Output/XXZL.fieldbyname('Hourly_Output').value*100)/100
                    else
                      IE_IDL:=0;
                  end;
              end
        else
              begin
                if XXZL.fieldbyname('IE_DL').asstring<> '' then
                  IE_DL:=RoundClassic(XXZL.fieldbyname('IE_DL').value*Hourly_Output/XXZL.fieldbyname('Hourly_Output').value*100)/100
                else
                  IE_DL:=0;
                if XXZL.fieldbyname('IDL').asstring<> '' then
                  IE_IDL:=RoundClassic(XXZL.fieldbyname('IDL').value*Hourly_Output/XXZL.fieldbyname('Hourly_Output').value*100)/100
                else
                  IE_IDL:=0;
              end;
            //IE_DL:=XXZL.fieldbyname('IE_DL').value;
        if XXZL.fieldbyname('Production_Category').value='Cutting' then
          begin
            CDS.fieldbyname('CUT_DL').value:=IE_DL;
            CDS.fieldbyname('CUT_IDL').value:=IE_IDL;
          end
        else if XXZL.fieldbyname('Production_Category').value='Stitching' then
          begin
            CDS.fieldbyname('Stitching_DL').value:=IE_DL;
            CDS.fieldbyname('Stitching_IDL').value:=IE_IDL;
          end
        else if XXZL.fieldbyname('Production_Category').value='STOCK-FIT' then
          begin
            CDS.fieldbyname('STOCK-FIT_DL').value:=RoundClassic(IE_DL*10)/10;
            CDS.fieldbyname('STOCK-FIT_IDL').value:=RoundClassic(IE_IDL*10)/10;
          end
        else if XXZL.fieldbyname('Production_Category').value='Assembly' then
          begin
            CDS.fieldbyname('Assembly_DL').value:=IE_DL;
            CDS.fieldbyname('Assembly_IDL').value:=IE_IDL;
          end
        else if XXZL.fieldbyname('Production_Category').value='Packing' then
          begin
            CDS.fieldbyname('Packing_DL').value:=IE_DL;
            CDS.fieldbyname('Packing_IDL').value:=IE_IDL;
          end
        else
          begin   
            CDS.fieldbyname('Others').value:=CDS.fieldbyname('Others').asstring+XXZL.fieldbyname('Production_Category').asstring
            +': DL='+floattostr(IE_DL)+' IDL='+floattostr(IE_IDL)+';';
            if XXZL.fieldbyname('IE_DL').asstring<> '' then
              Others_DL:=Others_DL+IE_DL;
            if XXZL.fieldbyname('IDL').asstring<> '' then
              Others_IDL:=Others_IDL+IE_IDL;
            CDS.fieldbyname('Others_DL').value:=RoundClassic(Others_DL*10)/10;
            CDS.fieldbyname('Others_IDL').value:=RoundClassic(Others_IDL*10)/10;

            {if CDS.fieldbyname('Others_DL').asstring<> '' then
                Others_IDL:=CDS.fieldbyname('Others_DL').value+XXZL.fieldbyname('IE_DL').value
            else
                CDS.fieldbyname('Others_DL').value:=XXZL.fieldbyname('IE_DL').value;

            if CDS.fieldbyname('Others_IDL').asstring<> '' then
              if XXZL.fieldbyname('IDL').asstring<> '' then
                CDS.fieldbyname('Others_IDL').value:=strtoint(CDS.fieldbyname('Others_IDL').asstring)+strtoint(XXZL.fieldbyname('IDL').asstring)
            else
                CDS.fieldbyname('Others_IDL').value:=XXZL.fieldbyname('IDL').value; }

          end;
        DL:=DL+IE_DL;
        IDL:=IDL+IE_IDL;
        CDS.fieldbyname('DL').value:=RoundClassic(DL*10)/10;
        CDS.fieldbyname('IDL').value:=RoundClassic(IDL*10)/10;
        TTL:=DL+IDL;
        if TTL>0 then
        CDS.fieldbyname('POH').value:=RoundClassic(Hourly_Output/TTL*100)/100;
        {if CDS.fieldbyname('DL').asstring<> '' then
            CDS.fieldbyname('DL').value:=CDS.fieldbyname('DL').value+XXZL.fieldbyname('IE_DL').value
        else
            CDS.fieldbyname('DL').value:=XXZL.fieldbyname('IE_DL').value;

        if CDS.fieldbyname('IDL').asstring<> '' then
           if XXZL.fieldbyname('IDL').asstring<> '' then
                CDS.fieldbyname('IDL').value:=strtoint(CDS.fieldbyname('IDL').asstring)+strtoint(XXZL.fieldbyname('IDL').asstring)
        else
           CDS.fieldbyname('IDL').value:=XXZL.fieldbyname('IDL').value;   }
        XXZL.Next;
    end;  
    CDS.Post;
    XXZL.First;
end;

procedure TArticle_List.FormCreate(Sender: TObject);
begin
      PageControl1.ActivePageIndex:=0;
end;

procedure TArticle_List.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    if CDS.Active then
    begin
      if CDS.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
    begin
        showmessage('No record.');
        abort;
    end;
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      //eclApp.Cells(1,1):='NO';
      CDS.First;

      //eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      end;
      CDS.First;
      j:=2;
      while   not  CDS.Eof   do
      begin
          for i:=0 to DBGridEh1.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+1):=CDS.Fields[i].asstring;
          end;
          CDS.Next;
          inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
end;

end.
