program ProjectMysql;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Fmain},
  UMySQLHelper in 'UMySQLHelper.pas',
  Utest in 'Utest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.
