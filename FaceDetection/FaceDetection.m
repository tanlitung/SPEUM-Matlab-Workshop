% Use imread to read the images
a = imread('harrypotter.jpg');
b = imread('avengers.jpg');

% Use the detector provided in the computer vision toolbox
detector = vision.CascadeObjectDetector;

% Increase the threshold to remove false detection
detector.MergeThreshold = 2;

% Draw a box boundary around the faces
bbox = step(detector, b);
output = insertObjectAnnotation(b, 'rectangle', bbox, 'Faces');
imshow(output);