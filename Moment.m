syms B C F_X F_Y F_Z

% Displacement vectors r_A = [];

% Force vectors 
% F_A = []; 
% F_A = F*[cosd(alpha), cosd(beta), cosd(gamma)];
% F_A = (A/norm(r_A - r_O))*(r_A - r_O);

F_R = F + F_A + F_B + F_C

% Moments
% M_A = cross(r_A - r_O, F_A);

M_O = M + cross(r_A - r_O, F_A) + cross(r_B - r_O, F_B) + cross(r_C - r_O, F_C)

eqns = [
    0 == F_R(1);
    0 == F_R(2);
    0 == F_R(3);
    0 == M_O(1);
    0 == M_O(2);
    0 == M_O(3);
];

% Unknowns
vars = [B C F_X F_Y F_Z];
solutions = solve(eqns,vars);

fields = fieldnames(solutions);
for i = 1:numel(fields)
    disp([fields{i} ': ']);
    disp(round(solutions.(fields{i}), 5, "significant"));
end