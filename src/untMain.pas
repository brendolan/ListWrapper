unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  untIListWrapper, untListWrapper, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    edtNumero: TEdit;
    btnAdicionar: TButton;
    btnContar: TButton;
    Button2: TButton;
    mmNumeros: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnContarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FList: IListWrapper<Integer>;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnAdicionarClick(Sender: TObject);
begin
  FList.Add(StrToIntDef(edtNumero.Text, 0));
end;

procedure TFrmMain.btnContarClick(Sender: TObject);
begin
  ShowMessage(FList.Count.ToString);
end;

procedure TFrmMain.Button2Click(Sender: TObject);
begin
  for var Item in FList do
  begin
    mmNumeros.Lines.Add(Item.ToString);
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
   FList := TListWrapper<Integer>.New();
end;

end.
