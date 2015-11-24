.class Lcom/android/settings_ext/wifi/aE;
.super Landroid/widget/BaseAdapter;
.source "WifiShareUploadFragment.java"


# instance fields
.field final synthetic awM:Lcom/android/settings_ext/wifi/WifiShareUploadFragment;

.field private awN:Ljava/util/ArrayList;

.field private awO:Ljava/util/ArrayList;

.field private awP:Ljava/lang/String;

.field private final awQ:I

.field private final awR:I

.field private final awS:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wifi/WifiShareUploadFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aE;->awM:Lcom/android/settings_ext/wifi/WifiShareUploadFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    iput v3, p0, Lcom/android/settings_ext/wifi/aE;->awQ:I

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/aE;->awR:I

    .line 196
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/wifi/aE;->awS:I

    .line 199
    iput-object p2, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    .line 200
    iput-object p4, p0, Lcom/android/settings_ext/wifi/aE;->mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    .line 202
    const-string v0, "wifi"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 211
    iget-object v2, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->awN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f100052

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aE;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 228
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    if-eqz p2, :cond_6

    .line 231
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 248
    :goto_1
    add-int/lit8 p1, p1, -0x2

    .line 249
    if-ne v1, v2, :cond_5

    .line 250
    const/4 p2, 0x0

    move-object v1, p2

    .line 258
    :goto_2
    if-nez v1, :cond_4

    .line 259
    const v1, 0x7f040141

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 262
    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/aE;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v0, 0x7f10032e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 265
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    new-instance v1, Lcom/android/settings_ext/wifi/aF;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/wifi/aF;-><init>(Lcom/android/settings_ext/wifi/aE;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v0, 0x7f10032f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aE;->awO:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    .line 276
    :goto_6
    return-object p2

    .line 237
    :pswitch_0
    if-eq v1, v2, :cond_0

    .line 238
    const v1, 0x7f04013f

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    if-nez p1, :cond_1

    const v1, 0x7f090ca6

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_1
    const v1, 0x7f090ca7

    goto :goto_7

    .line 245
    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_2
    move v1, v4

    .line 265
    goto :goto_4

    :cond_3
    move v4, v3

    .line 273
    goto :goto_5

    :cond_4
    move-object v2, v1

    goto/16 :goto_3

    :cond_5
    move-object v1, p2

    goto/16 :goto_2

    :cond_6
    move v1, v4

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
