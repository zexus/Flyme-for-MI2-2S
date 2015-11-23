.class final Lcom/google/common/collect/f;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/b;


# instance fields
.field final synthetic aAb:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/f;->aAb:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/common/collect/f;->aAb:Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    :cond_0
    return-object p1
.end method
