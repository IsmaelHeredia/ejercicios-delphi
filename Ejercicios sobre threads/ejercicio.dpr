program ejercicio;

uses
  Vcl.Forms,
  threads in 'threads.pas' {FormHome},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('sepia');
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
