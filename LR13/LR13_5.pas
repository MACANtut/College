﻿var
  i,ind:integer;
  f1,f2: file of integer;
  arr: array[1..15] of integer;
  begin
  randomize;
  assign(f1,'C:\Users\lolko\OneDrive\Рабочий стол\13.5.txt');
  assign(f2,'C:\Users\lolko\OneDrive\Рабочий стол\временный.txt');
  rewrite(f1);
  for i:=1 to 15 do 
    begin
    arr[i]:=random(50);
    write(f1, arr[i]);
    end;
  writeln('Изначальный массив: ', arr);
  rewrite(f2);
  ind:=0;
  for i:=2 to 14 do
  begin
    if (arr[i]>arr[i+1]) and (arr[i]>arr[i-1]) then
      ind:=i
  end;
  write(f2, arr[ind]);
  writeln('Последний локальный максимум: ', arr[ind]);
  close(f1);
  close(f2);
  end.