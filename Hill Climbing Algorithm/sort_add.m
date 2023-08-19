function goal = sort_add( x,index)
temp = x(1);
    for i = 1:index
       for j=i+1:index
           if(x(i).hv<x(j).hv)
              temp = x(i);
              x(i) = x(j);
              x(j) = temp;
           end
       end 
    end
    goal = x;
end


