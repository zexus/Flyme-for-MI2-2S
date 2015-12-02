.class public final enum Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
.super Ljava/lang/Enum;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AltitudeAccuracy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

.field public static final enum IMPRECISE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

.field public static final enum REFERENTIAL:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

.field public static final enum RELIABLE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 405
    new-instance v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    const-string v1, "RELIABLE"

    invoke-direct {v0, v1, v2}, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->RELIABLE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .line 409
    new-instance v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    const-string v1, "IMPRECISE"

    invoke-direct {v0, v1, v3}, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->IMPRECISE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .line 413
    new-instance v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    const-string v1, "REFERENTIAL"

    invoke-direct {v0, v1, v4}, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->REFERENTIAL:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .line 401
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    sget-object v1, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->RELIABLE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->IMPRECISE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->REFERENTIAL:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->$VALUES:[Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    return-object v0
.end method

.method public static values()[Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->$VALUES:[Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    invoke-virtual {v0}, [Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    return-object v0
.end method
