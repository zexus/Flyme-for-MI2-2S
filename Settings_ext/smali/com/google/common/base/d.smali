.class Lcom/google/common/base/d;
.super Lcom/google/common/base/c;
.source "Joiner.java"


# instance fields
.field final synthetic azR:Ljava/lang/String;

.field final synthetic azS:Lcom/google/common/base/c;


# virtual methods
.method t(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/common/base/d;->azR:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/d;->azS:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->t(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
