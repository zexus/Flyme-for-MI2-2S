.class public abstract Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMiBle.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBluetoothMiBle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBluetoothMiBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IBluetoothMiBle"

.field static final TRANSACTION_authenticate:I = 0xf

.field static final TRANSACTION_authorize:I = 0xd

.field static final TRANSACTION_connect:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x5

.field static final TRANSACTION_encrypt:I = 0x11

.field static final TRANSACTION_getConnectedDevices:I = 0x6

.field static final TRANSACTION_getProperty:I = 0xc

.field static final TRANSACTION_getRssi:I = 0x7

.field static final TRANSACTION_getServiceVersion:I = 0x12

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_registerPropertyCallback:I = 0x9

.field static final TRANSACTION_setEncryptionKey:I = 0x10

.field static final TRANSACTION_setProperty:I = 0xb

.field static final TRANSACTION_setRssiThreshold:I = 0xe

.field static final TRANSACTION_supportProperty:I = 0x8

.field static final TRANSACTION_unregisterClient:I = 0x2

.field static final TRANSACTION_unregisterPropertyCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBle;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/bluetooth/ble/IBluetoothMiBle;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 64
    .local v2, "_arg2":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    move-result-object v3

    .line 65
    .local v3, "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    .end local v3    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 71
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    :sswitch_2
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 83
    .restart local v2    # "_arg2":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 89
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    :sswitch_3
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->isConnected(Ljava/lang/String;)Z

    move-result v4

    .line 93
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 104
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 109
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_3

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_5
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 120
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 125
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->disconnect(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_4

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 133
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 149
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 150
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v4    # "_result":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_5

    .line 156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->supportProperty(Ljava/lang/String;I)Z

    move-result v4

    .line 162
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 173
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 179
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    move-result-object v3

    .line 182
    .local v3, "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v4

    .line 183
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .end local v4    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_6

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_a
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    .line 194
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 200
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    move-result-object v3

    .line 203
    .restart local v3    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v4

    .line 204
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .end local v4    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_7

    .line 210
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_b
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 215
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 221
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 224
    .local v3, "_arg3":[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v4

    .line 225
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v4, :cond_b

    move v6, v7

    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_8

    .line 231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_c
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 236
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 242
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B

    move-result-object v4

    .line 244
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 239
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":[B
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 250
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_d
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    .line 255
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 261
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->authorize(Ljava/lang/String;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    .line 263
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_a

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_e
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    .line 274
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 280
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setRssiThreshold(Ljava/lang/String;Landroid/os/ParcelUuid;I)Z

    move-result v4

    .line 282
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_b

    .line 288
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_f
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    .line 293
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 298
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->authenticate(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 299
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_12

    move v6, v7

    :cond_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v4    # "_result":Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_c

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_10
    const-string v8, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_15

    .line 310
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 316
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 317
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setEncryptionKey(Ljava/lang/String;Landroid/os/ParcelUuid;[B)Z

    move-result v4

    .line 318
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v4, :cond_14

    move v6, v7

    :cond_14
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Z
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_d

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_11
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 329
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 335
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 336
    .restart local v2    # "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->encrypt(Ljava/lang/String;Landroid/os/ParcelUuid;[B)[B

    move-result-object v4

    .line 337
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 332
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":[B
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_e

    .line 343
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_12
    const-string v6, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getServiceVersion()I

    move-result v4

    .line 345
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
