.class public Lcom/android/settings/eD;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private rX:Ljava/util/HashMap;

.field private rY:Ljava/util/HashMap;

.field private rZ:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private sa:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 579
    iput-object p3, p0, Lcom/android/settings/eD;->rZ:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 580
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/eD;->mInflater:Landroid/view/LayoutInflater;

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    .line 582
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f10037d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dq;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/dq;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_0
    iput-boolean p4, p0, Lcom/android/settings/eD;->sa:Z

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    .line 588
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f100357

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/aH;

    invoke-direct {v2, p1, v4}, Lcom/android/settings/wifi/aH;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f100353

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothStatusController;

    invoke-direct {v2, p1, v4}, Lcom/android/settings/bluetooth/BluetoothStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f100375

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/XiaomiAccountStatusController;

    invoke-direct {v2, p1, v4}, Lcom/android/settings/accounts/XiaomiAccountStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f100371

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/j;

    invoke-direct {v2, p1, v4}, Lcom/android/settings/display/j;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f100381

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/v;

    invoke-direct {v2, p1, v4}, Lcom/android/settings/display/v;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-void
.end method

.method private a(Lcom/android/settings/eE;Landroid/preference/PreferenceActivity$Header;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 737
    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-wide v2, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10037c

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100377

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 741
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/df;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/eK;->z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 743
    :goto_1
    iget-object v1, p1, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 744
    iget-object v1, p1, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 741
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 748
    :cond_4
    iget-object v1, p1, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 749
    iget-object v1, p1, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 751
    :cond_5
    iget-object v1, p1, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p1, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2

    .prologue
    .line 528
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    .line 530
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/eD;->j(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x4

    goto :goto_0

    .line 532
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/eD;->k(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    const/4 v0, 0x3

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "header_update"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    const/4 v0, 0x2

    goto :goto_0

    .line 537
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 724
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 726
    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 730
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 731
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 734
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/settings/eE;Landroid/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 758
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string v1, "com.xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    iget-object v0, p1, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/android/settings/eD;->rZ:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 771
    iget-object v1, p1, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 774
    :cond_3
    iget v0, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p1, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    iget v1, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/android/settings/eD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 554
    invoke-direct {p0, v0}, Lcom/android/settings/eD;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const v8, 0x1020010

    const v7, 0x1020006

    const v6, 0x1020016

    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 597
    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/settings/eD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 599
    invoke-direct {p0, v0}, Lcom/android/settings/eD;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 600
    const/4 v1, 0x0

    .line 602
    if-eqz p2, :cond_0

    .line 604
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/eE;

    move-object v2, v1

    move-object v1, p2

    .line 606
    :cond_0
    if-nez p2, :cond_b

    .line 607
    new-instance v4, Lcom/android/settings/eE;

    invoke-direct {v4}, Lcom/android/settings/eE;-><init>()V

    .line 608
    packed-switch v5, :pswitch_data_0

    .line 650
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 654
    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 711
    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/eD;->b(Lcom/android/settings/eE;Landroid/preference/PreferenceActivity$Header;)V

    .line 712
    invoke-direct {p0, v4, v0}, Lcom/android/settings/eD;->a(Lcom/android/settings/eE;Landroid/preference/PreferenceActivity$Header;)V

    .line 713
    return-object v2

    .line 610
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/eD;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->preference_category:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 611
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    move-object v1, v2

    .line 612
    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/eD;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 618
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    .line 619
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    .line 621
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    .line 623
    const v1, 0x1020018

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 624
    iget-object v6, p0, Lcom/android/settings/eD;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400b4

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 625
    const v6, 0x7f1001b8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, v4, Lcom/android/settings/eE;->sb:Lmiui/widget/SlidingButton;

    .line 626
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 627
    if-eqz v1, :cond_2

    .line 628
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/eD;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 638
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_1

    .line 639
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_1
    const v1, 0x1020018

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    .line 643
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    .line 645
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    .line 647
    sget v1, Lmiui/R$id;->value_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/android/settings/eE;->sc:Landroid/widget/TextView;

    :cond_2
    move-object v1, v2

    goto/16 :goto_0

    .line 656
    :pswitch_3
    iget-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    const v1, 0x7f020204

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 660
    :cond_3
    sget v1, Lmiui/R$drawable;->preference_category_background:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 666
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/V;

    .line 667
    if-eqz v1, :cond_4

    .line 668
    iget-object v6, v4, Lcom/android/settings/eE;->sb:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v6}, Lcom/android/settings/V;->a(Lmiui/widget/SlidingButton;)V

    .line 669
    iget-object v6, v4, Lcom/android/settings/eE;->sb:Lmiui/widget/SlidingButton;

    invoke-virtual {v6, v1}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    .line 675
    :cond_4
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/Z;

    .line 676
    if-eqz v1, :cond_5

    .line 677
    iget-object v6, v4, Lcom/android/settings/eE;->sc:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lcom/android/settings/Z;->a(Landroid/widget/TextView;)V

    .line 678
    iget-object v6, v4, Lcom/android/settings/eE;->sc:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 681
    :cond_5
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 682
    const-string v6, "system_app"

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 683
    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 684
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "."

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 685
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 689
    :cond_6
    :pswitch_7
    sget v1, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 690
    iget-object v1, v4, Lcom/android/settings/eE;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/eD;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 692
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 693
    iget-object v6, v4, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v6, v4, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :goto_3
    const/4 v1, 0x2

    if-ne v5, v1, :cond_7

    .line 701
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 702
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "header_update"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 704
    :goto_4
    iget-object v3, v4, Lcom/android/settings/eE;->icon:Landroid/widget/ImageView;

    if-gtz v1, :cond_9

    const v1, 0x7f020161

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/eD;->b(Landroid/view/View;)V

    goto/16 :goto_2

    .line 696
    :cond_8
    iget-object v1, v4, Lcom/android/settings/eE;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 704
    :cond_9
    const v1, 0x7f020162

    goto :goto_5

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move-object v4, v2

    move-object v2, v1

    goto/16 :goto_1

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 654
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/settings/eD;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(J)Z
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 543
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k(J)Z
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 548
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 794
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/V;

    .line 795
    invoke-virtual {v0}, Lcom/android/settings/V;->pause()V

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 799
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Z;

    .line 800
    invoke-virtual {v0}, Lcom/android/settings/Z;->pause()V

    goto :goto_1

    .line 802
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/settings/eD;->rX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/V;

    .line 783
    invoke-virtual {v0}, Lcom/android/settings/V;->resume()V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eD;->rY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Z;

    .line 788
    invoke-virtual {v0}, Lcom/android/settings/Z;->resume()V

    goto :goto_1

    .line 790
    :cond_1
    return-void
.end method
