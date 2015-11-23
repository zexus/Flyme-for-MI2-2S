.class final Lcom/google/common/collect/x;
.super Lcom/google/common/collect/a;
.source "Iterators.java"


# instance fields
.field final synthetic aAr:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p2, p0, Lcom/google/common/collect/x;->aAr:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/x;->aAr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
