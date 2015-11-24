.class Lcom/android/settings_ext/gr;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# instance fields
.field final synthetic xm:Lcom/android/settings_ext/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ext/gr;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings_ext/gr;->xm:Lcom/android/settings_ext/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings_ext/SettingsLicenseActivity;->b(Lcom/android/settings_ext/SettingsLicenseActivity;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 216
    return-void
.end method
