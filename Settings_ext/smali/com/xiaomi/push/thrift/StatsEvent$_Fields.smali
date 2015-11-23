.class public final enum Lcom/xiaomi/push/thrift/StatsEvent$_Fields;
.super Ljava/lang/Enum;
.source "StatsEvent.java"


# static fields
.field private static final aDx:Ljava/util/Map;

.field public static final enum aLA:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLB:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLC:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLD:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLE:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field private static final synthetic aLF:[Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLw:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLx:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLy:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

.field public static final enum aLz:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 51
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "CHID"

    const/4 v2, 0x0

    const-string v3, "chid"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLw:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 52
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "TYPE"

    const-string v2, "type"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLx:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 53
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "VALUE"

    const-string v2, "value"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLy:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 54
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "CONNPT"

    const-string v2, "connpt"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLz:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 55
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "HOST"

    const-string v2, "host"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLA:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 56
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "SUBVALUE"

    const/4 v2, 0x6

    const-string v3, "subvalue"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLB:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 57
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "ANNOTATION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "annotation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLC:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 58
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "USER"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "user"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLD:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 59
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const-string v1, "TIME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLE:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLw:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLx:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLy:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLz:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLA:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLB:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLC:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLD:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLE:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLF:[Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aDx:Ljava/util/Map;

    .line 64
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

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

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    .line 65
    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aDx:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-short p3, p0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->_thriftId:S

    .line 119
    iput-object p4, p0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->_fieldName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent$_Fields;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/thrift/StatsEvent$_Fields;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->aLF:[Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
