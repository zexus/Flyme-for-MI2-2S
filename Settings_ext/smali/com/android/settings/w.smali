.class public Lcom/android/settings/w;
.super Ljava/lang/Object;
.source "ApkIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final ak:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final al:Ljava/util/concurrent/ConcurrentHashMap;

.field private final am:Landroid/os/Handler;

.field private an:Lcom/android/settings/B;

.field private ao:Z

.field private final mContext:Landroid/content/Context;

.field private mPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/w;->ak:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/w;->am:Landroid/os/Handler;

    .line 146
    iput-object p1, p0, Lcom/android/settings/w;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method static synthetic A()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/settings/w;->ak:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/w;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/w;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    sget-object v0, Lcom/android/settings/w;->ak:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/A;

    .line 191
    if-nez v0, :cond_2

    .line 192
    invoke-static {}, Lcom/android/settings/A;->B()Lcom/android/settings/A;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 196
    :cond_0
    sget-object v2, Lcom/android/settings/w;->ak:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    iput v1, v0, Lcom/android/settings/A;->state:I

    move v0, v1

    .line 210
    goto :goto_0

    .line 197
    :cond_2
    iget v3, v0, Lcom/android/settings/A;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/android/settings/A;->isNull()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 199
    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/settings/A;->a(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 205
    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/w;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/w;->am:Landroid/os/Handler;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-boolean v0, p0, Lcom/android/settings/w;->ao:Z

    if-nez v0, :cond_0

    .line 258
    iput-boolean v1, p0, Lcom/android/settings/w;->ao:Z

    .line 259
    iget-object v0, p0, Lcom/android/settings/w;->am:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 298
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 300
    iget-object v1, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/z;

    .line 301
    iget-object v1, v1, Lcom/android/settings/z;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/w;->b(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-direct {p0}, Lcom/android/settings/w;->y()V

    .line 310
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/settings/w;->b(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    new-instance v1, Lcom/android/settings/z;

    invoke-direct {v1, p2}, Lcom/android/settings/z;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-boolean v1, p0, Lcom/android/settings/w;->mPaused:Z

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/w;->y()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/w;->al:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 230
    sget-object v0, Lcom/android/settings/w;->ak:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 231
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 269
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings/w;->ao:Z

    .line 270
    iget-boolean v1, p0, Lcom/android/settings/w;->mPaused:Z

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    if-nez v1, :cond_1

    .line 272
    new-instance v1, Lcom/android/settings/B;

    invoke-direct {v1, p0}, Lcom/android/settings/B;-><init>(Lcom/android/settings/w;)V

    iput-object v1, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    .line 273
    iget-object v1, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    invoke-virtual {v1}, Lcom/android/settings/B;->start()V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    invoke-virtual {v1}, Lcom/android/settings/B;->y()V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/w;->mPaused:Z

    if-nez v1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/settings/w;->z()V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/w;->mPaused:Z

    .line 238
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/w;->pause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    invoke-virtual {v0}, Lcom/android/settings/B;->quit()Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/w;->an:Lcom/android/settings/B;

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/w;->clear()V

    .line 226
    return-void
.end method
