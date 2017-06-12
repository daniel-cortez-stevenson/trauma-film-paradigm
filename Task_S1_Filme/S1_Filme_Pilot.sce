### Traumatic Film Pilot Presentation
### Author: Daniel Cortez Stevenson
### Questions or comments? Contact: [daniel.stevenson@charite.de]

#-------------------------------------------------------------------

pcl_file = "S1_Filme_Pilot.pcl";

#---- fmri header ------------

# for simulation
scenario_type = fMRI_emulation;
scan_period = 2000;     # = TR

# for in fMRI
#scenario_type = fMRI;
pulses_per_scan = 1;
pulse_code = 99;

# ---------------------------------

default_background_color = 0, 0, 0;

# Set max positive y-coordinate to standardize stimuli sizes across display devices.
# An image that takes up the entire height of the display device would have a height that
# is equal to double the following value:
max_y = 100;


begin;

# Gleich Geht's Los and blank screen (default)
picture {bitmap{ filename = "blank.jpg";			height = 200; scale_factor = scale_to_height;}; x = 0; y = 0;}default;
picture {bitmap{ filename = "instrukt.jpg";	height = 200; scale_factor = scale_to_height;}; x = 0; y = 0;}instruct;

# Video Stimulus
video {filename = "ptsd_filme_neu.avi"; x = 0; y = 0;}vid1;

#######################################################################
# Trials:
trial {
   trial_duration = 7000;

   stimulus_event{
		picture instruct;
		time = 0;
		code = "Bedingung";
		duration = next_picture;
   }instruktion;

}Cue_Bed;

trial {
	trial_duration = stimuli_length;

	stimulus_event{
		video vid1;
		code = "vid1";
		time= 0;
	}vid_stim;

}main_video;

trial {
	trial_duration = 10000;

	stimulus_event{
		picture default;
		code = "blank_10sec";
		time = 0;
	};
} blank_10;


trial {

   trial_duration = 5000;

    picture {text
             {caption = "   E N D E!

    VIELEN DANK!";
              font_size = 20;
              font_color = 255, 255, 255; };
    x = 0; y = 0;
    };

   time = 0;
   code = "Ende";

} Ende;
