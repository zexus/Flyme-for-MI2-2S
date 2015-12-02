.class public Lcom/android/camera/ui/V6IndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "V6IndicatorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mClicked:Z

.field private mOverrideValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 23
    return-void
.end method

.method private notifyToModule()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 157
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMessageDispacher="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    move v1, v2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private refreshValue()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0170

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    :goto_0
    const-string v0, "pref_camera_manual_mode_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateFocusMode()V

    .line 92
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetOtherSetting()V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 146
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method private updateExitButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "txtId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePopup()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePopup this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p2, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p3, "popupRoot"    # Landroid/view/ViewGroup;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;

    .prologue
    .line 28
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/TwoStateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->setClickable(Z)V

    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    .line 33
    return-void
.end method

.method protected initializePopup()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mClicked:Z

    return v0
.end method

.method protected isIndicatorSelected()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    return v0
.end method

.method public isItemSelected()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    const-string v3, "Camera5"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visible="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " this="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mClicked:Z

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v3, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setSelected(Z)V

    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->resetOtherSetting()V

    .line 75
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->refreshValue()V

    .line 76
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    .line 77
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->notifyToModule()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 72
    goto :goto_1

    :cond_3
    move v1, v2

    .line 73
    goto :goto_2
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 228
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 5
    .param p1, "keyValues"    # [Ljava/lang/String;

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "valid":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 47
    aget-object v1, p1, v0

    .line 48
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p1, v4

    .line 49
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    const/4 v2, 0x1

    .line 51
    iput-object v3, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 52
    if-nez v3, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6IndicatorButton;->setEnabled(Z)V

    .line 56
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 59
    :cond_1
    return-void

    .line 52
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 46
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "Camera5"

    const-string v1, "indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateImage()V

    .line 214
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 216
    :cond_0
    return-void
.end method

.method public resetSettings()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TwoStateImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->onClick(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 100
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->initializePopup()V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    .line 142
    :cond_0
    return-void
.end method
