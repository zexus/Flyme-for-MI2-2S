.class public Lcom/android/settings/backup/h;
.super Ljava/lang/Object;
.source "SettingManager.java"


# instance fields
.field private LU:Ljava/util/HashMap;

.field private LV:Lcom/android/internal/widget/ILockSettings;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    .line 45
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    .line 324
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_2

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 331
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_1
    if-eqz v0, :cond_0

    :goto_2
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_1

    .line 336
    :cond_0
    const-string v0, ""

    goto :goto_2

    .line 333
    :catch_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 341
    const-string v0, ""

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 343
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 346
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 347
    const-string v2, "settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const-string v0, "value"

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/settings/backup/h;->a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_3
    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 357
    :cond_4
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/h;->a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ka()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/backup/h;->LV:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/h;->LV:Lcom/android/internal/widget/ILockSettings;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/h;->LV:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot add secure setting which has empty name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public a(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot add system setting which has empty name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public a(Lcom/android/settings/backup/SettingProtos$LockSetting;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v2

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/backup/h;->ka()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v2, v3, v5}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public aK(I)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 364
    iget-object v1, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/backup/h;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 368
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 374
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_1

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/backup/h;->LU:Ljava/util/HashMap;

    .line 257
    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/settings/backup/h;->LU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    invoke-static {v1, v2}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 313
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public kb()Ljava/util/Vector;
    .locals 6

    .prologue
    .line 132
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 133
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/backup/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 136
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->kp()Lcom/android/settings/backup/j;

    move-result-object v2

    .line 137
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3}, Lcom/android/settings/backup/j;->aq(Ljava/lang/String;)Lcom/android/settings/backup/j;

    .line 138
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/backup/j;->p(J)Lcom/android/settings/backup/j;

    .line 139
    invoke-virtual {v2}, Lcom/android/settings/backup/j;->kw()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/backup/h;->ka()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v2, "lockscreen.password_salt"

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 142
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->kp()Lcom/android/settings/backup/j;

    move-result-object v0

    .line 143
    const-string v4, "lockscreen.password_salt"

    invoke-virtual {v0, v4}, Lcom/android/settings/backup/j;->aq(Ljava/lang/String;)Lcom/android/settings/backup/j;

    .line 144
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/backup/j;->p(J)Lcom/android/settings/backup/j;

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/backup/j;->kw()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/settings/backup/h;->ka()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v2, "lock_pattern_autolock"

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 148
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->kp()Lcom/android/settings/backup/j;

    move-result-object v0

    .line 149
    const-string v4, "lock_pattern_autolock"

    invoke-virtual {v0, v4}, Lcom/android/settings/backup/j;->aq(Ljava/lang/String;)Lcom/android/settings/backup/j;

    .line 150
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/backup/j;->p(J)Lcom/android/settings/backup/j;

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/backup/j;->kw()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public kc()Ljava/util/Vector;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 197
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 208
    if-nez v1, :cond_1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 224
    :goto_0
    return-object v0

    .line 211
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 213
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 215
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 220
    :cond_3
    if-eqz v1, :cond_4

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 224
    goto :goto_0

    .line 220
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public kd()Ljava/util/Vector;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 228
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 239
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 248
    :cond_1
    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_2
    return-object v7

    .line 248
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public ke()V
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    .line 260
    sget-object v2, Lcom/android/settings/backup/f;->LN:[Lcom/android/settings/backup/u;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 261
    iget-object v0, p0, Lcom/android/settings/backup/h;->LU:Ljava/util/HashMap;

    iget-object v5, v4, Lcom/android/settings/backup/u;->xn:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, v4, Lcom/android/settings/backup/u;->Mc:Ljava/lang/String;

    invoke-static {v0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 270
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v4, Lcom/android/settings/backup/u;->Mc:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    iget-object v0, v4, Lcom/android/settings/backup/u;->Mc:Ljava/lang/String;

    const/16 v6, 0x180

    invoke-static {v0, v6}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 272
    iget-object v0, v4, Lcom/android/settings/backup/u;->Mc:Ljava/lang/String;

    invoke-static {v0, v7, v7}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 273
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 275
    :cond_2
    return-void
.end method

.method public kf()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/backup/h;->LU:Ljava/util/HashMap;

    const-string v1, "settings_descript.xml"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/android/settings/backup/g;

    invoke-direct {v0}, Lcom/android/settings/backup/g;-><init>()V

    .line 285
    invoke-virtual {v0, v1}, Lcom/android/settings/backup/g;->d(Ljava/io/File;)Z

    .line 286
    iget-object v1, v0, Lcom/android/settings/backup/g;->LO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/h;->f(Ljava/lang/String;I)V

    .line 287
    iget-object v1, v0, Lcom/android/settings/backup/g;->LP:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/h;->f(Ljava/lang/String;I)V

    .line 288
    iget-object v1, v0, Lcom/android/settings/backup/g;->LQ:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/h;->f(Ljava/lang/String;I)V

    .line 289
    iget-object v1, v0, Lcom/android/settings/backup/g;->LR:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/h;->f(Ljava/lang/String;I)V

    .line 290
    iget-object v0, v0, Lcom/android/settings/backup/g;->LS:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/backup/h;->f(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public n(J)Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->le()Lcom/android/settings/backup/p;

    move-result-object v7

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 73
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/p;->aw(Ljava/lang/String;)Lcom/android/settings/backup/p;

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/p;->ax(Ljava/lang/String;)Lcom/android/settings/backup/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_2

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 78
    :cond_3
    :try_start_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/p;->ay(Ljava/lang/String;)Lcom/android/settings/backup/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :cond_4
    if-eqz v1, :cond_5

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    .line 90
    :goto_3
    return-object v0

    .line 87
    :cond_6
    if-eqz v1, :cond_7

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_7
    invoke-virtual {v7}, Lcom/android/settings/backup/p;->lk()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    goto :goto_3

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public o(J)Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->kC()Lcom/android/settings/backup/l;

    move-result-object v7

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/h;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 110
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/l;->as(Ljava/lang/String;)Lcom/android/settings/backup/l;

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 114
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/l;->at(Ljava/lang/String;)Lcom/android/settings/backup/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_2

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 115
    :cond_3
    :try_start_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/l;->au(Ljava/lang/String;)Lcom/android/settings/backup/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 124
    :cond_4
    if-eqz v1, :cond_5

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    .line 127
    :goto_3
    return-object v0

    .line 124
    :cond_6
    if-eqz v1, :cond_7

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_7
    invoke-virtual {v7}, Lcom/android/settings/backup/l;->kI()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    goto :goto_3

    .line 124
    :catchall_1
    move-exception v0

    goto :goto_2
.end method
