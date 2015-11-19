.class Lmiui/bluetooth/ble/MiBleProfile$3;
.super Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;
.source "MiBleProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/MiBleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleProfile;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleProfile;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyProperty(Landroid/os/ParcelUuid;I[B)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "property"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v1, "MiBleProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPropertyCallback() property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v1, v1, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 278
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
