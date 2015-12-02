.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 16
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 18
    .local v0, "inflateRes":I
    const-string v2, "pref_video_quality_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_video_speed_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    :goto_1
    return-object v2

    .line 21
    :cond_1
    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    const-string v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    const v0, 0x7f04001d

    goto :goto_0

    .line 25
    :cond_2
    const-string v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    const v0, 0x7f040008

    goto :goto_0

    .line 27
    :cond_3
    const-string v2, "pref_qc_camera_manual_exposure_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28
    const v0, 0x7f040005

    goto :goto_0

    .line 29
    :cond_4
    const-string v2, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "pref_delay_capture_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    :cond_5
    const v0, 0x7f040024

    goto :goto_0

    .line 32
    :cond_6
    const-string v2, "pref_camera_whitebalance_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 33
    const v0, 0x7f040002

    goto :goto_0

    .line 34
    :cond_7
    const-string v2, "pref_camera_focus_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string v2, "pref_focus_position_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    const v0, 0x7f040006

    goto :goto_0

    .line 38
    :cond_8
    const-string v2, "pref_camera_manual_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    const v0, 0x7f040021

    goto :goto_0

    .line 40
    :cond_9
    const-string v2, "pref_qc_camera_exposuretime_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 41
    const v0, 0x7f040005

    goto :goto_0

    .line 42
    :cond_a
    const-string v2, "pref_camera_scenemode_setting_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 43
    const v0, 0x7f040001

    goto/16 :goto_0

    .line 44
    :cond_b
    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_video_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_audio_focus_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_camera_skin_beautify_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pref_delay_capture_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 51
    :cond_c
    const v0, 0x7f040004

    goto/16 :goto_0

    .line 53
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
