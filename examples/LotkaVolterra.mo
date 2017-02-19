model LotkaVolterra "Lotka-Volterra equations"
    Real x(start = 1) "Prey";
    Real y(start = 1) "Predator";
    parameter Real lambda = 0.5;
    input Real u;
equation
    der(x) =  x - x * y - lambda * u;
    der(y) = -y + x * y -          u;
end LotkaVolterra;
