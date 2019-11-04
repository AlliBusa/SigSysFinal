# SigSysFinal
The question I sought to answer for my Signals&amp;Systems Final project is if there's a noticeable auditory response of birds when they hear music.

I took many audio recordings of birds in a local forest; I describe this process in my final paper, located in this repository. Then I analyzed the recordings using the scripts below, and I describe my final results in the paper.

### Data
The recordings which I took can be downloaded from [Google Drive](https://drive.google.com/drive/folders/12bk6WCPA79-7z33wxB80bkn11CUYsC2z?usp=sharing).
### Scripts
All scripts are run in MATLAB, with the data from Google Drive loaded into the workspace.

The script converttomono.m is a helper script. It is called in createworkspace.m, which prepares all the files by converting them to one monaural sound file.

preprocessing.m will bandpass filter the sound, shifts the recording to be inline with the music, and filter out the music with cross-correlation.

final_analysis.m will perform the final analysis on the file. It will create a frequency plot, a spectrogram, auto-correlate, and take a moving mean.
