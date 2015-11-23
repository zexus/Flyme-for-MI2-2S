.class Lcom/android/settings_ext/gX;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings_ext/gW;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field private yU:Lcom/android/settings_ext/gR;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_ext/gX;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 268
    new-instance v0, Lcom/android/settings_ext/gR;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings_ext/gR;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gW;Lcom/android/settings_ext/gJ;)V

    iput-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings_ext/gX;->load()V

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gJ;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/gX;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const v3, 0x101008c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 352
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ac(I)Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v1}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public b(Lcom/android/settings_ext/gU;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gU;)V

    .line 274
    return-void
.end method

.method public d(II)Lcom/android/settings_ext/gU;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gU;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/gX;->d(II)Lcom/android/settings_ext/gU;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 301
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/gX;->d(II)Lcom/android/settings_ext/gU;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v2}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gX;->ac(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 310
    if-nez p3, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/gX;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 313
    invoke-direct {p0, v0, p4}, Lcom/android/settings_ext/gX;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 316
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gX;->ac(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/android/settings_ext/gX;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    const v1, 0x7f09038c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 326
    return-object p3

    .line 322
    :cond_1
    const v1, 0x7f09038b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public i(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 344
    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->e(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/android/settings_ext/gS;

    iget-object v1, p0, Lcom/android/settings_ext/gX;->yU:Lcom/android/settings_ext/gR;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/gS;-><init>(Lcom/android/settings_ext/gR;Lcom/android/settings_ext/gJ;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/gS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    return-void
.end method
