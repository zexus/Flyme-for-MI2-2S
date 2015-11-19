.class public abstract Lcom/milink/api/v1/aidl/IMcs$Stub;
.super Landroid/os/Binder;
.source "IMcs.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcs"

.field static final TRANSACTION_connect:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_getPlaybackDuration:I = 0x17

.field static final TRANSACTION_getPlaybackProgress:I = 0x16

.field static final TRANSACTION_getPlaybackRate:I = 0x14

.field static final TRANSACTION_getVolume:I = 0x19

.field static final TRANSACTION_rotatePhoto:I = 0x1a

.field static final TRANSACTION_setDataSource:I = 0x3

.field static final TRANSACTION_setDelegate:I = 0x5

.field static final TRANSACTION_setDeviceListener:I = 0x1

.field static final TRANSACTION_setDeviceName:I = 0x7

.field static final TRANSACTION_setPlaybackProgress:I = 0x15

.field static final TRANSACTION_setPlaybackRate:I = 0x13

.field static final TRANSACTION_setVolume:I = 0x18

.field static final TRANSACTION_show:I = 0xb

.field static final TRANSACTION_startPlayAudio:I = 0x11

.field static final TRANSACTION_startPlayAudioEx:I = 0x1c

.field static final TRANSACTION_startPlayVideo:I = 0x10

.field static final TRANSACTION_startPlayVideoEx:I = 0x1b

.field static final TRANSACTION_startShow:I = 0xa

.field static final TRANSACTION_startSlideshow:I = 0xe

.field static final TRANSACTION_stopPlay:I = 0x12

.field static final TRANSACTION_stopShow:I = 0xd

.field static final TRANSACTION_stopSlideshow:I = 0xf

.field static final TRANSACTION_unsetDataSource:I = 0x4

.field static final TRANSACTION_unsetDelegate:I = 0x6

.field static final TRANSACTION_unsetDeviceListener:I = 0x2

.field static final TRANSACTION_zoomPhoto:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p0, p0, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;
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
    const-string v1, "com.milink.api.v1.aidl.IMcs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcs;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/milink/api/v1/aidl/IMcs;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 26
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 351
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object v3

    .line 50
    .local v3, "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    :sswitch_2
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object v3

    .line 59
    .restart local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v2, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    :sswitch_3
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    .line 68
    .local v3, "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    :sswitch_4
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    .line 77
    .restart local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    :sswitch_5
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object v3

    .line 86
    .local v3, "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 92
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    :sswitch_6
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v3    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    :sswitch_7
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceName(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/milink/api/v1/aidl/IMcs$Stub;->connect(Ljava/lang/String;I)I

    move-result v11

    .line 116
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 122
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v11    # "_result":I
    :sswitch_9
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->disconnect()I

    move-result v11

    .line 124
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 130
    .end local v11    # "_result":I
    :sswitch_a
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startShow()I

    move-result v11

    .line 132
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 138
    .end local v11    # "_result":I
    :sswitch_b
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->show(Ljava/lang/String;)I

    move-result v11

    .line 142
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 148
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_c
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 156
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 158
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 162
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 164
    .local v9, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .local v10, "_arg7":F
    move-object/from16 v2, p0

    .line 165
    invoke-virtual/range {v2 .. v10}, Lcom/milink/api/v1/aidl/IMcs$Stub;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result v11

    .line 166
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 172
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":F
    .end local v11    # "_result":I
    :sswitch_d
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopShow()I

    move-result v11

    .line 174
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 180
    .end local v11    # "_result":I
    :sswitch_e
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 185
    .local v4, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startSlideshow(IZ)I

    move-result v11

    .line 186
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 184
    .end local v4    # "_arg1":Z
    .end local v11    # "_result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 192
    .end local v3    # "_arg0":I
    :sswitch_f
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopSlideshow()I

    move-result v11

    .line 194
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    .end local v11    # "_result":I
    :sswitch_10
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 208
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .local v16, "_arg3":D
    move-object/from16 v12, p0

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .line 209
    invoke-virtual/range {v12 .. v17}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v11

    .line 210
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 216
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v11    # "_result":I
    .end local v16    # "_arg3":D
    :sswitch_11
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .restart local v16    # "_arg3":D
    move-object/from16 v12, p0

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .line 225
    invoke-virtual/range {v12 .. v17}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v11

    .line 226
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 232
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v11    # "_result":I
    .end local v16    # "_arg3":D
    :sswitch_12
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopPlay()I

    move-result v11

    .line 234
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 240
    .end local v11    # "_result":I
    :sswitch_13
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackRate(I)I

    move-result v11

    .line 244
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 250
    .end local v3    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_14
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackRate()I

    move-result v11

    .line 252
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 258
    .end local v11    # "_result":I
    :sswitch_15
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackProgress(I)I

    move-result v11

    .line 262
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 268
    .end local v3    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_16
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackProgress()I

    move-result v11

    .line 270
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    .end local v11    # "_result":I
    :sswitch_17
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackDuration()I

    move-result v11

    .line 278
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 284
    .end local v11    # "_result":I
    :sswitch_18
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setVolume(I)I

    move-result v11

    .line 288
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 294
    .end local v3    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_19
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getVolume()I

    move-result v11

    .line 296
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 302
    .end local v11    # "_result":I
    :sswitch_1a
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 308
    .local v4, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 309
    .local v5, "_arg2":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/milink/api/v1/aidl/IMcs$Stub;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result v11

    .line 310
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 306
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":F
    .end local v11    # "_result":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 316
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 326
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .local v24, "_arg4":D
    move-object/from16 v19, p0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    .line 327
    invoke-virtual/range {v19 .. v25}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v11

    .line 328
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 334
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v11    # "_result":I
    .end local v24    # "_arg4":D
    :sswitch_1c
    const-string v2, "com.milink.api.v1.aidl.IMcs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 344
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .restart local v24    # "_arg4":D
    move-object/from16 v19, p0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    .line 345
    invoke-virtual/range {v19 .. v25}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v11

    .line 346
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v2, 0x1

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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
