.class Lcom/xiaomi/miui/pushads/sdk/m;
.super Landroid/os/Handler;
.source "NotifyAdsManagerNew.java"


# instance fields
.field final synthetic aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;


# direct methods
.method constructor <init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    .line 203
    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->c(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    goto :goto_0

    .line 219
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 220
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->d(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)Lcom/xiaomi/miui/pushads/sdk/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->d(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)Lcom/xiaomi/miui/pushads/sdk/f;

    move-result-object v2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5, v0}, Lcom/xiaomi/miui/pushads/sdk/f;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_5
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Z)Z

    goto :goto_0

    .line 231
    :pswitch_6
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/g;->Ak()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/m;->aGA:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->e(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
