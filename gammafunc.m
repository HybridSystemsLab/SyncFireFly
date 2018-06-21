function xplus = gammafunc(x,e)
    if x + x^2*e > 1
        xplus = 0;
    elseif x + x^2*e < 1
        xplus = x + x^2*e;
    else
        p = rand(1);
        if p > 0.5
            xplus = 1;
        else
            xplus = 0;
        end
    end
        
end