function points = function_generator(input,period,amplitude,offset,phase_delay,t)
switch input
    case 'sine'
        points = amplitude.*sin(t.*(2.*pi)./period + 2.*pi.*phase_delay) + offset;
    case 'saw'
        points = amplitude.*sawtooth(t.*(2.*pi)./period  + 2.*pi.*phase_delay) + offset;
    case 'square'
        points = amplitude.*square(t.*(2.*pi)./period  + 2.*pi.*phase_delay) + offset;
    otherwise
        points = zeros(length(t),1)+offset;
        
end
end

