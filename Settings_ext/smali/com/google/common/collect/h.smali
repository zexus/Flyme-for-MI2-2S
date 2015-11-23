.class final Lcom/google/common/collect/h;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/ad;


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/google/common/collect/h;->value:Ljava/lang/Object;

    .line 252
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/R;)Lcom/google/common/collect/ad;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public a(Lcom/google/common/collect/ad;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/common/collect/h;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public wH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public wI()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public wJ()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/h;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
