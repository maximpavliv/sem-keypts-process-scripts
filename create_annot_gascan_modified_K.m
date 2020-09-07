sourceFilePath = '../object3d_drones/demo/gascan/annot/valid.mat';
load(sourceFilePath);
imgname_tmp = annot.imgname;
center_tmp = annot.center;
scale_tmp = annot.scale;
K_tmp = annot.K;
nb_samples=size(imgname_tmp,1);

clear annot

A = [565.2027524412007, 0, 492.48969368881677; 0, 565.6613573390968, 271.0003077726479; 0, 0, 1];
intrinsics = {};
for i = [1:nb_samples]
    intrinsics = [intrinsics, A];
end

annot.imgname = imgname_tmp;
annot.center = center_tmp;
annot.scale = scale_tmp;
annot.K = intrinsics;

save valid_K_modified annot