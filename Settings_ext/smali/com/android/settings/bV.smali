.class final Lcom/android/settings/bV;
.super Lcom/android/settings/search/a;
.source "DisplaySettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 541
    const v2, 0x7f06002b

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-object v0
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .prologue
    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->b(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    const-string v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_1
    # invokes: Lcom/android/settings/DisplaySettings;->n(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$200(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_2
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 561
    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_3
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 564
    const-string v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_4
    return-object v0
.end method
