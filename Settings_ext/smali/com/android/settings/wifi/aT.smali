.class Lcom/android/settings/wifi/aT;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# instance fields
.field final synthetic axt:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->axC:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 121
    return-void

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
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
    .locals 5

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->axz:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->axz:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->axA:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/aT;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 99
    return-void
.end method
