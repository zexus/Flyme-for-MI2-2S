.class abstract Lmiui/maml/ActionCommand$TargetCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation


# instance fields
.field protected mTargetArray:Lmiui/maml/elements/ElementGroup;

.field protected mTargetElement:Lmiui/maml/elements/ScreenElement;

.field protected mTargetIndex:Lmiui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1261
    const-string v0, "target"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1262
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "targetIndex"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    .line 1263
    return-void
.end method


# virtual methods
.method protected getTarget()Lmiui/maml/elements/ScreenElement;
    .locals 4

    .prologue
    .line 1288
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    .line 1289
    .local v0, "target":Lmiui/maml/elements/ScreenElement;
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1290
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetArray:Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1292
    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 1267
    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    .line 1268
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    const-string v0, "ActionCommand"

    const-string v1, "AnimationCommand, empty target name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 1273
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    .line 1274
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_2

    .line 1275
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find AnimationCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/ElementGroup;->isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1278
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    check-cast v0, Lmiui/maml/elements/ElementGroup;

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetArray:Lmiui/maml/elements/ElementGroup;

    goto :goto_0

    .line 1280
    :cond_3
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimationCommand target with index is not an ArrayGroup, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    goto :goto_0
.end method
