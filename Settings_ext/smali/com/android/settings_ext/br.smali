.class public Lcom/android/settings_ext/br;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public gY:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2

    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/br;->label:Ljava/lang/CharSequence;

    .line 1435
    iput-wide p2, p0, Lcom/android/settings_ext/br;->start:J

    .line 1436
    iput-wide p4, p0, Lcom/android/settings_ext/br;->gY:J

    .line 1437
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    iput-object p1, p0, Lcom/android/settings_ext/br;->label:Ljava/lang/CharSequence;

    .line 1431
    return-void
.end method


# virtual methods
.method public b(Lcom/android/settings_ext/br;)I
    .locals 4

    .prologue
    .line 1455
    iget-wide v0, p0, Lcom/android/settings_ext/br;->start:J

    iget-wide v2, p1, Lcom/android/settings_ext/br;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1424
    check-cast p1, Lcom/android/settings_ext/br;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/br;->b(Lcom/android/settings_ext/br;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1446
    instance-of v1, p1, Lcom/android/settings_ext/br;

    if-eqz v1, :cond_0

    .line 1447
    check-cast p1, Lcom/android/settings_ext/br;

    .line 1448
    iget-wide v2, p0, Lcom/android/settings_ext/br;->start:J

    iget-wide v4, p1, Lcom/android/settings_ext/br;->start:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/settings_ext/br;->gY:J

    iget-wide v4, p1, Lcom/android/settings_ext/br;->gY:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1450
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/settings_ext/br;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
