function f3D()
    [X,Y]=meshgrid(-5:0.15:5,   -5:0.15:5); 
    
    r = (X.^2 + Y.^2).^0.5
    Z = cos(r)./r
    
    mesh(X,Y,Z)
    title('cos(r)/r', 'Fontsize', 15);
end