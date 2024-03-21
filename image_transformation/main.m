clear; close all;

input_retina_image = imread('retina.jpg');
input_FT_image = imread('FT_spectrum.png');
input_lena_image = imread('Lena.jpg');

% 네거티브 이미지 계산
% 여기서는 예로 256을 사용합니다. 실제 사용 시에는 이미지의 최대 강도값에 맞게 조정해야 합니다.
negative_image = image_negative(input_retina_image, 256);
log_image = image_log(input_FT_image, 3);
gamma_image = image_gamma(input_lena_image, 1.5, 1);

% 네거티브 이미지 결과 이미지 표시
figure;
subplot(1, 2, 1);
imshow(input_retina_image, []);
title('Original Image');

subplot(1, 2, 2);
imshow(negative_image, []);
title('negative Image');

% 로그 변환 결과 이미지 표시
figure;
subplot(1, 2, 1);
imshow(input_FT_image, []);
title('Original Image');

subplot(1, 2, 2);
imshow(log_image, []);
title('log-transform Image');

% gamma 변환 결과 이미지 표시
figure;
subplot(1, 2, 1);
imshow(input_lena_image, []);
title('Original Image');

subplot(1, 2, 2);
imshow(gamma_image, []);
title('gamma-transform Image');