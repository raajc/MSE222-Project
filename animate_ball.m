function animate_ball(angle_weird, angle_more_weird, time, vx_ball,vy_ball, r_ball, x_ball, y_ball, angle_ball, x_cart, y_cart, cart_angle)
theta = [0:(1*pi/180):(360*pi/180)]

for i = 1:3:(length(angle_ball))
    
    
    for j = 1:length(theta)
        x(j) = x_ball(i) + (r_ball*cos(theta(j)));
        y(j) = y_ball(i) + (r_ball*sin(theta(j)));
    end
    %animate ball with movement and rotation
    ball = plot(1000*x, 1000*y,'b');
   
    angle_dot = plot(1000*((r_ball*cos(angle_ball(i))/2)+x_ball(i)), 1000*((r_ball*sin(angle_ball(i))/2)+y_ball(i)), '*');
    
    %animate rotators
    first_rotator = line([0.2, 0.2, 14, 14, 38, 38, 14, 14, 0.2],[85.8, 138.3, 138.3, 119.8, 119.8, 104.9, 104.9, 85.8, 85.8],  'LineWidth', 1, 'Color', 'black');
    rotate(first_rotator, [0 0 -1],angle_weird(i)*-180/pi , [10.5 121.9 0]) %angle_weird*pi/180
    
    second_rotator = line([65.15, 65.15, 60.5, 51, 51, 34.7, 34.7, 9.4, 9.4, 52.7, 52.7, 65.15],[75, 93.4, 98, 98, 89.5, 89.5, 75, 75, 74.4, 74.4, 75, 75],  'LineWidth', 1, 'Color', 'black');
    rotate(second_rotator, [0 0 1], angle_more_weird(i)*180/pi, [54.5 89.5 0])
    

%     animate cart   origin of cart drawing at top right corner, need
%     x_cart, and y_cart in relation to top right corner
   
%     if (%some statment about the angle track)
%         rotate(second_rotator, [0 0 -1], 9.83, [x_cart y_cart 0])
%         else %don't rotate is track is flat
%     end 24+
    %translate cart using x_cart and y_cart
%     plot::Translate2d([dx, dy], cart);
%pause(time(i+1)-time(i));

%    if sqrt(vx_ball(i+1)^2+vy_ball(i+1)^2)>0
%     time = (sqrt((x_ball(i+1) - x_ball(i))^2 + (y_ball(i+1) - y_ball(i))^2)/sqrt(vx_ball(i+1)^2+vy_ball(i+1)^2));
%    else 
%        a = 0.0000000000000
%    end
%     if (time < 0.1)
%     pause(time);
%     else 
%         pause(0.03);
%         
%     end
% % if something

%     line([10.3 + (cos(phi)*3.5) - (sin(phi)*2), 10.3 + (cos(phi)*3.5) - (sin(phi)*2) + cos(phi)*24],[151.4 - (sin(phi)*3.5) - (cos(phi)*2), 151.4 - (sin(phi)*3.5) - (cos(phi)*2) - (24*sin(phi))], 'LineWidth', 1, 'Color', 'black');
%     line([13.8, 37.8],[114-9.5+14.9, 114-9.5+14.9], 'LineWidth', 1, 'Color', 'black');
%     line([0, 13.8],[114-9.5, 114-9.5], 'LineWidth', 1, 'Color', 'black');

    
    %pause (0.0000001);
    cart = line(x_cart(i)+[0, -60, -60, -64, -64, -60, -60, 0,0],y_cart(i)+[0, 0, -1.5, -1.5, -15, -15, -13.7, -13.7,0],  'LineWidth', 1, 'Color', 'black');
    rotate(cart, [0 0 1], cart_angle(i), [x_cart(i)-30 y_cart(i)-6.85 0])
    
   pause(0.0001);
    set(ball, 'visible','off') 
    set(angle_dot, 'visible','off')
    set(first_rotator, 'visible','off')
    set(second_rotator, 'visible','off')
    set(cart, 'visible','off') 
    
end
 