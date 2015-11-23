.class Lcom/android/settings_ext/gV;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings_ext/gW;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field private final yU:Lcom/android/settings_ext/gR;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings_ext/gV;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 361
    new-instance v0, Lcom/android/settings_ext/gR;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings_ext/gR;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gW;Lcom/android/settings_ext/gJ;)V

    iput-object v0, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ext/gV;->load()V

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gJ;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/gV;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public ab(I)Lcom/android/settings_ext/gU;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gU;

    return-object v0
.end method

.method public b(Lcom/android/settings_ext/gU;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gU;)V

    .line 367
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gV;->ab(I)Lcom/android/settings_ext/gU;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 387
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings_ext/gV;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gV;->ab(I)Lcom/android/settings_ext/gU;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v2}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 370
    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->f(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Lcom/android/settings_ext/gS;

    iget-object v1, p0, Lcom/android/settings_ext/gV;->yU:Lcom/android/settings_ext/gR;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/gS;-><init>(Lcom/android/settings_ext/gR;Lcom/android/settings_ext/gJ;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/gS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void
.end method
