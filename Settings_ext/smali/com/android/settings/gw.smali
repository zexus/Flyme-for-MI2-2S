.class Lcom/android/settings/gw;
.super Landroid/webkit/WebViewClient;
.source "SettingsSafetyLegalActivity.java"


# instance fields
.field final synthetic xz:Lcom/android/settings/SettingsSafetyLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/gw;->xz:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/gw;->xz:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsSafetyLegalActivity;->a(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/gw;->xz:Lcom/android/settings/SettingsSafetyLegalActivity;

    const v2, 0x7f0904dd

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/gw;->xz:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-static {v0, p4}, Lcom/android/settings/SettingsSafetyLegalActivity;->a(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V

    .line 80
    return-void
.end method
