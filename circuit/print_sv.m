function print_sv( value, symbol, unit )
    [abs1, ang1] = rsv(value);
    fprintf('%s=%f[%f deg] (%s)\n', symbol, abs1, ang1, unit);
end

