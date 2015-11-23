.class Lcom/android/settings_ext/DeviceAdminAdd$3$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# instance fields
.field final synthetic ju:Lcom/android/settings_ext/bE;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bE;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings_ext/DeviceAdminAdd$3$1;->ju:Lcom/android/settings_ext/bE;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 286
    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd$3$1;->ju:Lcom/android/settings_ext/bE;

    iget-object v1, v1, Lcom/android/settings_ext/bE;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 291
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
