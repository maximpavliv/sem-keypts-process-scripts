valid_full_centers = h5read('drones_valid.h5','/center');
valid_full_scales = h5read('drones_valid.h5','/scale');
names_file = fopen('drones_valid.txt');
data_names = textscan(names_file,'%s');
fclose(names_file);
names_full=data_names{1};

nb_samples = 20

names_full_nojpg = cellfun(@(x) x(1:5),names_full,'un',0);

A = [565.2027524412007, 0, 492.48969368881677; 0, 565.6613573390968, 271.0003077726479; 0, 0, 1];
intrinsics = {};
for i = [1:nb_samples]
    intrinsics = [intrinsics, A]
end

annot = struct()
annot.imgname = names_full(1:nb_samples)
annot.center = permute(valid_full_centers(:,1:nb_samples),[2 1])
annot.scale = valid_full_scales(1:nb_samples)
annot.K = intrinsics


save valid annot