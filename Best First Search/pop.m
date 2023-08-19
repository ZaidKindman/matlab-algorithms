function [x1,x2,x3] = pop(stack,top)
start  = struct('name','','hv',NaN,'child',[],'p',-1,'leaf',1);
if(~is_empty(top))
global priorty;
priorty = priorty - 1;
stack(top).p = priorty;
x3 = stack(top);   
stack(top) = start;
top = top - 1;
x1 = stack;
x2 = top;
else 
x1 = stack;
x2 = top;
x3 = 0;  
end
end

