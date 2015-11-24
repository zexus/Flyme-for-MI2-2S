.class public Lcom/android/settings_ext/quicklaunch/BookmarkPicker;
.super Landroid/app/ListActivity;
.source "BookmarkPicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# static fields
.field private static ahC:Landroid/content/Intent;

.field private static ahD:Landroid/content/Intent;

.field private static final ahF:[Ljava/lang/String;

.field private static final ahG:[I


# instance fields
.field private Mz:Landroid/os/Handler;

.field private ahE:Ljava/util/List;

.field private ahH:Landroid/widget/SimpleAdapter;

.field private nW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RESOLVE_INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahF:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahG:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100052
        0x7f100051
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->Mz:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 270
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahH:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahH:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 315
    const-string v0, "com.android.settings.quicklaunch.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->finish()V

    .line 318
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->o(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->p(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 219
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 220
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 222
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 229
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 230
    const-string v4, "TITLE"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->f(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v4, "RESOLVE_INFO"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahE:Ljava/util/List;

    return-object p1
.end method

.method private d(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->Mz:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/quicklaunch/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ext/quicklaunch/b;-><init>(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private f(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .prologue
    .line 281
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p1, v0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    return-void
.end method

.method private o(Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-direct {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->rj()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 203
    iget v1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    if-nez v1, :cond_1

    .line 204
    sget-object v1, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahC:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    sget-object v1, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahD:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private p(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 6

    .prologue
    .line 211
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040020

    sget-object v4, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahF:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahG:[I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 213
    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 214
    return-object v0
.end method

.method private rj()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahC:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahC:Landroid/content/Intent;

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahD:Landroid/content/Intent;

    .line 147
    :cond_0
    return-void
.end method

.method private rk()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/android/settings_ext/quicklaunch/a;

    const-string v1, "data updater"

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/quicklaunch/a;-><init>(Lcom/android/settings_ext/quicklaunch/BookmarkPicker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings_ext/quicklaunch/a;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 289
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 303
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 296
    :pswitch_0
    if-eqz p3, :cond_0

    .line 297
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->rk()V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const v0, 0x7f0905e3

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1102009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 107
    const v0, 0x7f0905e4

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1102009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 111
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->ahE:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 249
    iget v1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0, v0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->f(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->g(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 127
    :pswitch_0
    iput v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    .line 138
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->rk()V

    move v0, v1

    .line 139
    goto :goto_0

    .line 131
    :pswitch_1
    iput v1, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->nW:I

    if-eq v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    return v1

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0
.end method

.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100051

    if-ne v0, v1, :cond_1

    .line 325
    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_0
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
