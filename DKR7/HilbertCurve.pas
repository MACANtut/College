unit HilbertCurve;

type
  TPoint = record
    X, Y: Integer;
  end;


procedure HilbertA(Depth: Integer; var Points: array of TPoint; var Index: Integer; X, Y, Xi, Xj, Yi, Yj: Integer);//параметризация
begin
  if Depth > 0 then //база
  begin
    //декомпозиция
    HilbertA(Depth - 1, Points, Index, X, Y, Yi div 2, Yj div 2, Xi div 2, Xj div 2);
    HilbertA(Depth - 1, Points, Index, X + Xi div 2, Y + Xj div 2, Xi div 2, Xj div 2, Yi div 2, Yj div 2);
    HilbertA(Depth - 1, Points, Index, X + Xi div 2 + Yi div 2, Y + Xj div 2 + Yj div 2, Xi div 2, Xj div 2, Yi div 2, Yj div 2);
    HilbertA(Depth - 1, Points, Index, X + Xi div 2 + Yi, Y + Xj div 2 + Yj, -Yi div 2, -Yj div 2, -Xi div 2, -Xj div 2);
  end
  else
  begin
    Points[Index].X := X + (Xi + Yi) div 2;
    Points[Index].Y := Y + (Xj + Yj) div 2;
    Inc(Index);
  end;
end;

procedure DrawHilbertCurve(Depth: Integer; var Points: array of TPoint);
var
  Index: Integer;
begin
  Index := 0;
  HilbertA(Depth, Points, Index, 0, 0, 512, 0, 0, 512);
end;

end.