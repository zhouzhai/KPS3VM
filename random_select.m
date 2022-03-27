function [original_x,original_y]=random_select(x,y) 
    global  size_training 
    res = [];
    while length(res) ~= size_training
        tmp_res = unique(randi([1,length(y)],size_training,1));
        res = [res;tmp_res];
        res = unique(res);
        if length(res) >= size_training
            res = res(1:size_training);
            res = sort(res);
        end
    end
    original_x=x(res,:);
    original_y=y(res);
end

