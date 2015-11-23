.class Lcom/android/settings/gR;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field final synthetic yE:Lcom/android/settings/TrustedCredentialsSettings;

.field private final yL:Landroid/util/SparseArray;

.field private final yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final yN:Lcom/android/settings/gW;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/gW;)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings/gR;->yE:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gR;->yL:Landroid/util/SparseArray;

    .line 401
    iput-object p3, p0, Lcom/android/settings/gR;->yN:Lcom/android/settings/gW;

    .line 402
    iput-object p2, p0, Lcom/android/settings/gR;->yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/gW;Lcom/android/settings/gJ;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/gR;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/gW;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/gR;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/gR;->yL:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/gR;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/gR;->yM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/gR;)Lcom/android/settings/gW;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/gR;->yN:Lcom/android/settings/gW;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings/gU;)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings/gR;->yL:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/gR;->yL:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings/gU;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    return-void
.end method
