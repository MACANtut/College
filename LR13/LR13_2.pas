type str = string[254];
var
  s:str;
  max,c,i,count:integer;
  ls,lines: array of string;
  f1,f2: file of str;
begin
AssignFile(f1, 'C:\Users\lolko\OneDrive\Рабочий стол\13.2.txt');
Rewrite(f1);

SetLength(lines, 10);
lines[0] := 'grtgtrrgttgrtg';
lines[1] := 'grtg';
lines[2] := 'drg';
lines[3] := 'drgd';
lines[4] := 'drgdrg';
lines[5] := 'fsefs';
lines[6] := 'sefsefsefsefs';

for count := 0 to High(lines) do
Write(f1, lines[count]);

CloseFile(f1);
  assign(f2,'C:\Users\lolko\OneDrive\Рабочий стол\вывод_к13.2.txt');
  reset(f1);
  read(f1,s);
  max:=length(s);
  c:=0;
  while not eof(f1) do
  begin
    read(f1,s);
    if max < (length(s)) then
      max:=length(s)
  end;
  reset(f1);
  while not eof(f1) do
  begin
    read(f1, s);
    if length(s) = max then
    begin
      setlength(ls, c + 1);
      ls[c] := s;
      inc(c);
    end;
  end;
  rewrite(f2);
  for i := c - 1 downto 0 do
  begin
    Write(f2, ls[i]);
  end;
  close(f1);
  close(f2);
end.