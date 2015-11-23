.class Lcom/android/settings_ext/eu;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final rp:Lcom/android/settings_ext/ev;

.field private final rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

.field private final rr:Ljava/lang/String;

.field private final rs:Ljava/security/cert/X509Certificate;

.field private final ru:Landroid/net/http/SslCertificate;

.field private final rv:Ljava/lang/String;

.field private final rw:Ljava/lang/String;

.field private rx:Z


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings_ext/ev;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/android/settings_ext/eu;->ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 294
    iput-object p2, p0, Lcom/android/settings_ext/eu;->rp:Lcom/android/settings_ext/ev;

    .line 295
    iput-object p3, p0, Lcom/android/settings_ext/eu;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    .line 296
    iput-object p4, p0, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lcom/android/settings_ext/eu;->rs:Ljava/security/cert/X509Certificate;

    .line 299
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    .line 301
    iget-object v0, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    iput-object v1, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    .line 324
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    iget-object v1, p0, Lcom/android/settings_ext/eu;->ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iget-object v2, p0, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/eu;->rx:Z

    .line 325
    return-void

    .line 312
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    .line 313
    iput-object v2, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    iput-object v0, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings_ext/ev;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings_ext/es;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ext/eu;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings_ext/ev;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/eu;Z)Z
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/settings_ext/eu;->rx:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/eu;)Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/settings_ext/eu;->rx:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/eu;)Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/eu;)Lcom/android/settings_ext/ev;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rp:Lcom/android/settings_ext/ev;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/eu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/eu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/eu;)Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rs:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/eu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/eu;)Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/eu;->ru:Landroid/net/http/SslCertificate;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/eu;)I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ext/eu;->rv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 328
    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ext/eu;->rw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lcom/android/settings_ext/eu;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/eu;->a(Lcom/android/settings_ext/eu;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 334
    instance-of v0, p1, Lcom/android/settings_ext/eu;

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    .line 337
    :cond_0
    check-cast p1, Lcom/android/settings_ext/eu;

    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/eu;->rr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
