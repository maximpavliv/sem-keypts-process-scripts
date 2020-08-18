pnames = {'kpt_1', 'kpt_2', 'kpt_3', 'kpt_4', 'kpt_5', 'kpt_6', 'kpt_7', 'kpt_8'};
p = pnames;

quad_width = 0.15; % in cm
quad_height = 0.06; % in cm

[v, f, n, c, stltitle] = stlread('dragonfly_min_2.stl', 0);

vertices = v;
faces = f;

kpt_1 = [quad_width/2, quad_width/2, quad_height/2];
kpt_2 = [quad_width/2, quad_width/2, -quad_height/2];
kpt_3 = [quad_width/2, -quad_width/2, quad_height/2];
kpt_4 = [quad_width/2, -quad_width/2, -quad_height/2];
kpt_5 = [-quad_width/2, quad_width/2, quad_height/2];
kpt_6 = [-quad_width/2, quad_width/2, -quad_height/2];
kpt_7 = [-quad_width/2, -quad_width/2, quad_height/2];
kpt_8 = [-quad_width/2, -quad_width/2, -quad_height/2];
k1 = kpt_1;
k2 = kpt_2;
k3 = kpt_3;
k4 = kpt_4;
k5 = kpt_5;
k6 = kpt_6;
k7 = kpt_7;
k8 = kpt_8;

drone_cad.pnames = p;
drone_cad.vertices = v;
drone_cad.faces = f;
drone_cad.kpt_1 = k1;
drone_cad.kpt_2 = k2;
drone_cad.kpt_3 = k3;
drone_cad.kpt_4 = k4;
drone_cad.kpt_5 = k5;
drone_cad.kpt_6 = k6;
drone_cad.kpt_7 = k7;
drone_cad.kpt_8 = k8;

drone_dict_from_cad = getPascalTemplate(drone_cad);

B = drone_dict_from_cad.B;
mu = drone_dict_from_cad.mu;
pc = drone_dict_from_cad.pc;

save cad pnames vertices faces kpt_1 kpt_2 kpt_3 kpt_4 kpt_5 kpt_6 kpt_7 kpt_8
save dict B mu pc