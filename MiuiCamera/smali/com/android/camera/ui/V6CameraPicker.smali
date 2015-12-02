.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mFromGesture:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mUpToDown:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-boolean v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 29
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mFromGesture:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mUpToDown:Z

    .line 33
    return-void
.end method

.method private updateLayout()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 45
    .local v1, "rules1":[I
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    aput v4, v1, v6

    .line 47
    aput v3, v1, v5

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->requestLayout()V

    .line 53
    return-void

    .line 49
    :cond_0
    aput v3, v1, v6

    .line 50
    aput v4, v1, v5

    goto :goto_0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 64
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    .line 65
    return-void
.end method

.method public getDirection()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mUpToDown:Z

    return v0
.end method

.method public isFromGesture()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mFromGesture:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 70
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateLayout()V

    .line 71
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 72
    .local v1, "cameraInfo":[Landroid/hardware/Camera$CameraInfo;
    array-length v3, v1

    .line 73
    .local v3, "numOfCameras":I
    if-ge v3, v7, :cond_0

    .line 74
    iput-boolean v5, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 75
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 79
    :cond_0
    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 80
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 82
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 85
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v4, v2}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 86
    iput-boolean v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "cameraId":Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0

    .line 94
    :cond_1
    iput v5, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-nez p1, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mFromGesture:Z

    .line 102
    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_4

    move v6, v2

    .line 105
    .local v6, "newCameraFacing":I
    :goto_2
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 106
    .local v7, "oldFacing":I
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0056

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "newCameraFacing":I
    .end local v7    # "oldFacing":I
    :cond_3
    move v0, v1

    .line 101
    goto :goto_1

    :cond_4
    move v6, v1

    .line 102
    goto :goto_2
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCreate()V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateLayout()V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public setDirection(Z)V
    .locals 0
    .param p1, "uptodown"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mUpToDown:Z

    .line 123
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 136
    const/16 p1, 0x8

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 139
    return-void
.end method
