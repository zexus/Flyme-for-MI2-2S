.class public Landroid/app/MiuiStatusBarManager;
.super Ljava/lang/Object;
.source "MiuiStatusBarManager.java"


# static fields
.field public static final ACTION_ENTER_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

.field public static final ACTION_ENTER_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_recorder"

.field public static final ACTION_EXIT_FULLSCREEN:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

.field public static final ACTION_EXPAND_NOTIFICATIONS_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_NOTIFICATIONS_TAB"

.field public static final ACTION_EXPAND_TOGGLES_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

.field public static final ACTION_LEAVE_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

.field public static final ACTION_LEAVE_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_recorder"

.field public static final ACTION_PICK_TOGGLE_INTENT:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_PICK_TOGGLE_INTENT"

.field public static final ACTION_REFRESH_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

.field public static final ACTION_REMOVE_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

.field public static final ACTION_REQUEST_RESTART:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

.field public static final ACTION_SHOW_APP_NOTIFICATION_PANEL:Ljava/lang/String; = "show_app_notification_panel"

.field public static final ACTION_STATUS_QUIET_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_quiet_mode"

.field public static final ACTION_STATUS_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_recorder"

.field public static final ACTION_TRIGGER_CAMERA_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

.field public static final ACTION_TRIGGER_TOGGLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

.field public static final ACTION_TRIGGER_TOGGLE_LOCK:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

.field public static final ACTION_TRIGGER_TOGGLE_SCREEN_BUTTONS:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

.field public static final DISABLE_FLAG_DARK_MODE:I = 0x40

.field public static final DISABLE_FLAG_FULLSCREEN:I = -0x80000000

.field public static final DISABLE_FLAG_HIDE:I = 0x80

.field public static final DISABLE_FLAG_HIDE_IN_FULLSCREEN:I = 0x100

.field public static final DISABLE_FLAG_KEYGUARD_MODE:I = 0x10

.field public static final DISABLE_FLAG_LOW_PROFILE:I = 0x2

.field public static final DISABLE_FLAG_SIMPLE_MODE:I = 0x20

.field public static final DISABLE_FLAG_TRANSPARENT:I = 0x1

.field public static final EXTRA_APP_PACKAGENAME:Ljava/lang/String; = "app_packageName"

.field public static final EXTRA_FORBID_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

.field public static final EXTRA_NOTIFICATION_CLICK:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_notification_click"

.field public static final EXTRA_NOTIFICATION_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_notification_key"

.field public static final EXTRA_RECORDER_DURATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_duration"

.field public static final EXTRA_RECORDER_ENTER_SILENT_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_enter_silent_mode"

.field public static final EXTRA_RECORDER_SILENT_MODE_CHANGED_BY_USER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_silent_mode_changed_by_user"

.field public static final EXTRA_RECORDER_TIMER_ON_OFF:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_timer_on_off"

.field public static final EXTRA_RECORDER_TITLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_title"

.field public static final EXTRA_TOGGLE_ID:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x8

.field public static final NAVIGATION_HINT_BACK_NOP:I = 0x1

.field public static final NAVIGATION_HINT_HOME_NOP:I = 0x2

.field public static final NAVIGATION_HINT_RECENT_NOP:I = 0x4

.field public static final NOTIFICATION_PANEL_ACTIVITY_NAME:Ljava/lang/String; = "NotiPanelActivity"

.field public static final PARAM_BASE_TIME:Ljava/lang/String; = "base_time"

.field public static final STATUS_BAR_QUIET_ICON_ACTIVE:I = 0x1

.field public static final STATUS_BAR_QUIET_ICON_INACTIVE:I = 0x0

.field public static final STATUS_BAR_RECORDER_DEAD:I = 0x3

.field public static final STATUS_BAR_RECORDER_HIDE:I = 0x0

.field public static final STATUS_BAR_RECORDER_SHOW:I = 0x1

.field public static final STATUS_BAR_RECORDER_SILENCE:I = 0x2

.field public static final TOGGLE_ACCESS_CONTROL:I = 0x10

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_COUNT:I = 0x1c

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_PRIVACY_MODE:I = 0xe

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableScreenshotNotification(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_notification_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDisabledFlags(I)I
    .locals 2
    .param p0, "windowExtraFlags"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_0

    .line 60
    or-int/lit16 v0, v0, 0x80

    .line 62
    :cond_0
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1

    .line 63
    or-int/lit8 v0, v0, 0x40

    .line 65
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 68
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 69
    or-int/lit8 v0, v0, 0x20

    .line 71
    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    .line 74
    :cond_4
    return v0
.end method

.method public static getSystemUIVisibilityFlags(I)I
    .locals 2
    .param p0, "windowExtraFlags"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_0

    .line 83
    :cond_0
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1

    .line 86
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 87
    or-int/lit8 v0, v0, 0x1

    .line 89
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 92
    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    .line 93
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 95
    :cond_4
    return v0
.end method

.method public static isCollapseAfterClicked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_collapse_after_clicked"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isExpandableUnderFullscreen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_expandable_under_fullscreen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExpandableUnderKeyguard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_expandable_under_keyguard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenshotNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_notification_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowCarrier(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_custom_carrier"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getShowCustomCarrierDefault()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowFlowInfo(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_network_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isShowNetworkSpeed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_network_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isShowNotificationIcon(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_notification_icon"

    sget v2, Landroid/provider/MiuiSettings$System;->STATUS_BAR_SHOW_NOTIFICATION_ICON_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCollapseAfterClicked(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_collapse_after_clicked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_expandable_under_fullscreen"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExpandableUnderKeyguard(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_expandable_under_keyguard"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowCarrier(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_custom_carrier"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowFlowInfo(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_network_assistant"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowNetworkSpeed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_network_speed"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowNotificationIcon(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_notification_icon"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
