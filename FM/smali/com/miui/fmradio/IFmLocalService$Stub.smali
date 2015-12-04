.class public abstract Lcom/miui/fmradio/IFmLocalService$Stub;
.super Landroid/os/Binder;
.source "IFmLocalService.java"

# interfaces
.implements Lcom/miui/fmradio/IFmLocalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/IFmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/IFmLocalService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.miui.fmradio.IFmLocalService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/fmradio/IFmLocalService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/fmradio/IFmLocalService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/fmradio/IFmLocalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->initFmService()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalServiceCallback;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lcom/miui/fmradio/IFmLocalServiceCallback;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/miui/fmradio/IFmLocalServiceCallback;
    :sswitch_3
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalServiceCallback;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Lcom/miui/fmradio/IFmLocalServiceCallback;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lcom/miui/fmradio/IFmLocalServiceCallback;
    :sswitch_4
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->isFmServiceReady()Z

    move-result v2

    .line 74
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->isFmOn()Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->turnFmOn(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->turnFmOff()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_8
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 107
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->seekFm(Z)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 106
    goto :goto_1

    .line 113
    :sswitch_9
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->tuneFm(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalService$Stub;->setAudioPath(I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->getAudioPath()I

    move-result v2

    .line 133
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v2    # "_result":I
    :sswitch_c
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 142
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/IFmLocalService$Stub;->setDelayedStop(J)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":J
    :sswitch_d
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->cancelDelayedStop()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    :sswitch_e
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->isInSleepMode()Z

    move-result v2

    .line 157
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->getCurrentFrequency()I

    move-result v2

    .line 165
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v2    # "_result":I
    :sswitch_10
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->isScanning()Z

    move-result v2

    .line 173
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->scanStations()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    :sswitch_12
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->abortScanStations()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    :sswitch_13
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->startRecord()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    :sswitch_14
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->stopRecord()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    :sswitch_15
    const-string v4, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->getRecordingTimeInMillis()J

    move-result-wide v2

    .line 209
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 215
    .end local v2    # "_result":J
    :sswitch_16
    const-string v6, "com.miui.fmradio.IFmLocalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;->isRecording()Z

    move-result v2

    .line 217
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
