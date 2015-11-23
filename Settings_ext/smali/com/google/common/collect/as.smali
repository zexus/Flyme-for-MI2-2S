.class final Lcom/google/common/collect/as;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Lcom/google/common/base/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ax;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/google/common/collect/ax;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/google/common/collect/ax;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/as;->a(Lcom/google/common/collect/ax;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
