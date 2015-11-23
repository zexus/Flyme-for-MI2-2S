.class Lcom/android/settings_ext/ag;
.super Landroid/os/AsyncTask;
.source "ChildrenModeSettings.java"


# instance fields
.field final synthetic cB:Lcom/android/settings_ext/ChildrenModeSettings;

.field final synthetic cC:Ljava/util/List;

.field final synthetic cD:Ljava/util/ArrayList;

.field final synthetic cE:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ChildrenModeSettings;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ext/ag;->cB:Lcom/android/settings_ext/ChildrenModeSettings;

    iput-object p2, p0, Lcom/android/settings_ext/ag;->cC:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings_ext/ag;->cD:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/settings_ext/ag;->cE:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/ag;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/ag;->cC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 103
    if-eqz v0, :cond_0

    .line 107
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 108
    iget-object v2, p0, Lcom/android/settings_ext/ag;->cB:Lcom/android/settings_ext/ChildrenModeSettings;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings_ext/ChildrenModeSettings;->a(Lcom/android/settings_ext/ChildrenModeSettings;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings_ext/ChildrenModeSettings;->o:Ljava/util/HashSet;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings_ext/ag;->cB:Lcom/android/settings_ext/ChildrenModeSettings;

    invoke-static {v2}, Lcom/android/settings_ext/ChildrenModeSettings;->b(Lcom/android/settings_ext/ChildrenModeSettings;)Lmiui/security/SecurityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/security/SecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ext/ag;->cD:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/ag;->cE:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/ag;->cB:Lcom/android/settings_ext/ChildrenModeSettings;

    iget-object v1, p0, Lcom/android/settings_ext/ag;->cD:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/ChildrenModeSettings;->a(Lcom/android/settings_ext/ChildrenModeSettings;Ljava/util/ArrayList;Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/ag;->cB:Lcom/android/settings_ext/ChildrenModeSettings;

    iget-object v1, p0, Lcom/android/settings_ext/ag;->cE:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/ChildrenModeSettings;->a(Lcom/android/settings_ext/ChildrenModeSettings;Ljava/util/ArrayList;Z)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
