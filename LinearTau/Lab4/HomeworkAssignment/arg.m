function [result] = arg(w)
    real_func = real(w);
    imaginary_func = imag(w);
    elem = [];

    for i = 1:1:size(real_func)
        if real_func[i] < 0
            elem = [elem acot(real_func[i] / imaginary_func[i])];
        end
        if real_func[i] > 0
            elem = [elem acot(real_func[i] / imaginary_func[i]) - pi];
        end
        if imaginary_func[i] == 0 && real_func[i] > 0
            elem = [elem 0];
        end
        if imaginary_func[i] == 0 && real_func[i] < 0
            elem = [elem pi];
        end
        if real_func[i] == 0 && imaginary_func[i] == 0
            error('Real and imaginary == 0');
        end
    end
    result = elem;
end