program Project_SearchDIR;

uses
  Vcl.Forms,
  SearchDIR in 'SearchDIR.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
