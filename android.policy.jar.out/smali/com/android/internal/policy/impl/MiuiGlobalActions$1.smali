.class Lcom/android/internal/policy/impl/MiuiGlobalActions$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "airplane"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/16 v1, 0x9

    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/4 v1, 0x5

    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;I)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "reboot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :try_start_0
    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "shutdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;

    const-string v1, "ShutdownThread"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$1;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;->start()V

    goto :goto_0

    .line 129
    :cond_4
    const-string v0, "dismiss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
