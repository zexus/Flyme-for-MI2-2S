.class public Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;
.super Ljava/lang/Object;
.source "PassportLandNodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aEP:Lorg/apache/thrift/protocol/a;

.field private static final aEQ:Lorg/apache/thrift/protocol/a;

.field private static final aEf:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field private eid:I

.field private ip:I

.field private rt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "PassportLandNodeInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "ip"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEf:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "eid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEP:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "rt"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEQ:Lorg/apache/thrift/protocol/a;

    .line 112
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 113
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;->aER:Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "ip"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;->aES:Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "eid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;->aET:Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "rt"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aDr:Ljava/util/Map;

    .line 120
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 124
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 390
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 393
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 394
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 430
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zm()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ip\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 423
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 425
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 399
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 400
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    .line 401
    invoke-virtual {p0, v2}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->bD(Z)V

    goto :goto_1

    .line 403
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 407
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 408
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    .line 409
    invoke-virtual {p0, v2}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->bE(Z)V

    goto :goto_1

    .line 411
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 415
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 416
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    .line 417
    invoke-virtual {p0, v2}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->bF(Z)V

    goto :goto_1

    .line 419
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zy()Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'eid\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zz()Z

    move-result v0

    if-nez v0, :cond_6

    .line 437
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'rt\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->validate()V

    .line 440
    return-void

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    if-ne v1, v2, :cond_0

    .line 322
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    if-ne v1, v2, :cond_0

    .line 331
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    if-ne v1, v2, :cond_0

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;)I
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 352
    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 357
    if-nez v0, :cond_0

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zy()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 362
    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 367
    if-nez v0, :cond_0

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 372
    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->zz()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 377
    if-nez v0, :cond_0

    .line 381
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->validate()V

    .line 445
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 446
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 447
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 448
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 449
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 450
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 451
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 452
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->aEQ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 453
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 454
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 455
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 457
    return-void
.end method

.method public bD(Z)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 186
    return-void
.end method

.method public bE(Z)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 209
    return-void
.end method

.method public bF(Z)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 232
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->b(Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;

    if-eqz v1, :cond_0

    .line 300
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->a(Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassportLandNodeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->ip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "eid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->eid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, "rt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->rt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public zm()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zy()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zz()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/PassportLandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method
