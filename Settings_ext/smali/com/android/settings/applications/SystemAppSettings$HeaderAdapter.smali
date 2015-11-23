.class public Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SystemAppSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 159
    iput-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 160
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 186
    if-eqz p2, :cond_4

    .line 188
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;

    move-object v2, v1

    move-object v1, p2

    .line 191
    :goto_0
    if-nez p2, :cond_3

    .line 192
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 193
    sget v1, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    new-instance v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;

    invoke-direct {v3}, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;-><init>()V

    .line 195
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    .line 196
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 197
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_0

    .line 199
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    :goto_1
    const-string v1, "system_app"

    iget-object v4, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 205
    # getter for: Lcom/android/settings/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/applications/SystemAppSettings;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 206
    if-eqz v1, :cond_2

    const-string v4, "system_app"

    iget-object v5, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    iget-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 208
    iget v1, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 214
    :cond_1
    :goto_2
    iget-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    return-object v2

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/SystemAppSettings;->b(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_2

    :cond_3
    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method
