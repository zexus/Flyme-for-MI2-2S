.class public Lcom/xiaomi/common/logger/thrift/mfs/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aEu:Lorg/apache/thrift/protocol/a;

.field private static final aEv:Lorg/apache/thrift/protocol/a;

.field private static final aEw:Lorg/apache/thrift/protocol/a;

.field private static final aEx:Lorg/apache/thrift/protocol/a;


# instance fields
.field private city:Ljava/lang/String;

.field private contry:Ljava/lang/String;

.field private isp:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xb

    .line 28
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aDl:Lorg/apache/thrift/protocol/g;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "contry"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEu:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "province"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEv:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "city"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEw:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "isp"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEx:Lorg/apache/thrift/protocol/a;

    .line 111
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 112
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;->aEy:Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "contry"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;->aEz:Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "province"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;->aEA:Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "city"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;->aEB:Lcom/xiaomi/common/logger/thrift/mfs/Location$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "isp"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aDr:Ljava/util/Map;

    .line 121
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 441
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 444
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 445
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 485
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->validate()V

    .line 486
    return-void

    .line 448
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 478
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 480
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 450
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v2, :cond_1

    .line 451
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    goto :goto_1

    .line 453
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 457
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v2, :cond_2

    .line 458
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    goto :goto_1

    .line 460
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 464
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v2, :cond_3

    .line 465
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    goto :goto_1

    .line 467
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 471
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v2, :cond_4

    .line 472
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    goto :goto_1

    .line 474
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->validate()V

    .line 491
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 492
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 495
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 502
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEw:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 509
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->aEx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 516
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 520
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 521
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 522
    return-void
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v1

    .line 341
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v2

    .line 342
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 343
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 345
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v1

    .line 350
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v2

    .line 351
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 352
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 354
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v1

    .line 359
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v2

    .line 360
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 361
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v1

    .line 368
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v2

    .line 369
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 370
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/common/logger/thrift/mfs/Location;)I
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
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

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 393
    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 398
    if-nez v0, :cond_0

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 403
    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 408
    if-nez v0, :cond_0

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 413
    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 418
    if-nez v0, :cond_0

    .line 422
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 423
    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 428
    if-nez v0, :cond_0

    .line 432
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public cF(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public cG(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public cH(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public cI(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/Location;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->c(Lcom/xiaomi/common/logger/thrift/mfs/Location;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-eqz v1, :cond_0

    .line 332
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->b(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Location("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    const-string v0, "contry:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 532
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zu()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_1
    const-string v0, "province:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 542
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zv()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 549
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_3
    const-string v0, "city:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 552
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->zw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    if-nez v1, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_4
    const-string v0, "isp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 562
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_5
    :goto_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 554
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 564
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    move v1, v0

    goto :goto_2
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public zt()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->contry:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zu()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->province:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zv()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zw()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Location;->isp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
