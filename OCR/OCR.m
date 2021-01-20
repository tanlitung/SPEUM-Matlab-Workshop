% Read an image
highway = imread('highway.png');
letter = imread('coverletter.jpg');
handicap = imread('handicap.jpg');

ocrResults = ocr(letter);
imshow(letter);
recognizedText = ocrResults.Text