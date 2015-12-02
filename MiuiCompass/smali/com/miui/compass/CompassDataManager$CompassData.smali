.class public Lcom/miui/compass/CompassDataManager$CompassData;
.super Ljava/lang/Object;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompassData"
.end annotation


# instance fields
.field private mAltitude:F

.field private mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

.field private mLatitude:D

.field private mLongitude:D

.field private mPressure:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide v0, -0x3f86c00000000000L    # -404.0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-wide v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLongitude:D

    .line 421
    iput-wide v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLatitude:D

    .line 422
    const/high16 v0, -0x3c360000    # -404.0f

    iput v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/compass/CompassDataManager$CompassData;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;

    .prologue
    .line 416
    iget v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/compass/CompassDataManager$CompassData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;
    .param p1, "x1"    # F

    .prologue
    .line 416
    iput p1, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/compass/CompassDataManager$CompassData;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;
    .param p1, "x1"    # Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/compass/CompassDataManager$CompassData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;
    .param p1, "x1"    # F

    .prologue
    .line 416
    iput p1, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mAltitude:F

    return p1
.end method

.method static synthetic access$202(Lcom/miui/compass/CompassDataManager$CompassData;D)D
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;
    .param p1, "x1"    # D

    .prologue
    .line 416
    iput-wide p1, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/miui/compass/CompassDataManager$CompassData;D)D
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$CompassData;
    .param p1, "x1"    # D

    .prologue
    .line 416
    iput-wide p1, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLatitude:D

    return-wide p1
.end method


# virtual methods
.method public getAltitude()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mAltitude:F

    return v0
.end method

.method public getAltitudeAccuracy()Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mLongitude:D

    return-wide v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F

    return v0
.end method
