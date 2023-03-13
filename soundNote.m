function [] = soundNote(octave,notenum,samplefreq,time)
%soundNote This function generates a sound from a given octave, note number, 
% sample frequency and duration. It generates a basic waveform, applies an 
% amplitude envelope and convolves it with an impulse response, 
% applies a low pass filter and plays the sound.

    [wave,fs]=basicWave(octave, notenum,samplefreq,time);
    wave_enveloped = env(wave,samplefreq);

    % Load an impulse response of a room or space
    [y, Fs] = audioread('impulse_responses/I_R.wav');
    impulse_response = reshape(y,[],1);

    % Convolve the waveform with the impulse response
    reverb_effect = conv(wave_enveloped, impulse_response);

    % Design a low-pass filter
    cutoff_frequency = fs; % Cutoff frequency in Hz
    filter_order = 6; % Filter order
    [B,A] = butter(filter_order, cutoff_frequency/(samplefreq/2), 'low');
    wave_filtered = filter(B, A, reverb_effect);

    % play sound
    sound(wave_filtered,samplefreq,24);
    end