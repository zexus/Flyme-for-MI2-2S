.class Lcom/android/settings_ext/wifi/aN;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# instance fields
.field final synthetic axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

.field final synthetic vW:Landroid/os/Handler;

.field final synthetic vX:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aN;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/aN;->vW:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ext/wifi/aN;->vX:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aN;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->r(Lcom/android/settings_ext/wifi/WifiStatusTest;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aN;->vW:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aN;->vX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method