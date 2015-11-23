.class Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# instance fields
.field final synthetic BD:Lcom/android/settings_ext/accounts/AccountSettings;

.field private BI:Z


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/accounts/AccountSettings;Lcom/android/settings_ext/accounts/AccountSettings$1;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ext/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->b(Lcom/android/settings_ext/accounts/AccountSettings;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->c(Lcom/android/settings_ext/accounts/AccountSettings;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->aq()V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->d(Lcom/android/settings_ext/accounts/AccountSettings;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BI:Z

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BI:Z

    .line 505
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BI:Z

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->BI:Z

    .line 512
    :cond_0
    return-void
.end method
