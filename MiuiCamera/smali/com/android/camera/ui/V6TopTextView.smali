.class public Lcom/android/camera/ui/V6TopTextView;
.super Landroid/widget/TextView;
.source "V6TopTextView.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private doTapButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->toggle()V

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 98
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 208
    const/4 v0, 0x1

    .line 211
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 213
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
    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 63
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    .line 66
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6TopTextView;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getShowedColor()I
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    const-string v1, "V6TopTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 199
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 200
    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyClickToDispatcher()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return v1

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 36
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-ne v0, v2, :cond_6

    .line 43
    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 47
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->doTapButton()V

    .line 49
    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v3, :cond_5

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 52
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->playSoundEffect(I)V

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    move v1, v2

    .line 54
    goto :goto_0

    :cond_6
    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    .line 90
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    .line 178
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 112
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/ui/V6TopTextView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 167
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getShowedColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setTextColor(I)V

    .line 231
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    .line 126
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->initializePopup()V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method
