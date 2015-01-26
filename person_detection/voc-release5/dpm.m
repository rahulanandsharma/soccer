clear all
clc
close all

startup;
addpath export_fig/
a1 = 'VOC2007/person_final.mat';
f1='ground_zoomin.jpg';
f2='ground_zoomout.jpg';
f3='top_zoomin.jpg';
f4='top_zoomout.jpg';
f5='crowd_zoomin.jpg';
f6='crowd_zoomout.jpg';
f7='misc.jpg';
f7='misc.jpg';
f8='top_zoomout_scale_2.jpg';
f9='top_zoomout_scale_3.jpg';
f10='top_zoomout_scale_4.jpg';

name={};
name = {f1;f2;f3;f4;f5;f6;f7;f8;f9;f10}
models={'VOC2007/person_final.mat';'VOC2007/person_grammar_final.mat';'VOC2010/person_final.mat';'VOC2010/person_grammar_final.mat';'INRIA/inriaperson_final.mat'}
[i1 i2]=size(name)
[j1 j2]=size(models)
thr=-1:0.2:1;
[k1 k2]=size(thr)
for j=1:j1
for i=1:i1
for k=1:k2
load(models{j});
fname=name{i};
thresh=thr(1,k);
size(model);
im = imread(fname); 
size(im);  
models{j};
[pathstr,name2,ext] = fileparts(fname);
[pathstr1,name1,ext1] = fileparts(models{j});
j1=strcat(pathstr1,'_');
j1=strcat(j1,name1);
ff=strcat('soccer/',name2);
ff=strcat(ff,'_');
ff=strcat(ff,j1);
ff=strcat(ff,'_');
ff=strcat(ff,num2str(thresh,2));
ff=strcat(ff,ext);

ff
bbox = process(im, model,thresh);  
showboxes(im, bbox,ff);          
close all;
end
end
end
%
%load(a1);

%thresh=-0.5;
%im = imread(f1);       
% bbox = process(im, model,thresh);  
 %s1='soccer/';
 %s = strcat(s1,s2)

%  
