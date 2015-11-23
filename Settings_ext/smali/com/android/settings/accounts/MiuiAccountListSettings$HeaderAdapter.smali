.class Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiAccountListSettings.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private rR:Lcom/android/settings_ext/accounts/AuthenticatorHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings_ext/accounts/AuthenticatorHelper;)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 263
    iput-object p3, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->rR:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    .line 264
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 265
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 305
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->rR:Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/accounts/AuthenticatorHelper;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_2

    .line 317
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 320
    :cond_2
    iget-object v1, p1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 272
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;

    .line 290
    :goto_0
    sget v2, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    iget-object v2, v1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 293
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    iget-object v3, v1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v3, v1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->a(Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)V

    .line 301
    return-object p2

    .line 276
    :cond_0
    new-instance v2, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;

    invoke-direct {v2}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lmiui/R$layout;->preference:I

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 280
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 282
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 284
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, v1, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
