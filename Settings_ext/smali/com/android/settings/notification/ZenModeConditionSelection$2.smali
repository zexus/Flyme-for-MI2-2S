.class Lcom/android/settings/notification/ZenModeConditionSelection$2;
.super Landroid/service/notification/IConditionListener$Stub;
.source "ZenModeConditionSelection.java"


# instance fields
.field final synthetic agl:Lcom/android/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$2;->agl:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .locals 2

    .prologue
    .line 143
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection$2;->agl:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->a(Lcom/android/settings/notification/ZenModeConditionSelection;)Lcom/android/settings/notification/ZenModeConditionSelection$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeConditionSelection$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
