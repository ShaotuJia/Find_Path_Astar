%This is the main function to output text file for path result
%This script can be modified to get different output

clc;
clear;
close all;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_1
%Set up start point, goal, and weight
start1= 772;
goal1= 386;
weight1=1;


%Call function to find path1
path1=FindPath(start1,goal1,weight1);
%Output path to text file
fileID=fopen('Problem_1.txt','w');
fprintf(fileID,'%d\n',path1);
fclose(fileID);
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_2
start2= 643;
goal2= 608;
weight2= 10.0;

%call function to find path2
path2=FindPath(start2,goal2,weight2);
%Output path to text file
fileID2=fopen('Problem_2.txt','w');
fprintf(fileID2,'%d\n',path2);
fclose(fileID2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_3
start3 = 596;
goal3 = 609;
weight3 = 2.0;

%Call function to find path3
path3=FindPath(start3,goal3,weight3);

%output path to text file
fileID3=fopen('Problem_3.txt','w');
fprintf(fileID3,'%d\n',path3);
fclose(fileID3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_4
start4 = 772;
goal4 = 386;
weight4 = 100.0;

%Call function to find path4
path4=FindPath(start4,goal4,weight4);

%output path to text file
fileID4=fopen('Problem_4.txt','w');
fprintf(fileID4,'%d\n',path4);
fclose(fileID4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_5
start5 = 643;
goal5 = 608;
weight5= 100.0;

%Call function to find path5
path5=FindPath(start5,goal5,weight5);

%output path to text file
fileID5=fopen('Problem_5.txt','w');
fprintf(fileID5,'%d\n',path5);
fclose(fileID5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem_6
start6 = 596;
goal6 = 609;
weight6 = 100.0; 

%Call function to find path6
path6=FindPath(start6,goal6,weight6);

%output path to text file
fileID6=fopen('Problem_6.txt','w');
fprintf(fileID6,'%d\n',path6);
fclose(fileID6);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%