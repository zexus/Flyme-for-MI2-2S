.class public Lmiui/cloud/backup/SettingsBackupHelper;
.super Ljava/lang/Object;
.source "SettingsBackupHelper.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v0}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 76
    .local v0, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    invoke-interface {p2, p0, v0}, Lmiui/cloud/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    .line 77
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v9, "settingsJson":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v8, "settingsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lmiui/cloud/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 80
    .local v7, "settingItems":Ljava/util/Collection;, "Ljava/util/Collection<Lmiui/cloud/backup/data/SettingItem<*>;>;"
    const/4 v4, 0x0

    .line 82
    .local v4, "output":Ljava/io/FileOutputStream;
    if-eqz v7, :cond_1

    .line 83
    :try_start_0
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/cloud/backup/data/SettingItem;

    .line 84
    .local v6, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    invoke-virtual {v6}, Lmiui/cloud/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 85
    .local v3, "itemJson":Lorg/json/JSONObject;
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemJson":Lorg/json/JSONObject;
    .end local v6    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    const-string v10, "SettingsBackup"

    const-string v11, "IOException in backupSettings"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 87
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    const-string v10, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v10, "version"

    invoke-interface {p2, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v10, "data"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 101
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 97
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Lorg/json/JSONException;
    :goto_3
    :try_start_4
    const-string v10, "SettingsBackup"

    const-string v11, "JSONException in backupSettings"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v10

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 97
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 95
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;Lmiui/app/backup/FullBackupAgent;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .param p3, "agent"    # Lmiui/app/backup/FullBackupAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v1}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 116
    .local v1, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    move-object/from16 v0, p2

    invoke-interface {v0, p0, v1}, Lmiui/cloud/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    .line 117
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v11, "settingsJson":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v10, "settingsArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lmiui/cloud/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    .line 120
    .local v9, "settingItems":Ljava/util/Collection;, "Ljava/util/Collection<Lmiui/cloud/backup/data/SettingItem<*>;>;"
    const/4 v5, 0x0

    .line 122
    .local v5, "output":Ljava/io/FileOutputStream;
    if-eqz v9, :cond_1

    .line 123
    :try_start_0
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/cloud/backup/data/SettingItem;

    .line 124
    .local v8, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    invoke-virtual {v8}, Lmiui/cloud/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    .line 125
    .local v4, "itemJson":Lorg/json/JSONObject;
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "itemJson":Lorg/json/JSONObject;
    .end local v8    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    const-string v12, "SettingsBackup"

    const-string v13, "IOException in backupSettings"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Lmiui/cloud/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 145
    .local v7, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    goto :goto_3

    .line 127
    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v12, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v12, "version"

    move-object/from16 v0, p2

    invoke-interface {v0, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v12, "data"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .local v6, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 134
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 141
    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_4
    const-string v12, "SettingsBackup"

    const-string v13, "JSONException in backupSettings"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v12

    :goto_5
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v12

    .line 147
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 140
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 137
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 135
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static isSettingsBackupEnabled(Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    const-string v0, "settings_backup"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static requestBackupSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0}, Lmiui/cloud/backup/SettingsBackupHelper;->isSettingsBackupEnabled(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/cloud/backup/SettingsBackupHelper;->requestSettingsBackupManualSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method private static requestManualSync(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "settingsBundle":Landroid/os/Bundle;
    const-string v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    if-eqz p2, :cond_0

    .line 68
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method private static requestSettingsBackupManualSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "settings_backup"

    invoke-static {p0, v0, p1}, Lmiui/cloud/backup/SettingsBackupHelper;->requestManualSync(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static restoreFiles(Lmiui/cloud/backup/data/DataPackage;)V
    .locals 5
    .param p0, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;

    .prologue
    .line 242
    invoke-virtual {p0}, Lmiui/cloud/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "path":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 245
    .local v0, "data":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3, v0}, Lmiui/cloud/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 247
    .end local v0    # "data":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "fileInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 210
    .local v4, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    :try_start_1
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "folderPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v8, "targetFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 214
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .local v5, "fileOutputStream":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 218
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_0

    .line 220
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 225
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 226
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException in restoreFiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 233
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 223
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v7    # "length":I
    .restart local v8    # "targetFolder":Ljava/io/File;
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 230
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 232
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 227
    .end local v0    # "buffer":[B
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v7    # "length":I
    .end local v8    # "targetFolder":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in restoreFiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 230
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v9

    .line 230
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v8    # "targetFolder":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 227
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v8    # "targetFolder":Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 225
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v9, 0x0

    .line 163
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 165
    .local v7, "line":Ljava/lang/String;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v15, "line.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "ls":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 169
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 189
    .end local v8    # "ls":Ljava/lang/String;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 190
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v15, "SettingsBackup"

    const-string v16, "IOException in restoreSettings"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 196
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 172
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "ls":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v13, "settingsJson":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 175
    const-string v15, "version"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "backupVersion":I
    const-string v15, "data"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 177
    .local v12, "settingsArray":Lorg/json/JSONArray;
    new-instance v3, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v3}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 178
    .local v3, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    if-eqz v12, :cond_2

    .line 179
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 180
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 181
    .local v6, "itemJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 182
    invoke-static {v6}, Lmiui/cloud/backup/data/SettingItem;->fromJson(Lorg/json/JSONObject;)Lmiui/cloud/backup/data/SettingItem;

    move-result-object v11

    .line 183
    .local v11, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    iget-object v15, v11, Lmiui/cloud/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v3, v15, v11}, Lmiui/cloud/backup/data/DataPackage;->addAbstractDataItem(Ljava/lang/String;Lmiui/cloud/backup/data/SettingItem;)V

    .line 179
    .end local v11    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 187
    .end local v5    # "i":I
    .end local v6    # "itemJson":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v3, v2}, Lmiui/cloud/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    .end local v2    # "backupVersion":I
    .end local v3    # "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    .end local v12    # "settingsArray":Lorg/json/JSONArray;
    :cond_3
    invoke-static {v10}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    move-object v9, v10

    .line 195
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 191
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "ls":Ljava/lang/String;
    .end local v13    # "settingsJson":Lorg/json/JSONObject;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .line 192
    .local v4, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_4
    const-string v15, "SettingsBackup"

    const-string v16, "JSONException in restoreSettings"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v15

    :goto_5
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v15

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 191
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 189
    .end local v7    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_1
.end method
