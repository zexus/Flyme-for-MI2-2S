.class abstract Lcom/android/settings_ext/print/k;
.super Landroid/database/ContentObserver;
.source "PrintServiceSettingsFragment.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 451
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 454
    const-string v0, "enabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 456
    return-void
.end method

.method public b(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 459
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    return-void
.end method