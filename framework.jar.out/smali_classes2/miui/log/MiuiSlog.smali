.class public final Lmiui/log/MiuiSlog;
.super Ljava/lang/Object;
.source "MiuiSlog.java"


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
    .line 37
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    if-eqz p1, :cond_1

    .line 43
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    if-eqz p1, :cond_1

    .line 57
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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    if-eqz p1, :cond_1

    .line 144
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

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    if-eqz p1, :cond_1

    .line 158
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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    if-eqz p1, :cond_1

    .line 72
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

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    if-eqz p1, :cond_1

    .line 86
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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static println(ILjava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tagID"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p2}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmiui/log/MiuiSlog;->println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V
    .locals 5
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tag"    # Lmiui/log/MiuiTag;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p2}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    if-eqz p1, :cond_1

    .line 231
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

    invoke-static {p0, v0, v1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {p0, v0, p3}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    if-eqz p1, :cond_1

    .line 14
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

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    if-eqz p1, :cond_1

    .line 28
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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    if-eqz p1, :cond_1

    .line 101
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

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    if-eqz p1, :cond_1

    .line 115
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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    if-eqz p1, :cond_1

    .line 130
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

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
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

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    if-eqz p1, :cond_1

    .line 173
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

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtfStack(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    if-eqz p1, :cond_1

    .line 187
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

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
