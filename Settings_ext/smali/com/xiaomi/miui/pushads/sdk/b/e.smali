.class Lcom/xiaomi/miui/pushads/sdk/b/e;
.super Landroid/os/AsyncTask;
.source "AdsLogTraceTask.java"


# instance fields
.field aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

.field aGR:Lcom/xiaomi/miui/pushads/sdk/b/a;

.field aGu:Ljava/lang/String;

.field aGv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/b/j;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGu:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGv:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

    .line 20
    iput-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGR:Lcom/xiaomi/miui/pushads/sdk/b/a;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGu:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGv:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGR:Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/b/a;)I

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/e;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 42
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGR:Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/j;->a(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGQ:Lcom/xiaomi/miui/pushads/sdk/b/j;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/e;->aGR:Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/miui/pushads/sdk/b/j;->a(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/e;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
