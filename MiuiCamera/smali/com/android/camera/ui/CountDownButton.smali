.class public Lcom/android/camera/ui/CountDownButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "CountDownButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method private filterPreference()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0054

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownButton;->reloadPreference()V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 51
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownButton;->setVisibility(I)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/CountDownButton;->filterPreference()V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownButton;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownButton;->updateTitle()V

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CountDownButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->onFinishInflate()V

    .line 22
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/CountDownButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/CountDownButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 25
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CountDownButton;->setVisibility(I)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CountDownButton;->filterPreference()V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownButton;->updateTitle()V

    goto :goto_0
.end method
