.class public final enum Lcom/xiaomi/common/logger/thrift/Common$_Fields;
.super Ljava/lang/Enum;
.source "Common.java"


# static fields
.field public static final enum aDs:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

.field public static final enum aDt:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

.field public static final enum aDu:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

.field public static final enum aDv:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

.field public static final enum aDw:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

.field private static final aDx:Ljava/util/Map;

.field private static final synthetic aDy:[Lcom/xiaomi/common/logger/thrift/Common$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 45
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    const-string v1, "UUID"

    const-string v2, "uuid"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDs:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 46
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    const-string v1, "TIME"

    const-string v2, "time"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDt:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 47
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    const-string v1, "CLIENT_IP"

    const-string v2, "clientIp"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDu:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 48
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    const-string v1, "SERVER_IP"

    const-string v2, "serverIp"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDv:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 49
    new-instance v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    const-string v1, "SERVER_HOST"

    const/4 v2, 0x5

    const-string v3, "serverHost"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDw:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDs:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDt:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDu:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDv:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDw:Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDy:[Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDx:Ljava/util/Map;

    .line 54
    const-class v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    .line 55
    sget-object v2, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDx:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-short p3, p0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->_thriftId:S

    .line 101
    iput-object p4, p0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->_fieldName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/Common$_Fields;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/common/logger/thrift/Common$_Fields;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->aDy:[Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/common/logger/thrift/Common$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/common/logger/thrift/Common$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/Common$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
