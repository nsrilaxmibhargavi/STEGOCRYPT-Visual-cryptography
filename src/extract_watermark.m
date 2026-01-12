function extract_watermark(decrypted_img, output_file)
    % Size of watermark region (same as embed logic)
    [H, W, ~] = size(decrypted_img);
    wm_height = floor(H / 4);
    wm_width = floor(W / 4);

    % Extract LSB from bottom-right region
    watermark = zeros(wm_height, wm_width, 'uint8');
    for ch = 1:3
        region = decrypted_img(end-wm_height+1:end, end-wm_width+1:end, ch);
        watermark = bitor(watermark, bitget(region, 1));  % Combine LSBs across channels
    end

    watermark = uint8(watermark * 255);  % Convert binary to visible
    imwrite(watermark, output_file);
end
