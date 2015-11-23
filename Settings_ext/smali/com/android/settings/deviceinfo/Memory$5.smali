.class Lcom/android/settings/deviceinfo/Memory$5;
.super Ljava/lang/Thread;
.source "Memory.java"


# instance fields
.field final synthetic RL:Lcom/android/settings/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$5;->RL:Lcom/android/settings/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    # getter for: Lcom/android/settings/deviceinfo/Memory;->RI:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/Memory;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v0, "MemorySettings"

    const-string v1, "Mount service is null, can\'t mount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method
