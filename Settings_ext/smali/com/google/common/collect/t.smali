.class final Lcom/google/common/collect/t;
.super Lcom/google/common/collect/u;
.source "Iterables.java"


# instance fields
.field final synthetic aAn:Ljava/lang/Iterable;

.field final synthetic aAo:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/google/common/collect/t;->aAn:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/t;->aAo:Lcom/google/common/base/b;

    invoke-direct {p0}, Lcom/google/common/collect/u;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/common/collect/t;->aAn:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/t;->aAo:Lcom/google/common/base/b;

    invoke-static {v0, v1}, Lcom/google/common/collect/v;->a(Ljava/util/Iterator;Lcom/google/common/base/b;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
