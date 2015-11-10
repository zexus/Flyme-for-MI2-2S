.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V

    .line 960
    return-void
.end method
