% GET_CHART_VALUES(chart_image) - extract the 6x4 color values from the
% supplied colour chart image.
%
% Usage:
%         RGB_list = get_chart_values(chart_image)
%
% chart_image - NxMx3 array of uint8
% RGB_list - 24x3 element list of rgb values


function RGB_list = get_chart_values(chart_image)
% chart_image is assumed to be an RGB (0..255) image of the color test
% chart. The chart should consist of 4 rows of 6 color patches equally
% spaced. Here you simply need to obtain an RGB value for each patch and
% store it in an Nx3 table

% ---- INSERT YOUR CODE BELOW -----

    % istore ang height ug width sa image para loop later
    [rows, cols, ~] = size(chart_image);
    RGB_list = zeros(24,3);

    % kuhaon ang height ug width depende kung pila ka patches ang naa sa image, 6x4 in this case
    patch_width = cols / 6;
    patch_height = rows / 4;

    % initialize ang i return, 24 ka patches, 3 colors per patch, all zero for now
    RGB_list = zeros(24,3);

    % loop through the patches
    for row =  1:4
        for col = 1:6
            % disp("col: " + col + " row: " + row + " at " + round(row*patch_height*((row+row-1)/2/row)) + "," + round(col*patch_width*((col+col-1)/2/col)));
            % disp(chart_image(round(row*patch_height*((row+row-1)/2/row)): round(row*patch_height*((row+row-1)/2/row)), round(col*patch_width*((col+col-1)/2/col)) : round(col*patch_width*((col+col-1)/2/col)), :));
            % RGB_list(row*6 + col + 1, :) = avg_color;
        end
    end
% DELETE THIS LINE OF CODE
% RGB_list = round(255*rand(24,3)); % <--- for now this returns a dummy result

% ---- INSERT YOUR CODE ABOVE -----

return
end






