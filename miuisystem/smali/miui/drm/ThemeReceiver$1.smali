.class Lmiui/drm/ThemeReceiver$1;
.super Ljava/lang/Object;
.source "ThemeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/drm/ThemeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/drm/ThemeReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/drm/ThemeReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/drm/ThemeReceiver$1;->this$0:Lmiui/drm/ThemeReceiver;

    iput-object p2, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    # getter for: Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;
    invoke-static {}, Lmiui/drm/ThemeReceiver;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "location":Ljava/lang/String;
    iget-object v3, p0, Lmiui/drm/ThemeReceiver$1;->this$0:Lmiui/drm/ThemeReceiver;

    iget-object v4, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    # getter for: Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;
    invoke-static {}, Lmiui/drm/ThemeReceiver;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # invokes: Lmiui/drm/ThemeReceiver;->validateTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v1, v2}, Lmiui/drm/ThemeReceiver;->access$100(Lmiui/drm/ThemeReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "drm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore default theme in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lmiui/content/res/ThemeRuntimeManager;

    iget-object v3, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lmiui/content/res/ThemeRuntimeManager;->restoreDefault()V

    .line 53
    .end local v1    # "location":Ljava/lang/String;
    :cond_1
    return-void
.end method
