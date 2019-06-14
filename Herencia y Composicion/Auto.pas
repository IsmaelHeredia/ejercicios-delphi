// Written By Ismael Heredia in the year 2016

unit Auto;

interface

uses Windows, SysUtils;

type
  TAuto = class
  private
  public
    marca: string;
    numero_serie: string;
    function getMarca(): string;
    procedure setMarca(marca: string);
    function getNumero_serie(): string;
    procedure setNumero_serie(numero_serie: string);
    Constructor Create; overload;
    Constructor Create(marca: string; numero_serie: string); overload;
    function DatosAuto(): string;
  end;

implementation

function TAuto.getMarca(): string;
begin
  Result := marca;
end;

procedure TAuto.setMarca(marca: string);
begin
  self.marca := marca;
end;

function TAuto.getNumero_serie(): string;
begin
  Result := numero_serie;
end;

procedure TAuto.setNumero_serie(numero_serie: string);
begin
  self.numero_serie := numero_serie;
end;

constructor TAuto.Create;
begin
  inherited;
  //
end;

constructor TAuto.Create(marca: string; numero_serie: string);
begin
  self.marca := marca;
  self.numero_serie := numero_serie;
end;

function TAuto.DatosAuto(): string;
begin
  Result := '-- Datos del auto --' + sLineBreak + sLineBreak + '[+] Marca : ' +
    marca + sLineBreak + '[+] Numero serie : ' + numero_serie;
end;

end.
