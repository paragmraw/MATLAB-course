a = imread("PROF-PIC .jpg");
imshow(a)
b = imresize(a, 0.8);
detector = vision.CascadeObjectDetector("Mouth");
detector.MergeThreshold = 100;
bbox = step(detector, b)
out = insertObjectAnnotation(b, "rectangle", bbox, 'detection')
imshow(out)