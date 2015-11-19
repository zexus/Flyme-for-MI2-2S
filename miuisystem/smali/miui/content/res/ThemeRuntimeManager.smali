.class public Lmiui/content/res/ThemeRuntimeManager;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeRuntimeManager$1;,
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;,
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;
    }
.end annotation


# static fields
.field public static final BUILTIN_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field public static final BUILTIN_LOCKSCREEN_PATH:Ljava/lang/String; = "/system/media/lockscreen/"

.field public static final BUILTIN_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field public static final BUILTIN_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field public static final BUILTIN_ROOT_PATH:Ljava/lang/String; = "/system/media/"

.field public static final BUILTIN_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/wallpaper/"

.field public static final DEFAULT_ALARM_FILE_PATH_RES_ID:I

.field public static final DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

.field public static final DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

.field public static final RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

.field public static final RUNTIME_PATH_LOCKSCREEN:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final RUNTIME_PATH_WALLPAPER:Ljava/lang/String; = "/data/system/theme/wallpaper"

.field public static final RUNTIME_PIC_FOLDER:Ljava/lang/String; = "/data/system/theme/"

.field private static final TAG:Ljava/lang/String; = "themeservice"

.field private static final THEME_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mJobLocker:[B

.field private mPendingJobs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmiui/content/res/IThemeService;

.field private mServiceLocker:[B

.field private mThreadFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const-string v0, "/data/system/theme/boots/bootanimation.zip"

    :goto_0
    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    .line 46
    sget v0, Lmiui/system/R$string;->def_ringtone:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    .line 47
    sget v0, Lmiui/system/R$string;->def_notification_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    .line 48
    sget v0, Lmiui/system/R$string;->def_alarm_alert:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    .line 49
    sget v0, Lmiui/system/R$string;->def_sms_delivered_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    .line 50
    sget v0, Lmiui/system/R$string;->def_sms_received_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    return-void

    .line 32
    :cond_0
    const-string v0, "/data/local/bootanimation.zip"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, v1, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    .line 121
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    .line 63
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    return-object v0
.end method

.method static synthetic access$200(Lmiui/content/res/ThemeRuntimeManager;)Lmiui/content/res/IThemeService;
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/IThemeService;)Lmiui/content/res/IThemeService;
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p1, "x1"    # Lmiui/content/res/IThemeService;

    .prologue
    .line 28
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    return-object p1
.end method

.method static synthetic access$300(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    return-object v0
.end method

.method static synthetic access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->unbindService()V

    return-void
.end method

.method static synthetic access$802(Lmiui/content/res/ThemeRuntimeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    return p1
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 67
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v3

    .line 68
    :try_start_0
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-eqz v2, :cond_0

    .line 69
    monitor-exit v3

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v2, "themeservice"

    const-string v4, "binding service"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v2, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    iput-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.service.THEME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.thememanager"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    :goto_1
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 80
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private isRestoreIndependentComponents()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method private saveIconInner(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v1, "themeservice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    invoke-interface {v1, p1}, Lmiui/content/res/IThemeService;->saveIcon(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindService()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v2

    .line 88
    :try_start_0
    const-string v1, "themeservice"

    const-string v3, "unbinding service"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    .line 98
    monitor-exit v2

    .line 99
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public markGadgetUpdated()V
    .locals 6

    .prologue
    .line 176
    const-string v0, "clock_changed_time_"

    .line 177
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    .local v2, "time":J
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 179
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 180
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 181
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 182
    return-void
.end method

.method public restoreDefault()V
    .locals 13

    .prologue
    .line 185
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/system/theme/"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 188
    .local v2, "file":Ljava/io/File;
    sget-object v8, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 187
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    sget-object v8, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    invoke-static {v8}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 196
    new-instance v5, Landroid/content/Intent;

    const-string v8, "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v9, "wallpaper"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    .line 200
    .local v7, "ws":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->isRestoreIndependentComponents()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v12, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 208
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v12, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 210
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x4

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v12, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 212
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v9, 0x8

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v12, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 214
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v9, 0x10

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v12, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 218
    :cond_2
    const/4 v8, 0x0

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 221
    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    .line 224
    iget-object v8, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lmiui/drm/DrmManager;->setSupportAd(Landroid/content/Context;Z)V

    .line 226
    const-wide/32 v8, 0x10007899    # 1.3263999E-315

    invoke-static {v8, v9}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(J)V

    .line 227
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public saveIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    monitor-enter v1

    .line 165
    :try_start_0
    const-string v0, "themeservice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add pending job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    iget-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 170
    new-instance v0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    invoke-virtual {v0}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->start()V

    .line 172
    :cond_0
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
