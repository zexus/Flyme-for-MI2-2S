.class public Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDA:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aDz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private host:Ljava/lang/String;

.field private land_node_info:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v5, 0xb

    const/4 v8, 0x1

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "HostInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDl:Lorg/apache/thrift/protocol/g;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "host"

    invoke-direct {v0, v1, v5, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDz:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "land_node_info"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDA:Lorg/apache/thrift/protocol/a;

    .line 107
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 108
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDB:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "host"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDC:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "land_node_info"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDr:Ljava/util/Map;

    .line 114
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 345
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 346
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 383
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->validate()V

    .line 384
    return-void

    .line 349
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 376
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 378
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 351
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 352
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    goto :goto_1

    .line 354
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 358
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 360
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ET()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    .line 362
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_2

    .line 365
    new-instance v2, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    invoke-direct {v2}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;-><init>()V

    .line 366
    invoke-virtual {v2, p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->a(Lorg/apache/thrift/protocol/d;)V

    .line 367
    iget-object v3, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EU()V

    goto :goto_1

    .line 372
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yX()Z

    move-result v1

    .line 280
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yX()Z

    move-result v2

    .line 281
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 282
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yY()Z

    move-result v1

    .line 289
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yY()Z

    move-result v2

    .line 290
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 291
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)I
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
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

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 319
    if-nez v0, :cond_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 324
    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->yY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->c(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 329
    if-nez v0, :cond_0

    .line 333
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->validate()V

    .line 389
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 390
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 392
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 396
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->aDA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 398
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 399
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    .line 401
    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EL()V

    .line 405
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 407
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 408
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 409
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->b(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)I

    move-result v0

    return v0
.end method

.method public cu(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    if-eqz v1, :cond_0

    .line 271
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->a(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    const-string v1, "host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 418
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "land_node_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    if-nez v1, :cond_1

    .line 426
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public v(Ljava/util/List;)Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    .line 200
    return-object p0
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'host\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'land_node_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    return-void
.end method

.method public yX()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yY()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->land_node_info:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
