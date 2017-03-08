%This is function to find the gScore between two adjacent nodes

function [g]=gScore(current,neighbor)

edges=load('rand1_edges.txt');

I=find(edges(:,1)==current & edges(:,2)==neighbor);

g=edges(I,3);

end

