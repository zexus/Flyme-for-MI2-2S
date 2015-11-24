.class Lcom/android/settings_ext/dndmode/A;
.super Landroid/preference/Preference;
.source "VipCallSettingsFragment.java"


# instance fields
.field private Tw:J

.field final synthetic Xs:Lcom/android/settings_ext/dndmode/u;

.field private Xw:Landroid/widget/ImageView;

.field private Xx:Lcom/android/settings_ext/dndmode/C;

.field private mContext:Landroid/content/Context;

.field mD:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/dndmode/u;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/A;->Xs:Lcom/android/settings_ext/dndmode/u;

    .line 348
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 380
    new-instance v0, Lcom/android/settings_ext/dndmode/B;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dndmode/B;-><init>(Lcom/android/settings_ext/dndmode/A;)V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/A;->mD:Landroid/view/View$OnClickListener;

    .line 349
    iput-object p2, p0, Lcom/android/settings_ext/dndmode/A;->mContext:Landroid/content/Context;

    .line 350
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/A;->setLayoutResource(I)V

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/A;)Lcom/android/settings_ext/dndmode/C;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/A;->Xx:Lcom/android/settings_ext/dndmode/C;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/dndmode/A;)J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/settings_ext/dndmode/A;->Tw:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/dndmode/C;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/A;->Xx:Lcom/android/settings_ext/dndmode/C;

    .line 390
    return-void
.end method

.method public d(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 355
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    iput-wide v0, p0, Lcom/android/settings_ext/dndmode/A;->Tw:J

    .line 357
    const/4 v0, 0x0

    .line 358
    # getter for: Lcom/android/settings_ext/dndmode/u;->Xk:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings_ext/dndmode/u;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    # getter for: Lcom/android/settings_ext/dndmode/u;->Xk:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings_ext/dndmode/u;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/dndmode/A;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/A;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/dndmode/A;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 373
    const v0, 0x7f100370

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/A;->Xw:Landroid/widget/ImageView;

    .line 374
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/A;->Xw:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/A;->Xw:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/A;->Xw:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/A;->mD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-object v1
.end method
