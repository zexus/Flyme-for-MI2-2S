.class public Lcom/miui/fmservice/FmServiceUtils;
.super Ljava/lang/Object;
.source "FmServiceUtils.java"


# static fields
.field public static final MIN_FREQUENCY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "region":Ljava/lang/String;
    const-string v1, "MY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const v1, 0x155cc

    sput v1, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v1, "BR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    const v1, 0x156f8

    sput v1, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    goto :goto_0

    .line 25
    :cond_1
    const v1, 0x153d8

    sput v1, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    goto :goto_0
.end method
