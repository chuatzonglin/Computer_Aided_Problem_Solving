A=eye(10,10);
train_d=A(train_lbl+1,:);
test_d=A(test_lbl+1,:);

mu = mean(train_img);
sigma = max(std(train_img), eps);

train_img = (train_img - mu)./sigma;
test_img = (test_img - mu)./sigma;

nn = nnsetup([784 30 30 10]);

for i=1:10;
opts.numepochs = 1;
opts.batchsize = 100;
[nn, L] = nntrain(nn, train_img, train_d, opts);

pred = nnpredict(nn, test_img);
pred(1:10)';

test_lbl(1:10)';

x(i,1)=sum(pred-1==test_lbl)/10000*100;
end

plot(x);

pred