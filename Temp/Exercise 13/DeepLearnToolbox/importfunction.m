fid=fopen("t10k-images-idx3-ubyte","r","b");
fread(fid,4,"int32")
test_img=fread(fid,[28*28,10000],"uint8");
test_img=test_img';
fclose(fid);
fid=fopen("t10k-labels-idx1-ubyte","r","b");
fread(fid,2,"int32")
test_lbl=fread(fid,10000,"uint8");
fclose(fid);
fid=fopen("train-images-idx3-ubyte","r","b");
fread(fid,4,"int32")
train_img=fread(fid,[28*28,60000],"uint8");
train_img=train_img';
fclose(fid);
fid=fopen("train-labels-idx1-ubyte","r","b");
fread(fid,2,"int32")
train_lbl=fread(fid,60000,"uint8");
fclose(fid);
