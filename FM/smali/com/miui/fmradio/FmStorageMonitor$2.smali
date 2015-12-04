.class Lcom/miui/fmradio/FmStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "FmStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStorageMonitor;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStorageMonitor;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/fmradio/FmStorageMonitor$2;->this$0:Lcom/miui/fmradio/FmStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStorageMonitor$2;->this$0:Lcom/miui/fmradio/FmStorageMonitor;

    # getter for: Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;
    invoke-static {v1}, Lcom/miui/fmradio/FmStorageMonitor;->access$100(Lcom/miui/fmradio/FmStorageMonitor;)Lcom/miui/fmradio/FmStorageMonitor$Listener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/FmStorageMonitor$Listener;->onError(I)V

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/FmStorageMonitor$2;->this$0:Lcom/miui/fmradio/FmStorageMonitor;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStorageMonitor;->stopMonitor()V

    .line 50
    return-void
.end method
