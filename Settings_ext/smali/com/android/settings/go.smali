.class public Lcom/android/settings_ext/go;
.super Lmiui/external/b;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/f;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final xi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings_ext/go;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/go;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/external/b;-><init>()V

    .line 37
    const-string v0, "SECURITY_TOPIC"

    iput-object v0, p0, Lcom/android/settings_ext/go;->xi:Ljava/lang/String;

    return-void
.end method

.method private I(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 62
    const-string v0, "key_delete_v5_shortcuts"

    .line 63
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/ShortcutHelper;->J(Landroid/content/Context;)Lcom/android/settings_ext/ShortcutHelper;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xC:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 68
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xD:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 69
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xE:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 70
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xF:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 71
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xG:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 72
    sget-object v2, Lcom/android/settings_ext/ShortcutHelper$Shortcut;->xH:Lcom/android/settings_ext/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/ShortcutHelper;->a(Lcom/android/settings_ext/ShortcutHelper$Shortcut;)V

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :cond_0
    return-void
.end method

.method private gQ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, ""

    .line 92
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    :try_start_0
    const-string v2, ":|-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/miui/pushads/sdk/j;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "\u91cd\u65b0\u8c03\u7528 open2()"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 81
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 82
    const-string v2, "com.android.settings"

    const-string v3, "2882303761517161661"

    const-string v4, "5881716163661"

    invoke-direct {p0}, Lcom/android/settings_ext/go;->gQ()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/g;->cr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 85
    const-string v2, "com.android.settings"

    const-string v3, "2882303761517161661"

    const-string v4, "5881716163661"

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/miui/pushads/sdk/a;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ext/cloud/push/CloudService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v1, "push_content"

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/a;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/go;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    return-void
.end method

.method public b(Lcom/xiaomi/miui/pushads/sdk/j;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public c(Lcom/xiaomi/miui/pushads/sdk/j;)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public final gR()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0200f7

    return v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 41
    invoke-super {p0}, Lmiui/external/b;->onCreate()V

    .line 43
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 44
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "com.xiaomi.xmsf"

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->setActivateServiceHostPackage(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p0}, Lcom/android/settings_ext/go;->I(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/android/settings_ext/cloud/b;->ny()V

    .line 54
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 55
    const-string v2, "com.android.settings"

    const-string v3, "2882303761517161661"

    const-string v4, "5881716163661"

    invoke-direct {p0}, Lcom/android/settings_ext/go;->gQ()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    goto :goto_0

    .line 57
    :cond_1
    const-string v2, "com.android.settings"

    const-string v3, "2882303761517161661"

    const-string v4, "5881716163661"

    const/4 v5, 0x1

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    goto :goto_0
.end method
