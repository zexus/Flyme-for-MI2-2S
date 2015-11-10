.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lmiui/maml/util/IntentInfo;

.field private mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 871
    sget-object v3, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 882
    new-instance v3, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    .line 883
    const-string v3, "broadcast"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 884
    .local v1, "isBroadcast":Z
    const-string v3, "type"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "intentType":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v3, "broadcast"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 886
    :cond_0
    sget-object v3, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 892
    :cond_1
    :goto_0
    const-string v3, "flags"

    const/4 v4, -0x1

    invoke-static {p2, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 895
    const-string v3, "Fallback"

    invoke-static {p2, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 896
    .local v2, "node":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_2

    .line 897
    new-instance v3, Lmiui/maml/CommandTrigger;

    invoke-direct {v3, v2, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    .line 899
    :cond_2
    return-void

    .line 887
    .end local v2    # "node":Lorg/w3c/dom/Element;
    :cond_3
    const-string v3, "service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 888
    sget-object v3, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0

    .line 889
    :cond_4
    const-string v3, "activity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    sget-object v3, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 951
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 952
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 954
    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 956
    :pswitch_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_1

    .line 967
    const-string v1, "ActionCommand"

    const-string v2, "fail to send Intent, fallback..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 962
    :pswitch_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 970
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "ActionCommand"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 933
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 903
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 906
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    .line 910
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    :cond_1
    :goto_0
    return-void

    .line 914
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 915
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 917
    iget v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 918
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 923
    :cond_3
    :goto_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_0

    .line 919
    :cond_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v2, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v1, v2, :cond_3

    .line 920
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 940
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 947
    :cond_0
    return-void
.end method
