.class Lcom/android/settings/quicklaunch/b;
.super Ljava/lang/Object;
.source "BookmarkPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

.field final synthetic ahJ:Ljava/util/ArrayList;

.field final synthetic ahK:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iput-object p2, p0, Lcom/android/settings/quicklaunch/b;->ahJ:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/quicklaunch/b;->ahK:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v2, p0, Lcom/android/settings/quicklaunch/b;->ahJ:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->b(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 187
    iget-object v0, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/b;->ahK:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->c(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/b;->ahI:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    return-void
.end method
