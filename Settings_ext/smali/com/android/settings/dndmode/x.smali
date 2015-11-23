.class Lcom/android/settings/dndmode/x;
.super Landroid/os/AsyncTask;
.source "VipCallSettingsFragment.java"


# instance fields
.field final synthetic Xs:Lcom/android/settings/dndmode/u;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/u;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/x;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    iget-object v0, v0, Lcom/android/settings/dndmode/u;->Xm:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v0}, Lcom/android/settings/dndmode/u;->d(Lcom/android/settings/dndmode/u;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v0}, Lcom/android/settings/dndmode/u;->d(Lcom/android/settings/dndmode/u;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/settings/dndmode/A;

    iget-object v1, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    iget-object v2, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v2}, Lcom/android/settings/dndmode/u;->a(Lcom/android/settings/dndmode/u;)Lmiui/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dndmode/A;-><init>(Lcom/android/settings/dndmode/u;Landroid/content/Context;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v1}, Lcom/android/settings/dndmode/u;->d(Lcom/android/settings/dndmode/u;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/A;->d(Landroid/database/Cursor;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    iget-object v1, v1, Lcom/android/settings/dndmode/u;->Xr:Lcom/android/settings/dndmode/C;

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/A;->a(Lcom/android/settings/dndmode/C;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v1}, Lcom/android/settings/dndmode/u;->e(Lcom/android/settings/dndmode/u;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 211
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 208
    :catch_2
    move-exception v0

    .line 209
    const-string v0, "VipCallSettings"

    const-string v1, "ContactsQuery has been canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
