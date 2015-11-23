.class final Lcom/google/common/base/Equivalences$Identity;
.super Lcom/google/common/base/Equivalence;
.source "Equivalences.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final azQ:Lcom/google/common/base/Equivalences$Identity;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/base/Equivalences$Identity;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences$Identity;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalences$Identity;->azQ:Lcom/google/common/base/Equivalences$Identity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/common/base/Equivalences$Identity;->azQ:Lcom/google/common/base/Equivalences$Identity;

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected r(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
