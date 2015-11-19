.class public Lmiui/yellowpage/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static THREAD_POOL_COUNT:I

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 9
    const/16 v0, 0x20

    sput v0, Lmiui/yellowpage/ThreadPool;->THREAD_POOL_COUNT:I

    .line 19
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lmiui/yellowpage/ThreadPool;->THREAD_POOL_COUNT:I

    sget v3, Lmiui/yellowpage/ThreadPool;->THREAD_POOL_COUNT:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lmiui/yellowpage/ThreadPool;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    sget-object v0, Lmiui/yellowpage/ThreadPool;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    sget-object v0, Lmiui/yellowpage/ThreadPool;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method
