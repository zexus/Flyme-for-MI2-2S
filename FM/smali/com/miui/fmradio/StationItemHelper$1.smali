.class final Lcom/miui/fmradio/StationItemHelper$1;
.super Ljava/lang/Object;
.source "StationItemHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/StationItemHelper;->sortByFrequency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/fmradio/StationItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/fmradio/StationItem;Lcom/miui/fmradio/StationItem;)I
    .locals 7
    .param p1, "lhs"    # Lcom/miui/fmradio/StationItem;
    .param p2, "rhs"    # Lcom/miui/fmradio/StationItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    iget v5, p1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 179
    .local v0, "favor1":I
    :goto_0
    iget v5, p2, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 180
    .local v1, "favor2":I
    :goto_1
    sub-int v2, v1, v0

    .line 181
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 182
    iget v5, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    iget v6, p2, Lcom/miui/fmradio/StationItem;->frequency:I

    sub-int v2, v5, v6

    .line 184
    :cond_0
    if-lez v2, :cond_3

    :goto_2
    return v3

    .end local v0    # "favor1":I
    .end local v1    # "favor2":I
    .end local v2    # "result":I
    :cond_1
    move v0, v4

    .line 178
    goto :goto_0

    .restart local v0    # "favor1":I
    :cond_2
    move v1, v4

    .line 179
    goto :goto_1

    .line 184
    .restart local v1    # "favor2":I
    .restart local v2    # "result":I
    :cond_3
    if-gez v2, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lcom/miui/fmradio/StationItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/miui/fmradio/StationItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/StationItemHelper$1;->compare(Lcom/miui/fmradio/StationItem;Lcom/miui/fmradio/StationItem;)I

    move-result v0

    return v0
.end method
