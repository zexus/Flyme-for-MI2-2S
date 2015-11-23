.class public Lcom/xiaomi/push/thrift/StatsEvent;
.super Ljava/lang/Object;
.source "StatsEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field private static final aDn:Lorg/apache/thrift/protocol/a;

.field public static final aDr:Ljava/util/Map;

.field private static final aDz:Lorg/apache/thrift/protocol/a;

.field private static final aLp:Lorg/apache/thrift/protocol/a;

.field private static final aLq:Lorg/apache/thrift/protocol/a;

.field private static final aLr:Lorg/apache/thrift/protocol/a;

.field private static final aLs:Lorg/apache/thrift/protocol/a;

.field private static final aLt:Lorg/apache/thrift/protocol/a;

.field private static final aLu:Lorg/apache/thrift/protocol/a;

.field private static final aLv:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public annotation:Ljava/lang/String;

.field public chid:B

.field public connpt:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public subvalue:I

.field public time:I

.field public type:I

.field public user:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    const/16 v5, 0x8

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "StatsEvent"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDl:Lorg/apache/thrift/protocol/g;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "chid"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLp:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    invoke-direct {v0, v1, v5, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLq:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "value"

    invoke-direct {v0, v1, v5, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLr:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "connpt"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLs:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "host"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDz:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "subvalue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLt:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "annotation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLu:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "user"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLv:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "time"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDn:Lorg/apache/thrift/protocol/a;

    .line 141
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 142
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLw:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "chid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLx:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLy:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "value"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLz:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "connpt"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLA:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "host"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLB:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "subvalue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLC:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "annotation"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLD:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "user"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLE:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "time"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDr:Ljava/util/Map;

    .line 161
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvent;

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    .line 165
    return-void
.end method


# virtual methods
.method public Cd()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Ce()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Cf()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Cg()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ch()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Ci()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Cj()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 792
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 793
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 870
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 873
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cd()Z

    move-result v0

    if-nez v0, :cond_a

    .line 874
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'chid\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 866
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 868
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 798
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 799
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 800
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->bP(Z)V

    goto :goto_1

    .line 802
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 806
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 807
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 808
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->bQ(Z)V

    goto :goto_1

    .line 810
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 814
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_3

    .line 815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 816
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->bR(Z)V

    goto :goto_1

    .line 818
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 822
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 823
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    goto :goto_1

    .line 825
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 829
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 830
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    goto :goto_1

    .line 832
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 836
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_6

    .line 837
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 838
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->bS(Z)V

    goto :goto_1

    .line 840
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 844
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 845
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    goto/16 :goto_1

    .line 847
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 851
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_8

    .line 852
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 854
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 858
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_9

    .line 859
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 860
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->bT(Z)V

    goto/16 :goto_1

    .line 862
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 876
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ce()Z

    move-result v0

    if-nez v0, :cond_b

    .line 877
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cf()Z

    move-result v0

    if-nez v0, :cond_c

    .line 880
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'value\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 883
    return-void

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/push/thrift/StatsEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 590
    if-nez p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    iget-byte v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iget-byte v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    if-ne v1, v2, :cond_0

    .line 607
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    if-ne v1, v2, :cond_0

    .line 616
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    if-ne v1, v2, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cg()Z

    move-result v1

    .line 621
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cg()Z

    move-result v2

    .line 622
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 623
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 625
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v1

    .line 630
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v2

    .line 631
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 632
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v1

    .line 639
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v2

    .line 640
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 641
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 643
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    if-ne v1, v2, :cond_0

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v1

    .line 648
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v2

    .line 649
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 650
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 652
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v1

    .line 657
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v2

    .line 658
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 659
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 661
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v1

    .line 666
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v2

    .line 667
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 668
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 670
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    if-ne v1, v2, :cond_0

    .line 674
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/push/thrift/StatsEvent;)I
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
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

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 690
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 691
    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    iget-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iget-byte v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(BB)I

    move-result v0

    .line 696
    if-nez v0, :cond_0

    .line 700
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ce()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ce()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 701
    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ce()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 706
    if-nez v0, :cond_0

    .line 710
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 711
    if-nez v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 716
    if-nez v0, :cond_0

    .line 720
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 721
    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 726
    if-nez v0, :cond_0

    .line 730
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 731
    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 735
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 736
    if-nez v0, :cond_0

    .line 740
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 741
    if-nez v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 745
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 746
    if-nez v0, :cond_0

    .line 750
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 751
    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 755
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 756
    if-nez v0, :cond_0

    .line 760
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 761
    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 765
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 766
    if-nez v0, :cond_0

    .line 770
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 771
    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 775
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 776
    if-nez v0, :cond_0

    .line 780
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 888
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 889
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLp:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 890
    iget-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeByte(B)V

    .line 891
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 892
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 893
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 894
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 895
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLr:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 896
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 897
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 898
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 899
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLs:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 900
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 906
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 912
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 913
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 916
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 917
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 918
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 922
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 923
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aLv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 925
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 929
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 930
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->aDn:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 931
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 932
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 934
    :cond_5
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 935
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 936
    return-void
.end method

.method public bP(Z)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 251
    return-void
.end method

.method public bQ(Z)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 274
    return-void
.end method

.method public bR(Z)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 297
    return-void
.end method

.method public bS(Z)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 368
    return-void
.end method

.method public bT(Z)V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 439
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lcom/xiaomi/push/thrift/StatsEvent;)I

    move-result v0

    return v0
.end method

.method public d(B)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 235
    iput-byte p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->bP(Z)V

    .line 237
    return-object p0
.end method

.method public dA(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public dB(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public dy(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public dz(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public ei(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 258
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->bQ(Z)V

    .line 260
    return-object p0
.end method

.method public ej(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 281
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->bR(Z)V

    .line 283
    return-object p0
.end method

.method public ek(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 423
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->bT(Z)V

    .line 425
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 582
    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 585
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->a(Lcom/xiaomi/push/thrift/StatsEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    const-string v1, "chid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    iget-byte v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 950
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v1, "connpt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 957
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v1, "host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 966
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v1, "subvalue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ci()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v1, "annotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 982
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Cj()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 989
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 992
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->yT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1004
    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 959
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 968
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 984
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 994
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'connpt\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_0
    return-void
.end method

.method public yT()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public yX()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
