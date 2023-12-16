function dYdt=Modelo_loteal2(var,u1,u2,u3,u4,u5)
   
    % Parameters
    mu_max = u1;      % 1/h
    Y_XS = u2;        % g/g
    Ks = 0.08;          % g/L
    S_in = 20;         % g/L (substrate concentration in feed)
    Smax = 30;         %g/L
    ms = 0.00001;
    alfa = u3;
    beta = u4;
    F=u5;

    % Current states
    X = var(1);          % Biomass concentration (g/L)
    S = var(2);          % Substrate concentration (g/L)
    P = var(3);          % Product concentration (g/L)
    V = var(4);          % Volume (L)
    
    % Monod Growth kinetics
    mu = mu_max * S / (Ks + S)* (1-(S/(Smax)));
    
    % Mass balances
    dXdt = mu * X - (F/V) * X;
    dSdt = (F/V) * (S_in - S) - ((mu / Y_XS) + ms) * X;
    dPdt = (alfa * mu + beta) * X - (F/V) * P;
    dVdt = F;
    
    dYdt = [dXdt, dSdt, dPdt, dVdt];