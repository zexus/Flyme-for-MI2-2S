.class Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;
.super Ljava/lang/Object;
.source "FmServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmServiceManager;


# direct methods
.method private constructor <init>(Lcom/miui/fmservice/FmServiceManager;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;->this$0:Lcom/miui/fmservice/FmServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/FmServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p2, "x1"    # Lcom/miui/fmservice/FmServiceManager$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;-><init>(Lcom/miui/fmservice/FmServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    const-string v1, "Fm:FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;->this$0:Lcom/miui/fmservice/FmServiceManager;

    invoke-static {p2}, Lcom/miui/fmservice/IFmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmservice/IFmService;

    move-result-object v2

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmServiceManager;->access$102(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/IFmService;)Lcom/miui/fmservice/IFmService;

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v1}, Lcom/miui/fmservice/FmServiceManager;->access$100(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mServiceCallback:Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;
    invoke-static {v2}, Lcom/miui/fmservice/FmServiceManager;->access$200(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmService;->registerCallbacks(Lcom/miui/fmservice/IFmServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyServiceReady()V
    invoke-static {v1}, Lcom/miui/fmservice/FmServiceManager;->access$300(Lcom/miui/fmservice/FmServiceManager;)V

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "Could not registerCallbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    return-void
.end method
