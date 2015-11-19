.class public Lcom/milink/api/v1/MilinkClientManager;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Lcom/milink/api/v1/IMilinkClientManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/MilinkClientManager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceName:Ljava/lang/String;

.field private mIsbound:Z

.field private mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

.field private mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

.field private mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

.field private mService:Lcom/milink/api/v1/aidl/IMcs;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 26
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 30
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    .line 32
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    .line 33
    iput-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    .line 92
    new-instance v0, Lcom/milink/api/v1/MilinkClientManager$1;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/MilinkClientManager$1;-><init>(Lcom/milink/api/v1/MilinkClientManager;)V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 36
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/milink/api/v1/McsDelegate;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDelegate;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    .line 38
    new-instance v0, Lcom/milink/api/v1/McsDataSource;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDataSource;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    .line 39
    new-instance v0, Lcom/milink/api/v1/McsDeviceListener;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDeviceListener;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object v0
.end method

.method static synthetic access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 0
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;
    .param p1, "x1"    # Lcom/milink/api/v1/aidl/IMcs;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object p1
.end method

.method static synthetic access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    return-object v0
.end method

.method private bindMilinkClientService()V
    .locals 4

    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/milink/api/v1/aidl/IMcs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1
    .param p1, "returnValue"    # I

    .prologue
    .line 499
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 501
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    packed-switch p1, :pswitch_data_0

    .line 527
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    .line 531
    :goto_0
    return-object v0

    .line 503
    :pswitch_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 504
    goto :goto_0

    .line 507
    :pswitch_1
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    .line 508
    goto :goto_0

    .line 511
    :pswitch_2
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    .line 512
    goto :goto_0

    .line 515
    :pswitch_3
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    .line 516
    goto :goto_0

    .line 519
    :pswitch_4
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 520
    goto :goto_0

    .line 523
    :pswitch_5
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    .line 524
    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unbindMilinkClientService()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->unbindMilinkClientService()V

    .line 73
    return-void
.end method

.method public connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 147
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 158
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 152
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->connect(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public disconnect()Lcom/milink/api/v1/type/ReturnCode;
    .locals 3

    .prologue
    .line 163
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 164
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 175
    :goto_0
    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 169
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->disconnect()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public getPlaybackDuration()I
    .locals 3

    .prologue
    .line 432
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 438
    .local v0, "duration":I
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlaybackProgress()I
    .locals 3

    .prologue
    .line 416
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 427
    :goto_0
    return v1

    .line 419
    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, "position":I
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlaybackRate()I
    .locals 3

    .prologue
    .line 383
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 384
    const/4 v1, 0x0

    .line 394
    :goto_0
    return v1

    .line 386
    :cond_0
    const/4 v1, 0x0

    .line 389
    .local v1, "rate":I
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackRate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVolume()I
    .locals 3

    .prologue
    .line 465
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 466
    const/4 v1, 0x0

    .line 476
    :goto_0
    return v1

    .line 468
    :cond_0
    const/4 v1, 0x0

    .line 471
    .local v1, "volume":I
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->bindMilinkClientService()V

    .line 68
    return-void
.end method

.method public rotatePhoto(Ljava/lang/String;ZF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "photoUri"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .param p3, "degree"    # F

    .prologue
    .line 483
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 484
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 495
    :goto_0
    return-object v0

    .line 486
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 489
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1, p2, p3}, Lcom/milink/api/v1/aidl/IMcs;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 492
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/milink/api/v1/MilinkClientManagerDataSource;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDataSource;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    .line 56
    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 61
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDelegate;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    .line 62
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDeviceListener;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    .line 63
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "selfName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 399
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 400
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 411
    :goto_0
    return-object v0

    .line 402
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 405
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackProgress(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 408
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "rate"    # I

    .prologue
    .line 366
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 367
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 378
    :goto_0
    return-object v0

    .line 369
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 372
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackRate(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 375
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public setVolume(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 448
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 449
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 460
    :goto_0
    return-object v0

    .line 451
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 454
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1}, Lcom/milink/api/v1/aidl/IMcs;->setVolume(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 457
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 198
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 212
    :goto_0
    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 203
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1}, Lcom/milink/api/v1/aidl/IMcs;->show(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 206
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 210
    goto :goto_0

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 209
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "iPosition"    # I
    .param p4, "dPosition"    # D
    .param p6, "type"    # Lcom/milink/api/v1/type/MediaType;

    .prologue
    .line 301
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "iPosition"    # I
    .param p5, "dPosition"    # D
    .param p7, "type"    # Lcom/milink/api/v1/type/MediaType;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 308
    sget-object v8, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 344
    :goto_0
    return-object v8

    .line 310
    :cond_0
    sget-object v8, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 313
    .local v8, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    sget-object v0, Lcom/milink/api/v1/MilinkClientManager$2;->$SwitchMap$com$milink$api$v1$type$MediaType:[I

    invoke-virtual/range {p7 .. p7}, Lcom/milink/api/v1/type/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 336
    :goto_1
    sget-object v8, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    .line 315
    :pswitch_0
    if-nez p3, :cond_1

    .line 316
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-wide/from16 v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v8

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v8

    .line 321
    goto :goto_0

    .line 324
    :pswitch_1
    if-nez p3, :cond_2

    .line 325
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-wide/from16 v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v8

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v8

    .line 330
    goto :goto_0

    .line 333
    :pswitch_2
    sget-object v8, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v9

    .line 340
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    sget-object v8, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 181
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 192
    :goto_0
    return-object v0

    .line 183
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 186
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->startShow()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 4
    .param p1, "duration"    # I
    .param p2, "type"    # Lcom/milink/api/v1/type/SlideMode;

    .prologue
    .line 265
    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v3, :cond_0

    .line 266
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 278
    :goto_0
    return-object v0

    .line 268
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 271
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    sget-object v3, Lcom/milink/api/v1/type/SlideMode;->Recyle:Lcom/milink/api/v1/type/SlideMode;

    if-ne p2, v3, :cond_1

    const/4 v2, 0x1

    .line 272
    .local v2, "isRecyle":Z
    :goto_1
    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v3, p1, v2}, Lcom/milink/api/v1/aidl/IMcs;->startSlideshow(IZ)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 271
    .end local v2    # "isRecyle":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public stopPlay()Lcom/milink/api/v1/type/ReturnCode;
    .locals 3

    .prologue
    .line 349
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 350
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 361
    :goto_0
    return-object v0

    .line 352
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 355
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->stopPlay()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public stopShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 3

    .prologue
    .line 248
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 249
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 260
    :goto_0
    return-object v0

    .line 251
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 254
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->stopShow()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public stopSlideshow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 3

    .prologue
    .line 283
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v2, :cond_0

    .line 284
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 295
    :goto_0
    return-object v0

    .line 286
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 289
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2}, Lcom/milink/api/v1/aidl/IMcs;->stopSlideshow()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method

.method public zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 11
    .param p1, "photoUri"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I
    .param p6, "orgPhotoWidth"    # I
    .param p7, "orgPhotoHeight"    # I
    .param p8, "scale"    # F

    .prologue
    .line 224
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 225
    sget-object v9, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 243
    :goto_0
    return-object v9

    .line 227
    :cond_0
    sget-object v9, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 230
    .local v9, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 238
    :catch_0
    move-exception v10

    .line 239
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    sget-object v9, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0
.end method
