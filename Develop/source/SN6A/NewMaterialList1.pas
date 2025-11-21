unit NewMaterialList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI,fununit;


type
  TNewMaterialList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    dtp3: TDateTimePicker;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    temp: TQuery;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Query1SupplierCode: TStringField;
    Query1SupplierName: TStringField;
    Query1FlexNumber: TStringField;
    Query1FlexDescripion: TStringField;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1ShoeName: TStringField;
    Query1SR: TStringField;
    Query1Developer: TStringField;
    Query1Part: TStringField;
    Query1MaterialNumber: TStringField;
    Query1MaterialDescription: TStringField;
    Query1MaterialBuildDay: TDateTimeField;
    Label3: TLabel;
    Label4: TLabel;
    Query1devtype: TStringField;
    Check_Mine: TCheckBox;
    Label5: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Query1category: TStringField;
    Query1HQDeveloperName: TStringField;
    Query1CTS: TStringField;
    Query1PartName: TStringField;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Query1CGNO: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    NDate:TDate;
    AppDir:String;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewMaterialList: TNewMaterialList;

implementation

uses main1;

{$R *.dfm}

procedure TNewMaterialList.FormDestroy(Sender: TObject);
begin
  NewmaterialList:=nil;
end;

procedure TNewMaterialList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TNewMaterialList.Button1Click(Sender: TObject);
begin
  if (main.Edit2.Text = 'SKX') and (ComboBox2.Text = '') then begin
    showmessage('Please Keyin Brand!');
    abort;
  end;
  with query1 do
       begin
       active:=false;
       sql.Clear;
       SQL.Add('select devtype,main.csbh SupplierCode,zszl.zsywjc SupplierName,main.cldhflex FlexNumber,clzl_flexs.cldhflexdes FlexDescripion,jijie Season,kfjd Stage,');
       SQL.Add('xieming ShoeName,devcode SR,fd Developer,ywsm Part,main.clbh MaterialNumber,MatDes MaterialDescription,main.userdate MaterialBuildDay,main.category,main.NA HQDeveloperName,main.CTS');
       SQL.Add(',case when ( (left(clzl.cldh,3)=''V90'' and CLZL.cltd=''VT Mat'')   ');
       SQL.Add('  OR (LEFT(clzl.cldh,1) in (''A'',''C'',''F'',''K'')  and LEFT(clzl.cldh,3) not in (''A02'',''A08'',''A13'',''A48''))   ');
       SQL.Add('  OR (LEFT(clzl.cldh,1) =''P'' and (main.csbh=''M027''))) then ''Upper''   ');
       SQL.Add(' when ( (left(clzl.cldh,3)=''V90'' and CLZL.cltd=''VT Phu May'')   ');
       SQL.Add('  OR (LEFT(clzl.cldh,1) in (''B'',''L'',''M'',''N'')  and LEFT(clzl.cldh,3)  in (''D03'',''D11'',''J05'',''O02'',''A02'',''A08'',''A13'',''A48'')) ) then ''Sitching'' 			  ');
       SQL.Add(' when ( (left(clzl.cldh,3)=''V90'' and CLZL.cltd=''VT Phu Go'')   ');
       SQL.Add('  OR (LEFT(clzl.cldh,1) in (''D'',''E'',''O'',''I'',''J'')  and LEFT(clzl.cldh,3) not in (''D03'',''D11'',''J05'',''O02'')) ) then ''Sitching'' 	  ');
       SQL.Add(' when ( (left(clzl.cldh,3)=''V90'' and CLZL.cltd=''VT De'')   ');
       SQL.Add('  OR (LEFT(clzl.cldh,1) =''G''  and LEFT(clzl.cldh,3)=''J03'') ) then ''Bottom'' 				  ');
       SQL.Add(' else '''' end as PartName  ');
       SQL.Add(',max (case when substring(main.ypdh,4,1)=''K'' then cgzlss.cgno else '''' end ) as CGNO');
       SQL.Add('from (');
       SQL.Add('  select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.jijie,ypzl.kfjd,clzl_flex.cldhflex,ypzls.clbh,bwzl.bwdh,bwzl.ywsm,kfxxzl.devcode,clzl.ywpm MatDes,clzl.userdate,ypzls.csbh,xxzlkf.category,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls');
       SQL.Add('  left join ypzl on ypzls.ypdh=ypzl.ypdh');
       SQL.Add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.shehao=ypzl.shehao');
       SQL.Add('  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
       SQL.Add('  inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb=''N''');
       SQL.Add('  left join bwzl on bwzl.bwdh=ypzls.bwbh');
       SQL.Add('  left join clzl_flex on clzl_flex.cldh=clzl.cldh');
       SQL.Add('  WHERE 1=1');
       if edit1.text <>'' then
          SQL.Add('  and kfxxzl.jijie ='''+edit1.text+'''');
       if edit2.text <>'' then
          SQL.Add('  and ypzl.kfjd='''+edit2.text+'''');
       SQL.Add('  and ypzl.gsdh ='''+main.edit2.Text+'''');
       if main.Edit2.Text = 'SKX' then
         SQL.Add('  and ypzl.YPDH like '''+ComboBox2.Text+'%''');

       SQL.Add('  and kfxxzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')  and clzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')  ');
       SQL.Add('  union all');
       SQL.Add('  select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.jijie,ypzl.kfjd,clzl_flex.cldhflex, clzhzl.cldh1 clbh ,bwzl.bwdh,bwzl.ywsm,kfxxzl.devcode,clzl.ywpm MatDes,clzl.userdate,CLZHZL.zsdh csbh');
       SQL.Add('  ,xxzlkf.category,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls');
       SQL.Add('  left join ypzl on ypzls.ypdh=ypzl.ypdh');
       SQL.Add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.shehao=ypzl.shehao');
       SQL.Add('  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
       SQL.Add('  inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0');
       SQL.Add('  inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb=''N''');
       SQL.Add('  left join bwzl on bwzl.bwdh=YPZLS.bwbh');
       SQL.Add('  left join clzl_flex on clzl_flex.cldh=clzl.cldh');
       SQL.Add('  WHERE 1=1');
       if edit1.text <>'' then
          SQL.Add('  and kfxxzl.jijie ='''+edit1.text+'''');
       if edit2.text <>'' then
          SQL.Add('  and ypzl.kfjd='''+edit2.text+'''');

       SQL.Add('  and ypzl.gsdh ='''+main.edit2.Text+'''');
       if main.Edit2.Text = 'SKX' then
         SQL.Add('  and ypzl.YPDH like '''+ComboBox2.Text+'%''');

       SQL.Add('  and kfxxzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')  and clzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')  ');
       SQL.Add('  union all');
       SQL.Add('  select  devtype,xieming,fd,jijie,kfjd,clzl_flex.cldhflex,CLZHZL.cldh1 clbh,clzhzl2.bwdh,clzhzl2.ywsm,devcode,MatDes,clzl.userdate,CLZHZL.zsdh csbh,clzhzl2.category,clzhzl2.NA,clzhzl2.CTS,clzhzl2.ypdh');
       SQL.Add('  from ( select kfxxzl.devtype,kfxxzl.xieming,kfxxzl.fd,kfxxzl.jijie,ypzl.kfjd,bwzl.bwdh,bwzl.ywsm,ypzls.clsl,clzhzl.cldh1 as clbh,kfxxzl.devcode ,clzl.ywpm MatDes,clzl.userdate,ypzls.csbh');
       SQL.Add('  ,xxzlkf.category,xxzlkf.NA,xxzlkf.CTS,ypzls.ypdh from ypzls ypzls');
       SQL.Add('  left join ypzl on ypzls.ypdh=ypzl.ypdh');
       SQL.Add('  inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
       SQL.Add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and  kfxxzl.shehao=ypzl.shehao');
       SQL.Add('  left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
       SQL.Add('  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
       SQL.Add('  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
       SQL.Add('  WHERE 1=1');
       if edit1.text <>'' then
          SQL.Add('  and kfxxzl.jijie ='''+edit1.text+'''');
       if edit2.text <>'' then
          SQL.Add('  and ypzl.kfjd='''+edit2.text+'''');

       SQL.Add('  and ypzl.gsdh ='''+main.edit2.Text+'''');
       if main.Edit2.Text = 'SKX' then
         SQL.Add('  and ypzl.YPDH like '''+ComboBox2.Text+'%''');
       SQL.Add('and kfxxzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')   and');
       SQL.Add('  CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
       SQL.Add(') clzhzl2');
       SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
       SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
       SQL.Add('left join clzl_flex on clzl_flex.cldh=clzl.cldh');
       SQL.Add('where   CLZHZL.SYL>0   and clzl.clzmlb=''N'' and clzl.userdate>=convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')  )main');
       SQL.Add('left join clzl_flexs on  clzl_flexs.cldhflex=main.cldhflex');
       SQL.Add('left join zszl on zszl.zsdh=main.csbh');
       SQL.Add('left join clzl on main.CLBH=clzl.cldh');
       SQL.Add('left join ( select cs.zlbh,cs.clbh,cs.stage,CAST(substring (( select '','' + cgzlss.cgno ');
       SQL.Add('                  from cgzlss where cgzlss.zlbh=cs.zlbh and cgzlss.clbh=cs.clbh and cgzlss.stage=cs.stage');
       SQL.Add('                  for XML Path ('''')),2,1000) as varchar(1000)) as cgno');
       SQL.Add('           from cgzlss cs left join cgzl on cs.cgno = cgzl.cgno and cgzl.gsbh ='''+main.edit2.Text+''' ');
       SQL.Add('group by cs.zlbh,cs.clbh,cs.stage )cgzlss on cgzlss.clbh=main.clbh and cgzlss.zlbh=main.ypdh and cgzlss.stage=main.kfjd ');
        //20220301 add check mine
       if Check_mine.Checked then
       begin
         if main.Edit2.Text <> 'SKX' then
           sql.Add('LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.edit2.Text+'''')
         else
//           sql.Add('LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+ComboBox2.Text+'''');
           sql.Add('LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH in (''SKX'',''SRL'')');

          sql.add('LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.UserID');
       end;
       sql.add('where 1=1');
       if Check_mine.Checked then
       begin
          sql.Add(' and ZSZL_DEV.SamplePurchaser='''+main.Edit1.Text+'''');
       end;
       if edit3.Text<>'' then
       sql.Add('and zszl.zsywjc like ''%'+edit3.Text+'%'' ');
       SQL.Add('group by devtype,xieming,fd,jijie,kfjd,main.cldhflex,clzl_flexs.cldhflexdes,main.clbh,bwdh,ywsm,devcode ,MatDes,main.userdate,main.csbh,zszl.zsywjc,clzl.cldh,clzl.cltd,main.category,main.NA,main.CTS');
       SQL.Add('order by main.clbh,devcode');
    {    if userdatecheck.Checked then
        begin
          SQL.Add(' and cgkcuse.userdate between');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')');
           sql.add(' and  ');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP4.Date)+''')');
         end; }
      //  showmessage(sql.Text);
        //funcobj.WriteErrorLog(sql.Text);
       active:=true;
      end;
end;

procedure TNewMaterialList.FormCreate(Sender: TObject);
begin
 with temp do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP3.Date:=Date()-30;
  AppDir:=ExtractFilePath(Application.ExeName);
  if main.Edit2.Text = 'SKX' then begin
    Label12.Visible := true;
    ComboBox2.Visible := true;
  end;
end;

procedure TNewMaterialList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              eclApp.Cells[j,19].NumberFormatLocal:='@';
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TNewMaterialList.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
   //
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_SN6A.xls'),Pchar(AppDir+'Additional\Develop_SN6A.xls'),false);
    if FileExists(AppDir+'Additional\Develop_SN6A.xls') then
    begin
  //

    if  Query1.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN6A.xls');
          Query1.First;
          j:=9;
          while   not   Query1.Eof   do
            begin
              for   i:=0   to   query1.fieldcount-1 do
              begin
                eclApp.Cells(j,1):=j-8;
                eclApp.Cells(j,2):=query1.FieldByName('SupplierName').value;
                eclApp.Cells(j,4):=query1.FieldByName('FlexNumber').value;
                eclApp.Cells(j,5):=query1.FieldByName('FlexDescripion').value;
                eclApp.Cells(j,11):=query1.FieldByName('MaterialDescription').value;
                eclApp.Cells(j,13):='LYN';
                eclApp.Cells(j,17):=query1.FieldByName('Season').value;
                eclApp.Cells(j,18):=query1.FieldByName('Stage').value;
                eclApp.Cells(j,19):=query1.FieldByName('ShoeName').value;
                eclApp.Cells(j,20):=query1.FieldByName('SR').value;
                eclApp.Cells(j,21):=query1.FieldByName('MaterialNumber').value;
                eclApp.Cells(j,22):=query1.FieldByName('Part').value;
                eclApp.Cells(j,23):=query1.FieldByName('category').value;
                eclApp.Cells(j,24):=query1.FieldByName('Developer').value;
                eclApp.Cells(J,25):=query1.FieldByName('CTS').value;
                eclApp.Cells(j,26):=query1.FieldByName('HQDeveloperName').value;
                eclApp.Cells(j,36):=query1.FieldByName('CGNO').value;
              end;
              query1.Next;
              inc(j);
            end;
            //  add outline
            for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[9,1],eclApp.cells[j-1,36]].borders[k].linestyle:=1;
            end;
         //
         //eclApp.range[eclApp.cells[3,2],eclApp.cells[j-1,i]].font.Name:='Arial';
         eclApp.range[eclApp.Cells[9,1],eclApp.Cells[j-1,36]].font.size:=11;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
 //
 end;
end;

end.
