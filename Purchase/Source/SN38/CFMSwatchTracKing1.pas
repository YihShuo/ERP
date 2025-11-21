unit CFMSwatchTracKing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls, fununit;

type
  TCFMSwatchTracKing = class(TForm)
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    BB8: TBitBtn;
    Panel22: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    YearcoBox: TComboBox;
    MonCoBox: TComboBox;
    TypeCoBox: TComboBox;
    SeaCoBox: TComboBox;
    LocCoBox: TComboBox;
    StageEdit: TEdit;
    SKUEdit: TEdit;
    SREdit: TEdit;
    MatNoEdit: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    FC_import: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1: TQuery;
    CheckBox1: TCheckBox;
    FC_importclbh: TStringField;
    FC_importywpm: TStringField;
    FC_importdwbh: TStringField;
    FC_importjijie: TStringField;
    FC_importtype: TStringField;
    FC_importarticle: TStringField;
    FC_importdevcode: TStringField;
    FC_importcsbh: TStringField;
    FC_importzsywjc: TStringField;
    FC_importuserid: TStringField;
    FC_importuserdate: TDateTimeField;
    FC_importColorSwatchStatus: TStringField;
    FC_importAWB: TStringField;
    FC_importShippedDate: TDateTimeField;
    FC_importExpireDate: TDateTimeField;
    FC_importFD: TStringField;
    Edit1: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CFMSwatchTracKing: TCFMSwatchTracKing;
  NDate:TDATE;
  LoginFD: string;

implementation

uses main1;

{$R *.dfm}

procedure TCFMSwatchTracKing.BB1Click(Sender: TObject);
begin
  Panel22.Visible:=true;
end;

procedure TCFMSwatchTracKing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCFMSwatchTracKing.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('select getdate() as NDate');
     active:=true;
     NDate:=fieldbyname('Ndate').value;
     active:=false;
     sql.Clear;
     sql.add('select year from fc_import');
     sql.add('group by year');
     active:=true;
     YearcoBox.items.clear;
     while not eof do
     begin
       YearcoBox.items.add(fieldbyname('year').asstring );
       next;
     end;
     active:=false;
     sql.Clear;
     sql.add('select month from fc_import');
     sql.add('group by month');
     sql.add('order by month ASC');
     active:=true;
     MonCoBox.items.clear;
     while not eof do
     begin
       MonCoBox.items.add(fieldbyname('month').asstring );
       next;
     end;
     active:=false;
     sql.Clear;
     sql.add('select type from fc_import');
     sql.add('group by type');
     active:=true;
     TypeCoBox.items.clear;
     while not eof do
     begin
       TypeCoBox.items.add(fieldbyname('type').asstring );
       next;
     end;
     active:=false;
     sql.Clear;
     sql.add('select jijie from fc_import');
     sql.add('group by jijie');
     active:=true;
     SeaCoBox.items.clear;
     while not eof do
     begin
       SeaCoBox.items.add(fieldbyname('jijie').asstring );
       next;
     end;
     Active := false;
     SQL.Clear;
     SQL.Add('SELECT UPPER(Engname) AS FD FROM BUSERS WHERE USERID = ''' + main.Edit1.Text + '''');
     Active := true;
     LoginFD := FieldByName('FD').AsString;
  end;
  YearcoBox.ItemIndex:=0;
  MonCoBox.ItemIndex:=0;
  TypeCoBox.ItemIndex:=0;
  SeaCoBox.ItemIndex:=0;
end;

procedure TCFMSwatchTracKing.FormDestroy(Sender: TObject);
begin
  CFMSwatchTracKing:=nil;
end;


procedure TCFMSwatchTracKing.Button1Click(Sender: TObject);
var
  SplitStr: TStringList;
  i: integer;
begin
    SplitStr := TStringList.Create;
    with FC_import do
    begin
       active:=false;
       sql.Clear;
       sql.add('select a.clbh,clzl.ywpm,clzl.dwbh,a.jijie,a.type,a.article,a.devcode,a.csbh,a.zsywjc,a.userid,a.userdate');
       sql.add(',CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ExpireDate,kfxxzl.FD ');
       sql.add(',case when (CGZL_COLOR2.AWB <>'''' and CGZL_COLOR2.ShippedDate<>'''') or (CGZL_COLOR2.AWB <> NUll and CGZL_COLOR2.ShippedDate<> NUll) ');
       sql.add('then ''OK'' else CGZL_COLOR2.ColorSwatchStatus  end as ColorSwatchStatus');
       sql.add('from(');
       sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
       sql.add('FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.clsl as total,ypzls.csbh,zszl.zsywjc,FC_import.userid,FC_import.userdate ');
       sql.add('from FC_import ');
       sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode ');
       sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao');
       if StageEdit.text='' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
          sql.add('xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' group by xiexing+shehao,kfjd,xiexing,shehao) size');
          sql.add('           left join (select * from ypzl where kfjd=''CFM'') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       if StageEdit.text<>'' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+''' group by xiexing+shehao,kfjd,xiexing,shehao) size');
          sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+''') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       sql.add('           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
       sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
       sql.add('left join zszl on zszl.zsdh=ypzls.csbh');
       //§ì¨ú¼Ë«~½X
       sql.add('where ypzls.clbh is not null');
       if YearcoBox.text<>'' then
          sql.add('and FC_import.year='''+YearcoBox.text+''' ');
       if MonCoBox.text<>'' then
          sql.add('and FC_import.month='''+MonCoBox.text+''' ');
       if TypeCoBox.text<>'' then
          sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
       if SeaCoBox.text<>'' then
          sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
       if StageEdit.text='' then
          sql.add('and ypzl.kfjd=''CFM'' ');
       if StageEdit.text<>'' then
          sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
       if MatNoEdit.text<>'' then
       begin
          if (Pos(',', MatNoEdit.Text) > 0) then
          begin
            SplitStr.Delimiter := ',';
            SplitStr.DelimitedText := MatNoEdit.Text;
            sql.add('and (');
            for i := 0 to SplitStr.Count-1 do
            begin
              if (i = 0) then
                sql.add('ypzls.clbh like '''+SplitStr[i]+'%'+'''')
              else
                sql.add('OR ypzls.clbh like '''+SplitStr[i]+'%'+'''');
            end;
            sql.Add(')');
          end
          else begin
            sql.add('and ypzls.clbh like '''+MatNoEdit.text+'%'+'''');
          end;
       end;
       if SREdit.text<>'' then
          sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
       if SKUEdit.Text <>'' then
          sql.Add('and kfxxzl.article like '''+SKUEdit.Text+'%''   ');
       sql.add('group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.clsl,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userid,FC_import.userdate');
       sql.add('union');
       sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
       sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate');
       sql.add('FROM FC_import');
       sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode ');
       sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao');
       if StageEdit.text='' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
          sql.add('article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' group by article,kfjd,xiexing,shehao) size');
          sql.add('           left join (select * from ypzl where kfjd=''CFM'') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       if StageEdit.text<>'' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+''' group by xiexing+shehao,kfjd,xiexing,shehao) size');
          sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+''') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       sql.add('           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
       sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
       sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
       sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
       sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
       sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
       sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
       sql.add('where  ypzls.clbh is not null');
       if YearcoBox.text<>'' then
          sql.add('and FC_import.year='''+YearcoBox.text+''' ');
       if MonCoBox.text<>'' then
          sql.add('and FC_import.month='''+MonCoBox.text+''' ');
       if TypeCoBox.text<>'' then
          sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
       if SeaCoBox.text<>'' then
          sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
       if StageEdit.text='' then
          sql.add('and ypzl.kfjd=''CFM'' ');
       if StageEdit.text<>'' then
          sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
       if MatNoEdit.text<>'' then
       begin
          if (Pos(',', MatNoEdit.Text) > 0) then
          begin
            SplitStr.Delimiter := ',';
            SplitStr.DelimitedText := MatNoEdit.Text;
            sql.add('and (');
            for i := 0 to SplitStr.Count-1 do
            begin
              if (i = 0) then
                sql.add('clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''')
              else
                sql.add('OR clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''');
            end;
            sql.Add(')');
          end
          else begin
            sql.add('and clzhzl.cldh1 like '''+MatNoEdit.text+'%'+'''');
          end;
       end;
       if SREdit.text<>'' then
          sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
       if SKUEdit.Text <>'' then
          sql.Add('and kfxxzl.article like '''+SKUEdit.Text+'%''   ');
       sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
       sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate');
       sql.add('union');
       sql.add('select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userid,clzhzl2.userdate from(  ');
       sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
       sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate');
       sql.add('FROM FC_import');
       sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode ');
       sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
       if StageEdit.text='' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
          sql.add('xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM'' group by xiexing+shehao,kfjd,xiexing,shehao) size');
          sql.add('           left join (select * from ypzl where kfjd=''CFM'') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       if StageEdit.text<>'' then
       begin
          sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+''' group by xiexing+shehao,kfjd,xiexing,shehao) size');
          sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+''') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
       end;
       sql.add('            ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
       sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
       sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
       sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
       sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
       sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
       sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
       sql.add('where  ypzls.clbh is not null');
       sql.add('and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
       if YearcoBox.text<>'' then
          sql.add('and FC_import.year='''+YearcoBox.text+''' ');
       if MonCoBox.text<>'' then
          sql.add('and FC_import.month='''+MonCoBox.text+''' ');
       if TypeCoBox.text<>'' then
          sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
       if SeaCoBox.text<>'' then
          sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
       if StageEdit.text='' then
          sql.add('and ypzl.kfjd=''CFM'' ');
       if StageEdit.text<>'' then
          sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
       if SREdit.text<>'' then
          sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
       if SKUEdit.Text <>'' then
          sql.Add('and kfxxzl.article like '''+SKUEdit.Text+'%'' ');
       sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
       sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate)clzhzl2');
       sql.add('inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh');
       sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
       sql.add('WHERE CLZHZL.cldh1 is not null');
       if MatNoEdit.text<>'' then
       begin
          if (Pos(',', MatNoEdit.Text) > 0) then
          begin
            SplitStr.Delimiter := ',';
            SplitStr.DelimitedText := MatNoEdit.Text;
            sql.add('and (');
            for i := 0 to SplitStr.Count-1 do
            begin
              if (i = 0) then
                sql.add('CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''')
              else
                sql.add('OR CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''');
            end;
            sql.add(')');
          end
          else begin
            sql.add('and CLZHZL.cldh1 like '''+MatNoEdit.text+'%'+'''');
          end;
       end;
       sql.add(' ) a ');
       sql.add('left join clzl on clzl.cldh=a.clbh ');
       sql.add('left join CGZL_COLOR2 on CGZL_COLOR2.clbh=a.clbh');
       sql.add('left join kfxxzl on a.devcode=kfxxzl.devcode');
       sql.Add('left join (');
       sql.Add('  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location from (');
       sql.Add('    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Forecast_Leadtime, A.Location from (');
       sql.Add('      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC, USERDATE desc) as rn from (');
       sql.Add('        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, MaterialMOQ.USERDATE from MaterialMOQ with (nolock)');
       sql.Add('        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> ''''');
       sql.Add('      ) AS MaterialMOQ');
       sql.Add('    ) A where A.rn=1');
       sql.Add('  ) AS MatMOQ');
       sql.Add(') AS m on m.CLBH = a.clbh');
       sql.add('where clzl.clzmlb <>''Y''');
       if LocCoBox.text<>'' then
          sql.add('and clzl.cqdh='''+LocCoBox.text+''' ');
       if CheckBox1.Checked then
          sql.add('and kfxxzl.FD='''+LoginFD+''' ');
       if Edit1.text<>'' then
          sql.add('and a.zsywjc like '''+'%'+Edit1.text+'%'+''' ');
       sql.add('group by  a.clbh,clzl.ywpm,clzl.dwbh,a.jijie,a.type,a.article,a.devcode,a.csbh,a.zsywjc,a.userid,a.userdate');
       sql.add(',CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ExpireDate,CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ColorSwatchStatus,kfxxzl.FD ');
       sql.add('order by a.clbh');
       funcObj.WriteErrorLog(sql.Text);
       active:=true;
   end;
   BB4.Enabled:=True;
end;

procedure TCFMSwatchTracKing.BB4Click(Sender: TObject);
begin
  with FC_import do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCFMSwatchTracKing.BB6Click(Sender: TObject);
begin
  with FC_import do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TCFMSwatchTracKing.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    FC_import.First;
    for i:=1 to FC_import.RecordCount do
    begin
      case FC_import.updatestatus of
      usmodified:
      begin
         with Query1 do
         begin
           active:=false;
           sql.Clear;
           sql.Add('select * from CGZL_COLOR2 where CGZL_COLOR2.CLBH='''+FC_import.fieldbyname('clbh').Value+'''');
           active:=true;
           if (recordcount > 0) then
           begin
              FC_import.edit;
              UpdateSQL1.Apply(ukModify);
           end else
           begin
              showmessage('Can not modify.');
              abort;
           end;
         end;
      end;
    end;
    FC_import.Next;
  end;
  except
    Messagedlg('Error, can not save data!', mtwarning, [mbyes], 0);
  end;
  FC_import.Active := false;
  FC_import.RequestLive := false;
  FC_import.CachedUpdates := false;
  FC_import.Active := true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  ShowMessage('Completed');
end;

procedure TCFMSwatchTracKing.BB8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if FC_import.active  then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not    FC_import.Eof   do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         FC_import.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;

end;

end.

