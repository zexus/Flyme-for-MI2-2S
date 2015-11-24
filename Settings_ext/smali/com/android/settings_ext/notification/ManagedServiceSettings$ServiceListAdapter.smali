.class Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManagedServiceSettings.java"


# instance fields
.field final synthetic aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

.field final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ManagedServiceSettings;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    iput-object p1, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    .line 290
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 291
    invoke-virtual {p1}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 293
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;

    .line 327
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 331
    iget-object v2, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-virtual {v3}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v4}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->e(Lcom/android/settings_ext/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v6, 0x927c0

    invoke-static {v3, v1, v4, v6, v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v2, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jC:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v3}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->e(Lcom/android/settings_ext/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jE:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jD:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v2, v1}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->a(Lcom/android/settings_ext/notification/ManagedServiceSettings;Landroid/content/pm/ServiceInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    return-void
.end method

.method public e(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    new-instance v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;-><init>(Lcom/android/settings_ext/notification/ManagedServiceSettings$1;)V

    .line 317
    const v0, 0x7f100051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 318
    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jC:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f1000b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jD:Landroid/widget/CheckBox;

    .line 320
    const v0, 0x7f1000b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ViewHolder;->jE:Landroid/widget/TextView;

    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 300
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 305
    if-nez p2, :cond_0

    .line 306
    invoke-virtual {p0, p3}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 310
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ServiceListAdapter;->c(Landroid/view/View;I)V

    .line 311
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method
