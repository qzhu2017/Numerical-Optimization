function trust_region_descent(f, G, H, x, k_max; 
    eta1=0.25, eta2=0.5, gamma1=0.5, gamma2=2.0, delta=1.0)
    
    y = f(x)
    for k in 1 : k_max
        x1, y1 = solve_subproblem(G, H, x, delta) 
        r = (y - f(x1)) / (y - y1)
        if r < eta1
            delta *= gamma1 
        else
            x, y = x1, y1 
            if r > eta2
                delta *= gamma2 
            end
        end 
    end
    return x 
end