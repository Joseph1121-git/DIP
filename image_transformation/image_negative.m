function [output] = image_negative(input, L)
    % 이미지 네거티브를 계산하는 함수
    % input: 원본 이미지
    % L: 이미지가 가질 수 있는 최대 강도값(예: 256)
    % output: 계산된 이미지 네거티브
    % s=T(r)=L−1−r(input)
    output = L - 1 - input;
end

