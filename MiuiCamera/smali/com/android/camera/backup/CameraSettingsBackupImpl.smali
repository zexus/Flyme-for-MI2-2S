.class public Lcom/android/camera/backup/CameraSettingsBackupImpl;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lmiui/cloud/backup/ICloudBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    }
.end annotation


# static fields
.field private static final PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    sput-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 10
    .param p0, "prefEntries"    # [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .param p1, "sharedPrefName"    # Ljava/lang/String;

    .prologue
    .line 113
    array-length v8, p0

    new-array v2, v8, [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    .line 114
    .local v2, "entriesWithPrefix":[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_8

    .line 115
    aget-object v3, p0, v5

    .line 116
    .local v3, "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    .line 118
    .local v7, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "cloudKey":Ljava/lang/String;
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "localKey":Ljava/lang/String;
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "defaultValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 122
    .local v4, "entryWithPrefix":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    if-nez v1, :cond_1

    .line 124
    invoke-static {v0, v6}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .line 147
    .end local v1    # "defaultValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    aput-object v4, v2, v5

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v6, v8}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 128
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    :cond_2
    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 129
    if-nez v1, :cond_3

    .line 130
    invoke-static {v0, v6}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 132
    :cond_3
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v0, v6, v8}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 134
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 135
    if-nez v1, :cond_5

    .line 136
    invoke-static {v0, v6}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 138
    :cond_5
    check-cast v1, Ljava/lang/String;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 140
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    :cond_6
    const-class v8, Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    if-nez v1, :cond_7

    .line 142
    invoke-static {v0, v6}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 144
    :cond_7
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v0, v6, v8, v9}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    goto :goto_1

    .line 149
    .end local v0    # "cloudKey":Ljava/lang/String;
    .end local v3    # "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v4    # "entryWithPrefix":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v6    # "localKey":Ljava/lang/String;
    .end local v7    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-object v2
.end method

.method private static checkCameraId(I)Z
    .locals 3
    .param p0, "cameraId"    # I

    .prologue
    .line 31
    if-gez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraId is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getAvaliableCameraIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 102
    .local v1, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 103
    .local v2, "frontCameraId":I
    invoke-static {v1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    invoke-static {v2}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    return-object v0
.end method

.method private static getPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p3, "handler"    # Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;

    .prologue
    .line 69
    if-nez p3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvaliableCameraIds()Ljava/util/List;

    move-result-object v4

    .line 73
    .local v4, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/camera/module/BaseModule$CameraMode;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v13, v3, v11

    .line 74
    .local v13, "mode":Lcom/android/camera/module/BaseModule$CameraMode;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 76
    .local v5, "cameraId":I
    invoke-static {v5, v13}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "sharedPrefName":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 78
    .local v14, "sharedPref":Landroid/content/SharedPreferences;
    if-eqz v14, :cond_1

    .line 79
    sget-object v17, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v7

    .line 80
    .local v7, "entriesWithPrefix":[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v14, v1, v7}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto :goto_2

    .line 73
    .end local v5    # "cameraId":I
    .end local v7    # "entriesWithPrefix":[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v14    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v15    # "sharedPrefName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_1

    .line 86
    .end local v13    # "mode":Lcom/android/camera/module/BaseModule$CameraMode;
    :cond_3
    const-string v17, "camera_settings_global"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 88
    .local v9, "globalSharedPref":Landroid/content/SharedPreferences;
    sget-object v17, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-string v18, "camera_settings_global"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    .line 89
    .local v6, "entriesWithGlobalPrefix":[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v9, v1, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 92
    const-string v17, "camera_settings_simple_mode_global"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 94
    .local v16, "simpleModeGlobalSharedPref":Landroid/content/SharedPreferences;
    sget-object v17, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const-string v18, "camera_settings_simple_mode_global"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v8

    .line 96
    .local v8, "entriesWithSimpleModeGlobalPrefix":[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v8}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;

    .prologue
    .line 46
    const-string v1, "CameraSettingsBackupImpl"

    const-string v2, "Backing up settings to cloud."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 53
    .local v0, "backupHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 54
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 58
    const-string v1, "CameraSettingsBackupImpl"

    const-string v2, "Restoring settings from cloud"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 65
    .local v0, "restoreHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 66
    return-void
.end method
