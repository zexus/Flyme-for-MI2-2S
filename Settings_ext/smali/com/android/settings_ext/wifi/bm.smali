.class public Lcom/android/settings_ext/wifi/bm;
.super Ljava/lang/Object;
.source "XiaomiRouterUtils.java"


# static fields
.field private static ayc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ext/wifi/bm;->ayc:Ljava/lang/String;

    return-void
.end method

.method public static bN(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings_ext/wifi/bm;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ext/wifi/bm;->ayc:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 24
    :cond_0
    sput-object p1, Lcom/android/settings_ext/wifi/bm;->ayc:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    :try_start_0
    const-string v1, "com.xiaomi.router"

    .line 28
    const-string v1, "com.xiaomi.router"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 29
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_1

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.XIAOMI_ROUTER_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "com.xiaomi.router"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    const-string v0, "XiaomiRouter:"

    const-string v1, "send config broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 40
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "http://192.168.31.1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    invoke-static {p0, v0}, Lcom/android/settings_ext/wifi/bm;->g(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
