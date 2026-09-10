function h = phasors(Z)
    hold on
    
    m = 1.2 * max([abs(real(Z)) abs(imag(Z))]);
    if m == 0, m = 1; end
    
    % I albastru
    h(1) = quiver(0, 0, real(Z(1)), imag(Z(1)), 0, 'b', 'LineWidth', 1.5);
    
    % U rosu
    h(2) = quiver(0, 0, real(Z(2)), imag(Z(2)), 0, 'r', 'LineWidth', 1.5);
    
    % axe
    plot([-m m], [0 0], 'k--', 'LineWidth', 0.5)
    plot([0 0], [-m m], 'k--', 'LineWidth', 0.5)
    
    axis([-m, m, -m, m], 'square')
    grid on
end