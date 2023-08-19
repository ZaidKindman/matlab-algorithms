function bool = check(node,open)
for i=1:length(open) 
if(node.name ==open(i).name)
bool=1;
else
bool=0;
end
end