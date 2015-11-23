.class final Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;
.super Landroid/os/Handler;
.source "ZenModeAutomaticConditionSelection.java"


# instance fields
.field final synthetic agg:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;->agg:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$1;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;-><init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;->agg:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->a([Landroid/service/notification/Condition;)V

    .line 155
    :cond_0
    return-void
.end method
