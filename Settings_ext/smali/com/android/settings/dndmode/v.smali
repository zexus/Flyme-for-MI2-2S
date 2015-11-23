.class Lcom/android/settings/dndmode/v;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic Xs:Lcom/android/settings/dndmode/u;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/u;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/dndmode/v;->Xs:Lcom/android/settings/dndmode/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/dndmode/v;->pd()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public pd()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v0}, Lcom/android/settings/dndmode/u;->a(Lcom/android/settings/dndmode/u;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data4"

    aput-object v4, v2, v5

    const-string v4, "display_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    # getter for: Lcom/android/settings/dndmode/u;->Xk:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/dndmode/u;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    # getter for: Lcom/android/settings/dndmode/u;->Xk:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/dndmode/u;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    const-string v2, "VipCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err in queryContacts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_1
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
