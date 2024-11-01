program DeretFibonacci;
uses crt;

var
  n, i: integer;
  fibonacci: array of integer;
  total: integer;

begin
clrscr;

  write('Masukkan nilai n: ');
  readLn(n);

  SetLength(fibonacci, n);

  if n > 0 then
    fibonacci[0] := 0;
  if n > 1 then
    fibonacci[1] := 1;

  total := 0;
  for i := 0 to n - 1 do
  begin
    if i > 1 then
      fibonacci[i] := fibonacci[i - 1] + fibonacci[i - 2];
    total := total + fibonacci[i];
  end;

  write('Deret Fibonacci: ');
  for i := 0 to n - 1 do
  begin
    write(fibonacci[i]);
    if i < n - 1 then
      write(', ');
  end;

  writeLn;
  writeLn('Total: ', total);
  readLn;
end.
