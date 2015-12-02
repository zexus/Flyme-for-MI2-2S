.class public Lcom/android/camera/ui/V6FlashButton;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6FlashButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAutoFlashIndex:I

.field private mCameraOpened:Z

.field private mDispatching:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsFlash:Z

.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mRevert:Z

.field private mVisible:Z

.field transition:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "FlashButton"

    sput-object v0, Lcom/android/camera/ui/V6FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/camera/ui/V6FlashButton;->mRevert:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/ui/V6FlashButton;->mDispatching:Z

    .line 51
    new-instance v0, Lcom/android/camera/ui/V6FlashButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6FlashButton$1;-><init>(Lcom/android/camera/ui/V6FlashButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mHandler:Landroid/os/Handler;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    .line 48
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6FlashButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6FlashButton;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mRevert:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/V6FlashButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6FlashButton;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/ui/V6FlashButton;->mRevert:Z

    return p1
.end method

.method private doTapButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6FlashButton;->setPressed(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->showPopup()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->dismissPopup()Z

    goto :goto_0

    .line 207
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRestoredFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_restored_flashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mDispatching:Z

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0052

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    iput-boolean v1, p0, Lcom/android/camera/ui/V6FlashButton;->mDispatching:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    goto :goto_0
.end method

.method public static setRestoredFlashMode(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 428
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p0, :cond_0

    .line 429
    const-string v1, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    return-void

    .line 432
    .restart local p0    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "pref_camera_restored_flashmode_key"

    const-string v2, "torch"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "auto"

    .end local p0    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 217
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    .line 223
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->notifyClickToDispatcher()V

    goto :goto_0
.end method


# virtual methods
.method public avoidTorchOpen()Z
    .locals 4

    .prologue
    .line 92
    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mIsVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "live"

    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mCameraOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_2
    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_camera_hdr_key"

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "off"

    goto :goto_3

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public dismissPopup()Z
    .locals 3

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->setPressed(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 382
    const/4 v0, 0x1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 385
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
    .line 391
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->dismissPopup()Z

    .line 392
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->notifyClickToDispatcher()V

    .line 395
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    sget-object v1, Lcom/android/camera/ui/V6FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 372
    .local v0, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 373
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 374
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public initializeXml(Z)V
    .locals 4
    .param p1, "isVideo"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/ui/V6FlashButton;->mIsVideo:Z

    .line 70
    if-eqz p1, :cond_1

    const v1, 0x7f060008

    .line 72
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 74
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6FlashButton;->mAutoFlashIndex:I

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->avoidTorchOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 80
    :cond_0
    return-void

    .line 70
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060004

    goto :goto_0
.end method

.method public isFlashPressed()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mDispatching:Z

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepSetValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/android/camera/ui/V6FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "restoredValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->restoreKeptValue()V

    .line 308
    .end local v1    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v1    # "restoredValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/V6FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 113
    iput-boolean v5, p0, Lcom/android/camera/ui/V6FlashButton;->mCameraOpened:Z

    .line 114
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 118
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 122
    .local v0, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 125
    .local v1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/ui/V6FlashButton;->mIsVideo:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 126
    const-string v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_5

    .line 128
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 129
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 122
    .end local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 132
    .restart local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_6

    .line 134
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 135
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_6
    iput-boolean v5, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 140
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 141
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 145
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 147
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 148
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->dismissPopup()Z

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 85
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->avoidTorchOpen()Z

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    :goto_0
    return v1

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 163
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FlashButton;->setPressed(Z)V

    move v1, v2

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->dismissPopup()Z

    move v1, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    if-ne v0, v2, :cond_6

    .line 170
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->doTapButton()V

    .line 176
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v3, :cond_5

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->setPressed(Z)V

    .line 179
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->playSoundEffect(I)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    move v1, v2

    .line 181
    goto :goto_0

    :cond_6
    move v1, v2

    .line 183
    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->dismissPopup()Z

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 278
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->setEnabled(Z)V

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v2, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->findCurrentIndex()I

    move-result v0

    .line 254
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v2

    aget v1, v2, v0

    .line 255
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget v2, p0, Lcom/android/camera/ui/V6FlashButton;->mAutoFlashIndex:I

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 258
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FlashButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 268
    .end local v0    # "index":I
    .end local v1    # "resId":I
    :cond_0
    return-void

    .line 261
    .restart local v0    # "index":I
    .restart local v1    # "resId":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 249
    :cond_0
    return-void
.end method

.method public restoreKeptValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isFlashPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-static {}, Lcom/android/camera/ui/V6FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "restoredValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->setValue(Ljava/lang/String;)V

    .line 316
    invoke-static {v2}, Lcom/android/camera/ui/V6FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 321
    .end local v0    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-static {v2}, Lcom/android/camera/ui/V6FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 p1, 0x0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 337
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setEnabled(Z)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 342
    :cond_2
    return-void
.end method

.method public setFlashState(Z)V
    .locals 1
    .param p1, "isFlash"    # Z

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6FlashButton;->mIsFlash:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 350
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 288
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->initializePopup()V

    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->setFlashState(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 359
    :cond_0
    return-void
.end method

.method public updateFlashModeAccordingHdr(Ljava/lang/String;)V
    .locals 3
    .param p1, "hdrMode"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isFlashPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 445
    invoke-static {}, Lcom/android/camera/ui/V6FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "storeFlashMode":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 448
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    const-string v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 470
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 446
    .restart local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    .restart local v0    # "flashMode":Ljava/lang/String;
    :cond_2
    const-string v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    const-string v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :cond_3
    const-string v2, "live"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    const-string v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->restoreKeptValue()V

    goto :goto_1

    .line 468
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/ui/V6FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq p1, v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->doTapButton()V

    .line 190
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
