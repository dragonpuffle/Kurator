var c:int64;
procedure f(n:int64;q,w,e:boolean);
begin
  if n=35 then q:=true;
  if n=57 then w:=true;
  if n=60 then e:=true;
  if n<63 then begin
    f(n+2,q,w,e);
    f(n+3,q,w,e);
  end
  else if n>=63 then 
    if not q then if not w then if not e then
      c+=1;
end;
begin
  c:=0;
  f(0,false,false,false);
  println(c);
end.