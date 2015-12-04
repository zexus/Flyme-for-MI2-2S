.class Lcom/miui/fmservice/FmService$2;
.super Landroid/content/BroadcastReceiver;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmservice/FmService;->registerScreenOnOffListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method constructor <init>(Lcom/miui/fmservice/FmService;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/miui/fmservice/FmService$2;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    const-string v1, "Fm:FmService"

    const-string v2, "ACTION_SCREEN_ON Intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/miui/fmservice/FmService$2;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, v1, Lcom/miui/fmservice/FmService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/fmservice/FmService$2;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v2, v2, Lcom/miui/fmservice/FmService;->mScreenOnHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "Fm:FmService"

    const-string v2, "ACTION_SCREEN_OFF Intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/miui/fmservice/FmService$2;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, v1, Lcom/miui/fmservice/FmService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/fmservice/FmService$2;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v2, v2, Lcom/miui/fmservice/FmService;->mScreenOffHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
