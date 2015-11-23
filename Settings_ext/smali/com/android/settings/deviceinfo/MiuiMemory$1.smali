.class Lcom/android/settings/deviceinfo/MiuiMemory$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiMemory.java"


# instance fields
.field final synthetic Sc:Lcom/android/settings/deviceinfo/MiuiMemory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiMemory;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiMemory$1;->Sc:Lcom/android/settings/deviceinfo/MiuiMemory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory$1;->Sc:Lcom/android/settings/deviceinfo/MiuiMemory;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiuiMemory;->a(Lcom/android/settings/deviceinfo/MiuiMemory;)V

    .line 143
    :cond_1
    return-void
.end method
