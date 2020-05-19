fid=fopen("t10k-images-idx3-ubyte","r","b");
fread(fid,4,"int32")
data=fread(fid,[28*28,10000],"uint8");
fclose(fid);
img=reshape(data,28,28,10000);
imshow(img(:,:,1)',[0,255])
imshow(img(:,:,100)',[0,255])

fid=fopen("t10k-labels-idx1-ubyte","r","b");
fread(fid,2,"int32")
label=fread(fid,10000,"uint8");

tr_label = label(1:5000);
tr_data = data(:,1:5000);