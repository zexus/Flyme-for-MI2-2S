.class Lmiui/bluetooth/ble/IBleEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBleEventCallback.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBleEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBleEventCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lmiui/bluetooth/ble/IBleEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/bluetooth/ble/IBleEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "miui.bluetooth.ble.IBleEventCallback"

    return-object v0
.end method

.method public onEvent(Ljava/lang/String;I[B)Z
    .locals 7
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "miui.bluetooth.ble.IBleEventCallback"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget-object v4, p0, Lmiui/bluetooth/ble/IBleEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v2, v3

    .line 99
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
