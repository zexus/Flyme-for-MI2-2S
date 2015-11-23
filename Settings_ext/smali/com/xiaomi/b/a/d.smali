.class Lcom/xiaomi/b/a/d;
.super Ljava/lang/Object;
.source "AndroidDebugger.java"

# interfaces
.implements Lcom/xiaomi/smack/g;


# instance fields
.field final synthetic aFe:Lcom/xiaomi/b/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/a/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xiaomi/b/a/d;->aFe:Lcom/xiaomi/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 106
    sget-boolean v0, Lcom/xiaomi/b/a/a;->aEV:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/b/a/d;->aFe:Lcom/xiaomi/b/a/a;

    invoke-static {v1}, Lcom/xiaomi/b/a/a;->a(Lcom/xiaomi/b/a/a;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RCV PKT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/b/a/d;->aFe:Lcom/xiaomi/b/a/a;

    invoke-static {v1}, Lcom/xiaomi/b/a/a;->b(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/smack/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
