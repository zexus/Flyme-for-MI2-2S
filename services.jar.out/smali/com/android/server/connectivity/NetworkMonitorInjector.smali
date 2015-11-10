.class Lcom/android/server/connectivity/NetworkMonitorInjector;
.super Ljava/lang/Object;
.source "NetworkMonitorInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 10
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
