COPY demographics(
participant_id,
session_date,
session_time,
gender,
age_range,
ethnicity,
vr_experience,
education_degree,
ipd_mm,
ancestry,
glasses,
notes,
contact_lens)
FROM '/work_dir/load_files/demographics_load_file.csv'
DELIMITER ','
CSV HEADER;

COPY labels(
participant_id,
time_start,
time_end,
task_difficulty,
tlx_score,
crr,
reweighted_tlx_score)
FROM '/work_dir/load_files/labels_load_file.csv'
DELIMITER ','
CSV HEADER;

COPY event_log(
participant_id,
event_time_stamp,
cognitive_load_label,
task_name,
event_name,
correct_response,
user_response,
ans_time_stamp,
session_type
)
FROM '/work_dir/load_files/event_log_load_file.csv'
DELIMITER ','
CSV HEADER;

COPY bitalino(
participant_id,
t,
A1,
A2,
A3,
A4,
A5,
A6
)
FROM '/work_dir/load_files/bitalino_load_file.csv'
DELIMITER ','
CSV HEADER;

COPY tobii(
participant_id,
t,
device_time_stamp,
right_pupil_validity,
left_pupil_validity,
right_gaze_direction_validity,
left_gaze_direction_validity,
right_pupil_position_validity,
left_pupil_position_validity,
right_gaze_origin_validity,
left_gaze_origin_validity,
right_pupil_diameter,
left_pupil_diameter,
right_gaze_origin_position_in_hmd_coordinates_x,
right_gaze_origin_position_in_hmd_coordinates_y,
right_gaze_origin_position_in_hmd_coordinates_z,
left_gaze_origin_position_in_hmd_coordinates_x,
left_gaze_origin_position_in_hmd_coordinates_y,
left_gaze_origin_position_in_hmd_coordinates_z,
right_gaze_direction_unit_vector_x,
right_gaze_direction_unit_vector_y,
right_gaze_direction_unit_vector_z,
left_gaze_direction_unit_vector_x,
left_gaze_direction_unit_vector_y,
left_gaze_direction_unit_vector_z,
right_pupil_position_in_tracking_area_x,
right_pupil_position_in_tracking_area_y,
left_pupil_position_in_tracking_area_x,
left_pupil_position_in_tracking_area_y
)
FROM '/work_dir/load_files/tobii_load_file.csv'
DELIMITER ','
CSV HEADER;
