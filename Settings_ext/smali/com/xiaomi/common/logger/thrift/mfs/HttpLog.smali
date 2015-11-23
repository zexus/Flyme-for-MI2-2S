.class public Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;
.super Ljava/lang/Object;
.source "HttpLog.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDE:Lorg/apache/thrift/protocol/a;

.field private static final aDX:Lorg/apache/thrift/protocol/a;

.field private static final aDY:Lorg/apache/thrift/protocol/a;

.field private static final aDZ:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;


# instance fields
.field private category:Ljava/lang/String;

.field private common:Lcom/xiaomi/common/logger/thrift/Common;

.field private httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

.field private passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xc

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "HttpLog"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "common"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDX:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDE:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "httpApi"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDY:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "passport"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDZ:Lorg/apache/thrift/protocol/a;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;->aEa:Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "common"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/common/logger/thrift/Common;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;->aEb:Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;->aEc:Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "httpApi"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;->aEd:Lcom/xiaomi/common/logger/thrift/mfs/HttpLog$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "passport"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDr:Ljava/util/Map;

    .line 123
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 455
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 458
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 459
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 502
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->validate()V

    .line 503
    return-void

    .line 462
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 495
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 497
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 464
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 465
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/Common;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    .line 466
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/Common;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 468
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 472
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 473
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    goto :goto_1

    .line 475
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 479
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 480
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 481
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 483
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 487
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 488
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    .line 489
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 491
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zj()Z

    move-result v1

    .line 355
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zj()Z

    move-result v2

    .line 356
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 357
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {v1, v2}, Lcom/xiaomi/common/logger/thrift/Common;->a(Lcom/xiaomi/common/logger/thrift/Common;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->yZ()Z

    move-result v1

    .line 364
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->yZ()Z

    move-result v2

    .line 365
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 366
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v1

    .line 373
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v2

    .line 374
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 375
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {v1, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->a(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v1

    .line 382
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v2

    .line 383
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 384
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {v1, v2}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->a(Lcom/xiaomi/common/logger/thrift/mfs/Passport;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;)I
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
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

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 407
    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 412
    if-nez v0, :cond_0

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->yZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->yZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 417
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->yZ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 422
    if-nez v0, :cond_0

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 427
    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 432
    if-nez v0, :cond_0

    .line 436
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 437
    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 442
    if-nez v0, :cond_0

    .line 446
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->validate()V

    .line 508
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 509
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDX:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 511
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/Common;->b(Lorg/apache/thrift/protocol/d;)V

    .line 512
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 515
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 516
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDY:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 522
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->b(Lorg/apache/thrift/protocol/d;)V

    .line 523
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->aDZ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 529
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->b(Lorg/apache/thrift/protocol/d;)V

    .line 530
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 533
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 534
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 535
    return-void
.end method

.method public c(Lcom/xiaomi/common/logger/thrift/Common;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    .line 177
    return-object p0
.end method

.method public c(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    .line 225
    return-object p0
.end method

.method public cD(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->b(Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    if-eqz v1, :cond_0

    .line 346
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->a(Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpLog("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    const-string v1, "common:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    if-nez v1, :cond_2

    .line 544
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 552
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, "httpApi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    if-nez v1, :cond_4

    .line 561
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->zl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, "passport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    if-nez v1, :cond_5

    .line 571
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_1
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 573
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'common\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 587
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'category\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    return-void
.end method

.method public yZ()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zj()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->common:Lcom/xiaomi/common/logger/thrift/Common;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zk()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->httpApi:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zl()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpLog;->passport:Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
