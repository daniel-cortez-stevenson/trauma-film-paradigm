### Factual Pilot Experiment 
### Last Edit: 07.03.2017
### Author: Daniel Cortez Stevenson
### Questions or comments? Contact: [daniel.stevenson@charite.de]

# ---- Header ----
pcl_file = "S1_F_Pilot.pcl";

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
bitmap{ filename = "abfrage2_factual.jpg";	height = 200; scale_factor = scale_to_height;}	abfrage2;  	# Wie sicher sind Sie?
bitmap{ filename = "abfrage2r_factual.jpg";height = 200; scale_factor = scale_to_height;}	abfrage2r; 	# Wie sicher sind Sie? (REVERSED)

# Load Stimuli Bilder, Feedback Bilder & Erste Fragen into lists.

## Stimulus Bilder
# Auswahl A
array {
	bitmap{ filename = "a_1_emofac.jpg";}	pict_a1e;
	bitmap{ filename = "a_2_emofac.jpg";}	pict_a2e;
	bitmap{ filename = "a_3_emofac.jpg";}	pict_a3e;
	bitmap{ filename = "a_4_emofac.jpg";}	pict_a4e;
	bitmap{ filename = "a_5_emofac.jpg";}	pict_a5e;
	bitmap{ filename = "a_6_emofac.jpg";}	pict_a6e;
	bitmap{ filename = "a_7_emofac.jpg";}	pict_a7e;
	bitmap{ filename = "a_8_emofac.jpg";}	pict_a8e;
	bitmap{ filename = "a_9_emofac.jpg";}	pict_a9e;
	bitmap{ filename = "a_10_emofac.jpg";}pict_a10e;
# Auswahl B
	bitmap{ filename = "b_1_emofac.jpg";}	pict_b1e;
	bitmap{ filename = "b_2_emofac.jpg";}	pict_b2e;
	bitmap{ filename = "b_3_emofac.jpg";}	pict_b3e;
	bitmap{ filename = "b_4_emofac.jpg";}	pict_b4e;
	bitmap{ filename = "b_5_emofac.jpg";}	pict_b5e;
	bitmap{ filename = "b_6_emofac.jpg";}	pict_b6e;
	bitmap{ filename = "b_7_emofac.jpg";}	pict_b7e;
	bitmap{ filename = "b_8_emofac.jpg";}	pict_b8e;
	bitmap{ filename = "b_9_emofac.jpg";}	pict_b9e;
	bitmap{ filename = "b_10_emofac.jpg";}pict_b10e;
# Auswahl C
	bitmap{ filename = "c_1_emofac.jpg";}	pict_c1e;
	bitmap{ filename = "c_2_emofac.jpg";}	pict_c2e;
	bitmap{ filename = "c_3_emofac.jpg";}	pict_c3e;
	bitmap{ filename = "c_4_emofac.jpg";}	pict_c4e;
	bitmap{ filename = "c_5_emofac.jpg";}	pict_c5e;
	bitmap{ filename = "c_6_emofac.jpg";}	pict_c6e;
	bitmap{ filename = "c_7_emofac.jpg";}	pict_c7e;
	bitmap{ filename = "c_8_emofac.jpg";}	pict_c8e;
	bitmap{ filename = "c_9_emofac.jpg";}	pict_c9e;
	bitmap{ filename = "c_10_emofac.jpg";}pict_c10e;
# Auswahl D
	bitmap{ filename = "d_1_emofac.jpg";}	pict_d1e;
	bitmap{ filename = "d_2_emofac.jpg";}	pict_d2e;
	bitmap{ filename = "d_3_emofac.jpg";}	pict_d3e;
	bitmap{ filename = "d_4_emofac.jpg";}	pict_d4e;
	bitmap{ filename = "d_5_emofac.jpg";}	pict_d5e;
	bitmap{ filename = "d_6_emofac.jpg";}	pict_d6e;
	bitmap{ filename = "d_7_emofac.jpg";}	pict_d7e;
	bitmap{ filename = "d_8_emofac.jpg";}	pict_d8e;
	bitmap{ filename = "d_9_emofac.jpg";}	pict_d9e;
	bitmap{ filename = "d_10_emofac.jpg";}pict_d10e;
# Auswahl E
	bitmap{ filename = "e_1_emofac.jpg";}	pict_e1e;
	bitmap{ filename = "e_2_emofac.jpg";}	pict_e2e;
	bitmap{ filename = "e_3_emofac.jpg";}	pict_e3e;
	bitmap{ filename = "e_4_emofac.jpg";}	pict_e4e;
	bitmap{ filename = "e_5_emofac.jpg";}	pict_e5e;
	bitmap{ filename = "e_6_emofac.jpg";}	pict_e6e;
	bitmap{ filename = "e_7_emofac.jpg";}	pict_e7e;
	bitmap{ filename = "e_8_emofac.jpg";}	pict_e8e;
	bitmap{ filename = "e_9_emofac.jpg";}	pict_e9e;
	bitmap{ filename = "e_10_emofac.jpg";}pict_e10e;
# Auswahl F
	bitmap{ filename = "f_1_emofac.jpg";}	pict_f1e;
	bitmap{ filename = "f_2_emofac.jpg";}	pict_f2e;
	bitmap{ filename = "f_3_emofac.jpg";}	pict_f3e;
	bitmap{ filename = "f_4_emofac.jpg";}	pict_f4e;
	bitmap{ filename = "f_5_emofac.jpg";}	pict_f5e;
	bitmap{ filename = "f_6_emofac.jpg";}	pict_f6e;
	bitmap{ filename = "f_7_emofac.jpg";}	pict_f7e;
	bitmap{ filename = "f_8_emofac.jpg";}	pict_f8e;
	bitmap{ filename = "f_9_emofac.jpg";}	pict_f9e;
	bitmap{ filename = "f_10_emofac.jpg";}pict_f10e;
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

## 1. ABFRAGEN
# Auswahl A
array {
	bitmap{ filename = "ab_a1.jpg";height = 200; scale_factor = scale_to_height; description = "Stein/Sand";}		ab_a1;
	bitmap{ filename = "ab_a2.jpg";height = 200; scale_factor = scale_to_height; description = "4";}					ab_a2;
	bitmap{ filename = "ab_a3.jpg";height = 200; scale_factor = scale_to_height; description = "blau";}				ab_a3;
	bitmap{ filename = "ab_a4.jpg";height = 200; scale_factor = scale_to_height; description = "1";}					ab_a4;
	bitmap{ filename = "ab_a5.jpg";height = 200; scale_factor = scale_to_height; description = "sonnig";}				ab_a5;
	bitmap{ filename = "ab_a6.jpg";height = 200; scale_factor = scale_to_height; description = "Plastiktuete";}		ab_a6;
	bitmap{ filename = "ab_a7.jpg";height = 200; scale_factor = scale_to_height; description = "Plastiktuete";}		ab_a7;
	bitmap{ filename = "ab_a8.jpg";height = 200; scale_factor = scale_to_height; description = "weiss";}				ab_a8;
	bitmap{ filename = "ab_a9.jpg";height = 200; scale_factor = scale_to_height; description = "Oberkoerper, Kopf";}	ab_a9;
	bitmap{ filename = "ab_a10.jpg";height = 200; scale_factor = scale_to_height;description = "schwarz";}			ab_a10;
# Auswahl B
	bitmap{ filename = "ab_b1.jpg";height = 200; scale_factor = scale_to_height; description = "gelb";}				ab_b1;
	bitmap{ filename = "ab_b2.jpg";height = 200; scale_factor = scale_to_height; description = "5";}					ab_b2;
	bitmap{ filename = "ab_b3.jpg";height = 200; scale_factor = scale_to_height; description = "Schutzhelm";}		ab_b3;
	bitmap{ filename = "ab_b4.jpg";height = 200; scale_factor = scale_to_height; description = "rechter Arm, Oberkoerper";}ab_b4;
	bitmap{ filename = "ab_b5.jpg";height = 200; scale_factor = scale_to_height; description = "Uhr/Armband";}		ab_b5;
	bitmap{ filename = "ab_b6.jpg";height = 200; scale_factor = scale_to_height; description = "Kopf";}				ab_b6;
	bitmap{ filename = "ab_b7.jpg";height = 200; scale_factor = scale_to_height; description = "schwarz";}			ab_b7;
	bitmap{ filename = "ab_b8.jpg";height = 200; scale_factor = scale_to_height; description = "5";}					ab_b8;
	bitmap{ filename = "ab_b9.jpg";height = 200; scale_factor = scale_to_height; description = "weiss";}				ab_b9;
	bitmap{ filename = "ab_b10.jpg";height = 200; scale_factor = scale_to_height;description = "Beatmungspumpe";}	ab_b10;
# Auswahl C
	bitmap{ filename = "ab_c1.jpg";height = 200; scale_factor = scale_to_height; description = "kurze Hose";}		ab_c1;
	bitmap{ filename = "ab_c2.jpg";height = 200; scale_factor = scale_to_height; description = "Teer/Strasse";}		ab_c2;
	bitmap{ filename = "ab_c3.jpg";height = 200; scale_factor = scale_to_height; description = "braun";}				ab_c3;
	bitmap{ filename = "ab_c4.jpg";height = 200; scale_factor = scale_to_height; description = "keinen";}				ab_c4;
	bitmap{ filename = "ab_c5.jpg";height = 200; scale_factor = scale_to_height; description = "Auto";}				ab_c5;
	bitmap{ filename = "ab_c6.jpg";height = 200; scale_factor = scale_to_height; description = "schwarz";}			ab_c6;
	bitmap{ filename = "ab_c7.jpg";height = 200; scale_factor = scale_to_height; description = "weiss";}				ab_c7;
	bitmap{ filename = "ab_c8.jpg";height = 200; scale_factor = scale_to_height; description = "3";}					ab_c8;
	bitmap{ filename = "ab_c9.jpg";height = 200; scale_factor = scale_to_height; description = "2";}					ab_c9;
	bitmap{ filename = "ab_c10.jpg";height = 200; scale_factor = scale_to_height;description = "ocker";}				ab_c10;
# Auswahl D
	bitmap{ filename = "ab_d1.jpg";height = 200; scale_factor = scale_to_height; description = "blau/gelb/rot";}	ab_d1;
	bitmap{ filename = "ab_d2.jpg";height = 200; scale_factor = scale_to_height; description = "braun";}				ab_d2;
	bitmap{ filename = "ab_d3.jpg";height = 200; scale_factor = scale_to_height; description = "zwei";}				ab_d3;
	bitmap{ filename = "ab_d4.jpg";height = 200; scale_factor = scale_to_height; description = "Nova";}				ab_d4;
	bitmap{ filename = "ab_d5.jpg";height = 200; scale_factor = scale_to_height; description = "weiss";}				ab_d5;
	bitmap{ filename = "ab_d6.jpg";height = 200; scale_factor = scale_to_height; description = "1";}					ab_d6;
	bitmap{ filename = "ab_d7.jpg";height = 200; scale_factor = scale_to_height; description = "schwarz";}			ab_d7;
	bitmap{ filename = "ab_d8.jpg";height = 200; scale_factor = scale_to_height; description = "1";}					ab_d8;
	bitmap{ filename = "ab_d9.jpg";height = 200; scale_factor = scale_to_height; description = "grau";}				ab_d9;
	bitmap{ filename = "ab_d10.jpg";height = 200; scale_factor = scale_to_height; description = "3";}					ab_d10;
# Auswahl E
	bitmap{ filename = "ab_e1.jpg";height = 200; scale_factor = scale_to_height; description = "grau/weiss";}		ab_e1;
	bitmap{ filename = "ab_e2.jpg";height = 200; scale_factor = scale_to_height; description = "2";}					ab_e2;
	bitmap{ filename = "ab_e3.jpg";height = 200; scale_factor = scale_to_height; description = "rot";}					ab_e3;
	bitmap{ filename = "ab_e4.jpg";height = 200; scale_factor = scale_to_height; description = "braun";}				ab_e4;
	bitmap{ filename = "ab_e5.jpg";height = 200; scale_factor = scale_to_height; description = "Hackennase";}		ab_e5;
	bitmap{ filename = "ab_e6.jpg";height = 200; scale_factor = scale_to_height; description = "3";}					ab_e6;
	bitmap{ filename = "ab_e7.jpg";height = 200; scale_factor = scale_to_height; description = "gelb";}				ab_e7;
	bitmap{ filename = "ab_e8.jpg";height = 200; scale_factor = scale_to_height; description = "schwarz";}			ab_e8;
	bitmap{ filename = "ab_e9.jpg";height = 200; scale_factor = scale_to_height; description = "Telephon";}			ab_e9;
	bitmap{ filename = "ab_e10.jpg";height = 200; scale_factor = scale_to_height; description = "weiss";}				ab_e10;
# Auswahl f
	bitmap{ filename = "ab_f1.jpg";height = 200; scale_factor = scale_to_height; description = "5";}					ab_f1;
	bitmap{ filename = "ab_f2.jpg";height = 200; scale_factor = scale_to_height; description = "Wueste";}				ab_f2;
	bitmap{ filename = "ab_f3.jpg";height = 200; scale_factor = scale_to_height; description = "Sandalen";}			ab_f3;
	bitmap{ filename = "ab_f4.jpg";height = 200; scale_factor = scale_to_height; description = "grau/braun";}		ab_f4;
	bitmap{ filename = "ab_f5.jpg";height = 200; scale_factor = scale_to_height; description = "nichts";}				ab_f5;
	bitmap{ filename = "ab_f6.jpg";height = 200; scale_factor = scale_to_height; description = "blau";}				ab_f6;
	bitmap{ filename = "ab_f7.jpg";height = 200; scale_factor = scale_to_height; description = "blond";}				ab_f7;
	bitmap{ filename = "ab_f8.jpg";height = 200; scale_factor = scale_to_height; description = "1";}					ab_f8;
	bitmap{ filename = "ab_f9.jpg";height = 200; scale_factor = scale_to_height; description = "schwarz";}			ab_f9;
	bitmap{ filename = "ab_f10.jpg";height = 200; scale_factor = scale_to_height; description = "5";}					ab_f10;
} erste_abfragen;

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
			bitmap fix;
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