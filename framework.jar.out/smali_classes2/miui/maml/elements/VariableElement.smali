.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/VariableElement$1;
    }
.end annotation


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mInited:Z

.field private mOldValue:D

.field private mOldVar:Lmiui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "expression"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    .line 58
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "index"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 59
    const-string v2, "threshold"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    .line 60
    const-string v2, "type"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    .line 61
    const-string v2, "const"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    .line 62
    const-string v2, "size"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    .line 64
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .line 65
    .local v1, "variables":Lmiui/maml/data/Variables;
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 66
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "old_value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    .line 69
    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 71
    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    if-lez v2, :cond_0

    .line 72
    sget-object v0, Lmiui/maml/data/Variables$ArrayType;->DOUBLE:Lmiui/maml/data/Variables$ArrayType;

    .line 73
    .local v0, "arrayType":Lmiui/maml/data/Variables$ArrayType;
    sget-object v2, Lmiui/maml/elements/VariableElement$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 84
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    invoke-virtual {v1, v2, v3, v0}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILmiui/maml/data/Variables$ArrayType;)Z

    .line 87
    .end local v0    # "arrayType":Lmiui/maml/data/Variables$ArrayType;
    .end local v1    # "variables":Lmiui/maml/data/Variables;
    :cond_0
    return-void

    .line 75
    .restart local v0    # "arrayType":Lmiui/maml/data/Variables$ArrayType;
    .restart local v1    # "variables":Lmiui/maml/data/Variables;
    :pswitch_0
    sget-object v0, Lmiui/maml/data/Variables$ArrayType;->DOUBLE:Lmiui/maml/data/Variables$ArrayType;

    .line 76
    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lmiui/maml/data/Variables$ArrayType;->STRING:Lmiui/maml/data/Variables$ArrayType;

    .line 79
    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lmiui/maml/data/Variables$ArrayType;->OBJECT:Lmiui/maml/data/Variables$ArrayType;

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDouble(ZI)D
    .locals 2
    .param p1, "isArray"    # Z
    .param p2, "index"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    .line 238
    :goto_0
    return-wide v0

    .line 235
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    .line 238
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p2}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method private onValueChange(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 243
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_0

    .line 244
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 246
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 247
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 248
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 249
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 251
    :cond_1
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 184
    sget-object v3, Lmiui/maml/elements/VariableElement$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v6, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v6}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "oldStr":Ljava/lang/String;
    invoke-static {v2, v1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 192
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v3}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 199
    .end local v1    # "oldStr":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v0, v6

    .line 203
    .local v0, "index":I
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v0}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "oldStr":Ljava/lang/String;
    invoke-static {v2, v1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v0, v2}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v3}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 216
    .end local v0    # "index":I
    .end local v1    # "oldStr":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, v7, v7}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v4

    .line 217
    .local v4, "value":D
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 218
    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto :goto_0

    .line 222
    .end local v4    # "value":D
    :pswitch_4
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v0, v6

    .line 224
    .restart local v0    # "index":I
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v4

    .line 225
    .restart local v4    # "value":D
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v0, v4, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 226
    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 105
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 109
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 177
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 180
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 115
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 118
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 120
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/VariableElement;->performAction(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 122
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 91
    const-string v0, "VariableAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 127
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 131
    instance-of v0, p1, Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lmiui/maml/animation/VariableAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 134
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 163
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 165
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 145
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 146
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 138
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 139
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 140
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 157
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 158
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 170
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 172
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 151
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 152
    return-void
.end method
