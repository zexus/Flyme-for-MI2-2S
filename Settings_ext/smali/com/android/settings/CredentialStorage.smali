.class public final Lcom/android/settings_ext/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# instance fields
.field private final cJ:Landroid/security/KeyStore;

.field private eG:Landroid/os/Bundle;

.field private eH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/CredentialStorage;->eH:I

    .line 440
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/CredentialStorage;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings_ext/CredentialStorage;->eH:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    return-object v0
.end method

.method private a([B)Z
    .locals 2

    .prologue
    .line 202
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v0, "CredentialStorage"

    const-string v1, "Failed to parse key data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aE()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/android/settings_ext/aB;->eI:[I

    iget-object v1, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aF()V

    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v0, Lcom/android/settings_ext/aF;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ext/aF;-><init>(Lcom/android/settings_ext/CredentialStorage;Lcom/android/settings_ext/aB;)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/settings_ext/aC;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ext/aC;-><init>(Lcom/android/settings_ext/CredentialStorage;Lcom/android/settings_ext/aB;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aH()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->finish()V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private aF()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/android/settings_ext/aC;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/aC;-><init>(Lcom/android/settings_ext/CredentialStorage;Lcom/android/settings_ext/aB;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private aG()Z
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 197
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aH()V
    .locals 10

    .prologue
    const/16 v9, 0x3f2

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->eG:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->eG:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/settings_ext/CredentialStorage;->eG:Landroid/os/Bundle;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->eG:Landroid/os/Bundle;

    .line 228
    const-string v0, "install_as_uid"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 230
    const-string v0, "user_private_key_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const-string v0, "user_private_key_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    const-string v0, "user_private_key_data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 235
    if-ne v4, v9, :cond_7

    invoke-direct {p0, v6}, Lcom/android/settings_ext/CredentialStorage;->a([B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    const-string v0, "CredentialStorage"

    const-string v7, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 242
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v7, v5, v6, v4, v0}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    const-string v0, "CredentialStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 248
    :cond_1
    if-ne v4, v9, :cond_2

    .line 250
    :goto_2
    const-string v0, "user_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "user_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v5, "user_certificate_data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 254
    iget-object v6, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v6, v0, v5, v4, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_3

    .line 255
    const-string v1, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 248
    goto :goto_2

    .line 260
    :cond_3
    const-string v0, "ca_certificates_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    const-string v0, "ca_certificates_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v5, "ca_certificates_data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 264
    iget-object v6, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v6, v0, v5, v4, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    const-string v1, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :cond_4
    const-string v0, "wapi_server_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    const-string v0, "wapi_server_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "wapi_server_certificate_data"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 274
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v5, v0, v1, v4, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 275
    const-string v1, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    :cond_5
    const-string v0, "wapi_user_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    const-string v0, "wapi_user_certificate_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "wapi_user_certificate_data"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 283
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 284
    const-string v1, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 290
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/CredentialStorage;->setResult(I)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method private aI()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/android/settings_ext/ap;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/ap;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09077a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09077b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/android/settings_ext/ap;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 409
    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/CredentialStorage;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings_ext/CredentialStorage;->eH:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/CredentialStorage;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aF()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/CredentialStorage;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aE()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 420
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 421
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/settings_ext/CredentialStorage;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 125
    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    const-string v0, "com.android.credentials.RESET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/settings_ext/aD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/aD;-><init>(Lcom/android/settings_ext/CredentialStorage;Lcom/android/settings_ext/aB;)V

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "com.android.credentials.INSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/CredentialStorage;->eG:Landroid/os/Bundle;

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/CredentialStorage;->aE()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/CredentialStorage;->finish()V

    goto :goto_0
.end method
