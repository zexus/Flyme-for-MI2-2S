.class Lcom/xiaomi/c/g;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Lcom/xiaomi/c/r;


# instance fields
.field final synthetic aHt:Lcom/xiaomi/c/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/f;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xiaomi/c/g;->aHt:Lcom/xiaomi/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AX()Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/g;->aHt:Lcom/xiaomi/c/f;

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->AV()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AY()D
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xiaomi/c/g;->aHt:Lcom/xiaomi/c/f;

    const-string v1, "f3.mi-stat.gslb.mi-idc.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/f;->de(Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v2

    .line 96
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 97
    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v2}, Lcom/xiaomi/c/b;->AM()D

    move-result-wide v0

    .line 100
    :cond_0
    return-wide v0
.end method
