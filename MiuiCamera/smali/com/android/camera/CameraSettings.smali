.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static final BOTTOM_CONTROL_HEIGHT:I

.field private static final MMS_VIDEO_DURATION:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

.field public static final TOP_CONTROL_HEIGHT:I

.field public static final XIAOMI_BEAUTY_KEY:Ljava/lang/String;

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z

.field private static sEdgePhotoEnable:Z

.field private static sSceneToFlash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 228
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    .line 229
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 231
    const v0, 0x7f0e016b

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings;->XIAOMI_BEAUTY_KEY:Ljava/lang/String;

    .line 234
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    .line 236
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    .line 238
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 240
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 242
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 244
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "auto"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "landscape"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sports"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night-portrait"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "beach"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "snow"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sunset"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "fireworks"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "backlight"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "flowers"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    return-void

    .line 196
    :cond_0
    const/16 v0, 0x1e

    goto/16 :goto_0
.end method

.method private static changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 851
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v1

    .line 852
    .local v1, "previewPanel":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 854
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 855
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 859
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 865
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 867
    return-void

    .line 862
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 863
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    goto :goto_0
.end method

.method private static changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    .line 871
    .local v1, "statusBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 873
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 874
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 882
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 883
    return-void

    .line 880
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private static changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V
    .locals 6
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 826
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v4

    if-nez v4, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    .line 828
    .local v2, "previewPanel":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 830
    .local v1, "p1":Landroid/widget/FrameLayout$LayoutParams;
    if-nez p1, :cond_3

    .line 832
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-nez v4, :cond_2

    sget v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 834
    .local v0, "margin":I
    :goto_1
    sget v4, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v1, v0, v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 847
    .end local v0    # "margin":I
    :goto_2
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 832
    goto :goto_1

    .line 838
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 840
    sget v4, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    sget v5, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 845
    :cond_4
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v0, -0x1

    .line 911
    invoke-static {p0, p1, v0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 912
    return-void
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 915
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 917
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 918
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/CameraSettings;->changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V

    .line 920
    :cond_0
    return-void
.end method

.method public static get4kProfile()I
    .locals 1

    .prologue
    .line 665
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0e001c

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getCameraId()I
    .locals 3

    .prologue
    .line 588
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCountDownTimes()I
    .locals 3

    .prologue
    .line 1233
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_delay_capture_key"

    const v2, 0x7f0e01b0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultPreferenceId(I)I
    .locals 1
    .param p0, "prefId"    # I

    .prologue
    .line 745
    sparse-switch p0, :sswitch_data_0

    .line 778
    .end local p0    # "prefId":I
    :cond_0
    :goto_0
    return p0

    .line 747
    .restart local p0    # "prefId":I
    :sswitch_0
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const p0, 0x7f0e00cb

    goto :goto_0

    .line 753
    :sswitch_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isFrontVideoQualityShouldBe1080P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const p0, 0x7f0e001a

    goto :goto_0

    .line 760
    :sswitch_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-eqz v0, :cond_0

    .line 761
    :cond_1
    const p0, 0x7f090004

    goto :goto_0

    .line 767
    :sswitch_3
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    const p0, 0x7f0e00a5

    goto :goto_0

    .line 773
    :sswitch_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const p0, 0x7f0e01af

    goto :goto_0

    .line 745
    :sswitch_data_0
    .sparse-switch
        0x7f090003 -> :sswitch_2
        0x7f0e0018 -> :sswitch_1
        0x7f0e00a4 -> :sswitch_3
        0x7f0e00ca -> :sswitch_0
        0x7f0e01b0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0e012c

    .line 923
    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    :cond_0
    const v0, 0x7f0e012b

    .line 959
    :cond_1
    :goto_0
    return v0

    .line 926
    :cond_2
    const-string v1, "pref_camera_hand_night_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    const v0, 0x7f0e0129

    goto :goto_0

    .line 928
    :cond_3
    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 929
    const v0, 0x7f0e012a

    goto :goto_0

    .line 930
    :cond_4
    const-string v1, "pref_video_speed_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 932
    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 933
    const v0, 0x7f0e0163

    goto :goto_0

    .line 934
    :cond_5
    const-string v1, "pref_delay_capture_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 935
    const v0, 0x7f0e01ae

    goto :goto_0

    .line 936
    :cond_6
    const-string v1, "pref_video_speed_fast_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    const-string v0, "pref_video_speed_slow_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 939
    const v0, 0x7f0e012d

    goto :goto_0

    .line 940
    :cond_7
    const-string v0, "pref_camera_ubifocus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 941
    const v0, 0x7f0e017f

    goto :goto_0

    .line 942
    :cond_8
    const-string v0, "pref_camera_manual_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 943
    const v0, 0x7f0e0186

    goto :goto_0

    .line 944
    :cond_9
    const-string v0, "pref_camera_burst_shooting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 945
    const v0, 0x7f0e0191

    goto :goto_0

    .line 946
    :cond_a
    const-string v0, "pref_audio_focus_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 947
    const v0, 0x7f0e019d

    goto :goto_0

    .line 948
    :cond_b
    const-string v0, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 949
    const v0, 0x7f0e01b8

    goto/16 :goto_0

    .line 950
    :cond_c
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 951
    const v0, 0x7f0e01be

    goto/16 :goto_0

    .line 952
    :cond_d
    const-string v0, "pref_camera_tilt_shift_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 953
    const v0, 0x7f0e01c7

    goto/16 :goto_0

    .line 954
    :cond_e
    const-string v0, "pref_camera_fisheye_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 955
    const v0, 0x7f0e01c9

    goto/16 :goto_0

    .line 956
    :cond_f
    const-string v0, "pref_audio_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 957
    const v0, 0x7f0e0101

    goto/16 :goto_0

    .line 959
    :cond_10
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getFaceBeautifyValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1245
    const v1, 0x7f0e0165

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "faceBeauty":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_skin_beautify_key"

    const v3, 0x7f0e016a

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    :cond_0
    :goto_0
    return-object v0

    .line 1250
    :cond_1
    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_face_beauty_key"

    const v3, 0x7f0e0169

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 1215
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_mode_key"

    const v2, 0x7f0e0069

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 3

    .prologue
    .line 1187
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_focus_position_key"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 794
    const-string v0, "pref_front_mirror_key"

    const v1, 0x7f0e0189

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;
    .locals 4
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "burst"    # Z

    .prologue
    .line 1407
    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0e0050

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "jpegQuality":Ljava/lang/String;
    const-string v1, "high"

    .line 1410
    .local v1, "maxQuality":Ljava/lang/String;
    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v2, :cond_1

    .line 1411
    const-string v1, "normal"

    .line 1415
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1419
    .end local v0    # "jpegQuality":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1412
    .restart local v0    # "jpegQuality":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v2, :cond_0

    .line 1413
    const-string v1, "low"

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1419
    goto :goto_1
.end method

.method public static getKValue()I
    .locals 3

    .prologue
    .line 1089
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v2, 0x157c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 1192
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1193
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :goto_0
    return-object v0

    .line 1194
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1195
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1196
    :cond_1
    int-to-double v0, p1

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1197
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1199
    :cond_2
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMaxExposureTimes(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1259
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxExposureTimeValue()I

    move-result v0

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1266
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1267
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1271
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public static getMinExposureTimes(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1238
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMinExposureTimeValue()I

    move-result v0

    .line 1241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 14
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v9, 0x0

    const/16 v13, 0x7530

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1295
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1296
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1297
    const-string v10, "CameraSettings"

    const-string v11, "No supported frame rates returned!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :goto_0
    return-object v9

    .line 1302
    :cond_0
    const v4, 0x61a80

    .line 1303
    .local v4, "lowestMinRate":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1304
    .local v7, "rate":[I
    aget v6, v7, v11

    .line 1305
    .local v6, "minFps":I
    aget v5, v7, v12

    .line 1306
    .local v5, "maxFps":I
    if-lt v5, v13, :cond_1

    if-gt v6, v13, :cond_1

    if-ge v6, v4, :cond_1

    .line 1309
    move v4, v6

    goto :goto_1

    .line 1315
    .end local v5    # "maxFps":I
    .end local v6    # "minFps":I
    .end local v7    # "rate":[I
    :cond_2
    const/4 v8, -0x1

    .line 1316
    .local v8, "resultIndex":I
    const/4 v1, 0x0

    .line 1317
    .local v1, "highestMaxRate":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1319
    .restart local v7    # "rate":[I
    aget v6, v7, v11

    .line 1320
    .restart local v6    # "minFps":I
    aget v5, v7, v12

    .line 1321
    .restart local v5    # "maxFps":I
    if-ne v6, v4, :cond_3

    if-ge v1, v5, :cond_3

    .line 1322
    move v1, v5

    .line 1323
    move v8, v2

    .line 1317
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1327
    .end local v5    # "maxFps":I
    .end local v6    # "minFps":I
    .end local v7    # "rate":[I
    :cond_4
    if-ltz v8, :cond_5

    .line 1328
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    goto :goto_0

    .line 1330
    :cond_5
    const-string v10, "CameraSettings"

    const-string v11, "Can\'t find an appropriate frame rate range!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPreviewAspectRatio(II)D
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    .line 289
    .local v0, "ratio":D
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p0

    int-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 291
    const-wide v0, 0x3ffc71c720000000L    # 1.7777777910232544

    .line 295
    :goto_0
    return-wide v0

    .line 293
    :cond_0
    const-wide v0, 0x3ff5555560000000L    # 1.3333333730697632

    goto :goto_0
.end method

.method public static getShaderEffect()I
    .locals 5

    .prologue
    .line 1170
    const-string v2, "pref_camera_gradienter_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    const/16 v2, 0xd

    .line 1182
    .local v1, "shader":Ljava/lang/String;
    :goto_0
    return v2

    .line 1172
    .end local v1    # "shader":Ljava/lang/String;
    :cond_0
    const-string v2, "pref_camera_tilt_shift_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    const/16 v2, 0xe

    goto :goto_0

    .line 1174
    :cond_1
    const-string v2, "pref_camera_fisheye_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    const/16 v2, 0xf

    goto :goto_0

    .line 1177
    :cond_2
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_shader_coloreffect_key"

    const v4, 0x7f0e0082

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .restart local v1    # "shader":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public static getSmartShutterPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_key_camera_smart_shutter_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 389
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "pref_video_speed_slow_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 678
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    .line 679
    .local v0, "quality4k":I
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    invoke-static {p0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v0    # "quality4k":I
    :cond_1
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_2
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_3
    const/16 v2, 0xb

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 693
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_4
    invoke-static {p0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 696
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_5
    invoke-static {p0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 699
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_6
    return-object v1
.end method

.method public static getSystemEdgeMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1375
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_handgrip"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_clean"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_screenshot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public static getUIStyleByPreview(II)I
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    .line 891
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    const/4 v0, 0x0

    .line 907
    :cond_0
    :goto_0
    return v0

    .line 894
    :cond_1
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_2

    .line 895
    const/4 v0, 0x1

    goto :goto_0

    .line 897
    :cond_2
    const/4 v0, 0x0

    .line 898
    .local v0, "index":I
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v2, v4, v6

    .line 899
    .local v2, "ratio":D
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_3

    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    .line 901
    const/4 v0, 0x2

    goto :goto_0

    .line 902
    :cond_3
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_4

    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_0

    .line 905
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVideoQuality()I
    .locals 5

    .prologue
    .line 341
    const v3, 0x7f0e0018

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "defaultQuality":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 349
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_video_quality_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 355
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v3

    .line 353
    :cond_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "qualityStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 1362
    const-string v0, "on"

    const-string v1, "pref_video_speed_fast_key"

    const-string v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    const-string v0, "fast"

    .line 1367
    :goto_0
    return-object v0

    .line 1364
    :cond_0
    const-string v0, "on"

    const-string v1, "pref_video_speed_slow_key"

    const-string v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    const-string v0, "slow"

    goto :goto_0

    .line 1367
    :cond_1
    const-string v0, "normal"

    goto :goto_0
.end method

.method public static is4KHigherVideoQuality(I)Z
    .locals 2
    .param p0, "quality"    # I

    .prologue
    const/4 v0, 0x0

    .line 670
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsdNightEnable()Z
    .locals 3

    .prologue
    .line 1348
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_asd_night_key"

    const v2, 0x7f090005

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsdPopupEnable()Z
    .locals 3

    .prologue
    .line 1343
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_asd_popup_key"

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 312
    if-ge p0, p1, :cond_0

    .line 313
    move v2, p0

    .line 314
    .local v2, "tmp":I
    move p0, p1

    .line 315
    move p1, v2

    .line 317
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 318
    .local v0, "ratio":D
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 319
    const/4 v3, 0x1

    .line 321
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio4_3(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 299
    if-ge p0, p1, :cond_0

    .line 300
    move v2, p0

    .line 301
    .local v2, "tmp":I
    move p0, p1

    .line 302
    move p1, v2

    .line 304
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 305
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 306
    const/4 v3, 0x1

    .line 308
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAudioCaptureOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1126
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    .line 1129
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isDelayCaptureSeperated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1130
    const-string v1, "pref_delay_capture_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1133
    :cond_3
    const-string v0, "pref_audio_capture"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isBigForBeautify(Landroid/hardware/Camera$Size;)Z
    .locals 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v0, 0x0

    .line 1204
    if-eqz p0, :cond_0

    .line 1205
    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    const v2, 0x3d0900

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1207
    :cond_0
    return v0
.end method

.method public static isBurstShootingEnable(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 813
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "burst"

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    const v2, 0x7f0e01a1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSoundOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x1

    .line 786
    const-string v1, "pref_camerasound_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEdgePhotoEnable()Z
    .locals 1

    .prologue
    .line 1371
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .prologue
    .line 1138
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method public static isMovieSolidOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 798
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_movie_solid_key"

    const v1, 0x7f0e0126

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNearRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 325
    if-ge p0, p1, :cond_0

    .line 326
    move v2, p0

    .line 327
    .local v2, "tmp":I
    move p0, p1

    .line 328
    move p1, v2

    .line 330
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 332
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 335
    :cond_1
    const/4 v3, 0x1

    .line 337
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNoCameraModeSelected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1354
    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v2

    .line 1355
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1356
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1358
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isPressDownCapture()Z
    .locals 4

    .prologue
    .line 1335
    const v1, 0x7f0e01a1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "focus"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRecordLocation(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 782
    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isScanQRCode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 808
    const-string v0, "pref_scan_qrcode_key"

    const v1, 0x7f0e0138

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSwitchOn(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1066
    const-string v0, "on"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCaptureVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 736
    .local v0, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string v2, "pref_video_captrue_ability_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "slow"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isWaterMarkOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 790
    const-string v0, "pref_watermark_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readEdgePhotoSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1382
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_photo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 1386
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1383
    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 600
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "exposure":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 606
    :goto_0
    return v2

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 583
    const-string v0, "pref_camera_id_key"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 622
    const-string v2, "pref_camera_zoom_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "zoom":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 628
    :goto_0
    return v2

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid zoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static resetExposure()V
    .locals 2

    .prologue
    .line 616
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 617
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    return-void
.end method

.method public static resetOpenCameraFailTimes()V
    .locals 4

    .prologue
    .line 729
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 730
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    return-void
.end method

.method public static resetPreference(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1061
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1062
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1063
    return-void
.end method

.method public static resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 11
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "cameraId"    # I

    .prologue
    const/4 v10, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 964
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_exposure_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 965
    const-string v7, "pref_camera_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 966
    const-string v7, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 967
    const-string v7, "pref_camera_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 968
    const-string v7, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 969
    const-string v7, "pref_camera_hand_night_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 970
    const-string v7, "pref_camera_whitebalance_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v7, "pref_camera_scenemode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v7, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v7, "pref_video_speed_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v7, "pref_qc_camera_iso_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 975
    const-string v7, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v7, "pref_camera_face_beauty_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 977
    const-string v7, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 978
    const-string v7, "pref_camera_id_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 979
    const-string v7, "pref_delay_capture_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 980
    const-string v7, "pref_delay_capture_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 981
    const-string v7, "pref_audio_capture"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 982
    const-string v7, "pref_video_speed_fast_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 983
    const-string v7, "pref_video_speed_slow_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 984
    const-string v7, "pref_camera_ubifocus_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 985
    const-string v7, "pref_camera_manual_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 986
    const-string v7, "pref_camera_panoramamode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 987
    const-string v7, "pref_camera_burst_shooting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 988
    const-string v7, "pref_audio_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 989
    const-string v7, "pref_camera_gradienter_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    const-string v7, "pref_camera_tilt_shift_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 991
    const-string v7, "pref_camera_fisheye_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 994
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 995
    .local v5, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "pref_camerasound_key"

    aput-object v8, v7, v10

    const/4 v8, 0x1

    const-string v9, "pref_scan_qrcode_key"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "pref_watermark_key"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "pref_camera_referenceline_key"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "pref_camera_facedetection_key"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "pref_camera_movie_solid_key"

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1001
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1002
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v6    # "value":Ljava/lang/Object;
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1003
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1004
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1005
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1006
    const-string v7, "on"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1014
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v7, "pref_video_quality_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1015
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v7, v6

    .line 1016
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1017
    const-string v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1025
    :cond_2
    :goto_1
    sget-boolean v7, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-eqz v7, :cond_3

    .line 1026
    const-string v7, "pref_camera_skin_beautify_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1027
    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1028
    const-string v7, "pref_camera_skin_beautify_key"

    const v8, 0x7f0e016a

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1034
    :cond_3
    const-string v7, "pref_front_mirror_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1035
    if-eqz v6, :cond_4

    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 1036
    const-string v7, "pref_front_mirror_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1040
    :cond_4
    const-string v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1041
    if-eqz v6, :cond_5

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1042
    const-string v7, "pref_camera_flashmode_key"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1043
    const-string v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1046
    :cond_5
    const-string v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1047
    .restart local v6    # "value":Ljava/lang/Object;
    if-nez v6, :cond_8

    .line 1048
    const-string v7, "pref_camera_recordlocation_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1049
    .local v4, "location":Ljava/lang/Object;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "location":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1051
    :cond_6
    const-string v7, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1052
    const-string v7, "pref_camera_recordlocation_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1054
    :cond_7
    const-string v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1056
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1057
    return-void

    .line 1018
    :cond_9
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1019
    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove unsupported video quality "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public static resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 639
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 641
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 644
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 645
    .local v0, "currentCameraId":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 646
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 647
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 653
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 654
    return-void
.end method

.method public static setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 9
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3e8

    const/16 v7, 0xfa

    const/16 v6, -0xfa

    const/16 v5, -0x3e8

    const/4 v4, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 363
    .local v1, "meteringRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 364
    .local v2, "weight":I
    const v3, 0x7f0e00ff

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 366
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 367
    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 368
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 369
    const/4 v2, 0x1

    .line 384
    :goto_1
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    .line 370
    :cond_1
    const v3, 0x7f0e00fe

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 372
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 373
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 374
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 375
    const/4 v2, 0x0

    goto :goto_1

    .line 378
    :cond_2
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 379
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 380
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 381
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 382
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setEdgeMode(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1389
    if-eqz p0, :cond_1

    .line 1390
    if-eqz p1, :cond_0

    .line 1391
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readEdgePhotoSetting(Landroid/content/Context;)V

    .line 1393
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1394
    const-string v4, "input"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1396
    .local v0, "im":Landroid/hardware/input/InputManager;
    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/input/InputManager;

    aput-object v4, v2, v6

    .line 1397
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "switchTouchEdgeMode"

    const-string v5, "(I)V"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 1398
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 1399
    aget-object v4, v2, v6

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v1, v4, v0, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1404
    .end local v0    # "im":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-void

    .line 1399
    .restart local v0    # "im":Landroid/hardware/input/InputManager;
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSystemEdgeMode(Landroid/content/Context;)I

    move-result v3

    goto :goto_0
.end method

.method public static setFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1109
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1112
    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 1120
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_focus_mode_switching_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1123
    return-void
.end method

.method public static setFocusPosition(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 1158
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_focus_position_key"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1161
    return-void
.end method

.method public static setKValue(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1083
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1084
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1085
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1086
    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2
    .param p0, "externalPriority"    # Z

    .prologue
    .line 1275
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_priority_storage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1278
    return-void
.end method

.method public static setSmartShutterPosition(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1093
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1094
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_camera_smart_shutter_position"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1095
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1096
    return-void
.end method

.method public static updateFocusMode()V
    .locals 4

    .prologue
    .line 1148
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "oldFocusMode":Ljava/lang/String;
    const-string v2, "pref_camera_manual_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    const-string v0, "manual"

    .line 1151
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1152
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 1153
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    .line 1155
    :cond_0
    return-void

    .line 1149
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_1
    const-string v0, "continuous-picture"

    goto :goto_0
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 8

    .prologue
    .line 721
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 722
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v4, "open_camera_fail_key"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 723
    .local v2, "openCameraFail":J
    const-string v1, "open_camera_fail_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-wide v2
.end method

.method public static upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 5
    .param p0, "combPref"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v4, 0x1

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 561
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_version_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 562
    .local v1, "version":I
    if-ge v1, v4, :cond_0

    .line 563
    const-string v2, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    const-string v2, "pref_camera_first_touch_toast_shown_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 567
    :cond_0
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "prefLocal"    # Landroid/content/SharedPreferences;

    .prologue
    .line 572
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_local_version_key"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 574
    .local v1, "version":I
    if-nez v1, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 578
    :cond_0
    const-string v2, "pref_local_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    return-void
.end method

.method public static writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 611
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 613
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "cameraId"    # I

    .prologue
    .line 594
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    return-void
.end method

.method public static writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    return-void
.end method
