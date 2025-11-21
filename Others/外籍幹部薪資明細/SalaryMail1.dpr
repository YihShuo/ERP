program SalaryMail1;



uses
  Vcl.Forms,
  SalaryList1 in 'SalaryList1.pas' {SalaryList},
  MailServerSetting1 in 'MailServerSetting1.pas' {MailServerSetting};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '外籍幹部薪資明細表';
  Application.CreateForm(TSalaryList, SalaryList);
  Application.Run;
end.
