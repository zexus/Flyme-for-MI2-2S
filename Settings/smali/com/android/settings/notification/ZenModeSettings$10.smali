.class Lcom/android/settings_ext/notification/ZenModeSettings$10;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ext/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ext/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$000(Lcom/android/settings_ext/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 323
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 318
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 319
    .local v1, "sleepNone":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ext/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$100(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ext/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$100(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eq v3, v1, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ext/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$100(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 321
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    .line 322
    # getter for: Lcom/android/settings_ext/notification/ZenModeSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange sleepNone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->this$0:Lcom/android/settings_ext/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ext/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->access$300(Lcom/android/settings_ext/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0

    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "sleepNone":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    move v1, v2

    .line 318
    goto :goto_1
.end method