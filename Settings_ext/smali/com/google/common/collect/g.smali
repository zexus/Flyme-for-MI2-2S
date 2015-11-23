.class final Lcom/google/common/collect/g;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/ad;


# instance fields
.field final aAc:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/google/common/collect/g;->aAc:Ljava/lang/Throwable;

    .line 213
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/R;)Lcom/google/common/collect/ad;
    .locals 0

    .prologue
    .line 227
    return-object p0
.end method

.method public a(Lcom/google/common/collect/ad;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public wH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public wI()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public wJ()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/collect/g;->aAc:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
