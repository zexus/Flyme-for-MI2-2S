.class public abstract Lcom/xiaomi/a/a/c/c;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static aCH:I

.field private static aCI:Lcom/xiaomi/a/a/c/b;

.field private static final aCJ:Ljava/util/HashMap;

.field private static final aCK:Ljava/util/HashMap;

.field private static final aCL:Ljava/lang/Integer;

.field private static aCM:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    .line 48
    new-instance v0, Lcom/xiaomi/a/a/c/a;

    invoke-direct {v0}, Lcom/xiaomi/a/a/c/a;-><init>()V

    sput-object v0, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/a/a/c/c;->aCJ:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/a/a/c/c;->aCK:Ljava/util/HashMap;

    .line 136
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/a/c/c;->aCL:Ljava/lang/Integer;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/a/a/c/c;->aCM:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    if-lt p0, v0, :cond_0

    .line 190
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/a/a/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 183
    sget v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    if-lt p0, v0, :cond_0

    .line 184
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/a/a/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 165
    sget v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCJ:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCJ:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 170
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCK:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 172
    sget-object v1, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ends in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaomi/a/a/c/b;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/xiaomi/a/a/c/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/a/a/c/c;->a(ILjava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public static co(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 147
    sget v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 148
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/xiaomi/a/a/c/c;->aCJ:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/a/a/c/c;->aCK:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/a/a/c/b;->log(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCL:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static e(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/xiaomi/a/a/c/c;->aCH:I

    if-lt p0, v0, :cond_0

    .line 178
    sget-object v0, Lcom/xiaomi/a/a/c/c;->aCI:Lcom/xiaomi/a/a/c/b;

    invoke-interface {v0, p1}, Lcom/xiaomi/a/a/c/b;->log(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/a/a/c/c;->e(ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/xiaomi/a/a/c/c;->e(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/c/c;->e(ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/c/c;->e(ILjava/lang/String;)V

    .line 62
    return-void
.end method
