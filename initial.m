function out=initial(original_x,original_y)
    global C
    os=SMO.InitialSolution(original_x,original_y,C);
    [PreLowBound,PreUppBound]=SMO.ComputerCCstar(original_x,original_y,os);
    terminal_flag=0;
    NowLowBound=PreLowBound;
    NowUppBound=PreUppBound;
    while terminal_flag==0
        objcs=SemiSVM(original_x,original_y,NowLowBound,NowUppBound,0);
        PreLowBound=NowLowBound;
        PreUppBound=NowUppBound;
        [NowLowBound,NowUppBound]=SemiSVM.ComputerCCstar(original_x,original_y,objcs);
        terminal_flag=SemiSVM.CheckTerminial(PreLowBound,PreUppBound,NowLowBound,NowUppBound);
    end
    out=objcs;
end

