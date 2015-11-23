.class Lcom/xiaomi/miui/pushads/sdk/c;
.super Ljava/lang/Object;
.source "FileComparatorByLastModifier.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 23
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/c;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
