.class Lcom/android/settings_ext/users/UserSettings$13;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# instance fields
.field final synthetic amU:Lcom/android/settings_ext/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserSettings;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/settings_ext/users/UserSettings$13;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 830
    aget-object v0, p1, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 831
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$13;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->d(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    if-nez v0, :cond_0

    .line 833
    invoke-static {v2, v4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 836
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/users/UserSettings$13;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings_ext/users/UserSettings;->b(Lcom/android/settings_ext/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 838
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/users/UserSettings$13;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 822
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/users/UserSettings$13;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$13;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->a(Lcom/android/settings_ext/users/UserSettings;)V

    .line 826
    return-void
.end method
