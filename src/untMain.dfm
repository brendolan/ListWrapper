object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Demo: IListWrapper<T>'
  ClientHeight = 327
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtNumero: TEdit
    Left = 24
    Top = 256
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object btnAdicionar: TButton
    Left = 246
    Top = 283
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object btnContar: TButton
    Left = 335
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Contar'
    TabOrder = 2
    OnClick = btnContarClick
  end
  object Button2: TButton
    Left = 335
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object mmNumeros: TMemo
    Left = 24
    Top = 17
    Width = 297
    Height = 233
    TabOrder = 4
  end
end
