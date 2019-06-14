// Written By Ismael Heredia in the year 2016

unit Casa;

interface

uses Windows, SysUtils, Cochera, Edificio;

type
  TEdificio = class(TObject)
  private
  public
    medidas: string;
    ambientes: integer;
    function getMedidas(): string; virtual; abstract;
    procedure setMedidas(medidas: string); virtual; abstract;
    function getAmbientes(): integer; virtual; abstract;
    procedure setAmbientes(ambientes: integer); virtual; abstract;
    Constructor Create; overload; virtual; abstract;
    Constructor Create(medidas: string; ambientes: integer); overload;
      virtual; abstract;
    function ToString(): string; virtual; abstract;
  end;

  TCasa = class(TEdificio)
  private
  public
    dueño: string;
    telefono: integer;
    direccion: string;
    Cochera: TCochera;
    function getDueño(): string;
    procedure setDueño(dueño: string);
    function getTelefono(): integer;
    procedure setTelefono(telefono: integer);
    function getDireccion(): string;
    procedure setDireccion(direccion: string);
    function getCochera(): TCochera;
    procedure setCochera(Cochera: TCochera);
    Constructor Create; overload;
    Constructor Create(medidas: string; ambientes: integer; dueño: string;
      telefono: integer; direccion: string; Cochera: TCochera); overload;
    function DatosCasa(): string;
    function DatosCasaCompleto(): string;
  end;

implementation

function TCasa.getDueño(): string;
begin
  Result := dueño;
end;

procedure TCasa.setDueño(dueño: string);
begin
  self.dueño := dueño;
end;

function TCasa.getTelefono(): integer;
begin
  Result := telefono;
end;

procedure TCasa.setTelefono(telefono: integer);
begin
  self.telefono := telefono;
end;

function TCasa.getDireccion(): string;
begin
  Result := direccion;
end;

procedure TCasa.setDireccion(direccion: string);
begin
  self.direccion := direccion;
end;

function TCasa.getCochera(): TCochera;
begin
  Result := Cochera;
end;

procedure TCasa.setCochera(Cochera: TCochera);
begin
  self.Cochera := Cochera;
end;

constructor TCasa.Create;
begin
  inherited;
  //
end;

constructor TCasa.Create(medidas: string; ambientes: integer; dueño: string;
  telefono: integer; direccion: string; Cochera: TCochera);
begin
  self.medidas := medidas;
  self.ambientes := ambientes;
  self.dueño := dueño;
  self.telefono := telefono;
  self.direccion := direccion;
  self.Cochera := Cochera;
end;

function TCasa.DatosCasa(): string;
var
  contenido: string;
begin
  contenido := '';
  contenido := contenido + '-- Datos del terreno --' + sLineBreak + sLineBreak +
    '[+] Medidas : ' + medidas + sLineBreak + '[+] Ambientes : ' +
    IntToStr(ambientes) + sLineBreak + sLineBreak;
  contenido := contenido + '-- Datos de la casa --' + sLineBreak + sLineBreak +
    '[+] Dueño : ' + dueño + sLineBreak + '[+] Telefono : ' + IntToStr(telefono)
    + sLineBreak + '[+] Direccion : ' + direccion;
  if not(Cochera = nil) then
  begin
    contenido := contenido + '[+] Cochera : ' + Cochera.dimensiones +
      sLineBreak;
  end;
  Result := contenido;
end;

function TCasa.DatosCasaCompleto(): string;
var
  contenido: string;
begin
  contenido := '';
  contenido := contenido + '-- Datos del terreno --' + sLineBreak + sLineBreak +
    '[+] Medidas : ' + medidas + sLineBreak + '[+] Ambientes : ' +
    IntToStr(ambientes) + sLineBreak + sLineBreak;
  contenido := contenido + '-- Datos de la casa --' + sLineBreak + sLineBreak +
    '[+] Dueño : ' + dueño + sLineBreak + '[+] Telefono : ' + IntToStr(telefono)
    + sLineBreak + '[+] Direccion : ' + direccion;
  if not(Cochera = nil) then
  begin
    contenido := contenido + sLineBreak + sLineBreak +
      '-- Datos de la cochera --' + sLineBreak + sLineBreak + '[+] Ambientes : '
      + Cochera.dimensiones + sLineBreak + '[+] Dimensiones : ' +
      Cochera.dimensiones + sLineBreak;
    if not(Cochera.Auto = nil) then
    begin
      contenido := contenido + sLineBreak + '-- Datos del auto --' + sLineBreak
        + sLineBreak + '[+] Marca : ' + Cochera.Auto.marca + sLineBreak +
        '[+] Numero serie : ' + Cochera.Auto.numero_serie + sLineBreak;
    end;
  end;
  Result := contenido;
end;

end.
