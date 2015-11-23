.class public Lcom/xiaomi/smack/d/h;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static aFq:Landroid/content/Context;

.field private static aOu:Ljava/lang/String;


# direct methods
.method public static CP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/xiaomi/smack/d/h;->aOu:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/xiaomi/smack/d/h;->aFq:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/f;->cw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/h;->aOu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/smack/d/h;->aOu:Ljava/lang/String;

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cG(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/xiaomi/smack/d/h;->aFq:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/xiaomi/smack/d/h;->aFq:Landroid/content/Context;

    return-object v0
.end method
