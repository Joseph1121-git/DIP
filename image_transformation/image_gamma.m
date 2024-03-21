function [output] = image_gamma(input, gamma, c)
    % gamma transform를 계산하는 함수
    % input: 원본 이미지
    % gamma: gamma<1 image will be brighter, gamma>1 image will be darker
    % output: 계산된 gamma transform이미지
    % s=cr^γ
output = im2uint8(c*im2double(input).^(1/gamma));
end