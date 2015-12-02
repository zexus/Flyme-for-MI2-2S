.class public Lcom/android/camera/ui/V6SeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private filterPreference(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 7
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/camera/Device;->isDelayCaptureSeperated()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    const-string v5, "pref_delay_capture_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 99
    .local v4, "value":Ljava/lang/CharSequence;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "value":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 105
    .end local v0    # "arr$":[Ljava/lang/CharSequence;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 2
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 42
    const-string v0, "pref_camera_face_beauty_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "pref_camera_face_beauty_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 49
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->setBackgroundResource(I)V

    .line 55
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 59
    return-void

    .line 44
    :cond_1
    const-string v0, "pref_delay_capture_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "pref_delay_capture_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 46
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SeekbarPopup;->filterPreference(Lcom/android/camera/preferences/IconListPreference;)V

    goto :goto_0

    .line 52
    :cond_2
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 30
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    .line 31
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    .line 33
    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "touchUp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 70
    iget v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    if-eq p1, v0, :cond_1

    .line 71
    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 85
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 66
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setOrientation(IZ)V

    .line 38
    return-void
.end method
