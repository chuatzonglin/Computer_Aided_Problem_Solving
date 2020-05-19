sample = imread('5.png');
sample = mean(sample,3)

pred = nnpredict(sample)