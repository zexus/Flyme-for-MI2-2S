.class public Lmiui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .locals 8
    .param p1, "c"    # C
    .param p2, "start"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 62
    if-eqz p2, :cond_1

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 64
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v4, v5, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iput v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 67
    iput v7, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 69
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 70
    .local v2, "match":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 71
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v5, v5, v1

    if-ne v5, v7, :cond_3

    .line 70
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_3
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v1

    .line 75
    .local v3, "ope":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v5, v6, :cond_5

    iget v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_5

    .line 76
    iget v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 77
    .local v0, "end":Z
    :goto_3
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v4, v5, v1

    .line 78
    const/4 v2, 0x1

    .line 79
    if-eqz v0, :cond_2

    .line 80
    iput v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    goto :goto_2

    .end local v0    # "end":Z
    :cond_4
    move v0, v4

    .line 76
    goto :goto_3

    .line 83
    :cond_5
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v7, v5, v1

    goto :goto_2

    .line 86
    .end local v3    # "ope":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 87
    iget v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 89
    :cond_7
    return v2
.end method

.method public getMatch()Lmiui/maml/data/Expression$Ope;
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    iget v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object v0, v0, v1

    goto :goto_0
.end method
