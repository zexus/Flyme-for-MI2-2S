.class Lcom/android/settings_ext/ev;
.super Landroid/widget/BaseAdapter;
.source "MiuiSecurityTrustedCredentials.java"


# static fields
.field private static rB:Ljava/util/WeakHashMap;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final rC:Ljava/util/List;

.field private rD:Landroid/view/View;

.field private final ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/ev;->rB:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Landroid/view/View;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/android/settings_ext/ev;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    .line 179
    iput-object p1, p0, Lcom/android/settings_ext/ev;->mActivity:Landroid/app/Activity;

    .line 180
    iput-object p3, p0, Lcom/android/settings_ext/ev;->rD:Landroid/view/View;

    .line 181
    iput-object p4, p0, Lcom/android/settings_ext/ev;->ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 183
    sget-object v0, Lcom/android/settings_ext/ev;->rB:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/settings_ext/ev;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    invoke-static {v1}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iput-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ext/ev;->load()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Landroid/view/View;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings_ext/es;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ext/ev;-><init>(Landroid/app/Activity;Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;Landroid/view/View;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/ev;)Ljava/util/List;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/ev;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings_ext/ev;->load()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/ev;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/ev;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/ev;)Lcom/android/org/conscrypt/TrustedCertificateStore;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/ev;->ro:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/ev;)Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/ev;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    return-object v0
.end method

.method static synthetic fp()Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/settings_ext/ev;->rB:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private load()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/android/settings_ext/ew;

    iget-object v1, p0, Lcom/android/settings_ext/ev;->rD:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/ew;-><init>(Lcom/android/settings_ext/ev;Landroid/view/View;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/ew;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void
.end method


# virtual methods
.method public O(I)Lcom/android/settings_ext/eu;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/eu;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/ev;->O(I)Lcom/android/settings_ext/eu;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 206
    if-nez p2, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/ev;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 208
    const v1, 0x7f040114

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    new-instance v1, Lcom/android/settings_ext/eC;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/settings_ext/eC;-><init>(Lcom/android/settings_ext/es;)V

    .line 210
    const v0, 0x7f1002a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings_ext/eC;->a(Lcom/android/settings_ext/eC;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 212
    const v0, 0x7f1002a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings_ext/eC;->b(Lcom/android/settings_ext/eC;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 214
    const v0, 0x7f1002a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v1, v0}, Lcom/android/settings_ext/eC;->a(Lcom/android/settings_ext/eC;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 215
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/ev;->rC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/eu;

    .line 220
    invoke-static {v1}, Lcom/android/settings_ext/eC;->a(Lcom/android/settings_ext/eC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings_ext/eu;->e(Lcom/android/settings_ext/eu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {v1}, Lcom/android/settings_ext/eC;->b(Lcom/android/settings_ext/eC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings_ext/eu;->f(Lcom/android/settings_ext/eu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/settings_ext/ev;->rq:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;

    invoke-static {v3}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;->c(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-static {v1}, Lcom/android/settings_ext/eC;->c(Lcom/android/settings_ext/eC;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings_ext/eu;->b(Lcom/android/settings_ext/eu;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    invoke-static {v1}, Lcom/android/settings_ext/eC;->c(Lcom/android/settings_ext/eC;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 226
    :cond_0
    return-object p2

    .line 217
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/eC;

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 223
    goto :goto_1
.end method
