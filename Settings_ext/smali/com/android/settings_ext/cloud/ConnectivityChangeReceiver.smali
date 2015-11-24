.class public Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field private static Pz:Ljava/util/Date;


# instance fields
.field PA:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ext/cloud/CloudSettingsService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "command"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x8000000

    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 87
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 90
    const-string v0, "CloudSettingsConnectivityChangeReceiver"

    const-string v1, "request appcontrol list update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method private nw()Z
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->Pz:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 49
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->Pz:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 52
    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nx()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/cloud/a/c;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 26
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->PA:Landroid/app/AlarmManager;

    .line 27
    iput-object p1, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->nw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->nx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->PA:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->a(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/settings_ext/cloud/ConnectivityChangeReceiver;->Pz:Ljava/util/Date;

    goto :goto_0
.end method
