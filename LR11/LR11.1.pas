uses GraphABC;
begin
  moveTo(300,100);
  lineTo(500,150);
  lineto(100,150);
  lineto(300,100);
  lineTo(500,150);
  lineTo(300,200);
  lineto(100,150);
  circle(50,150,50);
  circle(550,150,50);
  floodfill(550,150,clyellow);
  floodfill(50,150,clred);
  floodfill(300,125,clblue);
  floodfill(300,175,clgreen);
end.