.class public Lcom/xiaomi/a/a/d/b;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"


# instance fields
.field private aCV:Lcom/xiaomi/a/a/d/e;

.field private volatile aCW:Z

.field private final aCX:Z

.field private aCY:I

.field private volatile aCZ:Lcom/xiaomi/a/a/d/f;

.field private am:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/a/a/d/b;-><init>(Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/a/a/d/b;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/a/d/b;->am:Landroid/os/Handler;

    .line 23
    iput-boolean v1, p0, Lcom/xiaomi/a/a/d/b;->aCW:Z

    .line 27
    iput v1, p0, Lcom/xiaomi/a/a/d/b;->aCY:I

    .line 48
    new-instance v0, Lcom/xiaomi/a/a/d/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/a/a/d/c;-><init>(Lcom/xiaomi/a/a/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d/b;->am:Landroid/os/Handler;

    .line 60
    iput-boolean p1, p0, Lcom/xiaomi/a/a/d/b;->aCX:Z

    .line 61
    iput p2, p0, Lcom/xiaomi/a/a/d/b;->aCY:I

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d/b;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/xiaomi/a/a/d/b;->aCY:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d/b;Lcom/xiaomi/a/a/d/f;)Lcom/xiaomi/a/a/d/f;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xiaomi/a/a/d/b;->aCZ:Lcom/xiaomi/a/a/d/f;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/a/a/d/b;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/xiaomi/a/a/d/b;->aCW:Z

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/a/a/d/b;)Lcom/xiaomi/a/a/d/f;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCZ:Lcom/xiaomi/a/a/d/f;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/a/a/d/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->am:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/a/a/d/b;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/xiaomi/a/a/d/b;->yO()V

    return-void
.end method

.method private declared-synchronized yO()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/a/d/b;->aCW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaomi/a/a/d/f;)V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/xiaomi/a/a/d/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/d/e;-><init>(Lcom/xiaomi/a/a/d/b;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    .line 68
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    iget-boolean v1, p0, Lcom/xiaomi/a/a/d/b;->aCX:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/d/e;->setDaemon(Z)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/d/b;->aCW:Z

    .line 70
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d/e;->start()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->aCV:Lcom/xiaomi/a/a/d/e;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/d/e;->b(Lcom/xiaomi/a/a/d/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/a/a/d/f;J)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/a/a/d/b;->am:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/a/a/d/d;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/a/a/d/d;-><init>(Lcom/xiaomi/a/a/d/b;Lcom/xiaomi/a/a/d/f;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method
