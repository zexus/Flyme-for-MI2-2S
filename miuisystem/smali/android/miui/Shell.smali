.class public Landroid/miui/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static final EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

.field private static final TAG:Ljava/lang/String; = "Shell"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    const-string v3, "shell_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "externalStoragePath":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    sput-object v3, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "emulatedExternalStoragePath":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "emulatedExternalStoragePath":Ljava/lang/String;
    :goto_1
    sput-object v0, Landroid/miui/Shell;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 158
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "legacyExternalStoragePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Landroid/miui/Shell;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    .line 160
    return-void

    .line 151
    .end local v2    # "legacyExternalStoragePath":Ljava/lang/String;
    :cond_0
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 155
    .restart local v0    # "emulatedExternalStoragePath":Ljava/lang/String;
    :cond_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    .end local v0    # "emulatedExternalStoragePath":Ljava/lang/String;
    .restart local v2    # "legacyExternalStoragePath":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final boostCpuPulse()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 25
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/miui/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chmodRecursion(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 30
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/miui/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "owner"    # I
    .param p2, "group"    # I

    .prologue
    .line 35
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/miui/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static chownRecursion(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "owner"    # I
    .param p2, "group"    # I

    .prologue
    .line 40
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/miui/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getRuntimeSharedValue(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 175
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Landroid/miui/Shell;->nativeGetRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 163
    move-object v0, p0

    .line 164
    .local v0, "ret":Ljava/lang/String;
    sget-boolean v1, Landroid/miui/Shell;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/miui/Shell;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeLink(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/miui/Shell;->nativeMkdirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeMove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBoostCpuPulse()Z
.end method

.method private static native nativeChmod(Ljava/lang/String;II)Z
.end method

.method private static native nativeChown(Ljava/lang/String;III)Z
.end method

.method private static native nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeGetRuntimeSharedValue(Ljava/lang/String;)J
.end method

.method private static native nativeLink(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeMkdirs(Ljava/lang/String;)Z
.end method

.method private static native nativeMove(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeReadByteArray(Ljava/lang/String;)[B
.end method

.method private static native nativeRemove(Ljava/lang/String;)Z
.end method

.method private static native nativeRun(Ljava/lang/String;)Z
.end method

.method private static native nativeRunShell(Ljava/lang/String;)Z
.end method

.method private static native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSetRuntimeSharedValue(Ljava/lang/String;J)Z
.end method

.method private static native nativeSetfilecon(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWriteByteArray(Ljava/lang/String;Z[B)Z
.end method

.method public static final readByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Landroid/miui/Shell;->nativeReadByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Landroid/miui/Shell;->nativeRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/miui/Shell;->nativeRun(Ljava/lang/String;)Z

    move-result v1

    return v1

    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 78
    goto :goto_0
.end method

.method public static varargs runShell(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/miui/Shell;->nativeRunShell(Ljava/lang/String;)Z

    move-result v1

    return v1

    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 83
    goto :goto_0
.end method

.method public static final setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setRuntimeSharedValue(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/miui/Shell;->nativeSetRuntimeSharedValue(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method public static final setfilecon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "scontext"    # Ljava/lang/String;

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeSetfilecon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final writeByteArray(Ljava/lang/String;Z[B)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Landroid/miui/Shell;->nativeWriteByteArray(Ljava/lang/String;Z[B)Z

    move-result v0

    return v0
.end method
