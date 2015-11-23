.class Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferredSettings.java"


# instance fields
.field private final HP:Landroid/content/pm/PackageManager;

.field private final HQ:Ljava/util/List;

.field private HR:Landroid/content/pm/ResolveInfo;

.field final synthetic HS:Lcom/android/settings_ext/applications/PreferredSettings;

.field private final mContext:Landroid/content/Context;

.field private final ta:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/applications/PreferredSettings;Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HS:Lcom/android/settings_ext/applications/PreferredSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HP:Landroid/content/pm/PackageManager;

    .line 184
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->ta:Landroid/view/LayoutInflater;

    .line 185
    iput-object p4, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HR:Landroid/content/pm/ResolveInfo;

    .line 187
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 189
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HP:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    :cond_0
    iput-object p3, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HQ:Ljava/util/List;

    .line 192
    return-void
.end method


# virtual methods
.method public aF(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public e(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HR:Landroid/content/pm/ResolveInfo;

    .line 236
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->aF(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->ta:Landroid/view/LayoutInflater;

    const v1, 0x7f0400cd

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->aF(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 216
    const v0, 0x7f1001d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 217
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HR:Landroid/content/pm/ResolveInfo;

    invoke-static {v2, v1}, Lcom/android/settings_ext/applications/PreferredSettings;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 218
    const v1, 0x7f100051

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 219
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HP:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    const v1, 0x7f100046

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 221
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HP:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 224
    const v0, 0x7f1000bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HS:Lcom/android/settings_ext/applications/PreferredSettings;

    invoke-static {v1}, Lcom/android/settings_ext/applications/PreferredSettings;->a(Lcom/android/settings_ext/applications/PreferredSettings;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "android.intent.category.HOME"

    iget-object v2, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HS:Lcom/android/settings_ext/applications/PreferredSettings;

    invoke-static {v2}, Lcom/android/settings_ext/applications/PreferredSettings;->a(Lcom/android/settings_ext/applications/PreferredSettings;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    return-object p2
.end method

.method public jv()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->HR:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
