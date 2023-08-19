function x = sort_struct( x )
    for i = 1:length(x)-1
       for j=i+1:length(x)
           if(x(i).hv<x(j).hv)
              temp = x(i);
              x(i) = x(j);
              x(j) = temp;
           end
           if(x(i).hv == x(j).hv)
              temp = x(i);
              x(i) = x(j);
              x(j) = temp;
           end
       end 
    end
end

