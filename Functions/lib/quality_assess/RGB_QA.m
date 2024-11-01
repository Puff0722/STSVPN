function [psnr, ssim, fsim] = RGB_QA(Img1, Img2)

maxP = max(abs(Img1(:))); 

psnr = PSNR_TSVPN(Img1, Img2, maxP);
img1 = 255*double(rgb2gray(Img1));
img2 = 255*double(rgb2gray(Img2));
ssim = SSIM_TSVPN(img1, img2);
fsim = FeatureSIM(img1, img2);

end
