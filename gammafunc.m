function xplus = gammafunc(x,e)
    phaseresponse = x^2*e; %it is possible to adjust the phase response curve to suit other scenarios.
    if x + phaseresponse > 1
        xplus = 0;
    elseif x + phaseresponse < 1
        xplus = x + phaseresponse;
    else
        p = rand(1);
        if p > 0.5
            xplus = 1;
        else
            xplus = 0;
        end
    end
        
end