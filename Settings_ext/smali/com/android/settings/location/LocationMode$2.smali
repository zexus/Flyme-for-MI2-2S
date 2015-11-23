.class Lcom/android/settings/location/LocationMode$2;
.super Lcom/android/a/a/e;
.source "LocationMode.java"


# instance fields
.field final synthetic acC:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/location/LocationMode$2;->acC:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Lcom/android/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$2;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->b(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$2;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->b(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$2;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->b(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$2;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->b(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
