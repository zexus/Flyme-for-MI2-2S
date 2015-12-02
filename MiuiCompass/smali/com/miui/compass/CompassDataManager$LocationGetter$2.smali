.class Lcom/miui/compass/CompassDataManager$LocationGetter$2;
.super Ljava/lang/Object;
.source "CompassDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassDataManager$LocationGetter;->run()V
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
    .line 365
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter$2;->this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter$2;->this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;

    # getter for: Lcom/miui/compass/CompassDataManager$LocationGetter;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager$LocationGetter;->access$2200(Lcom/miui/compass/CompassDataManager$LocationGetter;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/miui/compass/CompassDataManager$LocationGetter$2;->this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;

    # getter for: Lcom/miui/compass/CompassDataManager$LocationGetter;->listener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/miui/compass/CompassDataManager$LocationGetter;->access$2100(Lcom/miui/compass/CompassDataManager$LocationGetter;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Compass:CompassDataManager"

    const-string v1, "No network location provider found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter$2;->this$1:Lcom/miui/compass/CompassDataManager$LocationGetter;

    const/4 v1, 0x0

    # setter for: Lcom/miui/compass/CompassDataManager$LocationGetter;->running:Z
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager$LocationGetter;->access$2302(Lcom/miui/compass/CompassDataManager$LocationGetter;Z)Z

    goto :goto_0
.end method
