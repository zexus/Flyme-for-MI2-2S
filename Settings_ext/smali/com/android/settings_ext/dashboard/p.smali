.class Lcom/android/settings_ext/dashboard/p;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# instance fields
.field final synthetic Ry:Lcom/android/settings_ext/dashboard/h;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/dashboard/h;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/p;->Ry:Lcom/android/settings_ext/dashboard/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/dashboard/h;Lcom/android/settings_ext/dashboard/i;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/p;-><init>(Lcom/android/settings_ext/dashboard/h;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/p;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/p;->Ry:Lcom/android/settings_ext/dashboard/h;

    invoke-static {v0, p1}, Lcom/android/settings_ext/dashboard/h;->b(Lcom/android/settings_ext/dashboard/h;Landroid/database/Cursor;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ext/dashboard/p;->Ry:Lcom/android/settings_ext/dashboard/h;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/dashboard/h;->b(Lcom/android/settings_ext/dashboard/h;Z)V

    .line 110
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_2
    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected varargs d([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/p;->Ry:Lcom/android/settings_ext/dashboard/h;

    invoke-virtual {v0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/search/e;->bb(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dashboard/p;->d([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dashboard/p;->c(Landroid/database/Cursor;)V

    return-void
.end method
