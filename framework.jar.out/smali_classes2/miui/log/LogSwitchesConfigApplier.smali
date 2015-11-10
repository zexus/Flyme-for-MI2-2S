.class public final Lmiui/log/LogSwitchesConfigApplier;
.super Ljava/lang/Object;
.source "LogSwitchesConfigApplier.java"


# instance fields
.field private final logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private programName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method private applyLogSwitch(Lmiui/log/LogSwitch;)V
    .locals 1
    .param p1, "logSwitch"    # Lmiui/log/LogSwitch;

    .prologue
    .line 113
    iget-boolean v0, p1, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOn(Lmiui/log/LogSwitch;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOff(Lmiui/log/LogSwitch;)V

    goto :goto_0
.end method

.method private applyLogSwitchesOfCurrentApp(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "newLogSwitchesConfigOfCurrentApp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    .line 89
    .local v2, "logSwitch":Lmiui/log/LogSwitch;
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v6, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    .line 90
    .local v0, "existing":Lmiui/log/LogSwitch;
    if-nez v0, :cond_1

    .line 91
    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitch(Lmiui/log/LogSwitch;)V

    .line 92
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v6, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_1
    iget-boolean v5, v0, Lmiui/log/LogSwitch;->isOn:Z

    iget-boolean v6, v2, Lmiui/log/LogSwitch;->isOn:Z

    if-eq v5, v6, :cond_0

    .line 94
    invoke-direct {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V

    .line 95
    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitch(Lmiui/log/LogSwitch;)V

    .line 96
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v6, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v6, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    .end local v0    # "existing":Lmiui/log/LogSwitch;
    .end local v2    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v4, "toBeReverted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/log/LogSwitch;>;"
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    .line 102
    .restart local v0    # "existing":Lmiui/log/LogSwitch;
    iget-object v5, v0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 103
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v0    # "existing":Lmiui/log/LogSwitch;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    .line 107
    .restart local v2    # "logSwitch":Lmiui/log/LogSwitch;
    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V

    .line 108
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v6, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    .end local v2    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_5
    return-void
.end method

.method private checkTargetApp(Lmiui/log/AppLogSwitches;)Z
    .locals 3
    .param p1, "appConfig"    # Lmiui/log/AppLogSwitches;

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-boolean v1, p1, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p1, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :cond_2
    iget-object v1, p1, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized clearAllOnLogs()V
    .locals 3

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    .line 69
    .local v1, "logSwitch":Lmiui/log/LogSwitch;
    invoke-direct {p0, v1}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "logSwitch":Lmiui/log/LogSwitch;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void
.end method

.method private revertLogSwitch(Lmiui/log/LogSwitch;)V
    .locals 1
    .param p1, "logSwitch"    # Lmiui/log/LogSwitch;

    .prologue
    .line 121
    iget-boolean v0, p1, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOff(Lmiui/log/LogSwitch;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOn(Lmiui/log/LogSwitch;)V

    goto :goto_0
.end method

.method private switchOff(Lmiui/log/LogSwitch;)V
    .locals 1
    .param p1, "logSwitch"    # Lmiui/log/LogSwitch;

    .prologue
    .line 143
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffTagGroup(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffMiuiTag(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffAndroidTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchOn(Lmiui/log/LogSwitch;)V
    .locals 1
    .param p1, "logSwitch"    # Lmiui/log/LogSwitch;

    .prologue
    .line 129
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnTagGroup(Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnMiuiTag(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnAndroidTag(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized apply(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "configFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lmiui/log/LogSwitchesConfigParser;->parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 32
    .local v0, "logSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigApplier;->clearAllOnLogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    return-object v0

    .line 35
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0    # "logSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized apply(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "logSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, "appLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    const/4 v3, 0x0

    .line 43
    .local v3, "targetedAllAppsConfig":Lmiui/log/AppLogSwitches;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .line 44
    .local v0, "appConfig":Lmiui/log/AppLogSwitches;
    iget-boolean v4, v0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v4, :cond_0

    .line 46
    move-object v3, v0

    .line 50
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    :cond_1
    if-eqz v3, :cond_2

    .line 51
    iget-object v4, v3, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .line 54
    .restart local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    iget-boolean v4, v0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-nez v4, :cond_3

    .line 56
    invoke-direct {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->checkTargetApp(Lmiui/log/AppLogSwitches;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    iget-object v4, v0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v1    # "appLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "targetedAllAppsConfig":Lmiui/log/AppLogSwitches;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 60
    .restart local v1    # "appLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "targetedAllAppsConfig":Lmiui/log/AppLogSwitches;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 61
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigApplier;->clearAllOnLogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_1
    monitor-exit p0

    return-void

    .line 63
    :cond_5
    :try_start_2
    invoke-direct {p0, v1}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitchesOfCurrentApp(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updatePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public updateProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    .line 28
    return-void
.end method
