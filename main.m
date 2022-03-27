close all; clear; clc

global KTYPE KSCALE C size_training lambda_max lambda
KTYPE = 6;
KSCALE = 0.5;
size_training = 6000;
C = 10;
lambda = 1;
lambda_max = 6;
data_flag=1;
[x,y]=read_data(data_flag);
[original_x,original_y]=random_select(x,y) ;

initial_solution=initial(original_x,original_y);
[model,Lambda]=IncSemiSVM.Run(original_x,original_y,initial_solution);






