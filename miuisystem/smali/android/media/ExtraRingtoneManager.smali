.class public Landroid/media/ExtraRingtoneManager;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExtraRingtoneManager$SoundItem;
    }
.end annotation


# static fields
.field private static final ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

.field private static final TARGET_USER:Ljava/lang/String; = "root"

.field public static final TYPE_MUSIC:I = 0x20

.field public static final TYPE_RINGTONE_SLOT_1:I = 0x40

.field public static final TYPE_RINGTONE_SLOT_2:I = 0x80

.field public static final TYPE_SMS_DELIVERED_SLOT_1:I = 0x100

.field public static final TYPE_SMS_DELIVERED_SLOT_2:I = 0x200

.field public static final TYPE_SMS_DELIVERED_SOUND:I = 0x8

.field public static final TYPE_SMS_RECEIVED_SLOT_1:I = 0x400

.field public static final TYPE_SMS_RECEIVED_SLOT_2:I = 0x800

.field public static final TYPE_SMS_RECEIVED_SOUND:I = 0x10

.field private static sRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/ExtraRingtoneManager$SoundItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "file:///data/system/ringtones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x1

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "elder-ringtone.mp3"

    :goto_0
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "ringtone"

    invoke-static {v1, v0, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x2

    const-string v1, "notification.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v3, "notification_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x4

    const-string v1, "alarm.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const-string v3, "alarm_alert"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x8

    const-string v1, "sms_delivered_sound.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "sms_delivered_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 58
    const/16 v0, 0x10

    const-string v1, "sms_received_sound.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "sms_received_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 61
    const/16 v0, 0x40

    const-string v1, "ringtone_slot_1.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    const-string v3, "ringtone_sound_slot_1"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x80

    const-string v1, "ringtone_slot_2.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    const-string v3, "ringtone_sound_slot_2"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 65
    const/16 v0, 0x400

    const-string v1, "sms_received_slot_1.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v3, "sms_received_sound_slot_1"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x800

    const-string v1, "sms_received_slot_2.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    const-string v3, "sms_received_sound_slot_2"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0x100

    const-string v1, "sms_delivered_slot_1.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v3, "sms_delivered_sound_slot_1"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 71
    const/16 v0, 0x200

    const-string v1, "sms_delivered_slot_2.mp3"

    sget-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    const-string v3, "sms_delivered_sound_slot_2"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 73
    return-void

    .line 49
    :cond_0
    const-string v0, "ringtone.mp3"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultUri"    # Landroid/net/Uri;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v2, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 304
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/media/ExtraRingtoneManager$SoundItem;

    invoke-direct {v0, p0, v1, p2, p3}, Landroid/media/ExtraRingtoneManager$SoundItem;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 305
    .local v0, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private static copySound(Ljava/lang/String;I)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 275
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "internalPath":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_0
    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 291
    :goto_0
    return-void

    .line 279
    :cond_1
    sget-object v3, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    invoke-static {v0}, Landroid/miui/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 284
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 289
    invoke-static {p0, v2}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 230
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 231
    .local v1, "ret":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 233
    .local v0, "internal":Landroid/net/Uri;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    move-object v1, v0

    .line 237
    .end local v0    # "internal":Landroid/net/Uri;
    :cond_0
    return-object v1
.end method

.method public static getDefaultSoundInternalUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 196
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 197
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_0

    .line 198
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    .line 201
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 244
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 245
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "uriString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefaultSoundType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultSoundUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 91
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    const/4 v0, 0x4

    goto :goto_0

    .line 99
    :cond_4
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    const/16 v0, 0x40

    goto :goto_0

    .line 101
    :cond_5
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const/16 v0, 0x80

    goto :goto_0

    .line 103
    :cond_6
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    const/16 v0, 0x10

    goto :goto_0

    .line 105
    :cond_7
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    const/16 v0, 0x400

    goto :goto_0

    .line 107
    :cond_8
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    const/16 v0, 0x800

    goto :goto_0

    .line 109
    :cond_9
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 110
    const/16 v0, 0x8

    goto :goto_0

    .line 111
    :cond_a
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    const/16 v0, 0x100

    goto :goto_0

    .line 113
    :cond_b
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/16 v0, 0x200

    goto :goto_0
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 208
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 294
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 295
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    .line 299
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "soundUri"    # Landroid/net/Uri;
    .param p1, "ringtoneType"    # I

    .prologue
    .line 259
    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 261
    .local v0, "actualSoundUri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    move-object p0, v0

    .line 265
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static isExtraCases(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "soundUri"    # Landroid/net/Uri;

    .prologue
    .line 252
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    const/4 v8, 0x0

    .line 166
    .local v8, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 168
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "mediaProvider":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 178
    :cond_0
    if-eqz v6, :cond_1

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v0    # "mediaProvider":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v8

    .line 175
    :catch_0
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v6, :cond_1

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 130
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "setting":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 135
    const-string v0, ""

    .line 136
    .local v0, "path":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 137
    const-string v2, "media"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-static {p0, p2}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 146
    :cond_2
    :goto_1
    invoke-static {v0, p1}, Landroid/media/ExtraRingtoneManager;->copySound(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 142
    :cond_3
    const-string v2, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method
