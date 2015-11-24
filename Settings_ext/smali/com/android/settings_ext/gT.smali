.class Lcom/android/settings_ext/gT;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field private final yP:Lcom/android/settings_ext/gU;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/settings_ext/gT;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 726
    iput-object p2, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    .line 727
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Lcom/android/settings_ext/gJ;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/gT;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/gT;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->c(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    iget v1, v1, Lcom/android/settings_ext/gU;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    .line 734
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v1}, Lcom/android/settings_ext/gU;->d(Lcom/android/settings_ext/gU;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v1}, Lcom/android/settings_ext/gU;->j(Lcom/android/settings_ext/gU;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 737
    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 738
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v1}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while toggling alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v3}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 746
    :catch_1
    move-exception v0

    .line 748
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while toggling alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v3}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 750
    :catch_2
    move-exception v0

    .line 751
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while toggling alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v3}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v0}, Lcom/android/settings_ext/gU;->e(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/gT;->yP:Lcom/android/settings_ext/gU;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;ZLcom/android/settings_ext/gU;)V

    .line 759
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 722
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gT;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 722
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gT;->a(Ljava/lang/Boolean;)V

    return-void
.end method
