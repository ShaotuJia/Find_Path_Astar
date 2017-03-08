%This function is to find the path in given data using A* Algorithm
%Programed by Shaotu Jia, and followed the Pseduocode from wikipedia

function [path]= FindPath(start,goal,weight)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Set up struture array ' Node ' for nodes to save following information
%1. g, gScore, the cost of moving from one nodes to others
%2. h, hScore, the heuristic_cost_estimate between current point to goal
%3. f, fScore, fScore=gScore+hScore, used to evalute nodes
%4. neighobor, neighobor nodes of current node
%5. preivous, the parent of current nodesfor path reconstruction

Node.g=[];
Node.h=[];
Node.f=[];
Node.neighbor=[];
Node.previous=[];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Initialize path
path=[];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Set up open and close list
%1. openSet, open list
%2. closedSet, close list

openSet=start;
closedSet=[];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%load data from txt file
EdgesData=load('rand1_edges.txt');
NodesData=load('rand1_nodes.txt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Set up current node, current=start at the beginning
current=start;
Node(current).g=0;
Node(current).h=heuristic(current,goal);
Node(current).f=Node(current).g+weight*Node(current).h;
Node(current).previous=[];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while ~isempty(openSet)
    
    winner=1;
    for i=1:length(openSet)
        if Node(openSet(i)).f<Node(openSet(winner)).f
            winner=i;
        end
    end 
    
    current=openSet(winner);
    
    if current == goal       
      %Path reconstruction
      Node(start).previous=[];
      temp=current;
      path(end+1)=temp;
      while ~(isempty(Node(temp).previous))
          path(end+1)=Node(temp).previous;
          temp=Node(temp).previous;
          
          if length(path)>1000
              error= 'The path is incorrect!! Check code again'; 
              display(error);
              return;
          end
      end
      
      %filp path array from left to right
      %Show path from start to end 
       path=fliplr(path);
        return;
    end
    
    openSet=remove(openSet,current);
    closedSet(end+1)=current;
    
    %find neighbors for current node
    Node(current).neighbors=FindNeighbor(current);
    
    neighbors=Node(current).neighbors;
    for j=1:length(neighbors)
        neighbor=neighbors(j);
        
        if (~max(closedSet==neighbor))
            tempG=Node(current).g+ gScore(current, neighbor);
            
            if (max(openSet==neighbor))
                if (tempG<Node(neighbor).g)
                    Node(neighbor).g=tempG;
                end
            else
                    Node(neighbor).g=tempG;
                    openSet(end+1)=neighbor;
            end
       
            
            Node(neighbor).h=heuristic(neighbor,goal);
            Node(neighbor).f=Node(neighbor).g+weight*Node(neighbor).h;
            Node(neighbor).previous=current;
        end
    end     
        
end
    

end

