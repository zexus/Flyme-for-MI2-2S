.class final Lcom/google/common/base/Equivalences$Equals;
.super Lcom/google/common/base/Equivalence;
.source "Equivalences.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final azP:Lcom/google/common/base/Equivalences$Equals;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/common/base/Equivalences$Equals;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences$Equals;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalences$Equals;->azP:Lcom/google/common/base/Equivalences$Equals;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/common/base/Equivalences$Equals;->azP:Lcom/google/common/base/Equivalences$Equals;

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
