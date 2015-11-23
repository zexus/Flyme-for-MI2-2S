.class Lcom/android/settings/gU;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mProfileId:I

.field private final rr:Ljava/lang/String;

.field private final rs:Ljava/security/cert/X509Certificate;

.field private final ru:Landroid/net/http/SslCertificate;

.field private final rv:Ljava/lang/String;

.field private final rw:Ljava/lang/String;

.field private rx:Z

.field private final yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final yN:Lcom/android/settings/gW;

.field private final yQ:Landroid/security/IKeyChainService;


# direct methods
.method private constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/gW;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 4

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput p6, p0, Lcom/android/settings/gU;->mProfileId:I

    .line 520
    iput-object p1, p0, Lcom/android/settings/gU;->yQ:Landroid/security/IKeyChainService;

    .line 521
    iput-object p2, p0, Lcom/android/settings/gU;->yN:Lcom/android/settings/gW;

    .line 522
    iput-object p3, p0, Lcom/android/settings/gU;->yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 523
    iput-object p4, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    .line 524
    iput-object p5, p0, Lcom/android/settings/gU;->rs:Ljava/security/cert/X509Certificate;

    .line 526
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/android/settings/gU;->ru:Landroid/net/http/SslCertificate;

    .line 528
    iget-object v0, p0, Lcom/android/settings/gU;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/android/settings/gU;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/android/settings/gU;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    iput-object v1, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    .line 552
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/gU;->yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v1, p0, Lcom/android/settings/gU;->yQ:Landroid/security/IKeyChainService;

    iget-object v2, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gU;->rx:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_1
    return-void

    .line 539
    :cond_0
    iput-object v1, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    .line 540
    iput-object v2, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    iput-object v0, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/android/settings/gU;->ru:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while checking if alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is deleted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gU;->rx:Z

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/gW;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/gJ;)V
    .locals 0

    .prologue
    .line 500
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/gU;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/gW;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/gU;Z)Z
    .locals 0

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/android/settings/gU;->rx:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/gU;)Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/settings/gU;->rx:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/gU;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/gU;)Lcom/android/settings/gW;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->yN:Lcom/android/settings/gW;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/gU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/gU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/gU;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/gU;)Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/gU;->rs:Ljava/security/cert/X509Certificate;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/android/settings/gU;)I
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/gU;->rv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 561
    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/gU;->rw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 500
    check-cast p1, Lcom/android/settings/gU;

    invoke-virtual {p0, p1}, Lcom/android/settings/gU;->c(Lcom/android/settings/gU;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 567
    instance-of v0, p1, Lcom/android/settings/gU;

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    .line 570
    :cond_0
    check-cast p1, Lcom/android/settings/gU;

    .line 571
    iget-object v0, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/settings/gU;->rr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
