.class public Lcom/google/common/collect/p;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# instance fields
.field final aAl:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/p;->aAl:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method private static t(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    .prologue
    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    packed-switch v0, :pswitch_data_0

    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 245
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->xa()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v1, Lcom/google/common/collect/SingletonImmutableMap;

    invoke-static {p0}, Lcom/google/common/collect/s;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/common/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/common/collect/p;->aAl:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method

.method public wZ()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/collect/p;->aAl:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/p;->t(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
