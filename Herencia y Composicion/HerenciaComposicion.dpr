program HerenciaComposicion;

uses
  Vcl.Forms,
  ejercicio in 'ejercicio.pas' {FormHome},
  Vcl.Themes,
  Vcl.Styles,
  Auto in 'Auto.pas',
  Cochera in 'Cochera.pas',
  Edificio in 'Edificio.pas',
  Casa in 'Casa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('sepia');
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
