.class public Lcom/android/settings/quicklaunch/c;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final aN:[Ljava/lang/String;


# instance fields
.field private Mz:Landroid/os/Handler;

.field private ahL:Landroid/database/Cursor;

.field private ahM:Lcom/android/settings/quicklaunch/d;

.field private ahN:Landroid/util/SparseBooleanArray;

.field private ahO:Landroid/preference/PreferenceGroup;

.field private ahP:Landroid/util/SparseArray;

.field private ahQ:Ljava/lang/CharSequence;

.field private ahR:C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/c;->aN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->Mz:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method private a(C)V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private a(CLandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/android/settings/quicklaunch/c;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/c;->rm()V

    return-void
.end method

.method private a(Lcom/android/settings/quicklaunch/e;)V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/e;->rn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/e;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahQ:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/e;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/c;->showDialog(I)V

    goto :goto_0
.end method

.method private b(C)Lcom/android/settings/quicklaunch/e;
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/e;

    .line 248
    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const-string v0, "QuickLaunchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shortcut \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', creating preference anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/c;->c(C)Lcom/android/settings/quicklaunch/e;

    move-result-object v0

    goto :goto_0
.end method

.method private c(C)Lcom/android/settings/quicklaunch/e;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/android/settings/quicklaunch/e;

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/quicklaunch/e;-><init>(Landroid/content/Context;C)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->ahO:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->ahP:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    return-object v0
.end method

.method private rl()V
    .locals 5

    .prologue
    .line 266
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 267
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 270
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 272
    invoke-virtual {v2, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 273
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 279
    invoke-direct {p0, v3}, Lcom/android/settings/quicklaunch/c;->c(C)Lcom/android/settings/quicklaunch/e;

    goto :goto_1

    .line 281
    :cond_2
    return-void
.end method

.method private declared-synchronized rm()V
    .locals 9

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/quicklaunch/c;->ahL:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-nez v2, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "QuickLaunchSettings"

    const-string v1, "Could not requery cursor when refreshing shortcuts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 300
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/quicklaunch/c;->ahN:Landroid/util/SparseBooleanArray;

    .line 301
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 302
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 304
    if-eqz v1, :cond_2

    .line 306
    invoke-direct {p0, v1}, Lcom/android/settings/quicklaunch/c;->b(C)Lcom/android/settings/quicklaunch/e;

    move-result-object v5

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    const-string v6, "intent"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 315
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 318
    const/4 v8, 0x0

    :try_start_3
    invoke-static {v6, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 319
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_3

    .line 321
    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 327
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v5, v0}, Lcom/android/settings/quicklaunch/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    const v0, 0x7f0905de

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/quicklaunch/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/settings/quicklaunch/e;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/settings/quicklaunch/e;->aJ(Z)V

    .line 332
    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 333
    if-eqz v3, :cond_2

    .line 336
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 340
    :cond_4
    if-eqz v3, :cond_6

    .line 341
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_6

    .line 342
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    int-to-char v0, v0

    .line 345
    iget-object v5, p0, Lcom/android/settings/quicklaunch/c;->ahP:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/e;

    .line 346
    if-eqz v0, :cond_5

    .line 347
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/quicklaunch/e;->aJ(Z)V

    .line 341
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 353
    :cond_6
    iput-object v4, p0, Lcom/android/settings/quicklaunch/c;->ahN:Landroid/util/SparseBooleanArray;

    .line 355
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 136
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahQ:Ljava/lang/CharSequence;

    .line 139
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    .line 141
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 226
    if-nez p3, :cond_1

    .line 227
    const-string v0, "QuickLaunchSettings"

    const-string v1, "Result from bookmark picker does not have an intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 232
    invoke-direct {p0, v0, p3}, Lcom/android/settings/quicklaunch/c;->a(CLandroid/content/Intent;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 181
    iget-char v0, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    iget-char v0, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/c;->a(C)V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahQ:Ljava/lang/CharSequence;

    .line 186
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/c;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahO:Landroid/preference/PreferenceGroup;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahP:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/settings/quicklaunch/d;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->Mz:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/d;-><init>(Lcom/android/settings/quicklaunch/c;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahM:Lcom/android/settings/quicklaunch/d;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/c;->rl()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/quicklaunch/c;->aN:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahL:Landroid/database/Cursor;

    .line 106
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905df

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/c;->ahQ:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e2

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 212
    instance-of v1, v0, Lcom/android/settings/quicklaunch/e;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 213
    :cond_0
    check-cast v0, Lcom/android/settings/quicklaunch/e;

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/c;->a(Lcom/android/settings/quicklaunch/e;)V

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->ahM:Lcom/android/settings/quicklaunch/d;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 122
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 196
    instance-of v0, p2, Lcom/android/settings/quicklaunch/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    move-object v0, p2

    .line 199
    check-cast v0, Lcom/android/settings/quicklaunch/e;

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v2, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {v0}, Lcom/android/settings/quicklaunch/e;->getShortcut()C

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/quicklaunch/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/quicklaunch/c;->aN:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahL:Landroid/database/Cursor;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/c;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/quicklaunch/c;->ahM:Lcom/android/settings/quicklaunch/d;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/c;->rm()V

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->ahQ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 149
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/quicklaunch/c;->ahR:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/quicklaunch/c;->ahL:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    return-void
.end method
