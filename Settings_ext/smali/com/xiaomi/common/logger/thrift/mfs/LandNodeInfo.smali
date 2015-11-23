.class public Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
.super Ljava/lang/Object;
.source "LandNodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aEf:Lorg/apache/thrift/protocol/a;

.field private static final aEg:Lorg/apache/thrift/protocol/a;

.field private static final aEh:Lorg/apache/thrift/protocol/a;

.field private static final aEi:Lorg/apache/thrift/protocol/a;

.field private static final aEj:Lorg/apache/thrift/protocol/a;

.field private static final aEk:Lorg/apache/thrift/protocol/a;

.field private static final aEl:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field private duration:J

.field private exp_info:Ljava/util/Map;

.field private failed_count:I

.field private http_info:Ljava/util/Map;

.field private ip:Ljava/lang/String;

.field private size:I

.field private success_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x2

    const/16 v8, 0xd

    const/4 v6, 0x1

    const/16 v7, 0x8

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "LandNodeInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aDl:Lorg/apache/thrift/protocol/g;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "ip"

    invoke-direct {v0, v1, v10, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEf:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "failed_count"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEg:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "success_count"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEh:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "duration"

    const/16 v2, 0xa

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEi:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "size"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEj:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "exp_info"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEk:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "http_info"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEl:Lorg/apache/thrift/protocol/a;

    .line 135
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 136
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEm:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "ip"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEn:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "failed_count"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEo:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success_count"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEp:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "duration"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEq:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "size"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEr:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "exp_info"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v8, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;->aEs:Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "http_info"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v8, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aDr:Ljava/util/Map;

    .line 155
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 159
    return-void
.end method


# virtual methods
.method public E(J)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 1

    .prologue
    .line 319
    iput-wide p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bB(Z)V

    .line 321
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v1, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 714
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 717
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 718
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v2, :cond_0

    .line 804
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 807
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zn()Z

    move-result v0

    if-nez v0, :cond_a

    .line 808
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'failed_count\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    iget-short v2, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v2, :pswitch_data_0

    .line 800
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 802
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 723
    :pswitch_0
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 724
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    goto :goto_1

    .line 726
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 730
    :pswitch_1
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_2

    .line 731
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    .line 732
    invoke-virtual {p0, v6}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bz(Z)V

    goto :goto_1

    .line 734
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 738
    :pswitch_2
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_3

    .line 739
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    .line 740
    invoke-virtual {p0, v6}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bA(Z)V

    goto :goto_1

    .line 742
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 746
    :pswitch_3
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 747
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EZ()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    .line 748
    invoke-virtual {p0, v6}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bB(Z)V

    goto :goto_1

    .line 750
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 754
    :pswitch_4
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_5

    .line 755
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    .line 756
    invoke-virtual {p0, v6}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bC(Z)V

    goto :goto_1

    .line 758
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 762
    :pswitch_5
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v8, :cond_7

    .line 764
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ER()Lorg/apache/thrift/protocol/c;

    move-result-object v2

    .line 765
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    move v0, v1

    .line 766
    :goto_2
    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v3, :cond_6

    .line 770
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v4

    .line 772
    iget-object v5, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 774
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ES()V

    goto/16 :goto_1

    .line 777
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 781
    :pswitch_6
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v8, :cond_9

    .line 783
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ER()Lorg/apache/thrift/protocol/c;

    move-result-object v2

    .line 784
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    move v0, v1

    .line 785
    :goto_3
    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v3, :cond_8

    .line 789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v3

    .line 790
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v4

    .line 791
    iget-object v5, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 793
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ES()V

    goto/16 :goto_1

    .line 796
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 810
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zo()Z

    move-result v0

    if-nez v0, :cond_b

    .line 811
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'success_count\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zp()Z

    move-result v0

    if-nez v0, :cond_c

    .line 814
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zq()Z

    move-result v0

    if-nez v0, :cond_d

    .line 817
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'size\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->validate()V

    .line 820
    return-void

    .line 721
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
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 553
    if-nez p1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zm()Z

    move-result v1

    .line 557
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zm()Z

    move-result v2

    .line 558
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 559
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 561
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    :cond_3
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    if-ne v1, v2, :cond_0

    .line 579
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    if-ne v1, v2, :cond_0

    .line 588
    iget-wide v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    iget-wide v4, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 597
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    iget v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    if-ne v1, v2, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v1

    .line 602
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v2

    .line 603
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 604
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 606
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v1

    .line 611
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v2

    .line 612
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 613
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 615
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;)I
    .locals 4

    .prologue
    .line 628
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
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

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 636
    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 641
    if-nez v0, :cond_0

    .line 645
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 646
    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 651
    if-nez v0, :cond_0

    .line 655
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 656
    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 661
    if-nez v0, :cond_0

    .line 665
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 666
    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    iget-wide v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    iget-wide v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/b;->g(JJ)I

    move-result v0

    .line 671
    if-nez v0, :cond_0

    .line 675
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 676
    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    iget v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->A(II)I

    move-result v0

    .line 681
    if-nez v0, :cond_0

    .line 685
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 686
    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 690
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 691
    if-nez v0, :cond_0

    .line 695
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 696
    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 700
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 701
    if-nez v0, :cond_0

    .line 705
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/util/Map;)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    .line 377
    return-object p0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 823
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->validate()V

    .line 825
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 826
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 827
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 828
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 831
    :cond_0
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEg:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 832
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 833
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 834
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEh:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 835
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 836
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 837
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEi:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 838
    iget-wide v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->M(J)V

    .line 839
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 840
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 841
    iget v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 842
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 843
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 844
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEk:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 847
    new-instance v0, Lorg/apache/thrift/protocol/c;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 848
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 850
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 851
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EK()V

    .line 855
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 859
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->aEl:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 862
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 863
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 865
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 866
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    goto :goto_1

    .line 868
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EK()V

    .line 870
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 873
    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 874
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 875
    return-void
.end method

.method public bA(Z)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 312
    return-void
.end method

.method public bB(Z)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 335
    return-void
.end method

.method public bC(Z)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 358
    return-void
.end method

.method public bz(Z)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 289
    return-void
.end method

.method public cE(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->b(Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;)I

    move-result v0

    return v0
.end method

.method public dO(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 1

    .prologue
    .line 273
    iput p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bz(Z)V

    .line 275
    return-object p0
.end method

.method public dP(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 1

    .prologue
    .line 296
    iput p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bA(Z)V

    .line 298
    return-object p0
.end method

.method public dQ(I)Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;
    .locals 1

    .prologue
    .line 342
    iput p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->bC(Z)V

    .line 344
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 545
    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    if-eqz v1, :cond_0

    .line 548
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->a(Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LandNodeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 884
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    const-string v1, "failed_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->failed_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v1, "success_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->success_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 897
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-wide v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v1, "exp_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 909
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->zs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v1, "http_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 919
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 911
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 921
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ip\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    return-void
.end method

.method public zm()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zn()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zo()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zp()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zq()Z
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public zr()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->exp_info:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zs()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/LandNodeInfo;->http_info:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
