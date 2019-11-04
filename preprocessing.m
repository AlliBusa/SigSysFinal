% Loading Data
[datamonoduring, Fs] = converttomono('/home/alli/longswampyrecording_music.wav');
[background, ~] = converttomono('/home/alli/background_flute_swamp.wav');
% Filter out Data Below 100 Hz and above 15kHz
datamonoduring = bandpass(datamonoduring,[4000 10000],Fs);
background = bandpass(background,[4000 10000],Fs);
% calculate time vector

samplenum = 1:1:length(datamonoduring);
timevector = samplenum .* (1./Fs);
minutevector = timevector./60;
%% Preprocessing for Filtering Out Music During Music Playing

% Take recording of same song in the same places 
% Upload both with and without birds
bird = datamonoduring;
% nobird
% cross correlate them
[cc, lags] = xcorr(bird, background);
%%
figure;
plot(lags, cc);
title('Cross Correlation of Background and Recording');
xlabel('Lags');
ylabel('Correlation');
% figure out the lag for greatest correlation
%%
[~, index] = max(cc);
max_lag = lags(index);
%%
% shift one of them so they have greatest 
if max_lag<0
%     shift some signal
% shift back
    shifted_signal = [bird(-1*max_lag:end); ones(-1*max_lag,1)];
 
%     shifted_signal = delayseq(bird,-1*max_lag, Fs);
elseif max_lag > 0

    shifted_signal = [ones(max_lag,1); bird(max_lag:end) ];
end

% soundsc(shifted_signal,Fs)
% subtract the song one from the bird one
%%
if length(background)> length(shifted_signal)
    cleaned = shifted_signal - background(1:length(shifted_signal));
elseif  length(background)< length(shifted_signal)
    cleaned = shifted_signal(1:length(background)) - background;
end
% soundsc(cleaned)
audiowrite('/home/alli/cleaned.wav',cleaned,Fs);

