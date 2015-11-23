.class Lcom/android/settings_ext/et;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final rn:Lcom/android/settings_ext/eu;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/eu;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    .line 356
    iput-object p2, p0, Lcom/android/settings_ext/et;->mActivity:Landroid/app/Activity;

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/eu;Landroid/app/Activity;Lcom/android/settings_ext/es;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/et;-><init>(Lcom/android/settings_ext/eu;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/et;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 363
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    invoke-static {v2}, Lcom/android/settings_ext/eu;->b(Lcom/android/settings_ext/eu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    invoke-static {v2}, Lcom/android/settings_ext/eu;->g(Lcom/android/settings_ext/eu;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 365
    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 366
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 371
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 382
    :goto_0
    return-object v0

    .line 368
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    invoke-static {v2}, Lcom/android/settings_ext/eu;->h(Lcom/android/settings_ext/eu;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 371
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 375
    :catch_1
    move-exception v0

    .line 377
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 378
    :catch_2
    move-exception v0

    .line 379
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 380
    :catch_3
    move-exception v0

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 382
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    invoke-static {v0}, Lcom/android/settings_ext/eu;->c(Lcom/android/settings_ext/eu;)Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/et;->rn:Lcom/android/settings_ext/eu;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;ZLcom/android/settings_ext/eu;)V

    .line 387
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/et;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 351
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/et;->a(Ljava/lang/Boolean;)V

    return-void
.end method
