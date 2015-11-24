.class public Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;
.super Lcom/android/settings_ext/MiuiConfirmCommonPassword;
.source "MiuiConfirmLockPasswordInstall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiConfirmCommonPassword;-><init>()V

    .line 60
    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    .line 23
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INSTALL_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {}, Lcom/android/settings_ext/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 26
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :try_start_0
    invoke-static {v0, v2}, Lcom/android/settings_ext/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    :try_start_1
    const-class v2, Landroid/os/RecoverySystem;

    const-string v3, "installPackage"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/io/File;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall$ApplyRomFile;

    invoke-direct {v6, p0, v1}, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall$ApplyRomFile;-><init>(Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;->finish()V

    .line 50
    return-void

    .line 29
    :catch_0
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 37
    :try_start_2
    new-instance v0, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall$ApplyRomFile;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall$ApplyRomFile;-><init>(Lcom/android/settings_ext/MiuiConfirmLockPasswordInstall;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 38
    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 41
    :catch_3
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 43
    :catch_4
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 45
    :catch_5
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method
