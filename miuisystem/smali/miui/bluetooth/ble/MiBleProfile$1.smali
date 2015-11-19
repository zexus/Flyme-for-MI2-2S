.class Lmiui/bluetooth/ble/MiBleProfile$1;
.super Ljava/lang/Object;
.source "MiBleProfile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 217
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    const-string v1, "MiBleProfile"

    const-string v2, "onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {p2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBle;

    move-result-object v2

    iput-object v2, v1, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    .line 232
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v7, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v1, v1, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lmiui/bluetooth/ble/MiBleProfile;->access$200(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v3, v3, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v4, v4, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    invoke-static {v5}, Lmiui/bluetooth/ble/MiBleProfile;->access$300(Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle;->registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$400(Lmiui/bluetooth/ble/MiBleProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # setter for: Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z
    invoke-static {v1, v6}, Lmiui/bluetooth/ble/MiBleProfile;->access$402(Lmiui/bluetooth/ble/MiBleProfile;Z)Z

    .line 242
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 244
    :cond_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 237
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v7, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    .line 222
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # setter for: Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I
    invoke-static {v0, v3}, Lmiui/bluetooth/ble/MiBleProfile;->access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I

    .line 223
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void
.end method
