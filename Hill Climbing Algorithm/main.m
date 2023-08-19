node = struct('name','','hv',-1,'child',[],'p',-1,'leaf',0);
start  = struct('name','','hv',NaN,'child',[],'p',-1,'leaf',1);

global priorty;
priorty = 0;


node(7).name = 'G';
node(7).leaf = 1;
node(7).hv = 2;
node(7).child = [start start];

node(6).name = 'F';
node(6).leaf = 1;
node(6).hv = 3;
node(6).child = [start start];

node(5).name = 'E';
node(5).leaf = 1;
node(5).hv = 5;
node(5).child = [start start];

node(4).name = 'D';
node(4).leaf = 1;
node(4).hv = 6;
node(4).child = [start start];

node(3).name = 'C';
node(3).leaf = 0;
node(3).hv = 3;
node(3).child = [node(6) node(7)];

node(2).name = 'B';
node(2).leaf = 0;
node(2).hv = 1;
node(2).child = [node(4) node(5)];

node(1).name= 'A';
node(1).leaf = 0;
node(1).child = [node(2) node(3)];


open = start;
temp_open = start;
closed = start;
x = start;

goal = node(5);
topo = 0;
topc = 0;
toptp = 0;

status = 0;

[open,topo] = push(open,topo,node(1));

while(status~=1)
    [open,topo,x] = pop(open,topo);
    if(x.name==goal.name)
       [closed,topc] = push(closed,topc,x);
       status = 1;
       break;
    end
    
        [closed,topc] = push(closed,topc,x);
        if(x.leaf==0)
            [open,topo] = push(open,topo,x.child(1));
            [open,topo] = push(open,topo,x.child(2));
            open = sort_struct(open);
        end
    

end
    
    














