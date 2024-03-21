function [output] = image_log(input, c)
    % 로그 변환을 계산하는 함수
    % input: 원본 이미지
    % c: 로그변환 정도를 조절
    % output: 계산된 로그변환 이미
    % s=clog(1+r)
output = c * log(1 + double(input)/255);
end