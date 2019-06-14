// Written By Ismael Heredia in the year 2016

unit Edificio;

interface

uses Windows, SysUtils;

type
  TEdificio = class
  private
  public
    medidas: string;
    ambientes: integer;
    function getMedidas(): string;
    procedure setMedidas(medidas: string);
    function getAmbientes(): integer;
    procedure setAmbientes(ambientes: integer);
    Constructor Create; overload;
    Constructor Create(medidas: string; ambientes: integer); overload;
    function DatosTerreno(): string;
  end;

implementation

function TEdificio.getMedidas(): string;
begin
  Result := medidas;
end;

procedure TEdificio.setMedidas(medidas: string);
begin
  self.medidas := medidas;
end;

function TEdificio.getAmbientes(): integer;
begin
  Result := ambientes;
end;

procedure TEdificio.setAmbientes(ambientes: integer);
begin
  self.ambientes := ambientes;
end;

constructor TEdificio.Create;
begin
  inherited;
  //
end;

constructor TEdificio.Create(medidas: string; ambientes: integer);
begin
  self.medidas := medidas;
  self.ambientes := ambientes;
end;

function TEdificio.DatosTerreno(): string;
begin
  Result := '-- Datos del terreno --' + sLineBreak + sLineBreak +
    '[+] Medidas : ' + medidas + sLineBreak + '[+] Ambientes : ' +
    IntToStr(ambientes);
end;

end.
