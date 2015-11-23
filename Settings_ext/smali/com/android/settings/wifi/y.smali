.class Lcom/android/settings/wifi/y;
.super Landroid/os/Handler;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic att:Lcom/android/settings/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    .line 320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->a(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/Y;->ve()V

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->a(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/Y;->vd()V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 341
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/openwifi/q;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/q;->wk()Z

    move-result v1

    .line 373
    if-nez v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/q;->wf()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/q;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/q;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/openwifi/l;

    .line 384
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiService;->c(Lcom/android/settings/wifi/MiuiWifiService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/openwifi/l;->i(Ljava/util/ArrayList;)Z

    move-result v0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiService;->d(Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/openwifi/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/n;->wj()V

    goto :goto_0

    .line 393
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/y;->att:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/l;->bO(Landroid/content/Context;)V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
