.class public Lcom/android/settings/SettingsSafetyLegalActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsSafetyLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private xj:Landroid/webkit/WebView;

.field private xy:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    return-void
.end method

.method private L(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904de

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsSafetyLegalActivity;->L(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "ro.url.safetylegal"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 53
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v3, "locale=%s-%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "%s&%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    .line 63
    iget-object v1, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/gw;

    invoke-direct {v1, p0}, Lcom/android/settings/gw;-><init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 84
    const v1, 0x7f0904df

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 85
    iget-object v1, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 86
    iput-boolean v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->setupAlert()V

    .line 88
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xy:Landroid/app/AlertDialog;

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->xj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 141
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
