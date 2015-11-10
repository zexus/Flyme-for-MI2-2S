.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 758
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 759
    const-string v0, "persist"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 760
    const-string v0, "requestUpdate"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 762
    const-string v0, "type"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    .line 763
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 768
    :goto_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    .line 769
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 770
    const-string v0, "ActionCommand"

    const-string v1, "invalid expression in VariableAssignmentCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v0}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "index"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 774
    return-void

    .line 766
    :cond_1
    const-string v0, "ActionCommand"

    const-string v1, "empty name in VariableAssignmentCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    .line 778
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v6, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    .line 783
    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    sget-object v6, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v7, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v7}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 822
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v6, :cond_0

    .line 823
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 786
    :pswitch_0
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    .line 787
    .local v4, "v":D
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v6, :cond_3

    .line 788
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 789
    iget-boolean v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v6, :cond_2

    invoke-virtual {v2, v8}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 790
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 792
    :cond_3
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v7, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v7, v8

    invoke-virtual {v6, v7, v4, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_1

    .line 797
    .end local v4    # "v":D
    :pswitch_1
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "str":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v6, :cond_4

    .line 799
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 800
    iget-boolean v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v6, :cond_2

    invoke-virtual {v2, v8}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 801
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 803
    :cond_4
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v7, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v7, v8

    invoke-virtual {v6, v7, v3}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_1

    .line 809
    .end local v3    # "str":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    .line 810
    .local v1, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 812
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v6, v0}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 814
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v6, :cond_6

    .line 815
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 817
    :cond_6
    iget-object v6, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v7, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v7, v8

    invoke-virtual {v6, v7, v1}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
