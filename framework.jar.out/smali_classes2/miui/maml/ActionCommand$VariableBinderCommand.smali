.class Lmiui/maml/ActionCommand$VariableBinderCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lmiui/maml/data/VariableBinder;

.field private mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 832
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 840
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    .line 841
    const-string v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "command":Ljava/lang/String;
    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 845
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    if-eqz v0, :cond_0

    .line 855
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 857
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->refresh()V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 849
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    .line 850
    return-void
.end method
