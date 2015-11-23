.class Lcom/android/settings/dashboard/j;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Ry:Lcom/android/settings/dashboard/h;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/h;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    add-int/lit8 v0, p3, -0x1

    .line 228
    if-gez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v1}, Lcom/android/settings/dashboard/h;->c(Lcom/android/settings/dashboard/h;)Lcom/android/settings/dashboard/n;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dashboard/n;->a(Lcom/android/settings/dashboard/n;)Landroid/database/Cursor;

    move-result-object v1

    .line 232
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    iget-object v0, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/dashboard/h;->c(Lcom/android/settings/dashboard/h;Z)Z

    .line 235
    iget-object v0, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/h;->a(Lcom/android/settings/dashboard/h;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v0}, Lcom/android/settings/dashboard/h;->e(Lcom/android/settings/dashboard/h;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/j;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v1}, Lcom/android/settings/dashboard/h;->d(Lcom/android/settings/dashboard/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
