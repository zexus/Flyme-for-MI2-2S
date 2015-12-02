.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterByIntent()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByIntent()V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsCaptureIntent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_capture_when_stable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 29
    :cond_0
    return-void
.end method

.method protected getPreferenceXml()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f060001

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":miui:starting_window_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_camera_snap_enable_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "persist.camera.snap.enable"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    move v2, v3

    .line 43
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v2, v3

    .line 47
    goto :goto_1
.end method

.method protected onSettingChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    .line 21
    return-void
.end method
