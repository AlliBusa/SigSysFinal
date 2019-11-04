% Takes all the expected files, converts them to mono, and filters the
% frequencies

% Before Music
[swampflute_before, ~] = converttomono('/home/alli/Desktop/sigsys/swamp_high/longswampyhigh_before.wav');
[parcelflute_before, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_high/parcelbflute_before.wav');

[parcelmid_before, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_mid/midrange_parcelb_before.wav');

% During Music
[swampflute_music, ~] = converttomono('/home/alli/Desktop/sigsys/swamp_high/longswampyhigh_music.wav');
[parcelflute_music, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_high/parcelbflute_music.wav');

[parcelmid_music, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_mid/midrange_parcelb_during.wav');

% After Music
[swampflute_after, ~] = converttomono('/home/alli/Desktop/sigsys/swamp_high/longswampyhigh_after.wav');
[parcelflute_after, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_high/parcelbflute_after.wav');
[parcelmid_after, ~] = converttomono('/home/alli/Desktop/sigsys/parcelB_mid/midrange_parcelb_after.wav');

% Background
[backgroundswampflute, ~] = converttomono('/home/alli/Desktop/sigsys/backgroundnoise/background_flute_swamp.wav');
[backgroundswampcello, ~] = converttomono('/home/alli/Desktop/sigsys/backgroundnoise/background_cello_swamp.wav');
[backgroundswampmid, ~] = converttomono('/home/alli/Desktop/sigsys/backgroundnoise/background_midrange_swamp.wav');
