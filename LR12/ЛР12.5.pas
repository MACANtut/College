var
  inputFile, outputFile: TextFile;
  number, minNumber, maxNumber: Integer;
  firstLine: Boolean;
begin

  AssignFile(inputFile, 'C:\Users\lolko\OneDrive\Рабочий стол\input.txt');
  AssignFile(outputFile, 'C:\Users\lolko\OneDrive\Рабочий стол\output.txt');
  reset(inputFile);
  rewrite(outputFile);
 
  firstLine := True;


    while not EOF(inputFile) do
    begin
      ReadLn(inputFile, number);

      if firstLine then
      begin
        minNumber := number;
        maxNumber := number;
        firstLine := False;
      end
      else
      begin
 
        if number < minNumber then
          minNumber := number;
        if number > maxNumber then
          maxNumber := number;
      end;
    end;

    WriteLn(outputFile, 'Минимальное число: ', minNumber);
    WriteLn(outputFile, 'Максимальное число: ', maxNumber);


    CloseFile(inputFile);
    CloseFile(outputFile);
 

  Writeln('Результаты записаны в output.txt');
end.
