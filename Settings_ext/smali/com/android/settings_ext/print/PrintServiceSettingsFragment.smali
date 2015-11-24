.class public Lcom/android/settings_ext/print/PrintServiceSettingsFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ext/widget/I;


# instance fields
.field private Bn:Ljava/lang/CharSequence;

.field private Bo:Landroid/content/Intent;

.field private adz:Ljava/lang/CharSequence;

.field private ag:Landroid/content/ComponentName;

.field private final agW:Lcom/android/settings_ext/print/k;

.field private final agX:Landroid/database/DataSetObserver;

.field private agY:Lcom/android/settings_ext/widget/ToggleSwitch;

.field private agZ:Ljava/lang/CharSequence;

.field private aha:Landroid/content/Intent;

.field private ahb:Ljava/lang/CharSequence;

.field private ahc:Ljava/lang/CharSequence;

.field private ahd:Lcom/android/settings_ext/print/g;

.field private ahe:I

.field private ahf:Z

.field private kr:Lcom/android/settings_ext/widget/SwitchBar;

.field private xp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings_ext/print/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/print/b;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agW:Lcom/android/settings_ext/print/k;

    .line 92
    new-instance v0, Lcom/android/settings_ext/print/c;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/print/c;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agX:Landroid/database/DataSetObserver;

    .line 639
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahe:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rc()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rb()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;I)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 172
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/print/t;->bk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 174
    if-eqz p2, :cond_0

    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings_ext/print/t;->e(Landroid/content/Context;Ljava/util/List;)V

    .line 180
    return-void

    .line 177
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Lcom/android/settings_ext/print/g;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahe:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Lcom/android/settings_ext/widget/SwitchBar;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->xp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Lcom/android/settings_ext/print/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/print/g;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Lcom/android/settings_ext/print/b;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    .line 288
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agX:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/print/g;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    .line 292
    invoke-virtual {v0}, Lcom/android/settings_ext/gh;->gH()Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->a(Lcom/android/settings_ext/widget/I;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->show()V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->tM()Lcom/android/settings_ext/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agY:Lcom/android/settings_ext/widget/ToggleSwitch;

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agY:Lcom/android/settings_ext/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ext/print/d;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/print/d;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ToggleSwitch;->a(Lcom/android/settings_ext/widget/M;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    return-void
.end method

.method static synthetic j(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ag:Landroid/content/ComponentName;

    return-object v0
.end method

.method private rb()V
    .locals 10

    .prologue
    const v9, 0x7f090694

    const v8, 0x7f09068b

    const v7, 0x7f040059

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    .line 228
    iget-object v4, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agY:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings_ext/widget/ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1000ca

    if-eq v4, v5, :cond_0

    .line 230
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v1

    .line 233
    :cond_0
    if-nez v2, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 236
    const v1, 0x7f100051

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    invoke-virtual {p0, v9}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 238
    const v1, 0x7f100043

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 239
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v4}, Lcom/android/settings_ext/print/g;->rf()I

    move-result v4

    if-gtz v4, :cond_4

    .line 244
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1000cb

    if-eq v4, v5, :cond_3

    .line 246
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v1

    .line 249
    :cond_3
    if-nez v2, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005a

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 255
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v4}, Lcom/android/settings_ext/print/g;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 256
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1000ca

    if-eq v4, v5, :cond_5

    .line 257
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 260
    :goto_1
    if-nez v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 263
    const v1, 0x7f100051

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 264
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    const v1, 0x7f100043

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private rc()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/print/t;->bk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ag:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahf:Z

    .line 276
    iget-boolean v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahf:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/g;->enable()V

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 284
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/g;->disable()V

    goto :goto_0
.end method

.method private rd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 329
    const-string v0, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->xp:Ljava/lang/String;

    .line 332
    const-string v0, "EXTRA_CHECKED"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 333
    iget-object v2, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 336
    const-string v0, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    const-string v0, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 346
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 347
    iput-object v2, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->Bn:Ljava/lang/CharSequence;

    .line 348
    iput-object v3, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->Bo:Landroid/content/Intent;

    .line 354
    :cond_0
    const-string v0, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string v0, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_1

    .line 367
    iput-object v2, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agZ:Ljava/lang/CharSequence;

    .line 368
    iput-object v3, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->aha:Landroid/content/Intent;

    .line 374
    :cond_1
    const-string v0, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahb:Ljava/lang/CharSequence;

    .line 378
    const-string v0, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahc:Ljava/lang/CharSequence;

    .line 382
    const-string v0, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ag:Landroid/content/ComponentName;

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 386
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rb()V

    .line 323
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 206
    packed-switch p2, :pswitch_data_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 208
    :pswitch_0
    const/4 v0, 0x1

    .line 209
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->xp:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    .line 222
    :goto_0
    return-void

    .line 214
    :pswitch_1
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->xp:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 184
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahb:Ljava/lang/CharSequence;

    .line 189
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahc:Ljava/lang/CharSequence;

    .line 194
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const v4, 0x7f1003a1

    const v3, 0x7f1003a0

    const v2, 0x7f10039f

    .line 390
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 391
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 393
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 394
    iget-boolean v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahf:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agZ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->aha:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->aha:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 401
    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 402
    iget-boolean v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahf:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->Bn:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->Bo:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->Bo:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 409
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    iget-boolean v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahf:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->ahd:Lcom/android/settings_ext/print/g;

    invoke-virtual {v1}, Lcom/android/settings_ext/print/g;->rf()I

    move-result v1

    if-lez v1, :cond_2

    .line 411
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 412
    new-instance v1, Lcom/android/settings_ext/print/e;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/print/e;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 424
    new-instance v1, Lcom/android/settings_ext/print/f;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/print/f;-><init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 445
    :goto_2
    return-void

    .line 398
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 443
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->adz:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->adz:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroyView()V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->b(Lcom/android/settings_ext/widget/I;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->hide()V

    .line 169
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agW:Lcom/android/settings_ext/print/k;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/print/k;->b(Landroid/content/ContentResolver;)V

    .line 151
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->agW:Lcom/android/settings_ext/print/k;

    invoke-virtual {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/print/k;->a(Landroid/content/ContentResolver;)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rb()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rc()V

    .line 146
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->initComponents()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->rd()V

    .line 159
    return-void
.end method
