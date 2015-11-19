.class public Lmiui/content/res/FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "FixedSizeStringBuffer.java"


# static fields
.field private static final STRING_CAPACITY:I = 0x3e8

.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lmiui/content/res/FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuf:[C

.field private mLen:I

.field private mTemp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 43
    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    .line 44
    return-void
.end method

.method public static freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V
    .locals 3
    .param p0, "buffer"    # Lmiui/content/res/FixedSizeStringBuffer;

    .prologue
    .line 37
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBuffer()Lmiui/content/res/FixedSizeStringBuffer;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "ret":Lmiui/content/res/FixedSizeStringBuffer;
    sget-object v3, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v3

    .line 24
    :try_start_0
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 26
    .local v0, "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/FixedSizeStringBuffer;

    move-object v1, v2

    .line 28
    .end local v0    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v1, :cond_1

    .line 30
    new-instance v1, Lmiui/content/res/FixedSizeStringBuffer;

    .end local v1    # "ret":Lmiui/content/res/FixedSizeStringBuffer;
    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;-><init>(I)V

    .line 32
    .restart local v1    # "ret":Lmiui/content/res/FixedSizeStringBuffer;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 33
    return-object v1

    .line 26
    .restart local v0    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    .end local v0    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 67
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 70
    sub-int v0, p3, p2

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 72
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 74
    :cond_0
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v0, v0

    if-gt p2, v0, :cond_0

    .line 60
    iput p2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 61
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 63
    :cond_0
    return-void
.end method

.method public move(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 51
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 52
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 47
    iput p1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    const/4 v1, 0x0

    iget v2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
