// Written By Ismael Heredia in the year 2016

unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  System.StrUtils;

type
  TFormHome = class(TForm)
    pcOptions: TPageControl;
    tsReverse: TTabSheet;
    tsNotas: TTabSheet;
    tsEnteros: TTabSheet;
    tsFactorial: TTabSheet;
    lblTexto: TLabel;
    txtEntrada: TEdit;
    lblSalida: TLabel;
    txtSalida: TEdit;
    btnReverseString: TButton;
    lblMatematica: TLabel;
    lblFisica: TLabel;
    lblLengua: TLabel;
    lblGeografia: TLabel;
    lblQuimica: TLabel;
    txtNotaMatematica: TEdit;
    txtNotaFisica: TEdit;
    txtNotaQuimica: TEdit;
    txtNotaLengua: TEdit;
    txtNotaGeografia: TEdit;
    btnAgregarNotaMatematica: TButton;
    btnAgregarNotaFisica: TButton;
    btnAgregarNotaQuimica: TButton;
    btnAgregarNotaLengua: TButton;
    btnAgregarNotaGeografia: TButton;
    btnPromedioMatematica: TButton;
    btnPromedioFisica: TButton;
    btnPromedioQuimica: TButton;
    btnPromedioLengua: TButton;
    btnPromedioGeografia: TButton;
    btnLimpiarMatematica: TButton;
    btnLimpiarFisica: TButton;
    btnLimpiarQuimica: TButton;
    btnLimpiarLengua: TButton;
    btnLimpiarGeografia: TButton;
    mmOutput: TMemo;
    procedure btnReverseStringClick(Sender: TObject);
    procedure btnAgregarNotaMatematicaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLimpiarMatematicaClick(Sender: TObject);
    procedure btnPromedioMatematicaClick(Sender: TObject);
    procedure btnAgregarNotaFisicaClick(Sender: TObject);
    procedure btnAgregarNotaQuimicaClick(Sender: TObject);
    procedure btnAgregarNotaLenguaClick(Sender: TObject);
    procedure btnAgregarNotaGeografiaClick(Sender: TObject);
    procedure btnPromedioFisicaClick(Sender: TObject);
    procedure btnPromedioQuimicaClick(Sender: TObject);
    procedure btnPromedioLenguaClick(Sender: TObject);
    procedure btnPromedioGeografiaClick(Sender: TObject);
    procedure btnLimpiarFisicaClick(Sender: TObject);
    procedure btnLimpiarQuimicaClick(Sender: TObject);
    procedure btnLimpiarLenguaClick(Sender: TObject);
    procedure btnLimpiarGeografiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;
  notasMatematica: TStringList;
  notasFisica: TStringList;
  notasQuimica: TStringList;
  notasLengua: TStringList;
  notasGeografia: TStringList;

implementation

{$R *.dfm}

function calcularPromedio(tipo: string): integer;
var
  promedio: integer;
  notas: TStringList;
  total: integer;
  i: integer;
begin

  promedio := 0;

  try
    begin
      total := 0;
      notas := TStringList.Create();

      if (tipo = 'matematica') then
      begin
        notas.Assign(notasMatematica);
      end;
      if (tipo = 'fisica') then
      begin
        notas.Assign(notasFisica);
      end;
      if (tipo = 'quimica') then
      begin
        notas.Assign(notasQuimica);
      end;
      if (tipo = 'lengua') then
      begin
        notas.Assign(notasLengua);
      end;
      if (tipo = 'geografia') then
      begin
        notas.Assign(notasGeografia);
      end;

      for i := 0 to notas.Count - 1 do
      begin
        total := total + StrToInt(notas[i]);
      end;

      promedio := Round(total / notas.Count);

      notas.Free();
    end;
  except
    begin
      //
    end;
  end;

  Result := promedio;

end;

procedure TFormHome.btnAgregarNotaFisicaClick(Sender: TObject);
begin
  if (txtNotaFisica.Text = '') then
  begin
    ShowMessage('Ingrese nota de Fisica');
  end
  else
  begin
    notasFisica.Add(txtNotaFisica.Text);
    mmOutput.Lines.Add('Nota : ' + txtNotaFisica.Text + ' agregada en Fisica');
  end;
end;

procedure TFormHome.btnAgregarNotaGeografiaClick(Sender: TObject);
begin
  if (txtNotaGeografia.Text = '') then
  begin
    ShowMessage('Ingrese nota de Geografia');
  end
  else
  begin
    notasGeografia.Add(txtNotaGeografia.Text);
    mmOutput.Lines.Add('Nota : ' + txtNotaGeografia.Text +
      ' agregada en Geografia');
  end;
end;

procedure TFormHome.btnAgregarNotaLenguaClick(Sender: TObject);
begin
  if (txtNotaLengua.Text = '') then
  begin
    ShowMessage('Ingrese nota de Lengua');
  end
  else
  begin
    notasLengua.Add(txtNotaLengua.Text);
    mmOutput.Lines.Add('Nota : ' + txtNotaLengua.Text + ' agregada en Lengua');
  end;
end;

procedure TFormHome.btnAgregarNotaMatematicaClick(Sender: TObject);
begin
  if (txtNotaMatematica.Text = '') then
  begin
    ShowMessage('Ingrese nota de Matematica');
  end
  else
  begin
    notasMatematica.Add(txtNotaMatematica.Text);
    mmOutput.Lines.Add('Nota : ' + txtNotaMatematica.Text +
      ' agregada en Matematica');
  end;
end;

procedure TFormHome.btnAgregarNotaQuimicaClick(Sender: TObject);
begin
  if (txtNotaQuimica.Text = '') then
  begin
    ShowMessage('Ingrese nota de Quimica');
  end
  else
  begin
    notasQuimica.Add(txtNotaQuimica.Text);
    mmOutput.Lines.Add('Nota : ' + txtNotaQuimica.Text +
      ' agregada en Quimica');
  end;
end;

procedure TFormHome.btnPromedioFisicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Promedio de Fisica : ' +
    IntToStr(calcularPromedio('fisica')));
end;

procedure TFormHome.btnPromedioGeografiaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Promedio de Geografia : ' +
    IntToStr(calcularPromedio('geografia')));
end;

procedure TFormHome.btnPromedioLenguaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Promedio de Lengua : ' +
    IntToStr(calcularPromedio('lengua')));
end;

procedure TFormHome.btnPromedioMatematicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Promedio de Matematica : ' +
    IntToStr(calcularPromedio('matematica')));
end;

procedure TFormHome.btnPromedioQuimicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Promedio de Quimica : ' +
    IntToStr(calcularPromedio('quimica')));
end;

procedure TFormHome.btnLimpiarFisicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Notas de Fisica borradas');
  notasFisica.Clear();
end;

procedure TFormHome.btnLimpiarGeografiaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Notas de Geografia borradas');
  notasGeografia.Clear();
end;

procedure TFormHome.btnLimpiarLenguaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Notas de Lengua borradas');
  notasLengua.Clear();
end;

procedure TFormHome.btnLimpiarMatematicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Notas de Matematica borradas');
  notasMatematica.Clear();
end;

procedure TFormHome.btnLimpiarQuimicaClick(Sender: TObject);
begin
  mmOutput.Lines.Add('Notas de Quimica borradas');
  notasQuimica.Clear();
end;

procedure TFormHome.btnReverseStringClick(Sender: TObject);
begin
  if (txtEntrada.Text = '') then
  begin
    ShowMessage('Ingrese texto');
  end
  else
  begin
    txtSalida.Text := ReverseString(txtEntrada.Text);
  end;
end;

procedure TFormHome.FormCreate(Sender: TObject);
begin
  notasMatematica := TStringList.Create();
  notasFisica := TStringList.Create();
  notasQuimica := TStringList.Create();
  notasLengua := TStringList.Create();
  notasGeografia := TStringList.Create();
end;

end.
