var
  inputFile, outputFile: TextFile;
  line: string;
begin
  AssignFile(inputFile, 'C:\Users\lolko\OneDrive\Рабочий стол\ЛР12.4.txt');
  AssignFile(outputFile, 'C:\Users\lolko\OneDrive\Рабочий стол\norm_file.txt');
 
    reset(inputFile);
    rewrite(outputFile);
    
    while not EOF(inputFile) do
    begin
      ReadLn(inputFile, line);
      
      if Trim(line) <> '' then
        WriteLn(outputFile, line); 
    end;

 
    CloseFile(inputFile);
    CloseFile(outputFile);
  
  Writeln('Пустые строки удалены. Результат записан в output.txt');
end.
