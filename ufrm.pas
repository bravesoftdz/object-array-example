unit uFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfrm }

  Tfrm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  N = 4;
  M = 4;

var
  frm: Tfrm;
  matrix: array [0..N-1,0..M-1] of TEdit;

implementation

{$R *.lfm}

{ Tfrm }

procedure Tfrm.FormCreate(Sender: TObject);
var
  i, j: integer;
begin
  for i:= 0 to N-1 do
    for j:= 0 to M-1 do
      begin
        matrix[i,j]:= TEdit.Create(nil);
        with matrix[i,j] do
          begin
            Parent:= frm;
            Width:= Height;
            Font.Size:= 12;
            Left:= 16+(i*(Width+8));  //64 is buffer from left, 8 is spacing between
            Top:= 16+(j*(Height+8));
          end;
      end;
end;

end.

