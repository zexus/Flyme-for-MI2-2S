.class public Lcom/xiaomi/common/logger/thrift/Common;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field private static final aDm:Lorg/apache/thrift/protocol/a;

.field private static final aDn:Lorg/apache/thrift/protocol/a;

.field private static final aDo:Lorg/apache/thrift/protocol/a;

.field private static final aDp:Lorg/apache/thrift/protocol/a;

.field private static final aDq:Lorg/apache/thrift/protocol/a;

.field public static final aDr:Ljava/util/Map;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public clientIp:Ljava/lang/String;

.field public serverHost:Ljava/lang/String;

.field public serverIp:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public uuid:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0xb

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "Common"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDl:Lorg/apache/thrift/protocol/g;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "uuid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDm:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "time"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDn:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "clientIp"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDo:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "serverIp"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDp:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "serverHost"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDq:Lorg/apache/thrift/protocol/a;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDs:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "uuid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDt:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "time"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDu:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "clientIp"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDv:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "serverIp"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDw:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "serverHost"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDr:Ljava/util/Map;

    .line 131
    const-class v0, Lcom/xiaomi/common/logger/thrift/Common;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->__isset_bit_vector:Ljava/util/BitSet;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 525
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 528
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 529
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 577
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->validate()V

    .line 578
    return-void

    .line 532
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 570
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 572
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 534
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 535
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/common/logger/thrift/Common;->by(Z)V

    goto :goto_1

    .line 538
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 542
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 543
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    goto :goto_1

    .line 545
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 549
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 550
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    goto :goto_1

    .line 552
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 556
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 557
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    goto :goto_1

    .line 559
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 563
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_5

    .line 564
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    goto :goto_1

    .line 566
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/common/logger/thrift/Common;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 402
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v1

    .line 406
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v2

    .line 407
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 408
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 410
    iget-wide v2, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    iget-wide v4, p1, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 414
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v1

    .line 415
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v2

    .line 416
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 417
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 419
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v1

    .line 424
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v2

    .line 425
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 426
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 428
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v1

    .line 433
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v2

    .line 434
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 435
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v1

    .line 442
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v2

    .line 443
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 444
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 446
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/Common;)I
    .locals 4

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
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

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 467
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-wide v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    iget-wide v2, p1, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/b;->g(JJ)I

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 477
    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 482
    if-nez v0, :cond_0

    .line 486
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 487
    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 492
    if-nez v0, :cond_0

    .line 496
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 497
    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 502
    if-nez v0, :cond_0

    .line 506
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 507
    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 512
    if-nez v0, :cond_0

    .line 516
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->validate()V

    .line 583
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 586
    iget-wide v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->M(J)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDn:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 592
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDo:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 599
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDp:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 606
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common;->aDq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 613
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 617
    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 618
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 619
    return-void
.end method

.method public by(Z)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 207
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/Common;->b(Lcom/xiaomi/common/logger/thrift/Common;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/Common;

    if-eqz v1, :cond_0

    .line 397
    check-cast p1, Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/Common;->a(Lcom/xiaomi/common/logger/thrift/Common;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Common("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    const-string v0, "uuid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-wide v4, p0, Lcom/xiaomi/common/logger/thrift/Common;->uuid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yT()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_1
    const-string v0, "time:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 635
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 641
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yU()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 642
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_3
    const-string v0, "clientIp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 645
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 651
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yV()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 652
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_5
    const-string v0, "serverIp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 655
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/Common;->yW()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 662
    if-nez v1, :cond_6

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_6
    const-string v0, "serverHost:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 665
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_7
    :goto_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 637
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 647
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 657
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 667
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    move v1, v0

    goto :goto_2
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public yS()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public yT()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->time:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yU()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->clientIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yV()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yW()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common;->serverHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
