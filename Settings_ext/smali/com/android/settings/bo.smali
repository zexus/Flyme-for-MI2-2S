.class public Lcom/android/settings/bo;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private gQ:Z

.field private gR:Z

.field private final gS:Lcom/android/settings/bp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1490
    const v0, 0x7f040041

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1484
    iput-boolean v1, p0, Lcom/android/settings/bo;->gQ:Z

    .line 1485
    iput-boolean v1, p0, Lcom/android/settings/bo;->gR:Z

    .line 1491
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/android/settings/bo;->setDropDownViewResource(I)V

    .line 1492
    new-instance v0, Lcom/android/settings/bp;

    invoke-direct {v0, p1}, Lcom/android/settings/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bo;->gS:Lcom/android/settings/bp;

    .line 1493
    return-void
.end method

.method private bp()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/settings/bo;->gS:Lcom/android/settings/bp;

    invoke-virtual {p0, v0}, Lcom/android/settings/bo;->remove(Ljava/lang/Object;)V

    .line 1507
    iget-boolean v0, p0, Lcom/android/settings/bo;->gQ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bo;->gR:Z

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/android/settings/bo;->gS:Lcom/android/settings/bp;

    invoke-virtual {p0, v0}, Lcom/android/settings/bo;->add(Ljava/lang/Object;)V

    .line 1510
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/br;)I
    .locals 3

    .prologue
    .line 1517
    if-eqz p1, :cond_2

    .line 1518
    invoke-virtual {p0}, Lcom/android/settings/bo;->getCount()I

    move-result v0

    .line 1519
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1520
    invoke-virtual {p0, v1}, Lcom/android/settings/bo;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/br;

    .line 1521
    instance-of v2, v0, Lcom/android/settings/bp;

    if-eqz v2, :cond_1

    .line 1519
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1523
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/br;->b(Lcom/android/settings/br;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 1528
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public o(Z)V
    .locals 0

    .prologue
    .line 1496
    iput-boolean p1, p0, Lcom/android/settings/bo;->gQ:Z

    .line 1497
    invoke-direct {p0}, Lcom/android/settings/bo;->bp()V

    .line 1498
    return-void
.end method

.method public p(Z)V
    .locals 0

    .prologue
    .line 1501
    iput-boolean p1, p0, Lcom/android/settings/bo;->gR:Z

    .line 1502
    invoke-direct {p0}, Lcom/android/settings/bo;->bp()V

    .line 1503
    return-void
.end method
