.class public Lcom/miui/fmradio/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEFAULT_FREQ:I

.field public static final MAX_FREQUENCY:I

.field public static final MIN_FREQUENCY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const v1, 0x1a5e0

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result v1

    sput v1, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    .line 34
    sget v1, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result v1

    sput v1, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    .line 38
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "region":Ljava/lang/String;
    const-string v1, "MY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/16 v1, 0x226a

    sput v1, Lcom/miui/fmradio/Utils;->DEFAULT_FREQ:I

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v1, "BR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const/16 v1, 0x227e

    sput v1, Lcom/miui/fmradio/Utils;->DEFAULT_FREQ:I

    goto :goto_0

    .line 44
    :cond_1
    const/16 v1, 0x2238

    sput v1, Lcom/miui/fmradio/Utils;->DEFAULT_FREQ:I

    goto :goto_0
.end method

.method public static final formatFrequency(I)Ljava/lang/String;
    .locals 4
    .param p0, "freq"    # I

    .prologue
    .line 49
    const-string v0, "%d.%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/miui/fmradio/Utils;->getMHZ(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/miui/fmradio/Utils;->getKHZ(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultFrequency()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/miui/fmradio/Utils;->DEFAULT_FREQ:I

    return v0
.end method

.method public static final getFrequency(F)I
    .locals 1
    .param p0, "freq"    # F

    .prologue
    .line 81
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final getKHZ(I)I
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 69
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static final getMHZ(I)I
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 65
    div-int/lit8 v0, p0, 0x64

    return v0
.end method

.method public static final getMaxFrequency()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    return v0
.end method

.method public static final getMinFrequency()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    return v0
.end method

.method public static final isValidFrequency(I)Z
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 53
    sget v0, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    if-gt p0, v0, :cond_0

    sget v0, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toServiceUsedFrequency(I)I
    .locals 2
    .param p0, "unifiedFreq"    # I

    .prologue
    .line 89
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toUnifiedFrequency(I)I
    .locals 2
    .param p0, "uniqueFreq"    # I

    .prologue
    .line 93
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
