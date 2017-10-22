clear; clc; format compact; close all;

%Definindo o domínio
keySet = {'A', 'B', 'C','D','E','F','G'}; %Classes
%%% 2 classes
%valueSet = {[[0,0.4999];[0,0.4999]],[[0.5,1];[0.5,1]]};  %2dm
%valueSet = {[[0,0.4999];[0,0.4999];[0,0.4999]], [[0.5,1];[0.5,1];[0.5,1]]}; %3dm
%valueSet = {[[0,0.4999];[0,0.4999];[0,0.4999];[0,0.4999]], [[0.5,1];[0.5,1];[0.5,1];[0.5,1]]}; %4dm

%%% 3 Classes
%valueSet = {[[0,0.2999];[0,0.2999]],[[0.3,0.6999];[0.3,0.6999]],[[0.7,1];[0.7,1]]}; %2dm
%valueSet = {[[0,0.2999];[0,0.2999];[0,0.2999]],[[0.3,0.6999];[0.3,0.6999];[0.3,0.6999]],[[0.7,1];[0.7,1];[0.7,1]]};



%%% 7 classes
%valueSet = {[[0,0.0999];[0,0.0999]],[[0.1,0.2999];[0.1,0.2999]],[[0.3,0.3999];[0.3,0.3999]],[[0.4,0.5999];[0.4,0.5999]],[[0.6,0.6999];[0.6,0.6999]],[[0.7,0.7999];[0.7,0.7999]],[[0.8,1];[0.8,1]]};
%valueSet = {[[0,0.0999];[0,0.0999];[0,0.0999];[0,0.0999]],[[0.1,0.2999];[0.1,0.2999];[0.1,0.2999];[0.1,0.2999]],[[0.3,0.3999];[0.3,0.3999];[0.3,0.3999];[0.3,0.3999]],[[0.4,0.5999];[0.4,0.5999];[0.4,0.5999];[0.4,0.5999]],[[0.6,0.6999];[0.6,0.6999];[0.6,0.6999];[0.6,0.6999]],[[0.7,0.7999];[0.7,0.7999];[0.7,0.7999];[0.7,0.7999]],[[0.8,1];[0.8,1];[0.8,1];[0.8,1]]}; %4dm
valueSet = {[[0,1];[0,0.4999];[0,0.4999];[0.5,1]],[[0,0.5];[0.5,1];[0.5,1];[0,0.1]],[[0.5,0.7];[0,0.1];[0,0.1];[0,0.1]],[[0.7,1];[0.7,1];[0,0.5];[0,0.1]],[[0.7,0.1];[0.1,0.2];[0.1,0.2];[0.7,1]],[[0.1,0.3];[0.1,0.3];[0.2,0.4];[0.5,0.8]],[[0.8,1];[0.8,1];[0.8,1];[0.8,1]]};

domain = containers.Map(keySet,valueSet);
num_patterns = 200;
num_trials = 50;

clone_rate = 10;
mutate_rate = 2.0;
stim_thresh = 0.9;
max_res = 150;

sum_pct = [];
for i = 1:100
    display(i)
    sum_pct(i) = execute(domain, num_patterns, clone_rate, mutate_rate, stim_thresh,max_res, num_trials);
end

classification_rate = mean(sum_pct);
fprintf('Rate final: %d', classification_rate);
figure();
boxplot(sum_pct);
title('Boxplot');
xlabel('AIRS Problema 2');
ylabel('Porcentagem de acerto');
grid on;

figure();
[x1,y1] = ecdf(sum_pct);


plot(y1,x1,'LineWidth',2);
title('Função Cumulativa de Probabilidade');
xlabel('Porcentagem de acerto');
ylabel('Probabilidade');
grid on;


