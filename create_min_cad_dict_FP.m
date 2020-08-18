clear
startup

datapath = 'demo/gascan/';
dict_full = load(sprintf('%s/annot/dict.mat',datapath));
cad_full = load(sprintf('%s/annot/cad.mat',datapath));

dict_min.mu = dict_full.mu;
dict_min.pc = dict_full.pc;

cad_min.vertices = cad_full.vertices;
cad_min.pnames = cad_full.pnames;

for i = [1:10]
    cad_min.(cad_min.pnames{i}) = cad_full.(cad_full.pnames{i})
end
    
save cad cad_min
save dict dict_min