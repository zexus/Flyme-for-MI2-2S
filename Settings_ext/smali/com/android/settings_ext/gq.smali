.class Lcom/android/settings_ext/gq;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic xm:Lcom/android/settings_ext/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings_ext/gq;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ext/gq;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsLicenseActivity;->finish()V

    .line 203
    return-void
.end method
