.class abstract Lcom/google/common/collect/ar;
.super Lcom/google/common/collect/r;
.source "RegularImmutableTable.java"


# static fields
.field private static final aBL:Lcom/google/common/base/b;


# instance fields
.field private final aBK:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/common/collect/as;

    invoke-direct {v0}, Lcom/google/common/collect/as;-><init>()V

    sput-object v0, Lcom/google/common/collect/ar;->aBL:Lcom/google/common/base/b;

    return-void
.end method


# virtual methods
.method public final xd()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ar;->aBK:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public synthetic xf()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ar;->xd()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
