function [kd,kc] = gaussiansimilarity(interaction,nd,nc)

%calculate gamad for Gaussian kernel calculation
gamad = nd/(norm(interaction,'fro')^2);
%calculate Gaussian kernel for the similarity between disease: kd
C=interaction;
kd=zeros(nd,nd);
D=C*C';
for i=1:nd
    for j=i:nd
        kd(i,j)=exp(-gamad*(D(i,i)+D(j,j)-2*D(i,j)));
    end
end
kd=kd+kd'-diag(diag(kd));

%calculate gamac for Gaussian kernel calculation
gamac = nc/(norm(interaction,'fro')^2);
%calculate Gaussian kernel for the similarity between circRNA: kc
kc=zeros(nc,nc);
E=C'*C;
for i=1:nc
    for j=i:nc
        kc(i,j)=exp(-gamac*(E(i,i)+E(j,j)-2*E(i,j)));
    end
end
kc=kc+kc'-diag(diag(kc));

end