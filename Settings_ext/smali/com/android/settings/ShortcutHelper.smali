.class Lcom/android/settings/ShortcutHelper;
.super Ljava/lang/Object;
.source "SettingsApplication.java"


# static fields
.field private static xA:Lcom/android/settings/ShortcutHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    .line 158
    return-void
.end method

.method public static J(Landroid/content/Context;)Lcom/android/settings/ShortcutHelper;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/android/settings/ShortcutHelper;->xA:Lcom/android/settings/ShortcutHelper;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/settings/ShortcutHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ShortcutHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/ShortcutHelper;->xA:Lcom/android/settings/ShortcutHelper;

    .line 164
    :cond_0
    sget-object v0, Lcom/android/settings/ShortcutHelper;->xA:Lcom/android/settings/ShortcutHelper;

    return-object v0
.end method

.method private b(Lcom/android/settings/ShortcutHelper$Shortcut;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    sget-object v1, Lcom/android/settings/gx;->xB:[I

    invoke-virtual {p1}, Lcom/android/settings/ShortcutHelper$Shortcut;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 275
    :pswitch_1
    const-string v1, "android.intent.action.VIEW_DATA_USAGE_SUMMARY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.networkassistant"

    const-string v3, "com.miui.networkassistant.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v1, "android.intent.action.SET_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.ui.activity.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 287
    :pswitch_3
    const-string v1, "com.miui.powercenter.PowerCenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.powercenter.PowerCenter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 293
    :pswitch_4
    const-string v1, "miui.intent.action.VIRUS_SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.viruscenter.activity.VirusScanAppActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 299
    :pswitch_5
    const-string v1, "miui.intent.action.PERM_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.securitycenter.permission.PermMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/android/settings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 211
    .line 212
    const/4 v0, -0x1

    .line 213
    sget-object v1, Lcom/android/settings/gx;->xB:[I

    invoke-virtual {p1}, Lcom/android/settings/ShortcutHelper$Shortcut;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 248
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/ShortcutHelper;->b(Lcom/android/settings/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object v3

    .line 249
    if-nez v3, :cond_0

    .line 261
    :goto_1
    return-object v2

    .line 216
    :pswitch_0
    const-string v1, "com.android.settings:string/cleaner"

    .line 217
    const v0, 0x7f0200f6

    .line 218
    goto :goto_0

    .line 221
    :pswitch_1
    const-string v1, "com.android.settings:string/network_assistant"

    .line 222
    const v0, 0x7f0200f3

    .line 223
    goto :goto_0

    .line 226
    :pswitch_2
    const-string v1, "com.android.settings:string/anti_spam"

    .line 227
    const v0, 0x7f0200f1

    .line 228
    goto :goto_0

    .line 231
    :pswitch_3
    const-string v1, "com.android.settings:string/power_mgr"

    .line 232
    const v0, 0x7f0200f4

    .line 233
    goto :goto_0

    .line 236
    :pswitch_4
    const-string v1, "com.android.settings:string/virus_scan"

    .line 237
    const v0, 0x7f0200f8

    .line 238
    goto :goto_0

    .line 241
    :pswitch_5
    const-string v1, "com.android.settings:string/permission_mgr"

    .line 242
    const v0, 0x7f0200f2

    .line 243
    goto :goto_0

    .line 253
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    const-string v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 257
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/android/settings/ShortcutHelper$Shortcut;)V
    .locals 2

    .prologue
    .line 206
    const-string v0, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/ShortcutHelper;->a(Lcom/android/settings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
