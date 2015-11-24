.class Lcom/android/settings_ext/gR;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field private final yL:Landroid/util/SparseArray;

.field private final yM:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

.field private final yN:Lcom/android/settings_ext/gW;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gW;)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/gR;->yL:Landroid/util/SparseArray;

    .line 401
    iput-object p3, p0, Lcom/android/settings_ext/gR;->yN:Lcom/android/settings_ext/gW;

    .line 402
    iput-object p2, p0, Lcom/android/settings_ext/gR;->yM:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gW;Lcom/android/settings_ext/gJ;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/gR;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gW;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings_ext/gR;->yL:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings_ext/gR;->yM:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/gW;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings_ext/gR;->yN:Lcom/android/settings_ext/gW;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings_ext/gU;)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings_ext/gR;->yL:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings_ext/gR;->yL:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings_ext/gU;->mProfileId:I

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
