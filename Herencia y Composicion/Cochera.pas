// Written By Ismael Heredia in the year 2016

unit Cochera;

interface

uses Windows, SysUtils, Auto;

type
  TCochera = class
  private
  public
    ambientes: integer;
    dimensiones: string;
    Auto: TAuto;
    function getAmbientes(): integer;
    procedure setAmbientes(ambientes: integer);
    function getDimensiones(): string;
    procedure setDimensiones(dimensiones: string);
    function getAuto(): TAuto;
    procedure setAuto(Auto: TAuto);
    Constructor Create; overload;
    Constructor Create(ambientes: integer; dimensiones: string;
      Auto: TAuto); overload;
    function DatosCochera(): string;
    function DatosCocheraCompleto(): string;
  end;

implementation

function TCochera.getAmbientes(): integer;
begin
  Result := ambientes;
end;

procedure TCochera.setAmbientes(ambientes: integer);
begin
  self.ambientes := ambientes;
end;

function TCochera.getDimensiones(): string;
begin
  Result := dimensiones;
end;

procedure TCochera.setDimensiones(dimensiones: string);
begin
  self.dimensiones := dimensiones;
end;

function TCochera.getAuto(): TAuto;
begin
  Result := Auto;
end;

procedure TCochera.setAuto(Auto: TAuto);
begin
  self.Auto := Auto;
end;

constructor TCochera.Create;
begin
  inherited;
  //
end;

constructor TCochera.Create(ambientes: integer; dimensiones: string;
  Auto: TAuto);
begin
  self.ambientes := ambientes;
  self.dimensiones := dimensiones;
  self.Auto := Auto;
end;

function TCochera.DatosCochera(): string;
begin
  Result := '-- Datos de la cochera --' + sLineBreak + sLineBreak +
    '[+] Ambientes : ' + IntToStr(ambientes) + sLineBreak + '[+] Dimensiones : '
    + dimensiones + sLineBreak;
end;

function TCochera.DatosCocheraCompleto(): string;
var
  contenido: string;
begin
  contenido := '';
  contenido := contenido + sLineBreak + '-- Datos de la cochera --' + sLineBreak
    + sLineBreak + '[+] Ambientes : ' + IntToStr(ambientes) + sLineBreak +
    '[+] Dimensiones : ' + dimensiones + sLineBreak;
  if not(Auto = nil) then
  begin
    contenido := contenido + sLineBreak + '-- Datos del auto --' + sLineBreak +
      sLineBreak + '[+] Marca : ' + Auto.marca + sLineBreak +
      '[+] Numero serie : ' + Auto.numero_serie + sLineBreak;
  end;
  Result := contenido;
end;

end.
