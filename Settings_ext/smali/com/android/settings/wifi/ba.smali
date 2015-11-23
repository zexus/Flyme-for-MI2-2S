.class Lcom/android/settings_ext/wifi/ba;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsFragment.java"


# instance fields
.field final synthetic axK:Lcom/android/settings_ext/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 105
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v1, 0x7f0902ce

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    sget-object v2, Lcom/android/settings_ext/wifi/WpsFragment$State;->axS:Lcom/android/settings_ext/wifi/WpsFragment$State;

    invoke-static {v1, v2, v0}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v1, 0x7f0902cf

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v1, 0x7f0902cd

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axP:Lcom/android/settings_ext/wifi/WpsFragment$State;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axP:Lcom/android/settings_ext/wifi/WpsFragment$State;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axQ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/ba;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    const v3, 0x7f0902cb

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0
.end method
