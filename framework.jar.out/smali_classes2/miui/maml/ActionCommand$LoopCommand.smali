.class Lmiui/maml/ActionCommand$LoopCommand;
.super Lmiui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lmiui/maml/data/Expression;

.field private mConditionExp:Lmiui/maml/data/Expression;

.field private mCountExp:Lmiui/maml/data/Expression;

.field private mEndExp:Lmiui/maml/data/Expression;

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1665
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1667
    const-string v2, "indexName"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "indexName":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .line 1669
    .local v1, "variables":Lmiui/maml/data/Variables;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1670
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    .line 1672
    :cond_0
    const-string v2, "begin"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    .line 1673
    const-string v2, "count"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    .line 1674
    iget-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1

    .line 1675
    const-string v2, "end"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    .line 1677
    :cond_1
    const-string v2, "loopCondition"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    .line 1678
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v5, 0x0

    .line 1682
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    if-nez v6, :cond_2

    move v0, v5

    .line 1683
    .local v0, "begin":I
    :goto_0
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_3

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 1685
    .local v2, "end":I
    :goto_1
    sub-int v5, v2, v0

    int-to-long v6, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1686
    const-string v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count is too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exceeds WARNING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    move v4, v0

    .local v4, "idx":I
    :goto_2
    if-gt v4, v2, :cond_1

    .line 1689
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_5

    .line 1699
    :cond_1
    return-void

    .line 1682
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v4    # "idx":I
    :cond_2
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0

    .line 1683
    .restart local v0    # "begin":I
    :cond_3
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    if-nez v6, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v2, v6

    goto :goto_1

    .line 1692
    .restart local v2    # "end":I
    .restart local v4    # "idx":I
    :cond_5
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_6

    .line 1693
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1695
    :cond_6
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    .line 1696
    .local v1, "command":Lmiui/maml/ActionCommand;
    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->doPerform()V

    goto :goto_3

    .line 1688
    .end local v1    # "command":Lmiui/maml/ActionCommand;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
