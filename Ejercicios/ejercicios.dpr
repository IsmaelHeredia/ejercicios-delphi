program ejercicios;

uses
  Vcl.Forms,
  test in 'test.pas' {FormHome},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
