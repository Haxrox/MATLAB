% Unknowns
syms 

% Equations
eqns = [

];

% Unknowns
vars = []; % Copy the syms into this array (haven't found method to fix this)
solutions = solve(eqns,vars);

fields = fieldnames(solutions);
for i = 1:numel(fields)
    disp([fields{i} ': ']);
    disp(round(solutions.(fields{i}), 5, "significant"));
end