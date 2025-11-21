unit RYDetail_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TRYDetail_S = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt1: TEdit;
    Label2: TLabel;
    edt2: TEdit;
    Button1: TButton;
    Button4: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1ZLBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1CUSTORD: TStringField;
    Query1Memo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RYDetail_S: TRYDetail_S;

implementation
    uses MatQcCheck1,RYDetail1,SampleRYDetail1, Main1, FunUnit;
{$R *.dfm}

procedure TRYDetail_S.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TRYDetail_S.FormDestroy(Sender: TObject);
begin
    RYDetail_S:=nil;
end;

procedure TRYDetail_S.Button1Click(Sender: TObject);
begin
  //開發
  if MatQcCheck.GSBH_SFL='DC' then
  begin
    with query1 do
    begin
        active:=false;
        sql.Clear;
        //Material from in warehouse
        if MatQcCheck.qry_Qc.fieldbyName('LB').AsString='1' then
        begin
          sql.Add('select KCRKS.CGBH as ZLBH,KFXXZL.DEVCODE as ARTICLE,KFXXZL.JiJie+''/''+YPZL.KFJD as CUSTORD,YPZL.ARTICLE AS Memo');
          sql.Add('from KCRKS');
          sql.Add('Left Join KCRK on KCRK.RKNO =KCRKS.RKNO ');
          sql.Add('left join YPZL on YPZL.YPDH=KCRKS.CGBH ');
          sql.Add('left join KFXXZL on KFXXZL.XieXIng=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
          sql.Add('where KCRKS.RKNO = '''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' ');
          sql.Add('     and KCRKS.CLBH = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+''' ');
          if edt1.Text <>'' then
              sql.Add('     and KCRKS.CGBH like '''+edt1.Text+'%'' ');
          if edt2.Text <> '' then
              sql.Add('     and YPZL.ARTICLE like '''+edt2.Text+'%'' ');
          sql.add('GROUP BY KCRKS.CGBH,YPZL.ARTICLE,KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE');
        end;
        //material Extra
        if MatQcCheck.qry_Qc.fieldbyName('LB').AsString='2' then
        begin
          sql.Add('select JGZLSS.ZLBH,KFXXZL.DEVCODE as ARTICLE.ARTICLE,KFXXZL.JiJie+''/''+YPZL.KFJD as CUSTORD,YPZL.ARTICLE  AS Memo');
          sql.Add('from JGZLS');
          sql.Add('left JOIN JGZLSS ON JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
          sql.Add('left JOIN JGZL ON JGZLS.JGNO=JGZL.JGNO');
          sql.Add('left join YPZL on YPZL.YPDH=JGZLSS.ZLBH ');
          sql.Add('left join KFXXZL on KFXXZL.XieXIng=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
          sql.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
          sql.Add('     and JGZLS.JGNO = '''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' ');
          sql.Add('     and JGZLS.CLBH = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+''' ');
          if edt1.Text <>'' then
              sql.Add('     and JGZLSS.ZLBH like '''+edt1.Text+'%'' ');
          if edt2.Text <> '' then
              sql.Add('     and DDZL.ARTICLE like '''+edt2.Text+'%'' ');
          sql.add('group by JGZLSS.ZLBH,YPZL.ARTICLE,KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE ');
        end;

        if MatQcCheck.qry_Qc.fieldbyName('LB').AsString='4' then
        begin
          SQL.Add('select YPZL.YPDH as ZLBH,KFXXZL.DevCode as Article,KFXXZL.JiJie+''/''+YPZL.KFJD as CUSTORD,YPZL.Article as Memo from (');
          SQL.Add('select YPDH from ( ');
          SQL.Add('SELECT ypzls.YPDH');
          SQL.Add('FROM ypzls ypzls ');
          SQL.Add('WHERE YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+MatQcCheck.qry_Qc.fieldbyName('CGNO').AsString+''' and KFXXZL.JiJie='''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' ) ');
          SQL.Add('      and ypzls.CLBH = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+'''');
          SQL.Add('union all ');
          SQL.Add('SELECT ypzls.YPDH');
          SQL.Add('FROM ypzls ypzls ');
          SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('WHERE  CLZHZL.SYL>0 and YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+MatQcCheck.qry_Qc.fieldbyName('CGNO').AsString+''' and KFXXZL.JiJie='''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' )   ');
          SQL.Add('       and clzhzl.CLDH1 = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+'''');
          SQL.Add('union all ');
          SQL.Add('Select clzhzl2.YPDH');
          SQL.Add(' from (');
          SQL.Add('	SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH ');
          SQL.Add('	FROM ypzls ypzls ');
          SQL.Add('	Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('	LEFT JOIN clzl  ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('	WHERE  CLZHZL.SYL>0 and clzl.clzmlb=''Y''    and YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+MatQcCheck.qry_Qc.fieldbyName('CGNO').AsString+''' and KFXXZL.JiJie='''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' )  ');
          SQL.Add(') clzhzl2');
          SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
          SQL.Add('where 1=1 and clzhzl.CLDH1 = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+'''');
          SQL.Add(')  YPZLS ');
          SQL.Add('Group by YPDH ) YPZLS');
          SQL.Add('Left join YPZL on YPZL.YPDH=YPZLS.YPDH');
          SQL.Add('Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao');
        end;
        active:=true;
    end;
  end else   //量產
  begin
    with query1 do
    begin
        active:=false;
        sql.Clear;
        //Material from in warehouse
        if MatQcCheck.qry_Qc.fieldbyName('LB').AsString='1' then
        begin
          if  MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString<>'ZZZZZZZZZZ' then
          begin
            sql.Add('select KCRKS.CGBH as ZLBH,DDZL.ARTICLE,DDZL.KHPO as CUSTORD,''InWarehouse'' AS Memo');
            sql.Add('from KCRKS');
            sql.Add('Left Join KCRK on KCRK.RKNO =KCRKS.RKNO');
            sql.Add('left join DDZL on DDZL.DDBH=KCRKS.CGBH');
            sql.Add('where KCRKS.RKNO = '''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' ');
            sql.Add('     and KCRKS.CLBH = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+''' ');
            if edt1.Text <>'' then
                sql.Add('     and KCRKS.CGBH like '''+edt1.Text+'%'' ');
            if edt2.Text <> '' then
                sql.Add('     and DDZL.ARTICLE like '''+edt2.Text+'%'' ');
            sql.add('GROUP BY KCRKS.CGBH,DDZL.ARTICLE,DDZL.KHPO');
          end else
          begin
            sql.Add('select cgzlss.zlbh, ddzl.ARTICLE, DDZL.KHPO as CUSTORD,''ZZZZZZZZZZ'' AS Memo  ');
            sql.Add('from cgzlss');
            sql.Add('left join cgzl on cgzlss.CGNO=CGZL.CGNO');
            sql.Add('left join ddzl on ddzl.ddbh=cgzlss.ZLBH');
            sql.Add('where cgzlss.cgno='''+MatQcCheck.qry_Qc.fieldbyName('CGNO').AsString+'''');
            sql.Add('       and cgzlss.clbh= '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+'''');
            if edt1.Text <>'' then
                sql.Add('     and cgzlss.ZLBH like '''+edt1.Text+'%'' ');
            if edt2.Text <> '' then
                sql.Add('     and DDZL.ARTICLE like '''+edt2.Text+'%'' ');
            sql.Add('GROUP BY cgzlss.zlbh, ddzl.ARTICLE, DDZL.KHPO');
          end;
        end;
        //material Extra
        if MatQcCheck.qry_Qc.fieldbyName('LB').AsString='2' then
        begin
          sql.Add('select JGZLSS.ZLBH,DDZL.Article,DDZL.KHPO as CUSTORD,''Extra'' AS Memo');
          sql.Add('from JGZLS');
          sql.Add('   LEFT JOIN JGZLSS ON JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
          sql.Add('	  LEFT JOIN JGZL ON JGZLS.JGNO=JGZL.JGNO');
          sql.Add('		left join DDZL on DDZL.DDBH=JGZLSS.ZLBH');
          sql.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
          sql.Add('     and JGZLS.JGNO = '''+MatQcCheck.qry_Qc.fieldbyName('RKNO').AsString+''' ');
          sql.Add('     and JGZLS.CLBH = '''+MatQcCheck.qry_Qc.fieldbyName('CLBH').AsString+''' ');
          if edt1.Text <>'' then
              sql.Add('     and JGZLSS.ZLBH like '''+edt1.Text+'%'' ');
          if edt2.Text <> '' then
              sql.Add('     and DDZL.ARTICLE like '''+edt2.Text+'%'' ');
          sql.add('group by JGZLSS.ZLBH,DDZL.Article,DDZL.KHPO');
        end;
        active:=true;
    end;
  end;

end;

procedure TRYDetail_S.DBGridEh1DblClick(Sender: TObject);
begin
    if (not query1.Active) or (query1.RecordCount<1) then
    begin
       abort;
    end;

    try
       with MatQcCheck.qry_RY do
       begin
           if (MatQcCheck.flag = 1) or (MatQcCheck.qry_RY.RecordCount = 0) then
              insert
           else
               edit;
               
           fieldbyname('RY').AsString:= query1.fieldbyname('ZLBH').AsString;
           fieldbyname('ARTICLE').AsString:= query1.fieldbyname('ARTICLE').AsString;
           fieldbyname('CustPO').AsString:= query1.fieldbyname('CUSTORD').AsString;
           fieldbyname('Remark').AsString:= query1.fieldbyname('Memo').AsString;
       end;
       query1.Delete;
      except
          showmessage('Can not insert data, pls double check again !!!');
      end;
end;

procedure TRYDetail_S.Button4Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEH;
begin

 //if messagedlg('Do you really want to add these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 //begin
    if (not query1.Active) then abort;
    if (query1.recordcount<1) then abort;

    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
       for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with MatQcCheck.qry_RY do
          begin
            insert;
            fieldbyname('RY').AsString:= query1.fieldbyname('ZLBH').AsString;
            fieldbyname('ARTICLE').AsString:= query1.fieldbyname('ARTICLE').AsString;
            fieldbyname('CustPO').AsString:= query1.fieldbyname('CUSTORD').AsString;
            fieldbyname('Remark').AsString:= query1.fieldbyname('Memo').AsString; 
            post;
            query1.Delete;

          end;
      end;
      finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        //showmessage('You have finish adding!');
      end;
      Close;
    end;

  end;
 //end;

end;

procedure TRYDetail_S.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
