.class public Lcom/android/server/power/ButtonLightController;
.super Ljava/lang/Object;
.source "ButtonLightController.java"


# static fields
.field static sButtonLight:Lcom/android/server/lights/Light;

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field static sLightSensorButtonBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/server/power/ButtonLightController$2;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightController$2;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 95
    return-void
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "buttonLight"    # Lcom/android/server/lights/Light;

    .prologue
    const/4 v5, 0x1

    .line 26
    sput-object p1, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    .line 27
    sput-object p2, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/ButtonLightController$1;

    sget-object v4, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/server/power/ButtonLightController$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 37
    sput-boolean v5, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 38
    sput-boolean v5, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 39
    const/16 v0, 0xff

    sput v0, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    .line 40
    invoke-static {p0}, Lcom/android/server/power/ButtonLightController;->updateButtonLightTimeout(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static setButtonLightTimeout()V
    .locals 6

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 77
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v1, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 79
    :cond_2
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    sget v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-lez v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setScreenOn(Z)V
    .locals 1
    .param p0, "isScreenOn"    # Z

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-ne v0, p0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    sput-boolean p0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 102
    if-eqz p0, :cond_1

    .line 103
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    goto :goto_0
.end method

.method static turnOffButtonLight(I)V
    .locals 1
    .param p0, "newScreenState"    # I

    .prologue
    .line 86
    if-nez p0, :cond_0

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    .line 89
    :cond_0
    return-void
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "buttonLightTimeout":I
    sget v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-eq v0, v1, :cond_0

    .line 62
    sput v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    .line 63
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    .line 65
    :cond_0
    return-void
.end method
