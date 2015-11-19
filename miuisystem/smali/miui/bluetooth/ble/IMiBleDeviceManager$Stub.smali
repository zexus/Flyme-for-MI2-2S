.class public abstract Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IMiBleDeviceManager.java"

# interfaces
.implements Lmiui/bluetooth/ble/IMiBleDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IMiBleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IMiBleDeviceManager"

.field static final TRANSACTION_deleteSettings:I = 0x6

.field static final TRANSACTION_getBoundDevices:I = 0xd

.field static final TRANSACTION_getDeviceSettings:I = 0x5

.field static final TRANSACTION_getDeviceType:I = 0x7

.field static final TRANSACTION_getRegisterAppForBleEvent:I = 0x10

.field static final TRANSACTION_getScanResult:I = 0x11

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_getSettingInteger:I = 0x4

.field static final TRANSACTION_getSettingString:I = 0x2

.field static final TRANSACTION_registerAppForBleEvent:I = 0xe

.field static final TRANSACTION_registerBleEventListener:I = 0xa

.field static final TRANSACTION_setSettingInteger:I = 0x3

.field static final TRANSACTION_setSettingString:I = 0x1

.field static final TRANSACTION_startScanDevice:I = 0x8

.field static final TRANSACTION_stopScanDevice:I = 0x9

.field static final TRANSACTION_unregisterAppForBleEvent:I = 0xf

.field static final TRANSACTION_unregisterBleEventListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IMiBleDeviceManager;
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
    const-string v1, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/bluetooth/ble/IMiBleDeviceManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 59
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 85
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 97
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 107
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_6
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->deleteSettings(Ljava/lang/String;)Z

    move-result v4

    .line 117
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getDeviceType(Ljava/lang/String;)I

    move-result v4

    .line 127
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_8
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 144
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IScanDeviceCallback;

    move-result-object v3

    .line 147
    .local v3, "_arg3":Lmiui/bluetooth/ble/IScanDeviceCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z

    move-result v4

    .line 148
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v4, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lmiui/bluetooth/ble/IScanDeviceCallback;
    .end local v4    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 154
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 157
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 162
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->stopScanDevice(Landroid/os/ParcelUuid;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 168
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_a
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBleEventCallback;

    move-result-object v2

    .line 175
    .local v2, "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v4

    .line 176
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBleEventCallback;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v4

    .line 190
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getServiceVersion()I

    move-result v4

    .line 198
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v4    # "_result":I
    :sswitch_d
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getBoundDevices()Ljava/util/List;

    move-result-object v5

    .line 206
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 212
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->registerAppForBleEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 218
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 229
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->unregisterAppForBleEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 230
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v6, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v8, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v4

    .line 252
    .local v4, "_result":Lmiui/bluetooth/ble/ScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v4, :cond_a

    .line 254
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v4, p3, v7}, Lmiui/bluetooth/ble/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 258
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
