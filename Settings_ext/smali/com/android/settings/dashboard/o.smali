.class Lcom/android/settings/dashboard/o;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# instance fields
.field final synthetic Ry:Lcom/android/settings/dashboard/h;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/h;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/dashboard/o;->Ry:Lcom/android/settings/dashboard/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/h;Lcom/android/settings/dashboard/i;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/o;-><init>(Lcom/android/settings/dashboard/h;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/dashboard/o;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/settings/dashboard/o;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/h;->a(Lcom/android/settings/dashboard/h;Landroid/database/Cursor;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/dashboard/o;->Ry:Lcom/android/settings/dashboard/h;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/h;->a(Lcom/android/settings/dashboard/h;Z)V

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_2
    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected varargs d([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/dashboard/o;->Ry:Lcom/android/settings/dashboard/h;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->bn(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/e;->ba(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/o;->d([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/o;->c(Landroid/database/Cursor;)V

    return-void
.end method
