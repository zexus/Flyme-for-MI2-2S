.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionContainer.java"


# static fields
.field private static final aDx:Ljava/util/Map;

.field public static final enum aQW:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aQX:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aQY:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aQZ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aRa:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aRb:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aRc:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum aRd:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field private static final synthetic aRe:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;


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

    .line 60
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "ACTION"

    const/4 v2, 0x0

    const-string v3, "action"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQW:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 61
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "ENCRYPT_ACTION"

    const-string v2, "encryptAction"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQX:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 62
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "IS_REQUEST"

    const-string v2, "isRequest"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQY:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 63
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "PUSH_ACTION"

    const-string v2, "pushAction"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQZ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 64
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "APPID"

    const-string v2, "appid"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRa:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x6

    const-string v3, "packageName"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRb:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 66
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "TARGET"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "target"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRc:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "META_INFO"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "metaInfo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRd:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQW:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQX:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQY:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQZ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRa:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRb:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRc:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRd:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRe:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aDx:Ljava/util/Map;

    .line 72
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 73
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aDx:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_thriftId:S

    .line 125
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_fieldName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRe:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
