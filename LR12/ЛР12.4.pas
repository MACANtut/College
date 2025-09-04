﻿program InsertEmptyLineBeforeK;

var
  filetext: text;
  filename: string;
  K, currentLine: Integer;
  lineContent: string;
  lines: array of string;

begin

  writeln('Введите номер строки K:');
  readln(K);

  
  assign(filetext, 'C:\Users\lolko\OneDrive\Рабочий стол\ЛР12.4.txt');
 
  reset(filetext);

 
  currentLine := 0;
  while not eof(filetext) do
  begin
    readln(filetext, lineContent);
    SetLength(lines, currentLine + 1);
    lines[currentLine] := lineContent;
    Inc(currentLine);
  end;


  close(filetext);

  if (K > 0) and (K <= currentLine + 1) then
  begin
    
    SetLength(lines, currentLine + 1);
    for var i := currentLine downto K do
      lines[i] := lines[i - 1];
    lines[K - 1] := ''; 

  
    assign(filetext, 'C:\Users\lolko\OneDrive\Рабочий стол\ЛР12.4.txt');
    rewrite(filetext);
    
 
    for var i := 0 to High(lines) do
      writeln(filetext, lines[i]);

    close(filetext);

    writeln('Пустая строка успешно вставлена перед строкой номер ', K);
  end
  else
    writeln('Строки с номером ', K, ' не существует. Файл остался без изменений.');
end.
