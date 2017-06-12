### Recognition Pilot Experiment
### Author: Daniel Cortez Stevenson
### Questions or comments? Contact: [daniel.stevenson@charite.de]

# ---- Header ----
pcl_file = "S2_Reco_Pilot.pcl";

### Button Options
active_buttons = 4;
button_codes = 1, 2, 3, 4;

### Response Logging Options
#no_logfile = true; #Turn on/off presentation log file creation.
response_matching = legacy_matching;
response_logging = log_active;

### Monitor View Settings
default_background_color = 0, 0, 0;

# Set max positive y-coordinate to standardize stimuli sizes across display devices.
# An image that takes up the entire height of the display device would have a height that
# is equal to double the following value:
max_y = 100;


# ---- fmri header ----

# for simulation
scenario_type = fMRI_emulation;
scan_period = 2000;     # = TR

# for fMRI
#scenario_type = fMRI;

# for both
pulses_per_scan = 1;
pulse_code = 99;

begin;

# ---- Load Stimuli ----
# Default
picture{bitmap{ filename = "fix.jpg";height = 200; scale_factor = scale_to_height;}; x = 0; y = 0;} default;	#fix

# Instructions, Fixation Cross, Blank, & Warning Screens
bitmap{ filename = "recognition_instrukt.bmp"; height = 200; scale_factor = scale_to_height;} 	instrukt;	#instructions
bitmap{ filename = "fix.jpg";			height = 200; scale_factor = scale_to_height;}	fix;			#fixation cross

# Abfragen
bitmap{ filename = "abfrage2_factual.jpg";	height = 200; scale_factor = scale_to_height;}	abfrage2;  	# Wie sicher sind Sie?
bitmap{ filename = "abfrage2r_factual.jpg";height = 200; scale_factor = scale_to_height;}	abfrage2r; 	# Wie sicher sind Sie? (REVERSED)

# Load Stimuli Bilder into a list.

## Stimulus Bilder
# Alt Neutral Backer
array {
	bitmap{ filename = "backen_alt_01.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a1n;
	bitmap{ filename = "backen_alt_02.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a2n;
	bitmap{ filename = "backen_alt_03.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a3n;
	bitmap{ filename = "backen_alt_04.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a4n;
	bitmap{ filename = "backen_alt_05.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a5n;
	bitmap{ filename = "backen_alt_06.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a6n;
	bitmap{ filename = "backen_alt_07.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a7n;
	bitmap{ filename = "backen_alt_08.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a8n;
	bitmap{ filename = "backen_alt_09.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a9n;
	bitmap{ filename = "backen_alt_10.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a10n;
# Neu Neutral Backer
	bitmap{ filename = "backen_neu_01.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n1n;
	bitmap{ filename = "backen_neu_02.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n2n;
	bitmap{ filename = "backen_neu_03.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n3n;
	bitmap{ filename = "backen_neu_04.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n4n;
	bitmap{ filename = "backen_neu_05.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n5n;
	bitmap{ filename = "backen_neu_06.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n6n;
	bitmap{ filename = "backen_neu_07.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n7n;
	bitmap{ filename = "backen_neu_08.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n8n;
	bitmap{ filename = "backen_neu_09.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n9n;
	bitmap{ filename = "backen_neu_10.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n10n;
# Alt Neutral Verkehr
	bitmap{ filename = "verkehr_alt_01.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a11n;
	bitmap{ filename = "verkehr_alt_02.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a12n;
	bitmap{ filename = "verkehr_alt_03.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a13n;
	bitmap{ filename = "verkehr_alt_04.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a14n;
	bitmap{ filename = "verkehr_alt_05.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a15n;
	bitmap{ filename = "verkehr_alt_06.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a16n;
	bitmap{ filename = "verkehr_alt_07.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a17n;
	bitmap{ filename = "verkehr_alt_08.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a18n;
	bitmap{ filename = "verkehr_alt_09.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a19n;
	bitmap{ filename = "verkehr_alt_10.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a20n;
# Neu Neutral Verkehr
	bitmap{ filename = "verkehr_neu_01.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n11n;
	bitmap{ filename = "verkehr_neu_02.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n12n;
	bitmap{ filename = "verkehr_neu_03.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n13n;
	bitmap{ filename = "verkehr_neu_04.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n14n;
	bitmap{ filename = "verkehr_neu_05.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n15n;
	bitmap{ filename = "verkehr_neu_06.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n16n;
	bitmap{ filename = "verkehr_neu_07.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n17n;
	bitmap{ filename = "verkehr_neu_08.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n18n;
	bitmap{ filename = "verkehr_neu_09.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n19n;
	bitmap{ filename = "verkehr_neu_10.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n20n;
# Alt Traumatic
	bitmap{ filename = "trauma_alt_01.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a1t;
	bitmap{ filename = "trauma_alt_02.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a2t;
	bitmap{ filename = "trauma_alt_03.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a3t;
	bitmap{ filename = "trauma_alt_04.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a4t;
	bitmap{ filename = "trauma_alt_05.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a5t;
	bitmap{ filename = "trauma_alt_06.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a6t;
	bitmap{ filename = "trauma_alt_07.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a7t;
	bitmap{ filename = "trauma_alt_08.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a8t;
	bitmap{ filename = "trauma_alt_09.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a9t;
	bitmap{ filename = "trauma_alt_10.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a10t;
	bitmap{ filename = "trauma_alt_11.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a11t;
	bitmap{ filename = "trauma_alt_12.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a12t;
	bitmap{ filename = "trauma_alt_13.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a13t;
	bitmap{ filename = "trauma_alt_14.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a14t;
	bitmap{ filename = "trauma_alt_15.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a15t;
	bitmap{ filename = "trauma_alt_16.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a16t;
	bitmap{ filename = "trauma_alt_17.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a17t;
	bitmap{ filename = "trauma_alt_18.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a18t;
	bitmap{ filename = "trauma_alt_19.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a19t;
	bitmap{ filename = "trauma_alt_20.png";	description = "alt"; height = 200; scale_factor = scale_to_height;} 	pict_a20t;
# Neu Traumatic
	bitmap{ filename = "trauma_neu_01.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n1t;
	bitmap{ filename = "trauma_neu_02.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n2t;
	bitmap{ filename = "trauma_neu_03.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n3t;
	bitmap{ filename = "trauma_neu_04.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n4t;
	bitmap{ filename = "trauma_neu_05.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n5t;
	bitmap{ filename = "trauma_neu_06.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n6t;
	bitmap{ filename = "trauma_neu_07.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n7t;
	bitmap{ filename = "trauma_neu_08.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n8t;
	bitmap{ filename = "trauma_neu_09.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n9t;
	bitmap{ filename = "trauma_neu_10.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n10t;
	bitmap{ filename = "trauma_neu_11.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n11t;
	bitmap{ filename = "trauma_neu_12.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n12t;
	bitmap{ filename = "trauma_neu_13.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n13t;
	bitmap{ filename = "trauma_neu_14.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n14t;
	bitmap{ filename = "trauma_neu_15.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n15t;
	bitmap{ filename = "trauma_neu_16.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n16t;
	bitmap{ filename = "trauma_neu_17.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n17t;
	bitmap{ filename = "trauma_neu_18.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n18t;
	bitmap{ filename = "trauma_neu_19.jpg";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n19t;
	bitmap{ filename = "trauma_neu_20.png";	description = "neu"; height = 200; scale_factor = scale_to_height;} 	pict_n20t;
} stimulus_bilder;

# Trials
# ------

trial {
   trial_duration = 5000;

   stimulus_event{
		picture {
			bitmap instrukt;
			x = 0; y = 0;
		} ;
		time = 0;
		code = "Bedingung";
		duration = next_picture;
   } instruktion;

} Cue_Bed;

# TRIAL LOOP SCREENS
trial {
	all_responses = false;
	trial_type = all_correct_responses;
	
	stimulus_event{
		picture {
			bitmap fix;
			x = 0; y = 0;
		} vorb_fix;
		time = 0;
		duration = next_picture;
   } Vorb;

	stimulus_event{
		picture {
			bitmap fix;
			x = 0; y = 0;
		} stim_bild;
		response_active = true;
		target_button = 1, 2;
		delta_time = 5000;
		duration = target_response;
		code = "stimulus bild filename";
   } stim_event;

  stimulus_event{
	picture {
		bitmap abfrage2;
		x = 0; y = 0;
	} ab2_bild;
	response_active = true;
	target_button = 1, 2, 3, 4;
	time = 7000;
	code ="abfrage2/abfrage2r";
	duration = target_response;
	} ab2;
	
	#only here to ensure the default picture does not flash between abfrage2 and fixation jitter
	stimulus_event{
		picture {
			bitmap abfrage2;
			x = 0; y = 0;
		} transition_fix;
	response_active = false;
	duration = next_picture;
	};
	
		
} full_trial;

trial{
	trial_duration = 1;
	stimulus_event {
      picture {
			bitmap fix;
			x = 0; y = 0;
		} ;
      code = "rausschreib";
		  time = 0;
      duration = next_picture;
	} schreib;
} rausschreib;

# END OF EXPERIMENT SCREENS
trial {

   stimulus_event{
		picture {
			bitmap fix;
			x = 0; y = 0;
		} ;
		time = 0;
		duration = next_picture;
		code = "ende_fixation";
   } ende_fix;

   stimulus_event{
		picture {
			text {
				caption = "E N D E ! VIELEN DANK!";
				font_size = 20;
				font_color = 255, 255, 255;
			};
			x = 0; y = 0;
		} ende_text;
		delta_time = 10000;
		duration = 5000;
		code = "ende_danke_screen";
   } ende_danke;

} ende;
