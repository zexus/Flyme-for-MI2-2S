.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings/widget/I;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private jo:Z

.field private final ko:Lcom/android/settings/ci;

.field private kp:Lcom/android/settings/bX;

.field private kq:Lcom/android/settings/ce;

.field private kr:Lcom/android/settings/widget/SwitchBar;

.field private ks:[Landroid/view/MenuItem;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/ci;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ci;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/ca;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->ko:Lcom/android/settings/ci;

    .line 364
    return-void
.end method

.method private a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 167
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    new-instance v1, Lcom/android/settings/cc;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/cc;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 177
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/bX;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method static synthetic b(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dj()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private di()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0903a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0903a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f09039f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 195
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v4}, Lcom/android/settings/bX;->de()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v4}, Lcom/android/settings/bX;->df()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/cd;

    invoke-direct {v2, p0}, Lcom/android/settings/cd;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0}, Lcom/android/settings/bX;->de()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0}, Lcom/android/settings/bX;->df()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private dj()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 260
    const-string v0, "refreshFromBackend()"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DreamSettings;->jo:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0}, Lcom/android/settings/bX;->isEnabled()Z

    move-result v2

    .line 263
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kq:Lcom/android/settings/ce;

    invoke-virtual {v0}, Lcom/android/settings/ce;->clear()V

    .line 267
    if-eqz v2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0}, Lcom/android/settings/bX;->db()Ljava/util/List;

    move-result-object v0

    .line 269
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->kq:Lcom/android/settings/ce;

    invoke-virtual {v3, v0}, Lcom/android/settings/ce;->addAll(Ljava/util/Collection;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->ks:[Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 272
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->ks:[Landroid/view/MenuItem;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 273
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/DreamSettings;->jo:Z

    .line 275
    return-void
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/android/settings/bX;

    invoke-direct {v0, p0}, Lcom/android/settings/bX;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/bX;->isEnabled()Z

    move-result v1

    .line 252
    if-nez v1, :cond_0

    .line 253
    const v0, 0x7f0903a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bX;->dd()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->jo:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0, p2}, Lcom/android/settings/bX;->setEnabled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dj()V

    .line 95
    :cond_0
    return-void
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f090940

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 114
    const-string v0, "onActivityCreated(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0903a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 124
    new-instance v0, Lcom/android/settings/ce;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ce;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->kq:Lcom/android/settings/ce;

    .line 125
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kq:Lcom/android/settings/ce;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 128
    invoke-virtual {v0}, Lcom/android/settings/gh;->gH()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    .line 129
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 131
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    const-string v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lcom/android/settings/bX;

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 182
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    if-ne p1, v4, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->di()Landroid/app/Dialog;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kp:Lcom/android/settings/bX;

    invoke-virtual {v0}, Lcom/android/settings/bX;->isEnabled()Z

    move-result v4

    .line 140
    const v2, 0x7f0903a5

    new-instance v5, Lcom/android/settings/ca;

    invoke-direct {v5, p0}, Lcom/android/settings/ca;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 149
    const v2, 0x7f0903a4

    new-instance v5, Lcom/android/settings/cb;

    invoke-direct {v5, p0}, Lcom/android/settings/cb;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->a(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/MenuItem;

    aput-object v6, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->ks:[Landroid/view/MenuItem;

    .line 163
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->ko:Lcom/android/settings/ci;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->dj()V

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->ko:Lcom/android/settings/ci;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 101
    return-void
.end method
