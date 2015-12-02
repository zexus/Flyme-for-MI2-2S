.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# instance fields
.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 30
    return-void
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0052

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->reloadPreference()V

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 183
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->reloadPreference()V

    .line 189
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setPressed(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 174
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    .line 210
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    .line 213
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    const-string v1, "SkinBeautyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 161
    .local v0, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 162
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 42
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 44
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->refreshValue()V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onFinishInflate()V

    .line 35
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->refreshValue()V

    .line 38
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 139
    :goto_0
    return v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SkinBeautyButton;->setPressed(Z)V

    move v1, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    if-ne v0, v5, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move v1, v3

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    if-ne v0, v3, :cond_9

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt v1, v5, :cond_8

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    .line 123
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 132
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_6

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setPressed(Z)V

    .line 135
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->playSoundEffect(I)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    move v1, v3

    .line 137
    goto :goto_0

    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_1

    .line 129
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->toggle()V

    goto :goto_1

    :cond_9
    move v1, v3

    .line 139
    goto/16 :goto_0
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public refreshValue()V
    .locals 5

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 95
    const/4 v1, 0x0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v3

    aget v0, v3, v1

    .line 98
    .local v0, "iconId":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    .line 100
    .end local v0    # "iconId":I
    .end local v1    # "index":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->refreshValue()V

    .line 82
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 148
    :cond_0
    return-void
.end method
