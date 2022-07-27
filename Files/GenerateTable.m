function params = GenerateTable(n,m)

P = -0.001 + (1.001+0.001)*rand(n, m); % матрица вероятностей

params.f = figure;
params.p = P;
params.n = n;
params.m = m;
t = 0:(n-1);
x = [t; t; t+1; t+1];
x = repmat(x, m);
x = x(1:4, :);

y = 0:(m-1);
y = repmat(y, n);
y = y(1:n, 1:m);
y = reshape(y, n*m, 1);
y = [y, y+1, y+1, y];
y = y';

c = reshape(P, 1, n*m);

fill(x, y, c);
colorbar;
hold on;

params.x = x;
params.y = y;

ax = gca;
ax.XTickMode = 'manual';
ax.YTickMode = 'manual';
ax.XTick = 0:1:n;
ax.YTick = 0:1:m;
grid(ax, 'on');

end