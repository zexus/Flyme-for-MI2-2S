.class public Landroid/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;,
        Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

.field private static final MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final MATCHED_BLUETOOTH_DEVICE_NAME_TO_UNLOCK:Ljava/lang/String; = "bluetooth_name_to_unlock"

.field private static final MATCHED_BLUETOOTH_KEY_TO_UNLOCK:Ljava/lang/String; = "bluetooth_key_to_unlock"

.field private static final MATCHED_BLUETOOTH_UNLOCK_STATUS:Ljava/lang/String; = "bluetooth_unlock_status"

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_GALLERY:I = 0x2

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const/4 v1, 0x0

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "access_control"

    const-string v4, "access_control.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "sms"

    const-string v4, "sms_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "gallery"

    const-string v4, "gallery_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void

    .line 42
    :array_0
    .array-data 4
        0x1e
        0x12c
        0x708
        0x1c20
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object p1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    .line 107
    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v3, p2

    .line 108
    .local v0, "data":Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/system/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "dataSystemDirectory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 111
    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    iget-object v7, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    const/16 v2, 0x388

    .line 114
    .local v2, "fileObserverMask":I
    new-instance v3, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v3, v1, v2}, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    .line 115
    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 120
    .end local v1    # "dataSystemDirectory":Ljava/lang/String;
    .end local v2    # "fileObserverMask":I
    :cond_0
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    .line 122
    return-void

    .restart local v1    # "dataSystemDirectory":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 111
    goto :goto_0

    .end local v1    # "dataSystemDirectory":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 120
    goto :goto_1
.end method

.method static synthetic access$000()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method

.method private checkAccessKeyguardStoragePermission()Z
    .locals 6

    .prologue
    .line 329
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 330
    .local v0, "permissionString":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 331
    .local v1, "result":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getTimeoutInMsByFailedAttempts(I)I
    .locals 3
    .param p1, "failedAttempts"    # I

    .prologue
    .line 256
    add-int/lit8 v1, p1, -0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    .local v0, "timeoutIdx":I
    sget-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "MiuiLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x1

    .line 133
    :try_start_0
    sget-object v7, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v8, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v7, v7, v8

    iget-object v0, v7, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 134
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v4, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v5, v7, [B

    .line 136
    .local v5, "stored":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 137
    .local v2, "got":I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 138
    if-gtz v2, :cond_0

    .line 146
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "got":I
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "stored":[B
    :goto_0
    return v6

    .line 142
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v2    # "got":I
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "stored":[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 143
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "got":I
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "stored":[B
    :catch_0
    move-exception v1

    .line 144
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 145
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 146
    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 4

    .prologue
    .line 188
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method public getBluetoothAddressToUnlock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothKeyToUnlock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothNameToUnlock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothUnlockEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_unlock_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyguardLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "failedAttempts"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 243
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v6, v4, v5}, Landroid/security/MiuiLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 244
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 245
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 252
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-wide v0

    .line 248
    .restart local v0    # "deadline":J
    :cond_1
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 249
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 250
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    goto :goto_0
.end method

.method protected getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 203
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 202
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 203
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 4

    .prologue
    .line 237
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 238
    invoke-super {p0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 239
    return-void
.end method

.method public saveMiuiLockPattern(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 165
    .local v2, "hash":[B
    sget-object v5, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v6, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v5, v5, v6

    iget-object v0, v5, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 168
    .local v0, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v4, "raf":Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 171
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 175
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 183
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 173
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 176
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 181
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savedMiuiLockPatternExists()Z
    .locals 2

    .prologue
    .line 155
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setBluetoothAddressToUnlock(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothKeyToUnlock(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothNameToUnlock(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothUnlockEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_unlock_status"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyguardLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "failedAttempts"    # I

    .prologue
    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 194
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 195
    return-wide v0
.end method

.method public setKeyguardPasswordQuality(I)V
    .locals 6
    .param p1, "quality"    # I

    .prologue
    .line 338
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 339
    .local v0, "permissionString":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 340
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 341
    const-string v2, "lockscreen.password_type"

    int-to-long v4, p1

    invoke-virtual {p0, v2, v4, v5}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 345
    return-void

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 209
    return-void
.end method
