.class public Lcom/android/settings_ext/PointerSpeedPreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final tO:Landroid/hardware/input/InputManager;

.field private tP:Landroid/widget/SeekBar;

.field private tQ:I

.field private tR:Z

.field private tS:Z

.field private tT:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/settings_ext/fl;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/fl;-><init>(Lcom/android/settings_ext/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tT:Landroid/database/ContentObserver;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/PointerSpeedPreference;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->fO()V

    return-void
.end method

.method private fO()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 97
    return-void
.end method

.method private fP()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tR:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tQ:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tR:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 72
    invoke-static {p1}, Lcom/android/settings_ext/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Lmiui/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tQ:I

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tQ:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->fP()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tS:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_1
    check-cast p1, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;

    .line 146
    invoke-virtual {p1}, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 147
    iget v0, p1, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->tV:I

    iput v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tQ:I

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    iget v1, p1, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lmiui/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 128
    :cond_1
    new-instance v0, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->progress:I

    .line 130
    iget v1, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tQ:I

    iput v1, v0, Lcom/android/settings_ext/PointerSpeedPreference$SavedState;->tV:I

    .line 133
    invoke-direct {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->fP()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tS:Z

    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tS:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tO:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 92
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ext/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/PointerSpeedPreference;->tR:Z

    .line 66
    return-void
.end method
