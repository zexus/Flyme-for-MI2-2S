.class Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$2;
.super Landroid/service/notification/IConditionListener$Stub;
.source "ZenModeAutomaticConditionSelection.java"


# instance fields
.field final synthetic agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$2;->agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .locals 2

    .prologue
    .line 144
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$2;->agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->a(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;)Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
