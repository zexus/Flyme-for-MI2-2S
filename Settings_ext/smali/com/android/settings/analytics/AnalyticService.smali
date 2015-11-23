.class public Lcom/android/settings_ext/analytics/AnalyticService;
.super Landroid/app/IntentService;
.source "AnalyticService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "AnalyticService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private p(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 96
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v0, "eventObj"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    const-string v1, "eventBundle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 103
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    :goto_2
    return-void

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v2, v1}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "miui.intent.action.TRACK_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings_ext/analytics/AnalyticService;->p(Landroid/content/Intent;)V

    .line 92
    :cond_1
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/analytics/Analytics;->endSession()V

    goto :goto_0
.end method
