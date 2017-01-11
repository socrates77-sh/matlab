function [ab, ang] = rsv( vec )
    ab = abs(vec);
    ang = rad2deg(angle(vec));
end

