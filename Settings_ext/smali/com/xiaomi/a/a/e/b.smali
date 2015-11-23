.class public final Lcom/xiaomi/a/a/e/b;
.super Ljava/io/FilterInputStream;
.source "Network.java"


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1235
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1236
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1240
    iget-boolean v0, p0, Lcom/xiaomi/a/a/e/b;->done:Z

    if-nez v0, :cond_0

    .line 1241
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 1242
    if-eq v0, v1, :cond_0

    .line 1247
    :goto_0
    return v0

    .line 1246
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/a/e/b;->done:Z

    move v0, v1

    .line 1247
    goto :goto_0
.end method
