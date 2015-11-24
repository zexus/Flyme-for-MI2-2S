.class Lcom/android/settings_ext/gp;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# instance fields
.field final synthetic xm:Lcom/android/settings_ext/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ext/gp;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/android/settings_ext/gp;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-static {v1, v0}, Lcom/android/settings_ext/SettingsLicenseActivity;->a(Lcom/android/settings_ext/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/gp;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings_ext/SettingsLicenseActivity;->a(Lcom/android/settings_ext/SettingsLicenseActivity;)V

    goto :goto_0
.end method
