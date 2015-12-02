.class public Lcom/android/camera/preferences/CameraSettingPreferences;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
    }
.end annotation


# static fields
.field private static sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# instance fields
.field private mPrefGlobal:Landroid/content/SharedPreferences;

.field private mPrefLocal:Landroid/content/SharedPreferences;

.field private mPrefModeGlobal:Landroid/content/SharedPreferences;

.field private mPreferencesLocalId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "camera_settings_global"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCameraId()I
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized instance()Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 36
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    sget-object v2, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getCameraId()I

    move-result v2

    sget-object v3, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(IZ)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volumekey_function_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_version_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camerasound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_referenceline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_watermark_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_mirror_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_show_gender_age_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "open_camera_fail_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_confirm_location_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_camera_smart_shutter_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_priority_storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isModeGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "pref_video_captrue_ability_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setLocalId(IZ)Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 5
    .param p1, "preferencesLocalId"    # I
    .param p2, "isSimpleLayoutMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "prefName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 51
    .local v0, "prefModeGlobalName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 52
    const-string v0, "camera_settings_simple_mode_global"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera_settings_simple_mode_local_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_0
    iput p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPreferencesLocalId:I

    .line 59
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    .line 62
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 64
    iget-object v2, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 65
    sget-object v2, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    return-object v2

    .line 55
    :cond_0
    const-string v0, "camera_settings_profession_mode_global"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera_settings_profession_mode_local_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;-><init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 162
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 151
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 129
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 140
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    :goto_0
    return-wide v0

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimpleLayoutMode()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 305
    return-void
.end method

.method public setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 1
    .param p1, "preferencesLocalId"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPreferencesLocalId:I

    if-eq p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(IZ)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p0

    .line 45
    .end local p0    # "this":Lcom/android/camera/preferences/CameraSettingPreferences;
    :cond_0
    return-object p0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 310
    return-void
.end method
