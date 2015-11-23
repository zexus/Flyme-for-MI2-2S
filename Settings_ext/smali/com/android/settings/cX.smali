.class Lcom/android/settings/cX;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ok:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/cX;->ok:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/android/settings/cX;->ok:Lcom/android/settings/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "storage_volume"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 112
    const-string v2, "storage_volume"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/settings/cX;->ok:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->a(Lcom/android/settings/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "reboot_after_format"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cX;->ok:Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    iget-object v0, p0, Lcom/android/settings/cX;->ok:Lcom/android/settings/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0
.end method
