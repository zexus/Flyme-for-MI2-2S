.class public final Lmiui/bluetooth/ble/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 159
    iput-object p2, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 160
    iput-object p3, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 161
    iput-object p6, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 162
    iput p4, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    .line 163
    iput p5, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    .line 164
    iput-object p7, p0, Lmiui/bluetooth/ble/ScanRecord;->mBytes:[B

    .line 165
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 337
    new-array v0, p2, [B

    .line 338
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 339
    return-object v0
.end method

.method public static parseFromBytes([B)Lmiui/bluetooth/ble/ScanRecord;
    .locals 30
    .param p0, "scanRecord"    # [B

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v3, 0x0

    .line 266
    :goto_0
    return-object v3

    .line 183
    :cond_0
    const/16 v18, 0x0

    .line 184
    .local v18, "currentPos":I
    const/4 v7, -0x1

    .line 185
    .local v7, "advertiseFlag":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v9, 0x0

    .line 187
    .local v9, "localName":Ljava/lang/String;
    const/high16 v8, -0x80000000

    .line 189
    .local v8, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v5, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    move/from16 v19, v18

    .line 193
    .end local v18    # "currentPos":I
    .local v19, "currentPos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, v19

    if-ge v0, v3, :cond_3

    .line 195
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :try_start_1
    aget-byte v3, p0, v19

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 196
    .local v23, "length":I
    if-nez v23, :cond_2

    .line 257
    .end local v23    # "length":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    const/4 v4, 0x0

    .line 260
    :cond_1
    new-instance v3, Lmiui/bluetooth/ble/ScanRecord;

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lmiui/bluetooth/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v21

    .line 263
    .end local v9    # "localName":Ljava/lang/String;
    .local v21, "e":Ljava/lang/Exception;
    :goto_3
    const-string v3, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse scan record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v10, Lmiui/bluetooth/ble/ScanRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Lmiui/bluetooth/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    move-object v3, v10

    goto :goto_0

    .line 200
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v9    # "localName":Ljava/lang/String;
    .restart local v23    # "length":I
    :cond_2
    add-int/lit8 v20, v23, -0x1

    .line 202
    .local v20, "dataLength":I
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    :try_start_2
    aget-byte v3, p0, v18

    and-int/lit16 v0, v3, 0xff

    move/from16 v22, v0

    .line 203
    .local v22, "fieldType":I
    sparse-switch v22, :sswitch_data_0

    .line 254
    :goto_4
    add-int v18, v19, v20

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    move/from16 v19, v18

    .line 255
    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    goto :goto_1

    .line 205
    :sswitch_0
    aget-byte v3, p0, v19

    and-int/lit16 v7, v3, 0xff

    .line 206
    goto :goto_4

    .line 209
    :sswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 262
    .end local v9    # "localName":Ljava/lang/String;
    .end local v20    # "dataLength":I
    .end local v22    # "fieldType":I
    .end local v23    # "length":I
    :catch_1
    move-exception v21

    move/from16 v18, v19

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    goto :goto_3

    .line 214
    .end local v18    # "currentPos":I
    .restart local v9    # "localName":Ljava/lang/String;
    .restart local v19    # "currentPos":I
    .restart local v20    # "dataLength":I
    .restart local v22    # "fieldType":I
    .restart local v23    # "length":I
    :sswitch_2
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 219
    :sswitch_3
    const/16 v3, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 224
    :sswitch_4
    new-instance v9, Ljava/lang/String;

    .end local v9    # "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 226
    .restart local v9    # "localName":Ljava/lang/String;
    goto :goto_4

    .line 228
    :sswitch_5
    aget-byte v8, p0, v19

    .line 229
    goto :goto_4

    .line 233
    :sswitch_6
    const/16 v29, 0x2

    .line 234
    .local v29, "serviceUuidLength":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v28

    .line 236
    .local v28, "serviceDataUuidBytes":[B
    invoke-static/range {v28 .. v28}, Lmiui/bluetooth/ble/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v27

    .line 237
    .local v27, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v3, v19, v29

    sub-int v10, v20, v29

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v26

    .line 239
    .local v26, "serviceDataArray":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 244
    .end local v26    # "serviceDataArray":[B
    .end local v27    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v28    # "serviceDataUuidBytes":[B
    .end local v29    # "serviceUuidLength":I
    :sswitch_7
    add-int/lit8 v3, v19, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v10, p0, v19

    and-int/lit16 v10, v10, 0xff

    add-int v25, v3, v10

    .line 246
    .local v25, "manufacturerId":I
    add-int/lit8 v3, v19, 0x2

    add-int/lit8 v10, v20, -0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v24

    .line 248
    .local v24, "manufacturerDataBytes":[B
    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .end local v20    # "dataLength":I
    .end local v22    # "fieldType":I
    .end local v23    # "length":I
    .end local v24    # "manufacturerDataBytes":[B
    .end local v25    # "manufacturerId":I
    :cond_3
    move/from16 v18, v19

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    goto/16 :goto_2

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 325
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 326
    invoke-static {p0, p1, p3}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 328
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Lmiui/bluetooth/ble/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sub-int/2addr p2, p3

    .line 330
    add-int/2addr p1, p3

    .line 331
    goto :goto_0

    .line 332
    .end local v0    # "uuidBytes":[B
    :cond_0
    return p1
.end method

.method private static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 13
    .param p0, "uuidBytes"    # [B

    .prologue
    const/16 v12, 0x10

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 288
    if-nez p0, :cond_0

    .line 289
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "uuidBytes cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 291
    :cond_0
    array-length v1, p0

    .line 292
    .local v1, "length":I
    if-eq v1, v11, :cond_1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_1

    if-eq v1, v12, :cond_1

    .line 294
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uuidBytes length invalid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 298
    :cond_1
    if-ne v1, v12, :cond_2

    .line 299
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 300
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 301
    .local v4, "msb":J
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 302
    .local v2, "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 319
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v8

    .line 308
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_2
    if-ne v1, v11, :cond_3

    .line 309
    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    .line 310
    .local v6, "shortUuid":J
    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 317
    :goto_1
    sget-object v8, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    const/16 v10, 0x20

    shl-long v10, v6, v10

    add-long v4, v8, v10

    .line 318
    .restart local v4    # "msb":J
    sget-object v8, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 319
    .restart local v2    # "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 312
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v6    # "shortUuid":J
    :cond_3
    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    .line 313
    .restart local v6    # "shortUuid":J
    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 314
    aget-byte v8, p0, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 315
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_1
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    .line 347
    const-string v2, "null"

    .line 358
    :goto_0
    return-object v2

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const-string v2, "{}"

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 355
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    .line 366
    const-string v4, "null"

    .line 383
    :goto_0
    return-object v4

    .line 368
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    const-string v4, "{}"

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 376
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 382
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Lmiui/bluetooth/ble/ScanRecord;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Lmiui/bluetooth/ble/ScanRecord;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
