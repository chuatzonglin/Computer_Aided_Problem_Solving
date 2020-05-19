load_faces
%imshow(reshape(X(1,:),[112,92])/255);

[U,W,V]=svds(X-ones(400,1)*mean(X),20);

W_reduced=W(1:20,1:20);
eigenvalues=W_reduced.^2;

eigenvalues=ones(1,length(eigenvalues))*eigenvalues;
plot(eigenvalues)

pause

U_new=U(1:20,1:20);
W_new=W(1:20,1:20);
V_new=V(1:20,1:20);
X_new=U_new*W_new*V_new';


svec=V(:,1);
imshow(reshape(svec,[112,92]),[min(svec),max(svec)]);
