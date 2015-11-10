.class public final Lmiui/log/MiuiLog;
.super Ljava/lang/Object;
.source "MiuiLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isLoggable(Lmiui/log/MiuiTag;I)Z
    .locals 1
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "level"    # I

    .prologue
    .line 8
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static println(ILjava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tagID"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p2}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmiui/log/MiuiLog;->println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V
    .locals 5
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tag"    # Lmiui/log/MiuiTag;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p2}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    if-eqz p1, :cond_1

    .line 230
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {p0, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    if-eqz p1, :cond_1

    .line 216
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtfStack(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
