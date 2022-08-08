function x_class = classify(x, class, p_class, m, v)
%associated value to a point x given a class i, for each class
px_new = zeros(1, length(class)); %will be proportional to the posteriori probability
for i=1:length(class)
    m_i = cell2mat(m(i));
    v_i = cell2mat(v(i));
    px = exp(-1/2 * (x-m_i) * inv(v_i) * (x-m_i)' / ((2 * pi)^(length(x)/2) * det(v_i)^(1/2)));
    px_new(i) = px*p_class(i); %we dont need to divide by p(x), we just need to choose the highest value to px_new given by this formula
end
[~, idx] = max(px_new);
x_class = class(idx);
end

