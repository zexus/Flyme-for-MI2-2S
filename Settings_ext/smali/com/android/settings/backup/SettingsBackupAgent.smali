.class public Lcom/android/settings_ext/backup/SettingsBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "SettingsBackupAgent.java"


# instance fields
.field private LB:Ljava/io/File;

.field private LU:Ljava/util/HashMap;

.field private Ma:Lcom/android/settings_ext/backup/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method

.method private ln()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 445
    const-string v0, "/data/data/com.android.settings/wpa_supplicant.conf"

    const/16 v1, 0x180

    invoke-static {v0, v1}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 446
    const-string v0, "/data/data/com.android.settings/wpa_supplicant.conf"

    invoke-static {v0, v2, v2}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTORE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    return-void
.end method


# virtual methods
.method protected getVersion(I)I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 348
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 349
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 357
    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 359
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 360
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 364
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 368
    if-eqz v2, :cond_0

    .line 370
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 375
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 377
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 417
    :cond_1
    :goto_3
    return v6

    .line 362
    :cond_2
    :try_start_6
    iget-object v2, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 368
    if-eqz v3, :cond_3

    .line 370
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 375
    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    .line 377
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 378
    :catch_1
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 371
    :catch_2
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 371
    :catch_3
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 378
    :catch_4
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 365
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 366
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 368
    if-eqz v3, :cond_4

    .line 370
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 375
    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    .line 377
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 378
    :catch_6
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 371
    :catch_7
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 368
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    .line 370
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 375
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 377
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 380
    :cond_6
    :goto_9
    throw v0

    .line 371
    :catch_8
    move-exception v2

    .line 372
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 378
    :catch_9
    move-exception v1

    .line 379
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 383
    :cond_7
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 384
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 389
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 391
    const/16 v0, 0x2000

    :try_start_10
    new-array v0, v0, [B

    .line 393
    :goto_a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_9

    .line 394
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_a

    .line 396
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 397
    :goto_b
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 401
    if-eqz v1, :cond_8

    .line 403
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 408
    :cond_8
    :goto_c
    if-eqz v2, :cond_1

    .line 410
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto/16 :goto_3

    .line 411
    :catch_b
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 401
    :cond_9
    if-eqz v3, :cond_a

    .line 403
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 408
    :cond_a
    :goto_d
    if-eqz v1, :cond_1

    .line 410
    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_3

    .line 411
    :catch_c
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 404
    :catch_d
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 404
    :catch_e
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 398
    :catch_f
    move-exception v0

    move-object v3, v2

    .line 399
    :goto_e
    :try_start_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 401
    if-eqz v3, :cond_b

    .line 403
    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    .line 408
    :cond_b
    :goto_f
    if-eqz v2, :cond_1

    .line 410
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    goto/16 :goto_3

    .line 411
    :catch_10
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 404
    :catch_11
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 401
    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_c

    .line 403
    :try_start_19
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 408
    :cond_c
    :goto_11
    if-eqz v2, :cond_d

    .line 410
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 413
    :cond_d
    :goto_12
    throw v0

    .line 404
    :catch_12
    move-exception v1

    .line 405
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 411
    :catch_13
    move-exception v1

    .line 412
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 401
    :catchall_2
    move-exception v0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto :goto_10

    .line 398
    :catch_14
    move-exception v0

    goto :goto_e

    :catch_15
    move-exception v0

    move-object v2, v1

    goto :goto_e

    .line 396
    :catch_16
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catch_17
    move-exception v0

    move-object v1, v3

    goto :goto_b

    .line 368
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    goto/16 :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v2

    goto/16 :goto_7

    .line 365
    :catch_18
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_19
    move-exception v0

    goto/16 :goto_5

    .line 363
    :catch_1a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_1b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 53
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 54
    new-instance v0, Lcom/android/settings_ext/backup/h;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings_ext/backup/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    .line 57
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 58
    :try_start_1
    invoke-static {v2}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->a(Ljava/io/InputStream;)Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->lr()Lcom/android/settings_ext/backup/SettingProtos$Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 63
    :cond_0
    if-nez v3, :cond_2

    .line 64
    const/4 v0, 0x6

    .line 88
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 167
    :cond_1
    :goto_0
    return v0

    .line 66
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/android/settings_ext/backup/SettingProtos$Settings;->kN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/SettingProtos$SystemSetting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    iget-object v5, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v5, v0}, Lcom/android/settings_ext/backup/h;->a(Lcom/android/settings_ext/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_4
    const-string v5, "Settings:SettingsBackupAgent"

    const-string v6, "Cannot add system setting "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 73
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Lcom/android/settings_ext/backup/SettingProtos$Settings;->kO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/SettingProtos$SecureSetting;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    :try_start_6
    iget-object v5, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v5, v0}, Lcom/android/settings_ext/backup/h;->a(Lcom/android/settings_ext/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 76
    :catch_1
    move-exception v0

    .line 77
    :try_start_7
    const-string v5, "Settings:SettingsBackupAgent"

    const-string v6, "Cannot add secure setting "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v3}, Lcom/android/settings_ext/backup/SettingProtos$Settings;->kP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/SettingProtos$LockSetting;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    :try_start_8
    iget-object v4, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/backup/h;->a(Lcom/android/settings_ext/backup/SettingProtos$LockSetting;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 83
    :catch_2
    move-exception v0

    .line 84
    :try_start_9
    const-string v4, "Settings:SettingsBackupAgent"

    const-string v5, "Cannot add lock setting "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 88
    :cond_6
    if-eqz v2, :cond_7

    .line 89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 93
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LU:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_8
    :goto_5
    move v0, v1

    .line 167
    goto/16 :goto_0

    .line 98
    :cond_9
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.settings/wpa_supplicant.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    :try_start_a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 104
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 106
    const/16 v0, 0x2000

    :try_start_c
    new-array v0, v0, [B

    .line 108
    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_c

    .line 109
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_6

    .line 111
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    .line 112
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 116
    if-eqz v2, :cond_a

    .line 118
    :try_start_e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 123
    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    .line 125
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 131
    :cond_b
    :goto_9
    invoke-direct {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->ln()V

    goto :goto_5

    .line 116
    :cond_c
    if-eqz v4, :cond_d

    .line 118
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 123
    :cond_d
    :goto_a
    if-eqz v2, :cond_b

    .line 125
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_9

    .line 126
    :catch_4
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 119
    :catch_5
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 119
    :catch_6
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 126
    :catch_7
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 113
    :catch_8
    move-exception v0

    move-object v4, v3

    .line 114
    :goto_b
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 116
    if-eqz v4, :cond_e

    .line 118
    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 123
    :cond_e
    :goto_c
    if-eqz v3, :cond_b

    .line 125
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_9

    .line 126
    :catch_9
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 119
    :catch_a
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 116
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_d
    if-eqz v4, :cond_f

    .line 118
    :try_start_15
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 123
    :cond_f
    :goto_e
    if-eqz v3, :cond_10

    .line 125
    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 128
    :cond_10
    :goto_f
    throw v0

    .line 119
    :catch_b
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 126
    :catch_c
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 132
    :cond_11
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "_tmp_attach"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_12
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v4, "accounts.db"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 142
    :try_start_18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_1a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 144
    const/16 v3, 0x2000

    :try_start_19
    new-array v3, v3, [B

    .line 146
    :goto_10
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_14

    .line 147
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_18
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_10

    .line 149
    :catch_d
    move-exception v3

    move-object v3, v0

    move-object v0, v2

    .line 153
    :goto_11
    if-eqz v0, :cond_13

    .line 155
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 159
    :cond_13
    :goto_12
    if-eqz v3, :cond_8

    .line 161
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    goto/16 :goto_5

    .line 162
    :catch_e
    move-exception v0

    goto/16 :goto_5

    .line 153
    :cond_14
    if-eqz v2, :cond_15

    .line 155
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 159
    :cond_15
    :goto_13
    if-eqz v0, :cond_8

    .line 161
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f

    goto/16 :goto_5

    .line 162
    :catch_f
    move-exception v0

    goto/16 :goto_5

    .line 150
    :catch_10
    move-exception v0

    move-object v2, v3

    .line 151
    :goto_14
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 153
    if-eqz v2, :cond_16

    .line 155
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 159
    :cond_16
    :goto_15
    if-eqz v3, :cond_8

    .line 161
    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_11

    goto/16 :goto_5

    .line 162
    :catch_11
    move-exception v0

    goto/16 :goto_5

    .line 153
    :catchall_2
    move-exception v0

    move-object v2, v3

    :goto_16
    if-eqz v2, :cond_17

    .line 155
    :try_start_21
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    .line 159
    :cond_17
    :goto_17
    if-eqz v3, :cond_18

    .line 161
    :try_start_22
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16

    .line 163
    :cond_18
    :goto_18
    throw v0

    .line 156
    :catch_12
    move-exception v2

    goto :goto_13

    :catch_13
    move-exception v0

    goto :goto_12

    :catch_14
    move-exception v0

    goto :goto_15

    :catch_15
    move-exception v1

    goto :goto_17

    .line 162
    :catch_16
    move-exception v1

    goto :goto_18

    .line 153
    :catchall_3
    move-exception v0

    goto :goto_16

    :catchall_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_16

    .line 150
    :catch_17
    move-exception v0

    goto :goto_14

    :catch_18
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_14

    .line 149
    :catch_19
    move-exception v0

    move-object v0, v3

    goto :goto_11

    :catch_1a
    move-exception v0

    move-object v0, v2

    goto :goto_11

    .line 116
    :catchall_5
    move-exception v0

    goto/16 :goto_d

    :catchall_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_d

    :catchall_7
    move-exception v0

    move-object v4, v2

    goto/16 :goto_d

    .line 113
    :catch_1b
    move-exception v0

    goto/16 :goto_b

    :catch_1c
    move-exception v0

    move-object v3, v2

    goto/16 :goto_b

    .line 111
    :catch_1d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    :catch_1e
    move-exception v0

    move-object v2, v4

    goto/16 :goto_7

    .line 88
    :catchall_8
    move-exception v0

    move-object v1, v3

    goto/16 :goto_2
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 172
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    :cond_0
    if-ne p2, v10, :cond_a

    .line 177
    new-instance v0, Lcom/android/settings_ext/backup/h;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/backup/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    .line 178
    invoke-static {}, Lcom/android/settings_ext/backup/SettingProtos$Settings;->kQ()Lcom/android/settings_ext/backup/n;

    move-result-object v1

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v0}, Lcom/android/settings_ext/backup/h;->kc()Ljava/util/Vector;

    move-result-object v0

    .line 180
    iget-object v3, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v3}, Lcom/android/settings_ext/backup/h;->kd()Ljava/util/Vector;

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v4}, Lcom/android/settings_ext/backup/h;->kb()Ljava/util/Vector;

    move-result-object v4

    .line 182
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/settings_ext/backup/h;->n(J)Lcom/android/settings_ext/backup/SettingProtos$SystemSetting;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/backup/n;->b(Lcom/android/settings_ext/backup/SettingProtos$SystemSetting;)Lcom/android/settings_ext/backup/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v7, "Settings:SettingsBackupAgent"

    const-string v8, "Cannot load system setting "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    :try_start_1
    iget-object v5, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/android/settings_ext/backup/h;->o(J)Lcom/android/settings_ext/backup/SettingProtos$SecureSetting;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/backup/n;->d(Lcom/android/settings_ext/backup/SettingProtos$SecureSetting;)Lcom/android/settings_ext/backup/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v5, "Settings:SettingsBackupAgent"

    const-string v7, "Cannot load secure setting "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 202
    :cond_4
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/SettingProtos$LockSetting;

    .line 203
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/backup/n;->d(Lcom/android/settings_ext/backup/SettingProtos$LockSetting;)Lcom/android/settings_ext/backup/n;

    goto :goto_2

    .line 205
    :cond_5
    invoke-static {}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->ls()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    .line 206
    invoke-virtual {v1}, Lcom/android/settings_ext/backup/n;->kW()Lcom/android/settings_ext/backup/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/s;->f(Lcom/android/settings_ext/backup/SettingProtos$Settings;)Lcom/android/settings_ext/backup/s;

    .line 209
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :try_start_3
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/s;->ly()Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 212
    if-eqz v1, :cond_6

    .line 213
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 218
    :cond_6
    sget-object v1, Lcom/android/settings_ext/backup/f;->LN:[Lcom/android/settings_ext/backup/u;

    array-length v2, v1

    move v0, v6

    :goto_3
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 219
    iget-object v3, v3, Lcom/android/settings_ext/backup/u;->Mc:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 212
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 213
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v0

    .line 222
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v0, v10}, Lcom/android/settings_ext/backup/h;->aK(I)Ljava/io/File;

    move-result-object v7

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v0, v11}, Lcom/android/settings_ext/backup/h;->aK(I)Ljava/io/File;

    move-result-object v8

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/h;->aK(I)Ljava/io/File;

    move-result-object v9

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/h;->aK(I)Ljava/io/File;

    move-result-object v10

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/h;->aK(I)Ljava/io/File;

    move-result-object v11

    .line 227
    new-instance v0, Lcom/android/settings_ext/backup/g;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/backup/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v3, "settings_descript.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/g;->c(Ljava/io/File;)V

    .line 230
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 308
    :cond_9
    :goto_5
    return v6

    .line 235
    :cond_a
    if-ne p2, v11, :cond_11

    .line 238
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v3, "wpa_supplicant.conf"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    const-string v1, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 244
    const/16 v2, 0x2000

    :try_start_6
    new-array v2, v2, [B

    .line 246
    :goto_6
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_c

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1b
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    .line 250
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 251
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 255
    if-eqz v1, :cond_b

    .line 257
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 262
    :cond_b
    :goto_8
    if-eqz v2, :cond_9

    .line 264
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 265
    :catch_3
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 249
    :cond_c
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1b
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 255
    if-eqz v3, :cond_d

    .line 257
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 262
    :cond_d
    :goto_9
    if-eqz v1, :cond_9

    .line 264
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 265
    :catch_4
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 258
    :catch_5
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 258
    :catch_6
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 252
    :catch_7
    move-exception v0

    move-object v3, v2

    .line 253
    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 255
    if-eqz v3, :cond_e

    .line 257
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 262
    :cond_e
    :goto_b
    if-eqz v2, :cond_9

    .line 264
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_5

    .line 265
    :catch_8
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 258
    :catch_9
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 255
    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_c
    if-eqz v3, :cond_f

    .line 257
    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 262
    :cond_f
    :goto_d
    if-eqz v2, :cond_10

    .line 264
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 267
    :cond_10
    :goto_e
    throw v0

    .line 258
    :catch_a
    move-exception v1

    .line 259
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 265
    :catch_b
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 270
    :cond_11
    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_12
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v1, "accounts.db"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/settings_ext/backup/a;->LH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    :try_start_12
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 281
    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 283
    const/16 v2, 0x2000

    :try_start_14
    new-array v2, v2, [B

    .line 285
    :goto_f
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_15

    .line 286
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_f

    .line 288
    :catch_c
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    .line 292
    :goto_10
    if-eqz v0, :cond_13

    .line 294
    :try_start_15
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 298
    :cond_13
    :goto_11
    if-eqz v2, :cond_14

    .line 300
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 304
    :cond_14
    :goto_12
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 292
    :cond_15
    if-eqz v1, :cond_16

    .line 294
    :try_start_17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 298
    :cond_16
    :goto_13
    if-eqz v0, :cond_17

    .line 300
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 304
    :cond_17
    :goto_14
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 289
    :catch_d
    move-exception v0

    move-object v1, v2

    .line 290
    :goto_15
    :try_start_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 292
    if-eqz v1, :cond_18

    .line 294
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 298
    :cond_18
    :goto_16
    if-eqz v2, :cond_19

    .line 300
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    .line 304
    :cond_19
    :goto_17
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 292
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_18
    if-eqz v1, :cond_1a

    .line 294
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 298
    :cond_1a
    :goto_19
    if-eqz v2, :cond_1b

    .line 300
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    .line 304
    :cond_1b
    :goto_1a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    .line 295
    :catch_e
    move-exception v1

    goto :goto_13

    .line 301
    :catch_f
    move-exception v0

    goto :goto_14

    .line 295
    :catch_10
    move-exception v0

    goto :goto_11

    .line 301
    :catch_11
    move-exception v0

    goto :goto_12

    .line 295
    :catch_12
    move-exception v0

    goto :goto_16

    .line 301
    :catch_13
    move-exception v0

    goto :goto_17

    .line 295
    :catch_14
    move-exception v1

    goto :goto_19

    .line 301
    :catch_15
    move-exception v1

    goto :goto_1a

    .line 292
    :catchall_3
    move-exception v0

    goto :goto_18

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_18

    .line 289
    :catch_16
    move-exception v0

    goto :goto_15

    :catch_17
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_15

    .line 288
    :catch_18
    move-exception v0

    move-object v0, v2

    goto :goto_10

    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_10

    .line 255
    :catchall_5
    move-exception v0

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move-object v3, v1

    goto/16 :goto_c

    .line 252
    :catch_1a
    move-exception v0

    goto/16 :goto_a

    :catch_1b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    .line 250
    :catch_1c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catch_1d
    move-exception v0

    move-object v1, v3

    goto/16 :goto_7

    .line 212
    :catchall_8
    move-exception v0

    goto/16 :goto_4
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 4

    .prologue
    .line 422
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LU:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/h;->b(Ljava/util/HashMap;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v0}, Lcom/android/settings_ext/backup/h;->ke()V

    .line 425
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->Ma:Lcom/android/settings_ext/backup/h;

    invoke-virtual {v0}, Lcom/android/settings_ext/backup/h;->kf()V

    .line 426
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 441
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_1
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 430
    new-instance v0, Lcom/android/settings_ext/backup/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SettingsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/backup/a;-><init>(Landroid/content/Context;)V

    .line 431
    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/a;->b(Ljava/io/File;)V

    .line 432
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v3, "accounts.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/backup/a;->a(Ljava/io/File;)V

    .line 435
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/a;->jX()V

    .line 436
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/a;->jT()V

    .line 437
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/a;->jY()V

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v6

    .line 314
    if-nez v6, :cond_1

    .line 315
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 316
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v1, "settings_descript.xml"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 321
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 343
    :cond_1
    :goto_0
    return v6

    .line 322
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 323
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v1, "EmailProvider.db"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    const-string v0, "/data/data/com.android.email/databases/EmailProvider.db"

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 327
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 329
    :cond_3
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v1, "EmailProviderBackup.db"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    const-string v0, "/data/data/com.android.email/databases/EmailProviderBackup.db"

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 333
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 335
    :cond_4
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    const-string v1, "EmailProviderBody.db"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    const-string v0, "/data/data/com.android.email/databases/EmailProviderBody.db"

    iget-object v1, p0, Lcom/android/settings_ext/backup/SettingsBackupAgent;->LB:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 339
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method
