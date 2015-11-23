.class public Lcom/xiaomi/a/a/e/c;
.super Ljava/lang/Object;
.source "Network.java"


# instance fields
.field public aDg:I

.field public aDh:Ljava/util/Map;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 541
    const-string v0, "resCode = %1$d, headers = %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/a/a/e/c;->aDg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/a/a/e/c;->aDh:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
