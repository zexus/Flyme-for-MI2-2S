.class public Lcom/android/camera/ui/HdrButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "HdrButton.java"


# instance fields
.field private mIsVideo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 28
    return-void
.end method

.method private filterPreference()V
    .locals 10

    .prologue
    .line 101
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 103
    .local v6, "value":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-eqz v7, :cond_4

    .line 107
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v7

    if-nez v7, :cond_2

    .line 108
    :cond_1
    const-string v7, "on"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v5}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 128
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v6}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    .line 130
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 132
    :cond_3
    return-void

    .line 112
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v7

    if-nez v7, :cond_7

    .line 113
    :cond_5
    const-string v7, "live"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 115
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_7

    .line 116
    const-string v7, "normal"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 117
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 115
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "entryValues":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    const-string v7, "auto"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public initializeXml(Z)V
    .locals 4
    .param p1, "isVideo"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    .line 32
    if-eqz p1, :cond_1

    const v1, 0x7f060009

    .line 34
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->filterPreference()V

    .line 38
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 40
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 44
    :goto_1
    return-void

    .line 32
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060005

    goto :goto_0

    .line 43
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .restart local v1    # "resId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->updateTitle()V

    goto :goto_1
.end method

.method protected notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0053

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 50
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-ne v4, v5, :cond_4

    .line 56
    iget-object v4, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v1

    .line 57
    .local v1, "visible":Z
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 58
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 60
    .end local v1    # "visible":Z
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->updateTitle()V

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 68
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0

    .line 58
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "visible":Z
    :cond_6
    const-string v2, "off"

    goto :goto_1
.end method

.method public updateHdrAccordingFlash(Ljava/lang/String;)V
    .locals 2
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "hdrMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "auto"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 138
    :cond_2
    const-string v1, "off"

    goto :goto_0

    .line 141
    :cond_3
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1

    .line 146
    :cond_4
    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_2

    move v0, v2

    .line 89
    .local v0, "visible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    if-eq v0, v2, :cond_1

    .line 90
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 92
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->isFlashPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 96
    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 98
    :cond_1
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v3

    .line 86
    goto :goto_0

    .restart local v0    # "visible":Z
    :cond_3
    move v2, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const-string v1, "off"

    goto :goto_2

    .line 96
    :cond_5
    const/16 v3, 0x8

    goto :goto_3
.end method
