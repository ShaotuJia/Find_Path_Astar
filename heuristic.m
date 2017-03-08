%This function is for heuristic cost estimate
function [d]=heuristic(node1,node2)
nodes=load('rand1_nodes.txt');

CoordNode1=nodes(node1,:);
CoordNode2=nodes(node2,:);

d=sqrt((CoordNode1(1)-CoordNode2(1))^2+(CoordNode1(2)-CoordNode2(2))^2);

end