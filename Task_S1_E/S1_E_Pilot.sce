### Emotional Pilot Experiment 
### Last Edit: 07.03.2017
### Author: Daniel Cortez Stevenson
### Questions or comments? Contact: [daniel.stevenson@charite.de]

# ---- Header ----
pcl_file = "S1_E_Pilot.pcl";

### Button Options
active_buttons = 4;
button_codes = 1, 2, 3, 4;

### Response Logging Options
#no_logfile = true; #Turn on/off presentation log file creation.
response_matching = simple_matching;    
response_logging = log_active; 

### Monitor View Settings
default_background_color = 0, 0, 0;

# Set max positive y-coordinate to standardize stimuli sizes across display devices.
# An image that takes up the entire height of the display device would have a height that
# is equal to double the following value:
max_y = 100;

# ---- fmri header ----

# for simulation #   
scenario_type = fMRI_emulation;
scan_period = 2000;     # = TR

# for fMRI #
#scenario_type = fMRI;  

# for both #
pulses_per_scan = 1;
pulse_code = 99;

begin;   

# ---- Load Stimuli ----
# Default image is Fixation Cross
picture{bitmap{ filename = "fix.jpg";height = 200; scale_factor = scale_to_height;}; x = 0; y = 0;} default;	#fix

# "Gleich Geht's Los" & Fixation Cross Screens   
bitmap{ filename = "instrukt.jpg";	height = 200; scale_factor = scale_to_height;} 	instrukt;	#instructions	
bitmap{ filename = "fix.jpg";			height = 200; scale_factor = scale_to_height;}	fix;			#fixation cross
 
# Abfragen
bitmap{ filename = "abfrage1_emotional.jpg";	height = 200; scale_factor = scale_to_height;}	abfrage1;	# Was sehen Sie im Kasten? 
bitmap{ filename = "abfrage2_emotional.jpg";	height = 200; scale_factor = scale_to_height;}	abfrage2;  	# Wie sehr hat Sie die Szene bewegt?
bitmap{ filename = "abfrage2r_emotional.jpg";height = 200; scale_factor = scale_to_height;}	abfrage2r; 	# Wie sehr hat Sie die Szene bewegt? (REVERSED)

# Load Stimuli Bilder, Feedback Bilder & Erste Fragen into lists.

## Stimulus Bilder
# Auswahl A
array {
	bitmap{ filename = "a_1_neutral.jpg";}	pict_a1n;
	bitmap{ filename = "a_2_neutral.jpg";}	pict_a2n;
	bitmap{ filename = "a_3_neutral.jpg";}	pict_a3n;
	bitmap{ filename = "a_4_neutral.jpg";}	pict_a4n;
	bitmap{ filename = "a_5_neutral.jpg";}	pict_a5n;
	bitmap{ filename = "a_6_neutral.jpg";}	pict_a6n;
	bitmap{ filename = "a_7_neutral.jpg";}	pict_a7n;
	bitmap{ filename = "a_8_neutral.jpg";}	pict_a8n;
	bitmap{ filename = "a_9_neutral.jpg";}	pict_a9n;
	bitmap{ filename = "a_10_neutral.jpg";}pict_a10n;
# Auswahl B
	bitmap{ filename = "b_1_neutral.jpg";}	pict_b1n;
	bitmap{ filename = "b_2_neutral.jpg";}	pict_b2n;
	bitmap{ filename = "b_3_neutral.jpg";}	pict_b3n;
	bitmap{ filename = "b_4_neutral.jpg";}	pict_b4n;
	bitmap{ filename = "b_5_neutral.jpg";}	pict_b5n;
	bitmap{ filename = "b_6_neutral.jpg";}	pict_b6n;
	bitmap{ filename = "b_7_neutral.jpg";}	pict_b7n;
	bitmap{ filename = "b_8_neutral.jpg";}	pict_b8n;
	bitmap{ filename = "b_9_neutral.jpg";}	pict_b9n;
	bitmap{ filename = "b_10_neutral.jpg";}pict_b10n;
# Auswahl C
	bitmap{ filename = "c_1_neutral.jpg";}	pict_c1n;
	bitmap{ filename = "c_2_neutral.jpg";}	pict_c2n;
	bitmap{ filename = "c_3_neutral.jpg";}	pict_c3n;
	bitmap{ filename = "c_4_neutral.jpg";}	pict_c4n;
	bitmap{ filename = "c_5_neutral.jpg";}	pict_c5n;
	bitmap{ filename = "c_6_neutral.jpg";}	pict_c6n;
	bitmap{ filename = "c_7_neutral.jpg";}	pict_c7n;
	bitmap{ filename = "c_8_neutral.jpg";}	pict_c8n;
	bitmap{ filename = "c_9_neutral.jpg";}	pict_c9n;
	bitmap{ filename = "c_10_neutral.jpg";}pict_c10n;
# Auswahl D
	bitmap{ filename = "d_1_neutral.jpg";}	pict_d1n;
	bitmap{ filename = "d_2_neutral.jpg";}	pict_d2n;
	bitmap{ filename = "d_3_neutral.jpg";}	pict_d3n;
	bitmap{ filename = "d_4_neutral.jpg";}	pict_d4n;
	bitmap{ filename = "d_5_neutral.jpg";}	pict_d5n;
	bitmap{ filename = "d_6_neutral.jpg";}	pict_d6n;
	bitmap{ filename = "d_7_neutral.jpg";}	pict_d7n;
	bitmap{ filename = "d_8_neutral.jpg";}	pict_d8n;
	bitmap{ filename = "d_9_neutral.jpg";}	pict_d9n;
	bitmap{ filename = "d_10_neutral.jpg";}pict_d10n;
# Auswahl E
	bitmap{ filename = "e_1_neutral.jpg";}	pict_e1n;
	bitmap{ filename = "e_2_neutral.jpg";}	pict_e2n;
	bitmap{ filename = "e_3_neutral.jpg";}	pict_e3n;
	bitmap{ filename = "e_4_neutral.jpg";}	pict_e4n;
	bitmap{ filename = "e_5_neutral.jpg";}	pict_e5n;
	bitmap{ filename = "e_6_neutral.jpg";}	pict_e6n;
	bitmap{ filename = "e_7_neutral.jpg";}	pict_e7n;
	bitmap{ filename = "e_8_neutral.jpg";}	pict_e8n;
	bitmap{ filename = "e_9_neutral.jpg";}	pict_e9n;
	bitmap{ filename = "e_10_neutral.jpg";}pict_e10n;
# Auswahl F
	bitmap{ filename = "f_1_neutral.jpg";}	pict_f1n;
	bitmap{ filename = "f_2_neutral.jpg";}	pict_f2n;
	bitmap{ filename = "f_3_neutral.jpg";}	pict_f3n;
	bitmap{ filename = "f_4_neutral.jpg";}	pict_f4n;
	bitmap{ filename = "f_5_neutral.jpg";}	pict_f5n;
	bitmap{ filename = "f_6_neutral.jpg";}	pict_f6n;
	bitmap{ filename = "f_7_neutral.jpg";}	pict_f7n;
	bitmap{ filename = "f_8_neutral.jpg";}	pict_f8n;
	bitmap{ filename = "f_9_neutral.jpg";}	pict_f9n;
	bitmap{ filename = "f_10_neutral.jpg";}pict_f10n;
} stimulus_bilder;

## FEEDBACK BILDER
# Auswahl A
array {
	bitmap{ filename = "a_1.jpg";}			pict_a1;
	bitmap{ filename = "a_2.jpg";}			pict_a2;
	bitmap{ filename = "a_3.jpg";}			pict_a3;
	bitmap{ filename = "a_4.jpg";}			pict_a4;
	bitmap{ filename = "a_5.jpg";}			pict_a5;
	bitmap{ filename = "a_6.jpg";}			pict_a6;
	bitmap{ filename = "a_7.jpg";}			pict_a7;
	bitmap{ filename = "a_8.jpg";}			pict_a8;
	bitmap{ filename = "a_9.jpg";}			pict_a9;
	bitmap{ filename = "a_10.jpg";}			pict_a10;
# Auswahl B
	bitmap{ filename = "b_1.jpg";}			pict_b1;
	bitmap{ filename = "b_2.jpg";}			pict_b2;
	bitmap{ filename = "b_3.jpg";}			pict_b3;
	bitmap{ filename = "b_4.jpg";}			pict_b4;
	bitmap{ filename = "b_5.jpg";}			pict_b5;
	bitmap{ filename = "b_6.jpg";}			pict_b6;
	bitmap{ filename = "b_7.jpg";}			pict_b7;
	bitmap{ filename = "b_8.jpg";}			pict_b8;
	bitmap{ filename = "b_9.jpg";}			pict_b9;
	bitmap{ filename = "b_10.jpg";}			pict_b10;
# Auswahl C
	bitmap{ filename = "c_1.jpg";}			pict_c1;
	bitmap{ filename = "c_2.jpg";}			pict_c2;
	bitmap{ filename = "c_3.jpg";}			pict_c3;
	bitmap{ filename = "c_4.jpg";}			pict_c4;
	bitmap{ filename = "c_5.jpg";}			pict_c5;
	bitmap{ filename = "c_6.jpg";}			pict_c6;
	bitmap{ filename = "c_7.jpg";}			pict_c7;
	bitmap{ filename = "c_8.jpg";}			pict_c8;
	bitmap{ filename = "c_9.jpg";}			pict_c9;
	bitmap{ filename = "c_10.jpg";}			pict_c10;
# Auswahl D
	bitmap{ filename = "d_1.jpg";}			pict_d1;
	bitmap{ filename = "d_2.jpg";}			pict_d2;
	bitmap{ filename = "d_3.jpg";}			pict_d3;
	bitmap{ filename = "d_4.jpg";}			pict_d4;
	bitmap{ filename = "d_5.jpg";}			pict_d5;
	bitmap{ filename = "d_6.jpg";}			pict_d6;
	bitmap{ filename = "d_7.jpg";}			pict_d7;
	bitmap{ filename = "d_8.jpg";}			pict_d8;
	bitmap{ filename = "d_9.jpg";}			pict_d9;
	bitmap{ filename = "d_10.jpg";}			pict_d10;
# Auswahl E
	bitmap{ filename = "e_1.jpg";}			pict_e1;
	bitmap{ filename = "e_2.jpg";}			pict_e2;
	bitmap{ filename = "e_3.jpg";}			pict_e3;
	bitmap{ filename = "e_4.jpg";}			pict_e4;
	bitmap{ filename = "e_5.jpg";}			pict_e5;
	bitmap{ filename = "e_6.jpg";}			pict_e6;
	bitmap{ filename = "e_7.jpg";}			pict_e7;
	bitmap{ filename = "e_8.jpg";}			pict_e8;
	bitmap{ filename = "e_9.jpg";}			pict_e9;
	bitmap{ filename = "e_10.jpg";}			pict_e10;
# Auswahl f
	bitmap{ filename = "f_1.jpg";}			pict_f1;
	bitmap{ filename = "f_2.jpg";}			pict_f2;
	bitmap{ filename = "f_3.jpg";}			pict_f3;
	bitmap{ filename = "f_4.jpg";}			pict_f4;
	bitmap{ filename = "f_5.jpg";}			pict_f5;
	bitmap{ filename = "f_6.jpg";}			pict_f6;
	bitmap{ filename = "f_7.jpg";}			pict_f7;
	bitmap{ filename = "f_8.jpg";}			pict_f8;
	bitmap{ filename = "f_9.jpg";}			pict_f9;
	bitmap{ filename = "f_10.jpg";}			pict_f10;
} feedback_bilder;

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
	
	stimulus_event{       	
		picture default;
		time = 0;
		duration = next_picture; 
   } Vorb;

	stimulus_event{  
		picture {
			bitmap fix;
			x = 0; y = 0;
		} stim_bild;
		delta_time = 4000;
		duration = next_picture;
		code = "stimulus bild filename"; 
   } stim_event;   
   
	stimulus_event{
		picture {
			bitmap abfrage1;
			x = 0; y = 0;
		} ab1_bild;
		delta_time = 3000;
		code ="abfrage1";
		duration = next_picture;
   } ab1; 
	
	stimulus_event{       	
		picture default;
		delta_time = 3000;
		duration = next_picture; 
		code = "fix_200";
   } ab_fix;

   stimulus_event{
  		picture {
			bitmap abfrage2;
			x = 0; y = 0;
		} ab2_bild;
		response_active = true;
		target_button = 1, 2, 3, 4;
		delta_time = 200;
		code ="abfrage2/abfrage2r";
		duration = response;
   } ab2;  
   
   stimulus_event{  
		picture {
			bitmap fix;
			x = 0; y = 0;
		} feedback_bild;
		deltat = 0;
		duration = 3000;
		code = "feedback bild filename";
   } feedback_event; 
	
} full_trial;
   
trial{
	trial_duration = 1;
	stimulus_event {  
      picture default;
      code = "rausschreib";
		time = 0;
      duration = next_picture; 
	} schreib;
} rausschreib;  
        
# END OF EXPERIMENT SCREENS            
trial { 
   
   stimulus_event{       	
		picture default;
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