// Written By Ismael Heredia in the year 2016

unit threads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, OtlThreadPool, OtlComm,
  OtlTask,
  OtlTaskControl, Vcl.ComCtrls;

type
  TFormHome = class(TForm)
    txtConsole: TMemo;
    btnStartThread: TButton;
    btnStopThread: TButton;
    btnStartThreads: TButton;
    btnStopThreads: TButton;
    procedure btnStartThreadClick(Sender: TObject);
    procedure btnStopThreadClick(Sender: TObject);
    procedure btnStartThreadsClick(Sender: TObject);
    procedure btnStopThreadsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure execute(number: integer);
  end;

var
  FormHome: TFormHome;

implementation

{$R *.dfm}

procedure TFormHome.execute(number: integer);
begin
  Sleep(5000);
  txtConsole.Lines.Add('Number : ' + IntToStr(number));
  FormHome.Update;
end;

procedure TFormHome.btnStartThreadClick(Sender: TObject);
var
  number: integer;
begin
  number := Random(666);
  Application.ProcessMessages;
  CreateTask(
    procedure(const task: IOmniTask)
    var
      number_load: integer;
    begin

      number_load := task.Param['number'].AsInteger;

      execute(number_load);

    end).SetParameter('number', number).Unobserved.Schedule;

  ShowMessage('Loaded');

end;

procedure TFormHome.btnStartThreadsClick(Sender: TObject);
var
  number, i: integer;
begin

  for i := 1 to 5 do
  begin
    number := i;
    Application.ProcessMessages;
    CreateTask(
      procedure(const task: IOmniTask)
      var
        number_load: integer;
      begin

        number_load := task.Param['number'].AsInteger;

        execute(number_load);

      end).SetParameter('number', number).Unobserved.Schedule;
  end;

  ShowMessage('Loaded');

end;

procedure TFormHome.btnStopThreadClick(Sender: TObject);
begin
  GlobalOmniThreadPool.CancelAll;
  ShowMessage('Stopped');
end;

procedure TFormHome.btnStopThreadsClick(Sender: TObject);
begin
  GlobalOmniThreadPool.CancelAll;
  ShowMessage('Stopped');
end;

procedure TFormHome.FormCreate(Sender: TObject);
begin
  GlobalOmniThreadPool.MaxExecuting := 2 * System.CPUCount;
end;

end.
