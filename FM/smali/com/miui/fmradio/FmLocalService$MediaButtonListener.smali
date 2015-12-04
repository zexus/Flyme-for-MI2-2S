.class Lcom/miui/fmradio/FmLocalService$MediaButtonListener;
.super Landroid/content/BroadcastReceiver;
.source "FmLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p2, "x1"    # Lcom/miui/fmradio/FmLocalService$1;

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 1232
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$2400(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/IFmServiceManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1236
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1237
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1240
    :sswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1241
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2, v3, v3}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    goto :goto_0

    .line 1243
    :cond_2
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->turnFmOn()V

    goto :goto_0

    .line 1247
    :sswitch_1
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2, v3, v3}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    goto :goto_0

    .line 1252
    :sswitch_2
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1253
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->turnFmOn()V

    goto :goto_0

    .line 1257
    :sswitch_3
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmLocalService;->seekFm(Z)V

    goto :goto_0

    .line 1262
    :sswitch_4
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1263
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmLocalService;->seekFm(Z)V

    goto :goto_0

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method
