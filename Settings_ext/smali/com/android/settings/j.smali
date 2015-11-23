.class Lcom/android/settings_ext/j;
.super Landroid/widget/BaseAdapter;
.source "AccountUnlockDialog.java"


# instance fields
.field final synthetic I:Lcom/android/settings_ext/i;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/i;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->a(Lcom/android/settings_ext/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v1, Lcom/android/settings_ext/o;

    iget-object v0, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-direct {v1, v0, v3}, Lcom/android/settings_ext/o;-><init>(Lcom/android/settings_ext/i;Lcom/android/settings_ext/j;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->b(Lcom/android/settings_ext/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04006f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    const v0, 0x7f10011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings_ext/o;->K:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f10011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings_ext/o;->L:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 114
    :goto_0
    iget-object v1, v0, Lcom/android/settings_ext/o;->K:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-static {v2}, Lcom/android/settings_ext/i;->c(Lcom/android/settings_ext/i;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, v0, Lcom/android/settings_ext/o;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ext/j;->I:Lcom/android/settings_ext/i;

    invoke-static {v0}, Lcom/android/settings_ext/i;->a(Lcom/android/settings_ext/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-object p2

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/o;

    goto :goto_0
.end method
