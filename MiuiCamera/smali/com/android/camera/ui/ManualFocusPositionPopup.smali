.class public Lcom/android/camera/ui/ManualFocusPositionPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualFocusPositionPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mFocusPosition:I

.field private mSeekBar:Lcom/android/camera/ui/V6SeekBar;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private getDisplayedFocusValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0e005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setSmoothChange(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setMaxValue(I)V

    .line 34
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SeekBar;->getMaxValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SeekBar;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mValueText:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    .line 53
    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 8
    .param p1, "value"    # I
    .param p2, "touchUp"    # Z

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 67
    mul-int/lit8 v0, p1, 0xa

    rsub-int v6, v0, 0x3e8

    .line 68
    .local v6, "position":I
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setFocusPosition(I)V

    .line 69
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    if-eq v6, v0, :cond_2

    .line 70
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    if-eq v0, v3, :cond_0

    if-ne v6, v3, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 71
    .local v7, "switchMode":Z
    :goto_0
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mValueText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iput v6, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    .line 74
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    if-ne v0, v3, :cond_4

    const-string v0, "continuous-picture"

    :goto_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    if-eqz v7, :cond_5

    const-string v4, "pref_camera_focus_mode_key"

    :goto_2
    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 87
    .end local v7    # "switchMode":Z
    :cond_2
    return-void

    :cond_3
    move v7, v2

    .line 70
    goto :goto_0

    .line 74
    .restart local v7    # "switchMode":Z
    :cond_4
    const-string v0, "manual"

    goto :goto_1

    .line 78
    :cond_5
    const-string v4, "pref_focus_position_key"

    goto :goto_2
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SeekBar;->getMaxValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mFocusPosition:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SeekBar;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 63
    return-void
.end method
