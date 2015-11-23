.class public Lcom/xiaomi/smack/l;
.super Ljava/lang/Object;
.source "XMBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/y;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/xiaomi/smack/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/smack/m;-><init>(Lcom/xiaomi/smack/l;Lcom/xiaomi/push/service/y;Ljava/lang/String;Lcom/xiaomi/smack/a;)V

    .line 23
    invoke-virtual {p3, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMACK: bind id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/smack/m;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 25
    return-void
.end method
