.class public Lcom/android/camera/ui/ManualISOPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualISOPopup.java"

# interfaces
.implements Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;


# instance fields
.field protected mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 4
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 23
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    .line 24
    .local v0, "param":Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    iget-object v2, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ManualSeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;Z)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->reloadPreference()V

    .line 29
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 34
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualISOPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualSeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ManualSeekBar;->setSettingChangedListener(Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;)V

    .line 36
    return-void
.end method

.method public onSettingChanged()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ManualSeekBar;->reloadPreference()V

    .line 41
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mManualSeekBarISO:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ManualSeekBar;->setEnabled(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 56
    return-void
.end method
