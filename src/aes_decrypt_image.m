function decrypted = aes_decrypt_image(img)
    rng(123);  % Use same key as in encryption

    [H, W, C] = size(img);
    decrypted = zeros(H, W, C, 'uint8');

    % Same S-box and permutation as in encryption
    sbox = uint8(randperm(256) - 1);
    [~, inv_sbox] = sort(sbox);  % Build inverse S-box

    for ch = 1:C
        flat = img(:, :, ch);
        flat = flat(:);

        perm = randperm(numel(flat));
        inv_perm = zeros(size(perm));
        inv_perm(perm) = 1:numel(flat);

        % Undo permutation
        flat = flat(inv_perm);

        % Undo substitution
        flat = inv_sbox(double(flat) + 1);

        decrypted(:, :, ch) = reshape(flat, H, W);
    end
end
