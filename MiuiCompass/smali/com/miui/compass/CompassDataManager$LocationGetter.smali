.class Lcom/miui/compass/CompassDataManager$LocationGetter;
.super Ljava/lang/Thread;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationGetter"
.end annotation


# instance fields
.field private listener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private running:Z

.field final synthetic this$0:Lcom/miui/compass/CompassDataManager;


# direct methods
.method private constructor <init>(Lcom/miui/compass/CompassDataManager;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->running:Z

    .line 346
    new-instance v0, Lcom/miui/compass/CompassDataManager$LocationGetter$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassDataManager$LocationGetter$1;-><init>(Lcom/miui/compass/CompassDataManager$LocationGetter;)V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/compass/CompassDataManager;Lcom/miui/compass/CompassDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/compass/CompassDataManager;
    .param p2, "x1"    # Lcom/miui/compass/CompassDataManager$1;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassDataManager$LocationGetter;-><init>(Lcom/miui/compass/CompassDataManager;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/compass/CompassDataManager$LocationGetter;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$LocationGetter;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->listener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/compass/CompassDataManager$LocationGetter;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$LocationGetter;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/miui/compass/CompassDataManager$LocationGetter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager$LocationGetter;
    .param p1, "x1"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->running:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->running:Z

    .line 398
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->locationManager:Landroid/location/LocationManager;

    .line 365
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    new-instance v1, Lcom/miui/compass/CompassDataManager$LocationGetter$2;

    invoke-direct {v1, p0}, Lcom/miui/compass/CompassDataManager$LocationGetter$2;-><init>(Lcom/miui/compass/CompassDataManager$LocationGetter;)V

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->running:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    # setter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager;->access$702(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 381
    const-string v0, "Compass:CompassDataManager"

    const-string v1, "doCalibrateAltitude get newwork location fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->getGpsLocation()Landroid/location/Location;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$1700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v1

    # setter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager;->access$702(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)Landroid/location/Location;

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    .line 385
    const-string v0, "Compass:CompassDataManager"

    const-string v1, "doCalibrateAltitude can\'t get available location"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$LocationGetter;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 389
    :cond_3
    return-void
.end method

.method public stopRunning()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/miui/compass/CompassDataManager$LocationGetter;->cancel()V

    .line 393
    invoke-virtual {p0}, Lcom/miui/compass/CompassDataManager$LocationGetter;->join()V

    .line 394
    return-void
.end method
