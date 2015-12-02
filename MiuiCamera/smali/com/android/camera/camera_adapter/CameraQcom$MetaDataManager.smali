.class Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;
.super Ljava/lang/Object;
.source "CameraQcom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraQcom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaDataManager"
.end annotation


# instance fields
.field private mCurrentScene:I

.field private mLastScene:I

.field private mLastestState:I

.field private mLastestTimes:I

.field private mSceneShieldMask:I

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraQcom;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraQcom;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 442
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    .line 437
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    .line 438
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    .line 440
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    .prologue
    .line 424
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;

    .prologue
    .line 424
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    return v0
.end method

.method private applyScene(I)V
    .locals 6
    .param p1, "scene"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 603
    const-string v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    packed-switch p1, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1500(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1600(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 621
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1700(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private detectScene(I)I
    .locals 2
    .param p1, "senceResult"    # I

    .prologue
    .line 530
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p1, v0

    .line 533
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraQcom;->access$300(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 536
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraQcom;->access$400(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 541
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$500(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$600(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraQcom;->access$700(Lcom/android/camera/camera_adapter/CameraQcom;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    const/4 v0, 0x2

    goto :goto_0

    .line 550
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private printMetaData([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 502
    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    const-string v2, "  data[8]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    array-length v2, p1

    if-le v2, v8, :cond_1

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    aget-byte v4, p1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSceneShieldMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02x"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02x"

    new-array v4, v6, [Ljava/lang/Object;

    aget-byte v5, p1, v8

    iget v6, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, "CameraMetaDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraMetaData buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 505
    :cond_1
    const-string v2, "not exist"

    goto :goto_1
.end method

.method private resetSceneMode()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 486
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->restoreScene(I)V

    .line 488
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    .line 489
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    .line 490
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    .line 492
    return-void
.end method

.method private restoreScene(I)V
    .locals 4
    .param p1, "scene"    # I

    .prologue
    const/16 v3, 0x8

    .line 573
    const-string v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    packed-switch p1, :pswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 576
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$800(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$900(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1000(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 588
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1100(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1200(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 593
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1300(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    # getter for: Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraQcom;->access$1400(Lcom/android/camera/camera_adapter/CameraQcom;)Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setScene(I)Z
    .locals 5
    .param p1, "scene"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 554
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "CameraMetaDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScene "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastestState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastestTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentScene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    if-eq v1, p1, :cond_2

    .line 559
    iput p1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    .line 560
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    .line 569
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 561
    :cond_2
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    if-ge v1, v4, :cond_1

    .line 562
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    .line 563
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestTimes:I

    if-ne v4, v1, :cond_1

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    if-eq v1, v2, :cond_1

    .line 564
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    .line 565
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastestState:I

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetFilter()V

    .line 496
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetSceneMode()V

    .line 497
    return-void
.end method

.method public resetFilter()V
    .locals 1

    .prologue
    .line 480
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 481
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 482
    const-string v0, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public setAsdDetectMask(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "mask":B
    const/4 v2, -0x1

    .line 447
    .local v2, "scene":I
    const/4 v0, 0x0

    .line 448
    .local v0, "enable":Z
    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 449
    const/4 v1, 0x1

    .line 450
    const/4 v2, 0x0

    .line 451
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFlashIconFlicker()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "auto"

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 465
    :cond_0
    :goto_0
    const-string v3, "CameraMetaDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAsdDetectMask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz v1, :cond_1

    .line 467
    if-eqz v0, :cond_6

    .line 468
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    .line 477
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v4

    .line 451
    goto :goto_0

    .line 454
    :cond_3
    const-string v5, "pref_camera_hdr_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 455
    const/16 v1, 0x10

    .line 456
    const/4 v2, 0x1

    .line 457
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    const v6, 0x7f0e01a2

    invoke-virtual {v5, v6}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_2

    .line 460
    :cond_5
    const-string v3, "pref_camera_asd_night_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    const/16 v1, 0x40

    .line 462
    const/4 v2, 0x2

    .line 463
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_6
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mSceneShieldMask:I

    .line 472
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    if-ne v2, v3, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->resetSceneMode()V

    goto :goto_1
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 514
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->printMetaData([B)V

    .line 517
    :cond_0
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->detectScene(I)I

    move-result v0

    .line 521
    .local v0, "currentDetect":I
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->setScene(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->restoreScene(I)V

    .line 523
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mLastScene:I

    .line 524
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom$MetaDataManager;->applyScene(I)V

    goto :goto_0
.end method
