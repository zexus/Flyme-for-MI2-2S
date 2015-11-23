.class public Lcom/android/settings/t;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final ab:Landroid/preference/CheckBoxPreference;

.field private ac:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/u;

    invoke-direct {v0, p0}, Lcom/android/settings/u;-><init>(Lcom/android/settings/t;)V

    iput-object v0, p0, Lcom/android/settings/t;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/settings/v;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/v;-><init>(Lcom/android/settings/t;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/t;->ac:Landroid/database/ContentObserver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 72
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/t;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/t;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 73
    iget-object v0, p0, Lcom/android/settings/t;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/android/settings/t;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/t;->x()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/t;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 0

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0, p2}, Lcom/android/settings/t;->d(Z)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/t;->x()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 127
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/t;->d(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/t;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/t;->ac:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/t;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/t;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/t;->ab:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/t;->ac:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    return-void
.end method
