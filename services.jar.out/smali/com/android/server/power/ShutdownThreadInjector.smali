.class public final Lcom/android/server/power/ShutdownThreadInjector;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"


# static fields
.field private static final OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String; = "/data/system/disable_operator_animation"

.field private static final OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String; = "/data/system/disable_operator_audio"

.field private static final OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String; = "/data/miui/theme/operator/boots/shutdownanimation.zip"

.field private static final OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/data/miui/theme/operator/boots/shutdownaudio.mp3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAnimationFileExist(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/disable_operator_animation"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/theme/operator/boots/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShutdownMusicFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 65
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/disable_operator_audio"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/miui/theme/operator/boots/shutdownaudio.mp3"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/data/miui/theme/operator/boots/shutdownaudio.mp3"

    goto :goto_0
.end method

.method static needVibrator()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method static showShutdownAnimation(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 62
    return-void
.end method

.method static showShutdownDialog(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v9, 0x0

    .line 24
    new-instance v1, Landroid/app/Dialog;

    const v6, 0x103006d

    invoke-direct {v1, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    .local v1, "bootMsgDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x11030000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 26
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 27
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 28
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 29
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x1

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 30
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 32
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const v6, 0x110b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 36
    .local v4, "shutdownImage":Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 38
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 48
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    .end local v4    # "shutdownImage":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 44
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 46
    const-string v6, "sys.in_shutdown_progress"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
