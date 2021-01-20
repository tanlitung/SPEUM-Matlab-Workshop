bass = audioread('bass.wav');
guitar = audioread('guitar.wav');
drum = audioread('drums.wav');

% Sampling rate = 44100 samples / sec (CD Standard)
% Read the audio from 10sec to 20sec
bass = bass(44100*10 : 44100*20);
drum = drum(44100*10 : 44100*20);
guitar = guitar(44100*10 : 44100*20);

% Visualize the audio
subplot(3, 1, 1);
plot(drum);
subplot(3, 1, 2);
plot(guitar);
subplot(3, 1, 3);
plot(bass);
sound(bass, 44100);

% To play with a higher rate, uncomment the line below
% sound(drum, 88200);

% Combining the audio
com = drum + guitar;
% sound(com, 44100);

com = drum + guitar + bass;
% sound(com, 44100);

% We cannot listern to the bass, let's increase the magnitude
bass = bass * 3;
guitar = guitar * 0.3;
com = drum + guitar + bass;
% sound(com, 44100);