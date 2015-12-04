.class Lcom/miui/fmradio/FmStorageMonitor$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/miui/fmradio/FmStorageMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/fmradio/FmStorageMonitor$1;->this$0:Lcom/miui/fmradio/FmStorageMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor$1;->this$0:Lcom/miui/fmradio/FmStorageMonitor;

    # invokes: Lcom/miui/fmradio/FmStorageMonitor;->checkStorageSpace()V
    invoke-static {v0}, Lcom/miui/fmradio/FmStorageMonitor;->access$000(Lcom/miui/fmradio/FmStorageMonitor;)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
