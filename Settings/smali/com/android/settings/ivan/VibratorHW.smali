.class public Lcom/android/settings_ext/ivan/VibratorHW;
.super Ljava/lang/Object;
.source "VibratorHW.java"


# static fields
.field private static AMP_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/sys/class/timed_output/vibrator/amp"

    sput-object v0, Lcom/android/settings_ext/ivan/VibratorHW;->AMP_PATH:Ljava/lang/String;

    return-void
.end method

.method public static getCurIntensity()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings_ext/ivan/VibratorHW;->AMP_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ext/ivan/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultIntensity()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x5a

    return v0
.end method

.method public static getMaxIntensity()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x64

    return v0
.end method

.method public static getMinIntensity()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x46

    return v0
.end method

.method public static getWarningThreshold()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings_ext/ivan/VibratorHW;->AMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static setIntensity(I)Z
    .locals 2
    .param p0, "intensity"    # I

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings_ext/ivan/VibratorHW;->AMP_PATH:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/ivan/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
