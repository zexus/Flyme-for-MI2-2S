.class public final Lcom/google/common/base/h;
.super Ljava/lang/Object;
.source "Objects.java"


# instance fields
.field private final azV:Ljava/lang/StringBuilder;

.field private azW:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/h;->azW:Z

    .line 191
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/g;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/common/base/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private cg(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/common/base/k;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/google/common/base/h;->wC()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private wC()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/common/base/h;->azW:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 383
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/h;->azW:Z

    .line 384
    iget-object v0, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h;
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/common/base/h;->cg(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    return-object p0
.end method

.method public p(Ljava/lang/String;I)Lcom/google/common/base/h;
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/google/common/base/h;->cg(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/h;->azV:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0
.end method

.method public v(Ljava/lang/Object;)Lcom/google/common/base/h;
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/common/base/h;->wC()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    return-object p0
.end method