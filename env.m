function wave_enveloped = env(wave,fs)
%env The function takes an audio waveform and a sample rate as inputs, 
% and generates an amplitude envelope for the waveform.

% Define the envelope
attack = 0.05; % Attack time in seconds
decay = 0.1; % Decay time in seconds
sustain = 0.7; % Sustain amplitude level (0-1)
release = 0.1; % Release time in seconds

% get the length of the waveform
wave_length=length(wave);

% create an empty envelope
env = zeros(1,wave_length);

% Attack phase
attack_samples = round(attack*fs);
env(1:attack_samples) = linspace(0,1,attack_samples);

% Decay phase
decay_samples = round(decay*fs);
env(attack_samples+1:attack_samples+decay_samples) = linspace(1,sustain,decay_samples);

% Sustain phase
sustain_samples = round((wave_length-attack_samples-decay_samples));
env(attack_samples+decay_samples+1:attack_samples+decay_samples+sustain_samples) = sustain;

% Release phase
release_samples = round(release*fs);
env(attack_samples+decay_samples+sustain_samples+1:attack_samples+decay_samples+sustain_samples+release_samples) = linspace(sustain,0,release_samples);
% Apply the envelope to the waveform
env = env(1:length(wave));
wave_enveloped = wave .* env;

end