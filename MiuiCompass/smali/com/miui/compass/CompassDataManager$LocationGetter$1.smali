.class Lcom/miui/compass/CompassDataManager$LocationGetter$1;
.super Ljava/lang/Object;
.source "CompassDataManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager$LocationGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassDataManager$LocationGetter;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter$1;->this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 358
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 352
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 349
    return-void
.end method
