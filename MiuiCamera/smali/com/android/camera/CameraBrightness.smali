.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$1;,
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field private static mScreenManualBrightnessSpline:Landroid/util/Spline;


# instance fields
.field private mBrightness:I

.field private mBrightnessAdjustValue:I

.field private mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;

.field private mFirstFocusChanged:Z

.field private mPaused:Z

.field private mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I

    .line 30
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    return v0
.end method

.method static synthetic access$100()Landroid/util/Spline;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->createSpline()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraBrightness;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraBrightness;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->getCurrentBackLight()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CameraBrightness;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraBrightness;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p1
.end method

.method static synthetic access$512(Lcom/android/camera/CameraBrightness;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private adjustBrightness()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 79
    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    .line 81
    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 85
    :cond_0
    return-void
.end method

.method private static createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 8
    .param p0, "inBrightness"    # [I
    .param p1, "outBrightness"    # [I

    .prologue
    .line 201
    :try_start_0
    array-length v2, p0

    .line 202
    .local v2, "n":I
    new-array v4, v2, [F

    .line 203
    .local v4, "x":[F
    new-array v5, v2, [F

    .line 205
    .local v5, "y":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 206
    aget v6, p0, v1

    int-to-float v6, v6

    aput v6, v4, v1

    .line 207
    aget v6, p1, v1

    int-to-float v6, v6

    aput v6, v5, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 220
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "x":[F
    .end local v5    # "y":[F
    :goto_1
    return-object v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "CameraBrightness"

    const-string v7, "Could not create manual-brightness spline."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createSpline()V
    .locals 4

    .prologue
    .line 178
    const-string v2, "config_manualBrightnessRemapIn"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 179
    .local v0, "inBrightness":[I
    const-string v2, "config_manualBrightnessRemapOut"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 182
    .local v1, "outBrightness":[I
    invoke-static {v1, v0}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 183
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v2, :cond_0

    .line 184
    const-string v2, "CameraBrightness"

    const-string v3, "Error to create manual brightness spline"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method

.method private getArray(Ljava/lang/String;)[I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    const-class v1, Lcom/android/internal/R$array;

    const-string v2, "I"

    invoke-static {v1, p1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 191
    .local v0, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .end local v0    # "field":Lmiui/reflect/Field;
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v1

    .line 196
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    .line 193
    :catch_1
    move-exception v1

    goto :goto_1

    .line 196
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private getCurrentBackLight()V
    .locals 5

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "backlight":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "tryTimes":I
    :goto_0
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 132
    const-string v2, "cat sys/class/leds/lcd-backlight/brightness"

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraBrightness;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    .line 141
    const-string v2, "CameraBrightness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentBackLight current setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_2
    return-void

    .line 143
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    goto :goto_2

    .line 135
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private needSetBrightness()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 109
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method


# virtual methods
.method public execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 149
    .local v8, "time":J
    const-string v5, ""

    .line 150
    .local v5, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 153
    .local v4, "proc":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-eqz v10, :cond_0

    .line 154
    const-string v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exit value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 174
    .end local v4    # "proc":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 157
    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "proc":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 161
    .local v3, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 167
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 168
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "proc":Ljava/lang/Process;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_2
    const-string v10, "CameraBrightness"

    const-string v11, "execCommand InterruptedException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    move-object v6, v5

    .line 174
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "proc":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    const-string v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execCommand result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cost="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 173
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 170
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "proc":Ljava/lang/Process;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    const-string v10, "CameraBrightness"

    const-string v11, "execCommand IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "proc":Ljava/lang/Process;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 167
    .end local v4    # "proc":Ljava/lang/Process;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 124
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 115
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->needSetBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "CameraBrightness"

    const-string v1, "onResume adjustBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 119
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x1

    .line 88
    const-string v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFirstFocusChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 90
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 97
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    goto :goto_0

    .line 96
    :cond_3
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method
