

var
  filetext: text;
  S: string;
  filename: string;

begin
  
  writeln('Введите имя файла: ');
  readln(filename);


  writeln('Введите строку для добавления в файл:');
  readln(S);


  assign(filetext, filename);
  append(filetext);
  
  writeln(filetext, S);

  close(filetext);
  writeln('Строка успешно добавлена в файл');
end.
