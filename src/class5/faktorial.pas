program faktorial;

var cislo : integer;

function faktorial(n: integer):longint;
var i : integer;
begin
  faktorial := 1;
  for i:=1 to n do
    faktorial := faktorial * i;
end;

begin
  read(cislo);
  writeln(faktorial(cislo));
end.
