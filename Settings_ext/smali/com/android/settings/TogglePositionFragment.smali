.class public Lcom/android/settings/TogglePositionFragment;
.super Lcom/android/settings/BaseFragment;
.source "TogglePositionFragment.java"


# instance fields
.field private yu:Ljava/util/List;

.field private yv:Lcom/android/settings/toggleposition/DragGridView;

.field private yw:I

.field private yx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TogglePositionFragment;->yu:Ljava/util/List;

    return-void
.end method

.method private hh()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/TogglePositionFragment;->yv:Lcom/android/settings/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/settings/TogglePositionFragment;->yx:I

    invoke-virtual {v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->setNumColumns(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TogglePositionFragment;->yv:Lcom/android/settings/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/settings/TogglePositionFragment;->yw:I

    invoke-virtual {v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->setNumColumns(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/TogglePositionFragment;->hh()V

    .line 84
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    const v0, 0x7f04010d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 45
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 48
    :cond_0
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 54
    const v0, 0x7f080007

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 56
    :goto_0
    const v0, 0x7f10029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/toggleposition/DragGridView;

    iput-object v0, p0, Lcom/android/settings/TogglePositionFragment;->yv:Lcom/android/settings/toggleposition/DragGridView;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v2}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 61
    if-eqz v1, :cond_0

    .line 62
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    :cond_0
    const-string v7, "item_image"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v6, "item_text"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v6, "item_id"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/settings/TogglePositionFragment;->yu:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v0

    .line 55
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/TogglePositionFragment;->yw:I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/TogglePositionFragment;->yx:I

    .line 75
    new-instance v0, Lcom/android/settings/toggleposition/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TogglePositionFragment;->yu:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/toggleposition/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/TogglePositionFragment;->yv:Lcom/android/settings/toggleposition/DragGridView;

    invoke-virtual {v1, v0}, Lcom/android/settings/toggleposition/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/TogglePositionFragment;->hh()V

    .line 78
    return-void
.end method
