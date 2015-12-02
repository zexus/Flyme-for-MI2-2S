.class public Lcom/android/camera/ui/ManualExposurePopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualExposurePopup.java"

# interfaces
.implements Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;


# instance fields
.field protected mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "preferenceEntries":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "preferenceEntryValues":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v6, :cond_3

    const v2, 0x1e8480

    .line 45
    .local v2, "maxExposure":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMinExposureTimes(Landroid/content/Context;)I

    move-result v3

    .line 47
    .local v3, "minExposure":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 48
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "entryValue":I
    if-gt v3, v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e013a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    :cond_1
    aget-object v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    aget-object v6, v5, v1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "entryValue":I
    .end local v1    # "i":I
    .end local v2    # "maxExposure":I
    .end local v3    # "minExposure":I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 55
    .restart local v1    # "i":I
    .restart local v2    # "maxExposure":I
    .restart local v3    # "minExposure":I
    :cond_4
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 5
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 27
    sget-boolean v2, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualExposurePopup;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    .line 31
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 34
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ManualSeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;Z)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->reloadPreference()V

    .line 36
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 60
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualSeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ManualSeekBar;->setSettingChangedListener(Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;)V

    .line 62
    return-void
.end method

.method public onSettingChanged()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ManualSeekBar;->reloadPreference()V

    .line 67
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mManualSeekBarTime:Lcom/android/camera/ui/ManualSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ManualSeekBar;->setEnabled(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 82
    return-void
.end method
