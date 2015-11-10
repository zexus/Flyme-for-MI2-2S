.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$1;,
        Lmiui/maml/data/Variables$ArrayType;,
        Lmiui/maml/data/Variables$VarBucket;,
        Lmiui/maml/data/Variables$ValueInfo;,
        Lmiui/maml/data/Variables$DoubleBucket;,
        Lmiui/maml/data/Variables$BaseVarBucket;,
        Lmiui/maml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lmiui/maml/data/Variables$DoubleBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$DoubleBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    .line 203
    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    .line 227
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return v0
.end method

.method private createDoubleArray(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    if-gtz p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "array":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 256
    new-array v0, p2, [D

    .line 257
    .local v0, "array":[D
    invoke-virtual {p0, v1, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 258
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createObjectArray(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 278
    if-gtz p2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "array":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 284
    new-array v0, p2, [Ljava/lang/Object;

    .line 285
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 286
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createStringArray(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 264
    if-gtz p2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v2

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "array":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 270
    new-array v0, p2, [Ljava/lang/String;

    .line 271
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 272
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static dbglog(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 445
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "Variables"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 432
    .local v1, "arr":[Ljava/lang/Object;, "[TT;"
    if-nez v1, :cond_0

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated object is not an array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 441
    .end local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 435
    .restart local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :cond_0
    aget-object v3, v1, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 436
    .end local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated object type is not correct. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILmiui/maml/data/Variables$ArrayType;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "type"    # Lmiui/maml/data/Variables$ArrayType;

    .prologue
    const/4 v0, 0x0

    .line 234
    if-gtz p2, :cond_0

    .line 245
    :goto_0
    return v0

    .line 237
    :cond_0
    sget-object v1, Lmiui/maml/data/Variables$1;->$SwitchMap$miui$maml$data$Variables$ArrayType:[I

    invoke-virtual {p3}, Lmiui/maml/data/Variables$ArrayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->createDoubleArray(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->createStringArray(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->createObjectArray(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public existsArrDouble(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    move-object v0, v2

    check-cast v0, [D

    move-object v1, v0

    .line 220
    .local v1, "arr":[D
    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    .line 224
    .end local v1    # "arr":[D
    :goto_0
    return v2

    .restart local v1    # "arr":[D
    :cond_0
    move v2, v3

    .line 220
    goto :goto_0

    .line 222
    .end local v1    # "arr":[D
    :catch_0
    move-exception v2

    move v2, v3

    .line 224
    goto :goto_0
.end method

.method public existsDouble(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArr(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArrDouble(II)D
    .locals 6
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    move-object v0, v4

    check-cast v0, [D

    move-object v2, v0

    .line 363
    .local v2, "arr":[D
    if-nez v2, :cond_0

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArrDouble: designated array does not exist. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 372
    .end local v2    # "arr":[D
    :goto_0
    const-wide/16 v4, 0x0

    :goto_1
    return-wide v4

    .line 366
    .restart local v2    # "arr":[D
    :cond_0
    aget-wide v4, v2, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 367
    .end local v2    # "arr":[D
    :catch_0
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArrDouble: designated object is not an double array. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arrIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArrString(II)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVer(IZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "isNumber"    # Z

    .prologue
    .line 451
    if-eqz p2, :cond_0

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->getVer(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    goto :goto_0
.end method

.method public final put(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 302
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables$DoubleBucket;->put(ID)V

    .line 303
    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 324
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 325
    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/maml/data/Variables;->put(ID)V

    .line 299
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public putArr(IID)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # D

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    move-object v0, v3

    check-cast v0, [D

    move-object v1, v0

    .line 413
    .local v1, "arr":[D
    if-nez v1, :cond_0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array does not exist. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 426
    .end local v1    # "arr":[D
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 416
    .restart local v1    # "arr":[D
    :cond_0
    aput-wide p3, v1, p2

    .line 418
    invoke-virtual {p0, p1, v1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    const/4 v3, 0x1

    goto :goto_1

    .line 421
    .end local v1    # "arr":[D
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated object is not an double array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putArr(IILjava/lang/Object;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 382
    .local v1, "arr":[Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array does not exist. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 395
    .end local v1    # "arr":[Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 385
    .restart local v1    # "arr":[Ljava/lang/Object;
    :cond_0
    aput-object p3, v1, p2

    .line 387
    invoke-virtual {p0, p1, v1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    const/4 v3, 0x1

    goto :goto_1

    .line 390
    .end local v1    # "arr":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated object is not an object array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 399
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 400
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 401
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 403
    :try_start_0
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiui/maml/data/Variables;->putArr(IID)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 306
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 307
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lmiui/maml/data/Variables;->put(ID)V

    .line 316
    :goto_0
    return v0

    .line 309
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lmiui/maml/data/Variables;->put(ID)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 295
    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$DoubleBucket;->reset()V

    .line 457
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    .line 458
    return-void
.end method
