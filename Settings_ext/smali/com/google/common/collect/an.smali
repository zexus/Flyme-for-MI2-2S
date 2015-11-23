.class Lcom/google/common/collect/an;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/b;


# instance fields
.field final aBy:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic aBz:Lcom/google/common/collect/am;


# direct methods
.method constructor <init>(Lcom/google/common/collect/am;)V
    .locals 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/collect/an;->aBz:Lcom/google/common/collect/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/an;->aBy:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/collect/an;->aBy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/common/collect/an;->C(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
