.class public abstract Lcom/android/camera/BasePreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFromWhere:I

.field protected mPreferenceGroup:Landroid/preference/PreferenceScreen;

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/camera/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BasePreferenceActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->restorePreferences()V

    return-void
.end method

.method private filterByCameraID()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_hfr_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 202
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_focusmode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 203
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_skinToneEnhancement_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 204
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 205
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_autoexposure_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 206
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 207
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 208
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 209
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_auto_chroma_flash_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 210
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_capture_when_stable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 211
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 212
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 213
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 214
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_asd_popup_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 215
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_front_mirror_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private filterByDeviceID()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_hfr_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 133
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_show_gender_age_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 137
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_show_gender_age_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_long_press_shutter_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 145
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 149
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedWaterMark()Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_watermark_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 153
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v2

    if-nez v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camerasound_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 157
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 161
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    :cond_7
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 165
    :cond_8
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 166
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_priority_storage"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 169
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v2

    if-nez v2, :cond_a

    .line 170
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_auto_chroma_flash_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 173
    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v2

    if-nez v2, :cond_b

    .line 174
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 177
    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-nez v2, :cond_c

    .line 178
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_capture_when_stable_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 181
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v2

    if-nez v2, :cond_d

    .line 182
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_asd_night_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 183
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_asd_popup_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 186
    :cond_d
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v2

    if-nez v2, :cond_f

    .line 188
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_snap_enable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 197
    :cond_e
    :goto_0
    return-void

    .line 191
    :cond_f
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    if-eqz v2, :cond_e

    .line 192
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_camera_snap_enable_key"

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "persist.camera.snap.enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_10

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_10
    move v0, v1

    goto :goto_1
.end method

.method private filterByFrom()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "category_camcorder_setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "category_camera_setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 118
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 120
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 121
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_facedetection_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 122
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_show_gender_age_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 123
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_autoexposure_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 124
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private filterByPreference()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_video_quality_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewListPreference;

    .line 87
    .local v1, "videoquality":Lcom/android/camera/ui/PreviewListPreference;
    if-eqz v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "speed":Ljava/lang/String;
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v2, :cond_1

    const-string v2, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 97
    :cond_1
    return-void
.end method

.method private filterGroup()V
    .locals 1

    .prologue
    .line 442
    const-string v0, "category_device_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    .line 443
    const-string v0, "category_camcorder_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    .line 444
    const-string v0, "category_camera_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    .line 445
    const-string v0, "category_advance_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private filterGroupIfEmpty(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 450
    .local v0, "group":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .end local v0    # "group":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 454
    :cond_0
    return-void
.end method

.method private initializeActivity()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 63
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 68
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener()V

    .line 72
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByPreference()V

    .line 73
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByFrom()V

    .line 74
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByDeviceID()V

    .line 75
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByCameraID()V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByIntent()V

    .line 77
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterGroup()V

    .line 79
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->updateEntries()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    .line 82
    return-void
.end method

.method private registerListener()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2, p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_restore"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 103
    .local v1, "restore":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_priority_storage"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 108
    .local v0, "priorityStorage":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    :cond_1
    return-void
.end method

.method private registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "l"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 254
    .local v2, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 255
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 256
    .local v0, "child":Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 257
    check-cast v0, Landroid/preference/PreferenceGroup;

    .end local v0    # "child":Landroid/preference/Preference;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .restart local v0    # "child":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 262
    .end local v0    # "child":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private resetIfInvalid(Landroid/preference/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 249
    :cond_0
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 290
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    .line 292
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 293
    return-void
.end method

.method private updateConflictPreference(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 465
    sget-boolean v4, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 468
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_movie_solid_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 470
    .local v2, "movieSolid":Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PreviewListPreference;

    .line 472
    .local v3, "videoquality":Lcom/android/camera/ui/PreviewListPreference;
    if-eqz p1, :cond_1

    const-string v4, "pref_camera_movie_solid_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    const v4, 0x7f0e0018

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "defaultQuality":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 476
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_video_quality_key"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 486
    .end local v0    # "defaultQuality":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "movieSolid":Landroid/preference/CheckBoxPreference;
    .end local v3    # "videoquality":Lcom/android/camera/ui/PreviewListPreference;
    :cond_0
    :goto_0
    return-void

    .line 480
    .restart local v2    # "movieSolid":Landroid/preference/CheckBoxPreference;
    .restart local v3    # "videoquality":Lcom/android/camera/ui/PreviewListPreference;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 481
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_movie_solid_key"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateEntries()V
    .locals 10

    .prologue
    const v9, 0x7f0e00cb

    .line 342
    iget-object v7, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v8, "pref_camera_picturesize_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/PreviewListPreference;

    .line 344
    .local v4, "pictureSize":Lcom/android/camera/ui/PreviewListPreference;
    iget-object v7, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v8, "pref_camera_antibanding_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    .line 346
    .local v0, "antiBanding":Lcom/android/camera/ui/PreviewListPreference;
    iget-object v7, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v8, "pref_auto_chroma_flash_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 348
    .local v1, "chromaFlash":Landroid/preference/CheckBoxPreference;
    iget-object v7, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v8, "pref_qc_camera_saturation_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/PreviewListPreference;

    .line 350
    .local v5, "saturation":Lcom/android/camera/ui/PreviewListPreference;
    iget-object v7, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v8, "pref_video_quality_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/PreviewListPreference;

    .line 353
    .local v6, "videoquality":Lcom/android/camera/ui/PreviewListPreference;
    if-eqz v4, :cond_0

    .line 354
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/PreviewListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 355
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 356
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 360
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    invoke-virtual {p0, v9}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v9}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 367
    :cond_1
    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090003

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    :cond_2
    if-eqz v5, :cond_3

    .line 375
    const v7, 0x7f0e00a4

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "defaultSaturation":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v5, v2}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 381
    .end local v2    # "defaultSaturation":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 383
    const v7, 0x7f0e0018

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "defaultVideoQuality":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 388
    .end local v3    # "defaultVideoQuality":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v9, 0x0

    .line 391
    if-nez p1, :cond_1

    .line 421
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 395
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 396
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 397
    .local v1, "child":Landroid/preference/Preference;
    instance-of v6, v1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v6, :cond_3

    move-object v5, v1

    .line 398
    check-cast v5, Lcom/android/camera/ui/PreviewListPreference;

    .line 399
    .local v5, "list":Lcom/android/camera/ui/PreviewListPreference;
    const-string v6, "pref_camera_picturesize_key"

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/PictureSize;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 404
    :goto_1
    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 395
    .end local v1    # "child":Landroid/preference/Preference;
    .end local v5    # "list":Lcom/android/camera/ui/PreviewListPreference;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    .restart local v1    # "child":Landroid/preference/Preference;
    .restart local v5    # "list":Lcom/android/camera/ui/PreviewListPreference;
    :cond_2
    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    .end local v5    # "list":Lcom/android/camera/ui/PreviewListPreference;
    :cond_3
    instance-of v6, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    move-object v0, v1

    .line 406
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 407
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 413
    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_2

    .line 414
    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    instance-of v6, v1, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_5

    .line 415
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "child":Landroid/preference/Preference;
    invoke-direct {p0, v1, p2}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_2

    .line 418
    .restart local v1    # "child":Landroid/preference/Preference;
    :cond_5
    sget-object v6, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no need update preference for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected filterByIntent()V
    .locals 5

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "remove_keys"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 434
    .local v2, "removeKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 439
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/ui/PreviewListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/android/camera/ui/PreviewListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 229
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 241
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 235
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 236
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->resetIfInvalid(Landroid/preference/ListPreference;)V

    goto :goto_0
.end method

.method protected abstract getPreferenceXml()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    .line 51
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 52
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 53
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    .line 54
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    .line 427
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 297
    invoke-virtual {p0, v4}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 298
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "key":Ljava/lang/String;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 301
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    .line 317
    return v4

    .line 302
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 303
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 304
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 305
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 306
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 307
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 308
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 309
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 311
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled new value with type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v4, Lcom/android/camera/BasePreferenceActivity$1;

    invoke-direct {v4, p0}, Lcom/android/camera/BasePreferenceActivity$1;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    .line 274
    .local v4, "restore":Ljava/lang/Runnable;
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e000b

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 279
    const/4 v0, 0x1

    .line 284
    .end local v4    # "restore":Ljava/lang/Runnable;
    .end local p1    # "preference":Landroid/preference/Preference;
    :goto_0
    return v0

    .line 281
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    const-string v0, "pref_priority_storage"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onSettingChanged(I)V
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 458
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStop()V

    .line 459
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    .line 460
    return-void
.end method

.method protected removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "root"    # Landroid/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 321
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 322
    .local v0, "child":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 338
    :goto_0
    return v3

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 329
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 330
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 331
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 332
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 333
    goto :goto_0

    .line 329
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
