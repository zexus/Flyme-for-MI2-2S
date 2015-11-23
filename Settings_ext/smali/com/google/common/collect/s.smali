.class public final Lcom/google/common/collect/s;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/b;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 704
    invoke-static {p0}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/google/common/collect/t;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/t;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/v;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/v;->b(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
