
function Entropy=entropy(image)

[C,R]=size(image);
Img_size=C*R;
L=256;
H_img=0;
nk=zeros(L,1);
for i=1:C
    for j=1:R
       Img_level=image(i,j)+1;
       nk(Img_level)=nk(Img_level)+1;
    end
end
for k=1:L
    Ps(k)=nk(k)/Img_size;
    if Ps(k)~=0;
    H_img=-Ps(k)*log2(Ps(k))+H_img;
    end
end
Entropy=H_img;

end







