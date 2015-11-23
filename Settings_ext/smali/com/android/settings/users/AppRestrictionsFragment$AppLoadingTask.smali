.class Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# instance fields
.field final synthetic alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;Lcom/android/settings_ext/users/AppRestrictionsFragment$1;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->c(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 511
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->d(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    .line 522
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method
