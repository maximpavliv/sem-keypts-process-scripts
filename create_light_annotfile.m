clear all

n=50;

heavy_annotfile_path = '../object3d_drones/data/pascal3d/annot/valid.mat';

load(heavy_annotfile_path)

%fields = fieldnames(annot);

annot_light.index = annot.index(1:n,:);
annot_light.bbox = annot.bbox(1:n,:);
annot_light.center = annot.center(1:n,:);
annot_light.scale = annot.scale(1:n,:);
annot_light.difficult = annot.difficult(1:n,:);
annot_light.truncated = annot.truncated(1:n,:);
annot_light.occluded = annot.occluded(1:n,:);
annot_light.dataset = annot.dataset(1:n,:);
annot_light.person = annot.person(1:n,:);
annot_light.torsoangle = annot.torsoangle(1:n,:);
annot_light.normalize = annot.normalize(1:n,:);
annot_light.visible = annot.visible(1:n,:);
annot_light.imgname = annot.imgname(1:n,:);
annot_light.class = annot.class(1:n,:);
annot_light.classID = annot.classID(1:n,:);
annot_light.cad_index = annot.cad_index(1:n,:);
annot_light.viewpoint = annot.viewpoint(1:n,:);
annot_light.rot = annot.rot(1:n,:);
annot_light.indices = annot.indices(1:n,:);
annot_light.part = annot.part(1:n,:,:);

clear annot
annot = annot_light;
clear annot_light;
save valid_light annot

