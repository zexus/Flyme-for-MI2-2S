.class Lcom/android/settings/print/s;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic ahs:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/print/s;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/l;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/settings/print/s;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/print/s;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/print/s;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/print/s;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/print/s;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    return-void
.end method
