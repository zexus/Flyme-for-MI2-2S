.class public Lmiui/maml/data/Expression$NumberExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberExpression"
.end annotation


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "num"    # D

    .prologue
    .line 443
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 444
    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 449
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid NumberExpression:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 467
    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 468
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 456
    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    .line 457
    return-void
.end method
