.class public Lcom/xiaomi/common/logger/thrift/mfs/Passport;
.super Ljava/lang/Object;
.source "Passport.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDE:Lorg/apache/thrift/protocol/a;

.field private static final aDF:Lorg/apache/thrift/protocol/a;

.field private static final aDG:Lorg/apache/thrift/protocol/a;

.field private static final aDH:Lorg/apache/thrift/protocol/a;

.field private static final aDI:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field private static final aDm:Lorg/apache/thrift/protocol/a;

.field public static final aDr:Ljava/util/Map;

.field private static final aED:Lorg/apache/thrift/protocol/a;


# instance fields
.field private category:Ljava/lang/String;

.field private host_info:Ljava/util/Set;

.field private location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

.field private network:Ljava/lang/String;

.field private rid:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "Passport"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDl:Lorg/apache/thrift/protocol/g;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDE:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "uuid"

    invoke-direct {v0, v1, v5, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDm:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDF:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "network"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDG:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "rid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aED:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "location"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDH:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "host_info"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDI:Lorg/apache/thrift/protocol/a;

    .line 132
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 133
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEE:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEF:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "uuid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEG:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "version"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEH:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "network"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEI:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "rid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEJ:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "location"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;->aEK:Lcom/xiaomi/common/logger/thrift/mfs/Passport$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "host_info"

    new-instance v4, Lorg/apache/thrift/meta_data/SetMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v6, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;

    invoke-direct {v5, v8, v6}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/SetMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDr:Ljava/util/Map;

    .line 149
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 686
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 689
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 690
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 760
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 763
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->validate()V

    .line 764
    return-void

    .line 693
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 756
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 758
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 695
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 696
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    goto :goto_1

    .line 698
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 702
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 703
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    goto :goto_1

    .line 705
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 709
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_3

    .line 710
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    goto :goto_1

    .line 712
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 716
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_4

    .line 717
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    goto :goto_1

    .line 719
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 723
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_5

    .line 724
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    goto :goto_1

    .line 726
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 730
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 731
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 732
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 734
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 738
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xe

    if-ne v1, v2, :cond_8

    .line 740
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EV()Lorg/apache/thrift/protocol/f;

    move-result-object v1

    .line 741
    new-instance v0, Ljava/util/HashSet;

    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    .line 742
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    if-ge v0, v2, :cond_7

    .line 745
    new-instance v2, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;

    invoke-direct {v2}, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;-><init>()V

    .line 746
    invoke-virtual {v2, p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;->a(Lorg/apache/thrift/protocol/d;)V

    .line 747
    iget-object v3, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 749
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EW()V

    goto/16 :goto_1

    .line 752
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 693
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

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/Passport;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yZ()Z

    move-result v1

    .line 529
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yZ()Z

    move-result v2

    .line 530
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 531
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yS()Z

    move-result v1

    .line 538
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yS()Z

    move-result v2

    .line 539
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 540
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->za()Z

    move-result v1

    .line 547
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->za()Z

    move-result v2

    .line 548
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 549
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zb()Z

    move-result v1

    .line 556
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zb()Z

    move-result v2

    .line 557
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 558
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 560
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zx()Z

    move-result v1

    .line 565
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zx()Z

    move-result v2

    .line 566
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 567
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 569
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v1

    .line 574
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v2

    .line 575
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 576
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 578
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v1, v2}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->b(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v1

    .line 583
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v2

    .line 584
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 585
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/Passport;)I
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
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

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 608
    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yZ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 613
    if-nez v0, :cond_0

    .line 617
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yS()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->yS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 623
    if-nez v0, :cond_0

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->za()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->za()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 628
    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->za()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 633
    if-nez v0, :cond_0

    .line 637
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 638
    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 642
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 643
    if-nez v0, :cond_0

    .line 647
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 648
    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zx()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 653
    if-nez v0, :cond_0

    .line 657
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 658
    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 662
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 663
    if-nez v0, :cond_0

    .line 667
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 668
    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 672
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 673
    if-nez v0, :cond_0

    .line 677
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->validate()V

    .line 769
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 770
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 771
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 772
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 776
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 777
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 781
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDF:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 782
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 786
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDG:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 787
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 790
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 791
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aED:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 792
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-eqz v0, :cond_5

    .line 796
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDH:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 798
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->b(Lorg/apache/thrift/protocol/d;)V

    .line 799
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 803
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 804
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->aDI:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 806
    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/f;)V

    .line 807
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;

    .line 809
    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/PassportHostInfo;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 811
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EM()V

    .line 813
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 816
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 817
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 818
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->b(Lcom/xiaomi/common/logger/thrift/mfs/Passport;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 517
    if-nez p1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    if-eqz v1, :cond_0

    .line 520
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/Passport;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->a(Lcom/xiaomi/common/logger/thrift/mfs/Passport;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passport("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 827
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 835
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 843
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v1, "network:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 851
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, "rid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 859
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const-string v1, "location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-nez v1, :cond_7

    .line 868
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_0
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->zf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v1, "host_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    if-nez v1, :cond_8

    .line 878
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    :cond_1
    :goto_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 837
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 845
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 853
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 861
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 870
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 880
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 891
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'category\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 894
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uuid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 897
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 900
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'network\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 903
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'rid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_4
    return-void
.end method

.method public yS()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yZ()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public za()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zb()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->network:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zd()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zf()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->host_info:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zx()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/Passport;->rid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
