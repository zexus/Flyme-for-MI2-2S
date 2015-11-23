.class Lcom/android/settings/deviceinfo/Memory$4;
.super Ljava/lang/Thread;
.source "Memory.java"


# instance fields
.field final synthetic RL:Lcom/android/settings/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$4;->RL:Lcom/android/settings/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory$4;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$4;->val$mountService:Landroid/os/storage/IMountService;

    # getter for: Lcom/android/settings/deviceinfo/Memory;->RI:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/Memory;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$4;->RL:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$4$1;-><init>(Lcom/android/settings/deviceinfo/Memory$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
