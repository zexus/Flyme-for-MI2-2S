.class public Lcom/xiaomi/smack/o;
.super Ljava/lang/Object;
.source "XMBinder.java"


# static fields
.field public static final aMt:Lcom/xiaomi/smack/o;

.field public static final aMu:Lcom/xiaomi/smack/o;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/xiaomi/smack/o;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/o;->aMt:Lcom/xiaomi/smack/o;

    .line 243
    new-instance v0, Lcom/xiaomi/smack/o;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/o;->aMu:Lcom/xiaomi/smack/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/xiaomi/smack/o;->value:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static dE(Ljava/lang/String;)Lcom/xiaomi/smack/o;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 257
    sget-object v2, Lcom/xiaomi/smack/o;->aMu:Lcom/xiaomi/smack/o;

    invoke-virtual {v2}, Lcom/xiaomi/smack/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    sget-object v0, Lcom/xiaomi/smack/o;->aMu:Lcom/xiaomi/smack/o;

    goto :goto_0

    .line 259
    :cond_2
    sget-object v2, Lcom/xiaomi/smack/o;->aMt:Lcom/xiaomi/smack/o;

    invoke-virtual {v2}, Lcom/xiaomi/smack/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v0, Lcom/xiaomi/smack/o;->aMt:Lcom/xiaomi/smack/o;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaomi/smack/o;->value:Ljava/lang/String;

    return-object v0
.end method
