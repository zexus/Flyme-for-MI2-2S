.class Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# instance fields
.field private adM:Landroid/view/View$OnClickListener;

.field private alK:Z

.field private alL:Ljava/util/ArrayList;

.field private alM:Z

.field private alN:Z

.field private mChildren:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 166
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 167
    iput-object p2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->adM:Landroid/view/View$OnClickListener;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->aL(Z)V

    return-void
.end method

.method private aL(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alK:Z

    .line 172
    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->adM:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alK:Z

    return v0
.end method

.method static synthetic f(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method aM(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alN:Z

    .line 180
    return-void
.end method

.method aN(Z)V
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alM:Z

    .line 206
    return-void
.end method

.method f(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alL:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alN:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 216
    const v0, 0x7f10019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 217
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alK:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v0, 0x7f10019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alK:Z

    if-eqz v5, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->adM:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->adM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 229
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 232
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 234
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 235
    new-instance v1, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 217
    goto :goto_0

    :cond_4
    move v2, v1

    .line 228
    goto :goto_1
.end method

.method sq()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alL:Ljava/util/ArrayList;

    return-object v0
.end method

.method sr()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->alM:Z

    return v0
.end method
