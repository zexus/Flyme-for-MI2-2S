.class Lcom/milink/api/v1/MilinkClientManager$1;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/MilinkClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/MilinkClientManager;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/MilinkClientManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 96
    # getter for: Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 99
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/milink/api/v1/MilinkClientManager$1$1;

    invoke-direct {v2, p0}, Lcom/milink/api/v1/MilinkClientManager$1$1;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {p2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v3

    # setter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2, v3}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceName(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 112
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 113
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    # getter for: Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 124
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/milink/api/v1/MilinkClientManager$1$2;

    invoke-direct {v2, p0}, Lcom/milink/api/v1/MilinkClientManager$1$2;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 135
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 136
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    iget-object v3, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;
    invoke-static {v3}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/milink/api/v1/aidl/IMcs;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v3, 0x0

    # setter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v2, v3}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    .line 141
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
