.class Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentSettings.java"


# instance fields
.field final synthetic adL:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->a(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->a(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->a(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->a(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method
