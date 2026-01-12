function encrypted = aes_encrypt_image(img)
    % Confusion + diffusion approach (AES-style)
    rng(123);  % Use a secure key in real use

    [H, W, C] = size(img);
    encrypted = zeros(H, W, C, 'uint8');

    % Substitution table (like S-box)
    sbox = uint8(randperm(256) - 1);

    for ch = 1:C
        channel_data = img(:,:,ch);

        % Confusion: substitute using sbox
        confused = sbox(double(channel_data)+1);

        % Diffusion: apply a key-based permutation
        flat = confused(:);
        perm = randperm(numel(flat));
        flat = flat(perm);

        % Reshape to original image shape
        encrypted(:,:,ch) = reshape(flat, H, W);
    end
end
