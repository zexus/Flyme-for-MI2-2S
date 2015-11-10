.class Lcom/android/server/am/ActivityStackSupervisorInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisorInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ExtraActivityManagerService;->checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ass"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ExtraActivityManagerService;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static updateScreenPaperMode(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->updateScreenPaperMode(Ljava/lang/String;)V

    .line 25
    return-void
.end method
