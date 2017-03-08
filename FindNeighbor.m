%This function is to find neighbors for each nodes

function [n]=FindNeighbor(node)

edges=load('rand1_edges.txt');
I=find(edges(:,1)==node);
n=edges(I,2);

end