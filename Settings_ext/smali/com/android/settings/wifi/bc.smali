.class Lcom/android/settings/wifi/bc;
.super Ljava/util/TimerTask;
.source "WpsFragment.java"


# instance fields
.field final synthetic axK:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings/wifi/bc;->axK:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/bc;->axK:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->e(Lcom/android/settings/wifi/WpsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/bd;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/bd;-><init>(Lcom/android/settings/wifi/bc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method
