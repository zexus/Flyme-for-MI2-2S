.class final Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# instance fields
.field final synthetic afn:Lcom/android/settings_ext/notification/NotificationSettings;

.field private final afo:Landroid/net/Uri;

.field private final afp:Landroid/net/Uri;

.field private final afq:Landroid/net/Uri;

.field private final afr:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    .line 433
    invoke-static {p1}, Lcom/android/settings_ext/notification/NotificationSettings;->a(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 423
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afo:Landroid/net/Uri;

    .line 425
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afp:Landroid/net/Uri;

    .line 427
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afq:Landroid/net/Uri;

    .line 429
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afr:Landroid/net/Uri;

    .line 434
    return-void
.end method


# virtual methods
.method public aI(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->j(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afo:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afp:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 441
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afq:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 442
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afr:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afo:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->k(Lcom/android/settings_ext/notification/NotificationSettings;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afp:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->l(Lcom/android/settings_ext/notification/NotificationSettings;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afq:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afr:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->m(Lcom/android/settings_ext/notification/NotificationSettings;)V

    .line 460
    :cond_3
    return-void
.end method
