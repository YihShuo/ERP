unit ClsReport;

{
//------------------------------------------------------------------------------
  create class report by Rainy Huynh Feb.24.2015
//------------------------------------------------------------------------------
}

interface

uses DBTables,Dialogs,StrUtils,Comobj,SysUtils,Variants,Forms,Windows,DBGridEh,StdCtrls;

    procedure FeedBackReport_Leather(qry_All: TQuery);
    procedure FeedBackReport(qry_DR: TQuery);
    procedure GradeReport(Parent:TQuery; Child:TQuery; Grade : TQuery; Softness:TQuery; Thickness:Tquery; Dimension:Tquery; Result:TLabel; Save:Boolean);
    procedure DailyReport(query:TQuery; DBGrid1:TDBGridEh; Textile:Boolean;ISO_Str:string);

implementation

var Excel:olevariant;
    strArticle,strRy,strPart,strCountry,strCgno:string;
    query2: TQuery;

{---------------------FeedBack Report for Leather------------------------------}

procedure FeedBackReport_Leather(qry_All: TQuery);
var strArticle_q,strRY_q,strCgno: string;
begin
     if (qry_All.Active) and (qry_All.recordcount=0) then
     begin
         Messagedlg('No record.',mtwarning,[mbyes],0);
         exit;
     end ;

     query2:=TQuery.Create(nil);
     query2.DatabaseName:='DB';
     
     //---------------------------------get article-----------------------------
     
     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT MaterialQCcheck_RY.Article');
        sql.Add('from MaterialQcCheck LEFT JOIN leather_qCLinkM ON MaterialQcCheck.No_ID= leather_qCLinkM.No_ID');
        sql.Add('					 LEFT JOIN MaterialQCcheck_RY ON MaterialQCcheck_RY.No_ID=MaterialQcCheck.No_ID');
        sql.Add('WHERE leather_qCLinkM.ReportID='''+qry_All.fieldbyName('ReportID').AsString+''' AND MaterialQcCheck.CLBH='''+qry_All.fieldbyName('CLBH').AsString+''' ');
        sql.Add('GROUP BY MaterialQCcheck_RY.Article ');
        active:=true;
     end;

     strArticle:='';
     strArticle_q:='';
     query2.First;
     while not query2.Eof do
     begin
        strArticle:= strArticle + ''''+ query2.fieldbyName('Article').AsString + ''',';
        strArticle_q:= strArticle_q + query2.fieldbyName('Article').AsString + ',';
        query2.Next;
     end;
     strArticle:=LeftStr(strArticle,length(strArticle)-1);
     strArticle_q:=LeftStr(strArticle_q,length(strArticle_q)-1);

     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC');
        sql.Add('FROM YPZLS');
        sql.Add('			LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
        sql.Add('			LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
        sql.Add('			left join YPZL on YPZL.YPDH=YPZLS.YPDH and KFJD=''MCS''');
        sql.Add('where YPZLS.CLBH='''+qry_All.fieldbyName('CLBH').AsString+''' and article in ('+strArticle+') ');
        sql.Add('group by YPZLS.BWBH,BWZL.ywsm');
        sql.Add('UNION ALL');
        sql.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC');
        sql.Add('FROM YPZLS');
        sql.Add('			INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
        sql.Add('			LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
        sql.Add('			LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
        sql.Add('			left join YPZL on YPZL.YPDH=YPZLS.YPDH and KFJD=''MCS''');
        sql.Add('where CLZHZL.CLDH1='''+qry_All.fieldbyName('CLBH').AsString+''' and article in ('+strArticle+') ');
        sql.Add('group by YPZLS.BWBH,BWZL.ywsm');
        sql.Add('ORDER BY BWBH');
        active:=true;
     end;
     strpart:='';
     query2.First;
     while not query2.Eof do
     begin
        strPart:=strpart + query2.fieldbyName('BWMC').AsString + ',';
        query2.Next;
     end;
     strPart:=LeftStr(strPart,length(strPart)-1);


     //----------------------------- get Ry-------------------------------------

     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select MaterialQCcheck_RY.RY');
        sql.Add('from MaterialQcCheck LEFT JOIN leather_qCLinkM ON MaterialQcCheck.No_ID= leather_qCLinkM.No_ID');
        sql.Add('					 LEFT JOIN MaterialQCcheck_RY ON MaterialQCcheck_RY.No_ID=MaterialQcCheck.No_ID');
        sql.Add('WHERE leather_qCLinkM.ReportID='''+qry_All.fieldbyName('ReportID').AsString+''' AND MaterialQcCheck.CLBH='''+qry_All.fieldbyName('CLBH').AsString+''' ');
        sql.Add('GROUP BY MaterialQCcheck_RY.RY ');
        active:=true;
     end;

     strRY:='';
     strRY_q:='';
     query2.First;
     while not query2.Eof do
     begin
        strRY:= strRY + ''''+ query2.fieldbyName('RY').AsString + ''',';
        strRY_q:= strRY_q + query2.fieldbyName('RY').AsString + ',';
        query2.Next;
     end;
     strRY:=LeftStr(strRY,length(strRY)-1);
     strRY_q:=LeftStr(strRY_q,length(strRY_q)-1);

     //get country
     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT dc.COUNTRY ');
        sql.Add('FROM DE_ORDERM doLEFT JOIN DE_CUST dc ON dc.CUSTID = doLEFT.MCUSTMER');
        sql.Add('where doLEFT.ORDERNO IN ('+strRY+') ');
        sql.Add('GROUP BY dc.COUNTRY  ');
        active:=true;
     end;

     strCountry:='';
     query2.First;
     while not query2.Eof do
     begin
        strCountry:= strCountry + query2.fieldbyName('COUNTRY').AsString + ',';
        query2.Next;
     end;
     strCountry:=LeftStr(strCountry,length(strCountry)-1);

     //-----------------------------get CGNO------------------------------------
     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT mc.CGNO');
        sql.Add('FROM Leather_QCLinkM INNER JOIN MaterialQCCheck mc on mc.No_ID=Leather_QCLinkM.No_ID');
        sql.Add('WHERE Leather_QCLinkM.ReportID='''+qry_All.fieldbyName('ReportID').AsString+''' ');
        sql.Add('GROUP BY mc.CGNO');
        active:=true;
     end;

     strCgno:='';
     query2.First;
     while not query2.Eof do
     begin
        strCgno:= strCgno + query2.fieldbyName('CGNO').AsString + ',';
        query2.Next;
     end;
     strCgno:=LeftStr(strCgno,length(strCgno)-1);



     query2.Free;


     try
        Excel:=CreateOleObject('Excel.Application');
        Excel.Visible:=True;

        Excel.Workbooks.Open(GetCurrentDir+'\QIP Report\Quality Feedback Report.xls');

        Excel.Cells(1,8):= 'Report No.: ' + chr(10) + qry_All.FieldByName('ReportID').AsString;
        Excel.Cells(2,2):= qry_All.FieldByName('SupplierName').AsString;
        Excel.Cells(2,4):= strRY_q;
        Excel.Cells(2,7):= strArticle_q;
        Excel.Cells(3,2):= qry_All.FieldByName('Qty').Value;
        Excel.Cells(3,4):= strCgno;
        Excel.Cells(3,6):= qry_All.FieldByName('DateInput').AsString;
        Excel.Cells(3,8):= qry_All.FieldByName('DateInput').AsString;
        Excel.Cells(4,2):= qry_All.FieldByName('CLBH').AsString;
        Excel.Cells(4,6):= strCountry;
        Excel.Cells(5,2):= qry_All.FieldByName('MaterialName').AsString;
        Excel.Cells(5,6):= strPart;

        // Quit Excel
        if not VarIsEmpty(Excel) then
        begin
          Excel.DisplayAlerts:=False;  // Discard unsaved files....
          Excel:=Unassigned;
        end;

     except
        Application.MessageBox('NO Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
        Exit;
    end;
end;

{--------------------FeedBack Report for Textstyle synthetic-------------------}

procedure FeedBackReport(qry_DR: TQuery);
begin
    if (qry_DR.Active) and (qry_DR.recordcount=0)  then
     begin
         Messagedlg('No record.',mtwarning,[mbyes],0);
         exit;
     end;

     query2:=TQuery.Create(nil);
     query2.DatabaseName:='DB';

     //---------------------------------get article-----------------------------

     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select MaterialQCcheck_RY.Article');
        sql.Add('from MaterialQCcheck_RY LEFT JOIN MaterialQcCheck ON MaterialQCcheck_RY.No_ID=MaterialQcCheck.No_ID');
        sql.Add('WHERE MaterialQCcheck_RY.No_ID='''+qry_DR.fieldbyName('No_ID').AsString+''' AND MaterialQcCheck.CLBH='''+qry_DR.fieldbyName('CLBH').AsString+''' ');
        sql.Add('GROUP BY MaterialQCcheck_RY.Article ');
        active:=true;
     end;

     strArticle:='';
     query2.First;
     while not query2.Eof do
     begin
        strArticle:= strArticle + ''''+ query2.fieldbyName('Article').AsString + ''',';
        query2.Next;
     end;
     strArticle:=LeftStr(strArticle,length(strArticle)-1);

     if strArticle <> '' then
     begin
       with query2 do
       begin
        active:=false;
        sql.Clear;
        sql.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC');
        sql.Add('FROM YPZLS');
        sql.Add('			LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
        sql.Add('			LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
        sql.Add('			left join YPZL on YPZL.YPDH=YPZLS.YPDH and KFJD=''MCS''');
        sql.Add('where YPZLS.CLBH='''+qry_DR.fieldbyName('CLBH').AsString+''' and article in ('+strArticle+') ');
        sql.Add('group by YPZLS.BWBH,BWZL.ywsm');
        sql.Add('UNION ALL');
        sql.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC');
        sql.Add('FROM YPZLS');
        sql.Add('			INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
        sql.Add('			LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
        sql.Add('			LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
        sql.Add('			left join YPZL on YPZL.YPDH=YPZLS.YPDH and KFJD=''MCS''');
        sql.Add('where CLZHZL.CLDH1='''+qry_DR.fieldbyName('CLBH').AsString+''' and article in ('+strArticle+') ');
        sql.Add('group by YPZLS.BWBH,BWZL.ywsm');
        sql.Add('ORDER BY BWBH');
        active:=true;
       end;
     end;
     strpart:='';
     query2.First;
     while not query2.Eof do
     begin
        strPart:=strpart + query2.fieldbyName('BWMC').AsString + ',';
        query2.Next;
     end;
     strPart:=LeftStr(strPart,length(strPart)-1);

     //----------------------------- get Ry-------------------------------------

     with query2 do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select MaterialQCcheck_RY.RY');
        sql.Add('from MaterialQCcheck_RY LEFT JOIN MaterialQcCheck ON MaterialQCcheck_RY.No_ID=MaterialQcCheck.No_ID');
        sql.Add('WHERE MaterialQCcheck_RY.No_ID='''+qry_DR.fieldbyName('No_ID').AsString+''' AND MaterialQcCheck.CLBH='''+qry_DR.fieldbyName('CLBH').AsString+''' ');
        sql.Add('GROUP BY MaterialQCcheck_RY.RY ');
        active:=true;
     end;

     strRY:='';
     query2.First;
     while not query2.Eof do
     begin
        strRY:= strRY + ''''+ query2.fieldbyName('RY').AsString + ''',';
        query2.Next;
     end;
     strRY:=LeftStr(strRY,length(strRY)-1);

     //get country
     if strRY <> '' then
     begin
       with query2 do
       begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT dc.COUNTRY ');
          sql.Add('FROM DE_ORDERM doLEFT JOIN DE_CUST dc ON dc.CUSTID = doLEFT.MCUSTMER');
          sql.Add('where doLEFT.ORDERNO IN ('+strRY+') ');
          sql.Add('GROUP BY dc.COUNTRY  ');
          active:=true;
       end;
     end;
     strCountry:='';
     query2.First;
     while not query2.Eof do
     begin
        strCountry:= strCountry + query2.fieldbyName('COUNTRY').AsString + ',';
        query2.Next;
     end;
     strCountry:=LeftStr(strCountry,length(strCountry)-1);


     query2.Free;

     try
        Excel:=CreateOleObject('Excel.Application');
        Excel.Visible:=True;

        Excel.Workbooks.Open(GetCurrentDir+'\QIP Report\Quality Feedback Report.xls');

        Excel.Cells(1,8):= 'Report No.: ' + chr(10) + qry_DR.FieldByName('RKNO').AsString;
        Excel.Cells(2,2):= qry_DR.FieldByName('SupplierName').AsString;
        Excel.Cells(2,4):= qry_DR.FieldByName('RY').AsString;
        Excel.Cells(2,7):= qry_DR.FieldByName('Article').AsString;
        Excel.Cells(3,2):= qry_DR.FieldByName('Qty').Value;
        Excel.Cells(3,4):= qry_DR.FieldByName('CGNO').AsString;
        Excel.Cells(3,6):= qry_DR.FieldByName('DateInput').AsString;
        Excel.Cells(3,8):= qry_DR.FieldByName('DateInput').AsString;
        Excel.Cells(4,2):= qry_DR.FieldByName('CLBH').AsString;
        Excel.Cells(4,6):= strCountry;
        Excel.Cells(5,2):= qry_DR.FieldByName('MaterialName').AsString;
        Excel.Cells(5,6):= strPart;

        // Quit Excel
        if not VarIsEmpty(Excel) then
        begin
          Excel.DisplayAlerts:=False;  // Discard unsaved files....
          Excel:=Unassigned;
        end;
        
     except
        Application.MessageBox('NO Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
        Exit;
    end;
end;

{----------------------------------Daily Report--------------------------------}

procedure DailyReport(query:TQuery; DBGrid1:TDBGridEh; Textile:Boolean;ISO_Str:string);
var eclApp,WorkBook,xlSheet:olevariant;
    i,j,m:integer;
begin
  if (query.Active) and (query.recordcount = 0) then
  begin
      Messagedlg('No record.',mtwarning,[mbyes],0);
      abort;
  end;


  try
    // If no instance of Excel is running, try to Create a new Excel Object
    eclApp:= CreateOleObject('Excel.Application');
  except
    ShowMessage('Cannot start Excel/Excel not installed ?');
    Exit;
  end;



  try
      WorkBook:=eclApp.workbooks.Add;
      xlSheet := workbook.Worksheets[1];
      xlSheet.Name:='Others';
      //--------------------------page setup------------------------------------
      xlSheet.PageSetup.Orientation := 2;  //Landscape
      xlSheet.PageSetup.PaperSize := 9;  //A4
      xlSheet.PageSetup.HeaderMargin := 0;
      xlSheet.PageSetup.FooterMargin := 0;
      xlSheet.PageSetup.TopMargin := 0;
      xlSheet.PageSetup.BottomMargin := 0;
      xlSheet.PageSetup.LeftMargin := 0.7;
      xlSheet.PageSetup.RightMargin := 0;

      //------------------------------------------------------------------------

      eclapp.ActiveSheet.Range['A1:M1'].Merge;
      eclapp.ActiveSheet.Range['A2:M2'].Merge;

      eclApp.Cells(1,1):='BAO CAO KIEM NGHIEM NGUYEN VAT LIEU HANG NGAY';

      if Textile then
          eclApp.Cells(2,1):='DAILY TEXTILE, SYN & ACCESSORY  INSPECTION REPORT'
      else
          eclApp.Cells(2,1):='RUBBER AND CHEMICAL INSPECTION REPORT';

      eclApp.Cells(4,1):='Xuong cung ung' + chr(10) + 'Supplier factory';
      eclApp.Cells(4,2):='Ten Vat Lieu' + chr(10) + 'Material name';
      eclApp.Cells(4,3):='Lenh' + chr(10) + 'RY No.';
      eclApp.Cells(4,4):='Ngay nhap' + chr(10) + 'Received Date';
      eclApp.Cells(4,5):='Ngay kiem tra' + chr(10) + 'Inspection Date';
      eclApp.Cells(4,6):='So luong' + chr(10) + 'Qty';
      eclApp.Cells(4,7):='Rut kiem' + chr(10) + 'Random';
      eclApp.Cells(4,8):='So luong hu' + chr(10) + 'Qty of defect material';
      eclApp.Cells(4,9):='Ty le hu' + chr(10) + '% of defect material';
      eclApp.Cells(4,10):='Nguyen nhan hu' + chr(10) + 'Reason of defect materials';
      eclApp.Cells(4,11):='Ket qua kiem' + chr(10) + 'Inspection Result';
      eclApp.Cells(4,12):='Ket qua thu nghiem' + chr(10) + 'Test Result';
      eclApp.Cells(4,13):='Ket qua sau cung' + chr(10) + 'Final Result';

      eclapp.ActiveSheet.Columns[2].ColumnWidth := 20;
      eclapp.ActiveSheet.Columns[3].ColumnWidth := 20;
      eclapp.ActiveSheet.Rows[4].RowHeight := 60;
      eclApp.ActiveSheet.Rows[4].HorizontalAlignment := $FFFFEFF4;
      eclApp.ActiveSheet.Rows[4].VerticalAlignment := $FFFFEFF4;


     query.First;
     j:=5;
     while not query.Eof do
     begin
        eclApp.Cells(j,1):=DBGrid1.FieldColumns['SupplierName'].Field.Value;
        eclApp.Cells(j,2):=DBGrid1.FieldColumns['MaterialName'].Field.Value;
        eclApp.Cells(j,3):=DBGrid1.FieldColumns['RY'].Field.Value;
        eclApp.Cells(j,4):=DBGrid1.FieldColumns['DateInput'].Field.Value;
        eclApp.Cells(j,5):=DBGrid1.FieldColumns['DateInput'].Field.Value;
        eclApp.Cells(j,6):=DBGrid1.FieldColumns['Qty'].Field.Value;
        eclApp.Cells(j,7):=DBGrid1.FieldColumns['RandomQty'].Field.Value;
        eclApp.Cells(j,8):=DBGrid1.FieldColumns['DefectQty'].Field.Value;
        eclApp.Cells(j,9):=DBGrid1.FieldColumns['Per_Defect'].Field.Value;
        eclApp.Cells(j,10):=DBGrid1.FieldColumns['DefectName'].Field.Value;
        eclApp.Cells(j,11):=DBGrid1.FieldColumns['QC_Check'].Field.Value;
        eclApp.Cells(j,12):=DBGrid1.FieldColumns['Lab_Check'].Field.Value;
        eclApp.Cells(j,13):=DBGrid1.FieldColumns['Final_Status'].Field.Value;
        for m:=1 to 4 do
        begin
          for i:=1 to 13 do
          begin
              eclapp.ActiveSheet.Cells[j-1,i].Borders[m].Weight := 2;
              eclapp.ActiveSheet.Cells[j,i].Borders[m].Weight := 2;
          end
        end;

        eclApp.ActiveSheet.Rows[j].Font.Size:= 10;
        eclApp.ActiveSheet.Rows[j].font.name:='Arial';
        //eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

      query.Next;
      inc(j);
     end;

     {eclApp.Cells(j+1,1):= 'Chu quan hien truong:';
     eclApp.Cells(j+2,1):= 'Production Supervisor:';

     eclApp.Cells(j+1,5):= 'Chu quan QC:';
     eclApp.Cells(j+2,5):= 'QC Supervisor:';

     eclApp.Cells(j+1,10):= 'Nguoi lap bieu';
     eclApp.Cells(j+2,10):= 'Prepared by:';        }

     eclApp.ActiveSheet.Rows[j+1].HorizontalAlignment := -4152;
     eclApp.ActiveSheet.Rows[j+2].HorizontalAlignment := -4152;
     eclApp.Cells(j+1,13):=ISO_Str;

     eclApp.ActiveSheet.Rows[1].Font.Size:= 16;
     eclApp.ActiveSheet.Rows[1].Font.Bold := True;
     eclApp.ActiveSheet.Rows[1].HorizontalAlignment := $FFFFEFF4;
     eclApp.ActiveSheet.Rows[1].font.name:='Arial';
     eclApp.ActiveSheet.Rows[1].font.ColorIndex:=5;

     eclApp.ActiveSheet.Rows[2].Font.Size:= 16;
     eclApp.ActiveSheet.Rows[2].Font.Bold := True;
     eclApp.ActiveSheet.Rows[2].HorizontalAlignment := $FFFFEFF4;
     eclApp.ActiveSheet.Rows[2].font.name:='Arial';
     eclApp.ActiveSheet.Rows[2].font.ColorIndex:=5;

     //eclapp.columns.autofit;
     //eclApp.ActiveWindow.FreezePanes := False;
     //EclApp.ActiveSheet.Range['J6'].Select;
     //eclApp.ActiveWindow.FreezePanes := True;

     showmessage('Succeed.');
     eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;

end;

procedure GradeReport(Parent:TQuery; Child:TQuery; Grade : TQuery; Softness:TQuery; Thickness:Tquery; Dimension:Tquery; Result:TLabel; Save:Boolean);
begin
     if (Parent.Active) and (Parent.recordcount=0)  then
     begin
         Messagedlg('No record.',mtwarning,[mbyes],0);
         abort;
     end ;

     if Child.RecordCount > 0 then
     begin
         //get all article,RY,CGNo
         strArticle:='';
         strRy:='';
         strCgno:='';
         Child.First;
         while not Child.Eof do
         begin
             strArticle:=strArticle + Child.fieldByName('Article').AsString + ',';
             strRy:=strRy + Child.fieldByName('Ry').AsString + ',';
             strCgno:=strCgno + Child.fieldByName('CGNO').AsString + ',';
             Child.Next;
         end;
     end;
     strArticle:=LeftStr(strArticle,length(strArticle)-2);
     strRy:=LeftStr(strRy,length(trim(strRy))-2);
     strCgno:=LeftStr(strCgno,length(strCgno)-1);

     try

        Excel:=CreateOleObject('Excel.Application');

        if save = false then
            Excel.Visible:=True;

        Excel.Workbooks.Open(GetCurrentDir+'\QIP Report\Leather Grading inspection reports.xls');

        Excel.Cells(2,2):= Parent.FieldByName('DateInput').Value;
        Excel.Cells(2,8):= 'No.: ' + Parent.FieldByName('ReportID').AsString;
        Excel.Cells(3,8):= 'Date print : ' + formatdatetime('dd/mm/yyyy hh:mm:ss',now);

        Excel.Cells(4,3):= Parent.FieldByName('DateInput').AsString;
        Excel.Cells(5,3):= strArticle;
        Excel.Cells(6,3):= Parent.FieldByName('MaterialName').AsString;
        Excel.Cells(7,3):= Parent.FieldByName('CLBH').AsString;
        Excel.Cells(8,3):= strRy;

        Excel.Cells(4,7):= Parent.FieldByName('SupplierName').AsString;
        Excel.Cells(5,7):= strCgno;
        Excel.Cells(6,7):= Parent.FieldByName('Qty').Value;
        Excel.Cells(7,7):= Grade.FieldByName('ActualQty').AsString;
        Excel.Cells(8,7):= Parent.FieldByName('Standard_Grade').AsString;

        //export detail
        Excel.Cells(11,2):= Grade.FieldByName('Type1').AsString;
        Excel.Cells(12,2):= Grade.FieldByName('Type2').AsString;
        Excel.Cells(13,2):= Grade.FieldByName('Type3').AsString;
        Excel.Cells(14,2):= Grade.FieldByName('Type4').AsString;
        Excel.Cells(15,2):= Grade.FieldByName('Type5').AsString;
        Excel.Cells(16,2):= Grade.FieldByName('Type6').AsString;
        Excel.Cells(17,2):= Grade.FieldByName('Type7').AsString;

        Excel.Cells(11,6):= Grade.FieldByName('AcType1').AsString;
        Excel.Cells(12,6):= Grade.FieldByName('AcType2').AsString;
        Excel.Cells(13,6):= Grade.FieldByName('AcType3').AsString;
        Excel.Cells(14,6):= Grade.FieldByName('AcType4').AsString;
        Excel.Cells(15,6):= Grade.FieldByName('AcType5').AsString;
        Excel.Cells(16,6):= Grade.FieldByName('AcType6').AsString;

        Excel.Cells(11,6):= Grade.FieldByName('AcType1').AsString;
        Excel.Cells(12,6):= Grade.FieldByName('AcType2').AsString;
        Excel.Cells(13,6):= Grade.FieldByName('AcType3').AsString;
        Excel.Cells(14,6):= Grade.FieldByName('AcType4').AsString;
        Excel.Cells(15,6):= Grade.FieldByName('AcType5').AsString;
        Excel.Cells(16,6):= Grade.FieldByName('AcType6').AsString;

        Excel.Cells(11,8):= Grade.FieldByName('PerType1').Value /100;
        Excel.Cells(12,8):= Grade.FieldByName('PerType2').Value /100;
        Excel.Cells(13,8):= Grade.FieldByName('PerType3').Value /100;
        Excel.Cells(14,8):= Grade.FieldByName('PerType4').Value /100;
        Excel.Cells(15,8):= Grade.FieldByName('PerType5').Value /100;
        Excel.Cells(16,8):= Grade.FieldByName('PerType6').Value /100;

        //Excel.ActiveSheet.Range['H12:H19'].NumberFormat := '##.##%';

        Excel.Cells(20,4):= Grade.FieldByName('Reason').AsString;
        Excel.Cells(20,8):= 'Skin Size : ' + Result.Caption;

        //Result softness,thickness,thickness
        Excel.Cells(21,3):= Softness.FieldByName('Result').AsString;
        Excel.Cells(21,7):= Thickness.FieldByName('Result').AsString;
        Excel.Cells(21,9):= Dimension.FieldByName('Result').AsString;

        Excel.DisplayAlerts := False;

        if Save = true then
        begin
            Excel.ActiveWorkbook.SaveAs(GetCurrentDir+'\QIP Report\Leather Grading inspection reports.xls');
            Excel.Quit;
            Excel := Unassigned;
        end;
     except
        Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
        Exit;
    end;

end;

end.
