.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 95
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    goto :goto_0
.end method
