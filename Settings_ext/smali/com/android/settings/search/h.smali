.class Lcom/android/settings/search/h;
.super Ljava/lang/Object;
.source "Index.java"


# instance fields
.field public aiO:Ljava/util/List;

.field public aiP:Ljava/util/List;

.field public aiQ:Ljava/util/Map;

.field public aiR:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->aiR:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiO:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiP:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiQ:Ljava/util/Map;

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/h;)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->aiR:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/h;->aiO:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiO:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/h;->aiP:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiP:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/search/h;->aiQ:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->aiQ:Ljava/util/Map;

    .line 188
    iget-boolean v0, p1, Lcom/android/settings/search/h;->aiR:Z

    iput-boolean v0, p0, Lcom/android/settings/search/h;->aiR:Z

    .line 189
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/search/h;->aiO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/settings/search/h;->aiP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/search/h;->aiQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->aiR:Z

    .line 200
    return-void
.end method

.method public rz()Lcom/android/settings/search/h;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/android/settings/search/h;

    invoke-direct {v0, p0}, Lcom/android/settings/search/h;-><init>(Lcom/android/settings/search/h;)V

    return-object v0
.end method
