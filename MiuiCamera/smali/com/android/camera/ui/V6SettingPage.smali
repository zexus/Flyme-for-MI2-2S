.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/FrameLayout;
.source "V6SettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SettingPage$SettingAdapter;
    }
.end annotation


# instance fields
.field private mDefaultColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFirstSelectedItem:I

.field public mGridView:Lcom/android/camera/ui/V6GridView;

.field private mIndicatorWidth:I

.field private mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mOrientation:I

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field private mSettingAdapter:Lcom/android/camera/ui/V6SettingPage$SettingAdapter;

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;

.field public mSettingPageInternal:Landroid/view/View;

.field public mSettingViewParent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDisabledIndicator:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDisabledIndicator:Ljava/util/Set;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingPage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingPage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6SettingPage;Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingPage;
    .param p1, "x1"    # Landroid/view/LayoutInflater;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6SettingPage;->initializeIndicator(Landroid/view/LayoutInflater;Ljava/lang/String;)V

    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/preferences/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 462
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 463
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 468
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 469
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 473
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    goto :goto_0
.end method

.method private initPreference()V
    .locals 11

    .prologue
    .line 408
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 409
    .local v1, "cameraId":I
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 410
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/camera/ActivityBase;

    invoke-virtual {v9}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 412
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v7

    .line 413
    .local v7, "videoQuality":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_delay_capture_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    .line 414
    .local v3, "delayCapture":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v6

    .line 415
    .local v6, "timeLapseInterval":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_whitebalance_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    .line 416
    .local v8, "whiteBalance":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_scenemode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    .line 417
    .local v5, "sceneMode":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_coloreffect_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    .line 418
    .local v2, "colorEffect":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_focus_mode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 422
    .local v0, "cameraFocusMode":Lcom/android/camera/preferences/ListPreference;
    if-eqz v7, :cond_0

    .line 423
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v9, v7, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 426
    :cond_0
    if-eqz v8, :cond_1

    .line 427
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 430
    :cond_1
    if-eqz v5, :cond_2

    .line 431
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 435
    :cond_2
    if-eqz v2, :cond_3

    .line 436
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v2, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 440
    :cond_3
    if-eqz v0, :cond_4

    .line 441
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v0, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 444
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 449
    :cond_5
    return-void
.end method

.method private initializeIndicator(Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v2, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    .line 335
    .local v1, "pref":Lcom/android/camera/preferences/IconListPreference;
    const v2, 0x7f04001f

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 338
    .local v0, "view":Lcom/android/camera/ui/V6IndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    iget v5, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/V6IndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 341
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    .line 343
    :cond_0
    return-void
.end method

.method private removeKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 505
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 511
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 486
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    .line 487
    .local v0, "child":Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 488
    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 499
    .end local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    :goto_1
    return v3

    .line 492
    .restart local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .end local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    .line 495
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPage;->removeKey(Ljava/lang/String;)V

    move v3, v4

    .line 496
    goto :goto_1

    .line 485
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/preferences/ListPreference;

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 480
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V
    .locals 3
    .param p1, "but"    # Lcom/android/camera/ui/V6IndicatorButton;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    .line 166
    .local v1, "v":Lcom/android/camera/ui/V6IndicatorButton;
    if-eqz p1, :cond_1

    if-eq v1, p1, :cond_0

    .line 167
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    goto :goto_0

    .line 169
    .end local v1    # "v":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_2
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 239
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting page dispacherMessage mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    if-nez v0, :cond_1

    .line 271
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 248
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 249
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p5}, Lcom/android/camera/ui/V6SettingPage;->resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V

    goto :goto_0

    .line 253
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    .line 254
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_3

    move-object v0, p5

    .line 255
    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    .line 261
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0088

    const/4 v3, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p5

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->onBack()Z

    .line 268
    :cond_4
    const-string v0, "Camera5"

    const-string v1, "call indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 258
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPage;->setEnabled(Z)V

    .line 228
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    .line 229
    return-void
.end method

.method public getCurrentPopup()Landroid/view/View;
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 220
    .local v0, "i":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    .line 222
    .end local v0    # "i":Lcom/android/camera/ui/V6IndicatorButton;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 7

    .prologue
    const v2, 0x7f0c000a

    const/4 v6, 0x2

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 525
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, v6

    move v3, v6

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 544
    :cond_0
    return-void
.end method

.method protected initIndicators()V
    .locals 6

    .prologue
    .line 275
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    .line 276
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 283
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/V6SettingPage;->initializeIndicator(Landroid/view/LayoutInflater;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;-><init>(Lcom/android/camera/ui/V6SettingPage;)V

    iput-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingAdapter:Lcom/android/camera/ui/V6SettingPage$SettingAdapter;

    .line 290
    iget-object v4, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    if-ge v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/V6GridView;->setNumColumns(I)V

    .line 291
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    iget-object v4, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingAdapter:Lcom/android/camera/ui/V6SettingPage$SettingAdapter;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 290
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    goto :goto_2
.end method

.method public isItemSelected()Z
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingAnimationManager()Lcom/android/camera/ui/V6SettingAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingAnimationManager;->animationOut()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 90
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->requestLayout()V

    .line 85
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    const v1, 0x7f0c0089

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingPageInternal:Landroid/view/View;

    .line 71
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    .line 72
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingViewParent:Landroid/view/View;

    .line 73
    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6GridView;

    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    .line 74
    const v1, 0x7f0c008b

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6SettingButton;

    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingPageInternal:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 80
    return-void

    .line 71
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingPageInternal:Landroid/view/View;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v1, p4, v1

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 148
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 149
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/V6SettingPage;->setMeasuredDimension(II)V

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingPageInternal:Landroid/view/View;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    or-int/2addr v3, v4

    or-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 398
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 403
    .local v0, "b":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v0    # "b":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 139
    iget v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    iget v1, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GridView;->setSelection(I)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 143
    return-void
.end method

.method public reload()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 109
    const-string v2, "Camera5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload getid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->removePopup()V

    .line 113
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    .line 114
    .local v1, "indicator":Lcom/android/camera/ui/V6IndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/PopupManager;->removeOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    goto :goto_0

    .line 116
    .end local v1    # "indicator":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    .line 119
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initPreference()V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->initIndicators()V

    .line 126
    return-void
.end method

.method public reloadPreferences()V
    .locals 4

    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 392
    .local v0, "b":Lcom/android/camera/ui/V6IndicatorButton;
    iget v2, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/V6IndicatorButton;->setOrientation(IZ)V

    .line 393
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 395
    .end local v0    # "b":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_0
    return-void
.end method

.method public removePopup()V
    .locals 4

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 203
    .local v0, "i":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    .end local v0    # "i":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    return-void
.end method

.method public resetSettings()Z
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Z
    iget v1, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/ui/V6SettingPage;->mFirstSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_0
    return v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 348
    .local v0, "i":Lcom/android/camera/ui/V6IndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 352
    .end local v0    # "i":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/V6SettingButton;->setEnabled(Z)V

    .line 353
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 354
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 234
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 358
    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6IndicatorButton;->setOrientation(IZ)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6SettingButton;->setOrientation(IZ)V

    .line 363
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6SettingPage setVisibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public translate(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->requestLayout()V

    .line 162
    return-void
.end method

.method public updatePreference()V
    .locals 4

    .prologue
    .line 514
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 516
    .local v0, "cameraId":I
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v2, "pref_video_speed_slow_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEnable(Z)V

    .line 522
    :cond_0
    return-void

    .line 518
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
