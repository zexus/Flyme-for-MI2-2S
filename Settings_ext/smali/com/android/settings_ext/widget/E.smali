.class Lcom/android/settings_ext/widget/E;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic arA:Z

.field final synthetic arB:Lcom/android/settings_ext/widget/D;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ext/widget/D;ZZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings_ext/widget/E;->arB:Lcom/android/settings_ext/widget/D;

    iput-boolean p2, p0, Lcom/android/settings_ext/widget/E;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/settings_ext/widget/E;->arA:Z

    iput-object p4, p0, Lcom/android/settings_ext/widget/E;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 627
    iget-boolean v0, p0, Lcom/android/settings_ext/widget/E;->val$desiredState:Z

    if-eqz v0, :cond_1

    .line 628
    iget-boolean v0, p0, Lcom/android/settings_ext/widget/E;->arA:Z

    if-nez v0, :cond_0

    .line 629
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 631
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    .line 635
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ext/widget/E;->arA:Z

    if-eqz v0, :cond_2

    .line 636
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 638
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/settings_ext/widget/E;->arB:Lcom/android/settings_ext/widget/D;

    iget-object v2, p0, Lcom/android/settings_ext/widget/E;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/widget/D;->setCurrentState(Landroid/content/Context;I)V

    .line 646
    iget-object v0, p0, Lcom/android/settings_ext/widget/E;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/widget/SettingsAppWidgetProvider;->bw(Landroid/content/Context;)V

    .line 647
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/E;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/E;->a(Ljava/lang/Boolean;)V

    return-void
.end method
