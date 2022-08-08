load fisheriris
f = figure;
gscatter(meas(:,1), meas(:,2), species,'rgb','osd');
xlabel('Sepal length');
ylabel('Sepal width');
class = fix((0:149)/50);
data = [meas class'];