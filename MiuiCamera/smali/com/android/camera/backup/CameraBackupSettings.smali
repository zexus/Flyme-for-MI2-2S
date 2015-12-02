.class public Lcom/android/camera/backup/CameraBackupSettings;
.super Ljava/lang/Object;
.source "CameraBackupSettings.java"


# static fields
.field static final PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 129
    const/16 v0, 0x45

    new-array v0, v0, [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const/4 v1, 0x0

    const-string v2, "version"

    const-string v3, "pref_version_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "local_version"

    const-string v3, "pref_local_version_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "camera_recordlocation"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "camerasound"

    const-string v3, "pref_camerasound_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "video_quality"

    const-string v3, "pref_video_quality_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_time_lapse_frame_interval"

    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "camera_picturesize"

    const-string v3, "pref_camera_picturesize_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "camera_jpegquality"

    const-string v3, "pref_camera_jpegquality_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "camera_focus_mode"

    const-string v3, "pref_camera_focus_mode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "camera_flashmode"

    const-string v3, "pref_camera_flashmode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_skin_beautify"

    const-string v3, "pref_camera_skin_beautify_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "camera_video_flashmode"

    const-string v3, "pref_camera_video_flashmode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "camera_whitebalance"

    const-string v3, "pref_camera_whitebalance_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camera_scenemode"

    const-string v3, "pref_camera_scenemode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "camera_exposure"

    const-string v3, "pref_camera_exposure_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "camera_zoom"

    const-string v3, "pref_camera_zoom_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "camera_autoexposure"

    const-string v3, "pref_camera_autoexposure_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "video_effect"

    const-string v3, "pref_video_effect_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "camera_id"

    const-string v3, "pref_camera_id_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "camera_coloreffect"

    const-string v3, "pref_camera_coloreffect_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "camera_shader_coloreffect"

    const-string v3, "pref_camera_shader_coloreffect_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "camera_facedetection"

    const-string v3, "pref_camera_facedetection_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "camera_burst_shooting"

    const-string v3, "pref_camera_burst_shooting_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "camera_touchafaec"

    const-string v3, "pref_camera_touchafaec_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "camera_antibanding"

    const-string v3, "pref_camera_antibanding_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "camera_hand_night"

    const-string v3, "pref_camera_hand_night_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "camera_volumekey_function"

    const-string v3, "pref_camera_volumekey_function_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "camera_movie_solid"

    const-string v3, "pref_camera_movie_solid_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "camera_panoramamode"

    const-string v3, "pref_camera_panoramamode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "camera_referenceline"

    const-string v3, "pref_camera_referenceline_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "video_focusmode"

    const-string v3, "pref_video_focusmode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "video_hdr"

    const-string v3, "pref_video_hdr_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "video_captrue_ability"

    const-string v3, "pref_video_captrue_ability_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "video_speed"

    const-string v3, "pref_video_speed_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "scan_qrcode"

    const-string v3, "pref_scan_qrcode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "watermark"

    const-string v3, "pref_watermark_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "qc_camera_saturation"

    const-string v3, "pref_qc_camera_saturation_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "qc_camera_contrast"

    const-string v3, "pref_qc_camera_contrast_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "qc_camera_sharpness"

    const-string v3, "pref_qc_camera_sharpness_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "qc_camera_iso"

    const-string v3, "pref_qc_camera_iso_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "qc_camera_exposuretime"

    const-string v3, "pref_qc_camera_exposuretime_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "qc_manual_whitebalance_k_value"

    const-string v3, "pref_qc_manual_whitebalance_k_value_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "focus_position"

    const-string v3, "pref_focus_position_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "qc_focus_mode_switching"

    const-string v3, "pref_qc_focus_mode_switching_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "camera_denoise"

    const-string v3, "pref_camera_denoise_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "camera_hdr_type"

    const-string v3, "pref_camera_hdr_type_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "key_camera_smart_shutter_position"

    const-string v3, "pref_key_camera_smart_shutter_position"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "video_speed_fast"

    const-string v3, "pref_video_speed_fast_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "video_speed_slow"

    const-string v3, "pref_video_speed_slow_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "auto_chroma_flash"

    const-string v3, "pref_auto_chroma_flash_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "capture_when_stable"

    const-string v3, "pref_capture_when_stable_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "front_mirror"

    const-string v3, "pref_front_mirror_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "camera_face_beauty"

    const-string v3, "pref_camera_face_beauty_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "camera_face_beauty_mode"

    const-string v3, "pref_camera_face_beauty_mode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "camera_show_gender_age"

    const-string v3, "pref_camera_show_gender_age_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "priority_storage"

    const-string v3, "pref_priority_storage"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "camera_ubifocus"

    const-string v3, "pref_camera_ubifocus_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "camera_gradienter"

    const-string v3, "pref_camera_gradienter_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "camera_manual_mode"

    const-string v3, "pref_camera_manual_mode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "camera_restored_flashmode"

    const-string v3, "pref_camera_restored_flashmode_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "camera_long_press_shutter"

    const-string v3, "pref_camera_long_press_shutter_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "camera_long_press_shutter_feature"

    const-string v3, "pref_camera_long_press_shutter_feature_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "audio_focus"

    const-string v3, "pref_audio_focus_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "camera_hdr"

    const-string v3, "pref_camera_hdr_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "delay_capture"

    const-string v3, "pref_delay_capture_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "delay_capture_mode"

    const-string v3, "pref_delay_capture_mode"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "camera_asd_night"

    const-string v3, "pref_camera_asd_night_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "camera_asd_popup"

    const-string v3, "pref_camera_asd_popup_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "camera_peak"

    const-string v3, "pref_camera_peak_key"

    invoke-static {v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    return-void
.end method
