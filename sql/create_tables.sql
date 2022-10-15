CREATE TABLE demographics(
participant_id VARCHAR(50),
session_date DATE,
session_time TIME,
gender VARCHAR(10),
age_range VARCHAR(10),
ethnicity   VARCHAR(50),
vr_experience VARCHAR(50),
education_degree VARCHAR(50),
ipd_mm VARCHAR(10),
ancestry VARCHAR(50),
glasses VARCHAR(3),
notes VARCHAR(200),
contact_lens VARCHAR(3),
PRIMARY KEY(participant_id)
);

CREATE TABLE labels(
participant_id VARCHAR(50),
time_start VARCHAR(20),
time_end VARCHAR(20),
task_difficulty VARCHAR(20),
tlx_score NUMERIC,
crr NUMERIC,
reweighted_tlx_score NUMERIC
);

CREATE TABLE event_log(
participant_id VARCHAR(100),
event_time_stamp VARCHAR(20),
cognitive_load_label VARCHAR(20),
task_name VARCHAR(50),
event_name VARCHAR(50),
correct_response VARCHAR(50),
user_response VARCHAR(50),
ans_time_stamp VARCHAR(20),
session_type VARCHAR(20)
);

CREATE TABLE bitalino(
participant_id VARCHAR(100),
t VARCHAR(20),
A1 NUMERIC,
A2 NUMERIC,
A3 NUMERIC,
A4 NUMERIC,
A5 NUMERIC,
A6 NUMERIC
);

CREATE TABLE tobii(
participant_id VARCHAR(100),
t VARCHAR(20),
device_time_stamp VARCHAR(20),
right_pupil_validity NUMERIC,
left_pupil_validity NUMERIC,
right_gaze_direction_validity NUMERIC,
left_gaze_direction_validity NUMERIC,
right_pupil_position_validity NUMERIC,
left_pupil_position_validity NUMERIC,
right_gaze_origin_validity NUMERIC,
left_gaze_origin_validity NUMERIC,
right_pupil_diameter NUMERIC,
left_pupil_diameter NUMERIC,
right_gaze_origin_position_in_hmd_coordinates_x NUMERIC,
right_gaze_origin_position_in_hmd_coordinates_y NUMERIC,
right_gaze_origin_position_in_hmd_coordinates_z NUMERIC,
left_gaze_origin_position_in_hmd_coordinates_x NUMERIC,
left_gaze_origin_position_in_hmd_coordinates_y NUMERIC,
left_gaze_origin_position_in_hmd_coordinates_z NUMERIC,
right_gaze_direction_unit_vector_x NUMERIC,
right_gaze_direction_unit_vector_y NUMERIC,
right_gaze_direction_unit_vector_z NUMERIC,
left_gaze_direction_unit_vector_x NUMERIC,
left_gaze_direction_unit_vector_y NUMERIC,
left_gaze_direction_unit_vector_z NUMERIC,
right_pupil_position_in_tracking_area_x NUMERIC,
right_pupil_position_in_tracking_area_y NUMERIC,
left_pupil_position_in_tracking_area_x NUMERIC,
left_pupil_position_in_tracking_area_y NUMERIC
);
