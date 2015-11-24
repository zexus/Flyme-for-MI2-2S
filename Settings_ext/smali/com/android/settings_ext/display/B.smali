.class Lcom/android/settings_ext/display/B;
.super Lmiui/os/AsyncTaskWithProgress;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

.field private VP:Ljava/util/List;

.field private VQ:Ljava/util/List;

.field final synthetic cC:Ljava/util/List;

.field private final n:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    iput-object p3, p0, Lcom/android/settings_ext/display/B;->cC:Ljava/util/List;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/display/B;->VP:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/display/B;->VQ:Ljava/util/List;

    .line 169
    new-instance v0, Lcom/android/settings_ext/display/C;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/display/C;-><init>(Lcom/android/settings_ext/display/B;)V

    iput-object v0, p0, Lcom/android/settings_ext/display/B;->n:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/display/B;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->VP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->VQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->cC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 156
    iget-object v1, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->c(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->c(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/settings_ext/display/B;->VP:Ljava/util/List;

    new-instance v3, Lcom/android/settings_ext/display/D;

    iget-object v4, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->d(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/settings_ext/display/D;-><init>(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings_ext/AccessControlSetApp;->o:Ljava/util/HashSet;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/display/B;->VQ:Ljava/util/List;

    new-instance v3, Lcom/android/settings_ext/display/D;

    iget-object v4, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->d(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/settings_ext/display/D;-><init>(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->VP:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings_ext/display/B;->n:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->VQ:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings_ext/display/B;->n:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/display/B;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/display/B;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    iget-object v1, p0, Lcom/android/settings_ext/display/B;->VP:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings_ext/display/B;->VQ:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->a(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V

    .line 149
    return-void
.end method
