% Just Make a Plot of the Frequency Plot
swampflute_before = bandpass(swampflute_before, [4000 10000],Fs);
figure;
plot(swampflute_before);

%%
M = movmean(swampflute_before,20);
plot(M);

%%
[cc, lags] = xcorr(swampflute_before, swampflute_before);
figure; 
plot(lags, cc);
%%
figure;
envelope(swampflute_before,150,'rms')
%% 
envelope(swampflute_before,300,'peak')
%%

spectrogram(swampflute_before(1:20000),kaiser(256,5),220,512,Fs,'yaxis');
%%
passing = highpass(swampflute_before, 300,Fs);
plot(passing);
figure;
plot(abs(fftshift(fft(passing))));
soundsc(passing, Fs)
