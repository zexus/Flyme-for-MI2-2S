.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "RegularImmutableMap.java"

# interfaces
.implements Lcom/google/common/collect/ap;


# instance fields
.field final next:Lcom/google/common/collect/ap;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ap;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/ap;

    .line 118
    return-void
.end method


# virtual methods
.method public yi()Lcom/google/common/collect/ap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/ap;

    return-object v0
.end method
