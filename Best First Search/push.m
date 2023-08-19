function [x1,x2]=push(stack,top,value)
global priorty;
if(~is_full(top))
priorty = priorty + 1;
top = top + 1 ;
value.p = priorty;
stack(top)=value;
end
x1 = stack;
x2 = top;
end

