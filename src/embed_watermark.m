function embed_watermark(original_img_path, watermark_img_path)
    % Read original and watermark images
    original = imread(original_img_path);
    watermark = imread(watermark_img_path);

    % Resize watermark to 1/4 size of original image
    [H, W, ~] = size(original);
    wm_resized = imresize(watermark, [floor(H/4), floor(W/4)]);

    % Position to place the watermark (bottom-right)
    x_offset = H - size(wm_resized,1) + 1;
    y_offset = W - size(wm_resized,2) + 1;

    % Convert watermark to double for blending
    original = im2double(original);
    wm_resized = im2double(wm_resized);

    % Overlay the watermark with some transparency (alpha)
    alpha = 0.4; % adjust visibility of watermark
    for ch = 1:3
        original(x_offset:end, y_offset:end, ch) = ...
            (1 - alpha) * original(x_offset:end, y_offset:end, ch) + ...
            alpha * wm_resized(:,:,min(ch, size(wm_resized,3)));
    end

    % Convert back to uint8 and save
    watermarked = im2uint8(original);
    imwrite(watermarked, 'watermarked_input.png');
end
