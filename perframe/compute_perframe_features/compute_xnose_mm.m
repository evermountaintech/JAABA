% x-position of nose
function [data,units] = compute_xnose_mm(trx,n)

flies = trx.exp2flies{n};
nflies = numel(flies);
data = cell(1,nflies);
for i = 1:nflies,
  fly = flies(i);  
  data{i} = trx(fly).x_mm + 2*trx(fly).a_mm.*cos(trx(fly).theta_mm);
end
units = parseunits('mm');

