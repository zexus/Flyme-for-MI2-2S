.class public Lcom/android/settings/SettingsLicenseActivity;
.super Lmiui/app/Activity;
.source "SettingsLicenseActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private xj:Landroid/webkit/WebView;

.field private xk:Lmiui/app/ProgressDialog;

.field private xl:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    .line 127
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    .line 128
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    .line 129
    return-void
.end method

.method private H(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904d9

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    .line 199
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    new-instance v2, Lcom/android/settings/gq;

    invoke-direct {v2, p0}, Lcom/android/settings/gq;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settings/gr;

    invoke-direct {v2, p0}, Lcom/android/settings/gr;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 219
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->gS()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->H(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/SettingsLicenseActivity;)Lmiui/app/ProgressDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method private gS()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    .line 225
    const v0, 0x7f0904da

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 228
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "ro.config.license_path"

    const-string v1, "/system/etc/NOTICE.html.gz"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v0, "SettingsLicenseActivity"

    const-string v1, "The system property for the license file is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->gS()V

    .line 177
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsLicenseActivity;->setVisible(Z)V

    .line 146
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    .line 148
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->setContentView(Landroid/view/View;)V

    .line 150
    new-instance v1, Lcom/android/settings/gp;

    invoke-direct {v1, p0}, Lcom/android/settings/gp;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 165
    const v1, 0x7f0904d9

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    .line 166
    const v1, 0x7f0904db

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v4}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    .line 175
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/gs;

    iget-object v3, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/gs;-><init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xl:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->xk:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 187
    :cond_1
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 188
    return-void
.end method
