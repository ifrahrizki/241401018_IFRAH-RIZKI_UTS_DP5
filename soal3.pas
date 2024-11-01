program MinumanNala;
uses crt;

var
  n, i: integer;
  harga: real;

begin
clrscr;

  write('Banyak minuman (n) : ');
  readLn(n);
  
  writeLn('Harga minuman:');
  for i := 1 to n do
  begin
    writeln('Minuman ke-', i, ': ');
    readln(harga);
    
    if harga < 10000 then
    begin
    writeln('Minuman yang bisa dibeli Nala:');
    writeln('Minuman ke-', i, ': Rp', harga:0:2);
    end;
  end;

  readln;
end.