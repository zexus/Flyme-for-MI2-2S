.class public Lcom/android/settings/wifi/openwifi/o;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static g(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 14
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    invoke-static {p0, v0}, Lcom/android/settings/wifi/openwifi/o;->g(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
