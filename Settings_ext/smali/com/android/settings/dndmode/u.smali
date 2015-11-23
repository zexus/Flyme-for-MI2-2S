.class public Lcom/android/settings/dndmode/u;
.super Landroid/preference/PreferenceFragment;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final Xk:Ljava/util/HashMap;


# instance fields
.field private WJ:Lmiui/app/Activity;

.field Xl:Ljava/util/concurrent/ExecutorService;

.field Xm:Ljava/util/concurrent/Future;

.field private Xn:Landroid/content/CursorLoader;

.field private Xo:Landroid/preference/PreferenceScreen;

.field private Xp:Landroid/preference/PreferenceCategory;

.field private Xq:Landroid/view/MenuItem;

.field Xr:Lcom/android/settings/dndmode/C;

.field private mCursor:Landroid/database/Cursor;

.field private mListIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/dndmode/u;->Xk:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xl:Ljava/util/concurrent/ExecutorService;

    .line 235
    new-instance v0, Lcom/android/settings/dndmode/y;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/y;-><init>(Lcom/android/settings/dndmode/u;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xr:Lcom/android/settings/dndmode/C;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/u;)Lmiui/app/Activity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/dndmode/u;->Xk:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/u;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->oZ()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/dndmode/u;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->pa()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/dndmode/u;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/dndmode/u;)Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xp:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private oX()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/android/settings/dndmode/v;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/v;-><init>(Lcom/android/settings/dndmode/u;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/dndmode/u;->Xl:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xm:Ljava/util/concurrent/Future;

    .line 141
    return-void
.end method

.method private oY()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/dndmode/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/android/settings/dndmode/w;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dndmode/w;-><init>(Lcom/android/settings/dndmode/u;[Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private oZ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/u;->Xp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xn:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private pa()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/u;->Xp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :cond_0
    return-void
.end method

.method private pb()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 191
    new-instance v0, Lcom/android/settings/dndmode/x;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/x;-><init>(Lcom/android/settings/dndmode/u;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private pc()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "android.intent.extra.include_unknown_numbers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dndmode/u;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 224
    iput-object p2, p0, Lcom/android/settings/dndmode/u;->mCursor:Landroid/database/Cursor;

    .line 225
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->pb()V

    .line 226
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 289
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const-string v0, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 300
    array-length v5, v2

    move v1, v6

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v0, v2, v1

    .line 301
    check-cast v0, Landroid/net/Uri;

    .line 302
    const-string v8, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 304
    const/16 v8, 0x2c

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 308
    :cond_4
    const-string v8, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 309
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 315
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 322
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    if-eqz v4, :cond_0

    .line 327
    :cond_7
    if-eqz v4, :cond_9

    .line 329
    :goto_3
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 333
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    new-array v0, v6, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/dndmode/m;->b(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/u;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/dndmode/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/u;->setHasOptionsMenu(Z)V

    .line 94
    const-string v0, "key_vip_call_setting_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/u;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xo:Landroid/preference/PreferenceScreen;

    .line 95
    const-string v0, "key_vip_list_custom_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/u;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xp:Landroid/preference/PreferenceCategory;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->oY()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->oX()V

    .line 98
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 218
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/settings/dndmode/u;->WJ:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type=\'3\'"

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    const v0, 0x7f090a7b

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    .line 259
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    const v1, 0x7f020076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 260
    iget v0, p0, Lcom/android/settings/dndmode/u;->mListIndex:I

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xq:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dndmode/u;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 271
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->pc()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/dndmode/u;->oZ()V

    .line 104
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/dndmode/u;->Xm:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 110
    return-void
.end method
