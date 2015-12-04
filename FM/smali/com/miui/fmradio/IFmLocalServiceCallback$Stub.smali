.class public abstract Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IFmLocalServiceCallback.java"

# interfaces
.implements Lcom/miui/fmradio/IFmLocalServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/IFmLocalServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/IFmLocalServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalServiceCallback;
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
    const-string v1, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/fmradio/IFmLocalServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/fmradio/IFmLocalServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmServiceReady()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmServiceDestroyed()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmTurnedOn()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmTurnedOff()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmServiceError(II)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_6
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmTuneCompleted(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmSeekCompleted(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmAudioPathChanged(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmRdsChanged(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 125
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmSleepModeChange(Z)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Z
    :sswitch_b
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmRecordStarted(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmRecordError(II)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_d
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onFmRecordStop(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 163
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onHeadsetStateChanged(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":Z
    :sswitch_f
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onServiceClean()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    :sswitch_10
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onScanStart()V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    :sswitch_11
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onStationScaned(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v3, "com.miui.fmradio.IFmLocalServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;->onScanComplete(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
