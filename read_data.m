function [x,y]=read_data(flag)
    if flag==1
        load a9a;
    end
    x=zscore(x);
end
