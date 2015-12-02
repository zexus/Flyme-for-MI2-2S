.class Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;
.super Landroid/os/AsyncTask;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalibratAltitudeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifyUser:Z

.field final synthetic this$0:Lcom/miui/compass/CompassDataManager;


# direct methods
.method public constructor <init>(Lcom/miui/compass/CompassDataManager;Z)V
    .locals 0
    .param p2, "notifyUser"    # Z

    .prologue
    .line 199
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 200
    iput-boolean p2, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->mNotifyUser:Z

    .line 201
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->doCalibrateAltitude()I
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$600(Lcom/miui/compass/CompassDataManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$500(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$500(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->mNotifyUser:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/compass/CompassDataManager$CompassDataObserver;->onCalibrateComplete(IZ)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v1

    # invokes: Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager;->access$800(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)V

    .line 221
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$500(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$500(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->mNotifyUser:Z

    invoke-interface {v0, v1}, Lcom/miui/compass/CompassDataManager$CompassDataObserver;->onCalibrateStart(Z)V

    .line 208
    :cond_0
    return-void
.end method
