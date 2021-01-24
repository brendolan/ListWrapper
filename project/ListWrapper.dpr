program ListWrapper;

uses
  Vcl.Forms,
  untMain in '..\src\untMain.pas' {FrmMain},
  untIListWrapper in '..\src\untIListWrapper.pas',
  untListWrapper in '..\src\untListWrapper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
