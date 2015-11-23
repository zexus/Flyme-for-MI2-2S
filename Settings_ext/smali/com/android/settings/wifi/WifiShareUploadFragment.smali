.class public Lcom/android/settings/wifi/WifiShareUploadFragment;
.super Landroid/app/Fragment;
.source "WifiShareUploadFragment.java"


# instance fields
.field private awF:Landroid/widget/Button;

.field private awI:Lcom/android/settings/wifi/aE;

.field private awJ:Landroid/app/ProgressDialog;

.field private awK:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment;->br(Z)V

    return-void
.end method

.method public static bJ(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 104
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private br(Z)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/aG;->v(Landroid/content/Context;Z)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->ju()V

    goto :goto_0
.end method

.method private vL()V
    .locals 6

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/Y;->bF(Landroid/content/Context;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awK:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090cad

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dl(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareUploadFragment;->bJ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awI:Lcom/android/settings/wifi/aE;

    if-eqz v0, :cond_0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awI:Lcom/android/settings/wifi/aE;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/aE;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 58
    invoke-static {v1, v2}, Lcom/android/settings/wifi/Y;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 61
    :cond_2
    const/4 v0, 0x0

    const v2, 0x7f090ca3

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public ju()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->bK(Landroid/content/Context;)Z

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awF:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v0, 0x7f090cb6

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awF:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/wifi/aD;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/aD;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 121
    :cond_0
    const v0, 0x7f090cb4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 151
    const v0, 0x102000a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 152
    const v1, 0x7f10032a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 156
    const v2, 0x7f040140

    invoke-virtual {v6, v2, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awK:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awK:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->vL()V

    .line 160
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/wifi/Y;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 162
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awK:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const v2, 0x7f04013e

    invoke-virtual {v6, v2, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 168
    new-instance v1, Lcom/android/settings/wifi/aE;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v8, v7, v3}, Lcom/android/settings/wifi/aE;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awI:Lcom/android/settings/wifi/aE;

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awI:Lcom/android/settings/wifi/aE;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    const v0, 0x7f100328

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awF:Landroid/widget/Button;

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->ju()V

    .line 178
    return-void

    :cond_1
    move v2, v4

    .line 162
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    const v0, 0x7f10032b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awF:Landroid/widget/Button;

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awF:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->awJ:Landroid/app/ProgressDialog;

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 117
    return-void
.end method
