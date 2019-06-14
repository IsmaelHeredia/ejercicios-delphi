// Written By Ismael Heredia in the year 2016

unit ejercicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Auto, Cochera, Edificio,
  Casa;

type
  TFormHome = class(TForm)
    txtResultado: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;

implementation

{$R *.dfm}

procedure TFormHome.FormCreate(Sender: TObject);
var
  Auto: TAuto;
  Cochera: TCochera;
  Casa: TCasa;
begin
  Auto := TAuto.Create('Bora 2009', 'EJS748');
  // Cochera := TCochera.Create(1, '2.60 x 3.35', nil);
  Cochera := TCochera.Create(1, '2.60 x 3.35', Auto);
  Casa := TCasa.Create('40x40', 3, 'Felipe Olmos', 4876972,
    'Test 2047', Cochera);
  txtResultado.Lines.Add(Casa.DatosCasaCompleto);
end;

end.
