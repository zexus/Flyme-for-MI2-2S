.class public Lcom/android/settings_ext/ZonePicker;
.super Lcom/android/settings_ext/BaseListFragment;
.source "ZonePicker.java"


# instance fields
.field private Aa:Landroid/widget/SimpleAdapter;

.field private Ab:Lcom/android/settings_ext/ht;

.field private zY:Z

.field private zZ:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ext/BaseListFragment;-><init>()V

    .line 355
    return-void
.end method

.method private N(Z)V
    .locals 2

    .prologue
    .line 250
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/ZonePicker;->zZ:Landroid/widget/SimpleAdapter;

    .line 252
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iput-boolean p1, p0, Lcom/android/settings_ext/ZonePicker;->zY:Z

    .line 254
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/ZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v0

    .line 255
    if-ltz v0, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ZonePicker;->setSelection(I)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->invalidateOptionsMenu()V

    .line 260
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/ZonePicker;->Aa:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method

.method public static a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 144
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 147
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 153
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 112
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "gmt"

    aput-object v1, v4, v0

    .line 113
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 117
    if-eqz p1, :cond_0

    const-string v0, "pinyin"

    .line 118
    :goto_0
    new-instance v1, Lcom/android/settings_ext/hr;

    invoke-direct {v1, v0}, Lcom/android/settings_ext/hr;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/settings_ext/hs;

    invoke-direct {v0}, Lcom/android/settings_ext/hs;-><init>()V

    .line 120
    invoke-static {v0, p0}, Lcom/android/settings_ext/hs;->a(Lcom/android/settings_ext/hs;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 128
    return-object v0

    .line 117
    :cond_0
    const-string v0, "offset"

    goto :goto_0

    .line 113
    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static i(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f040149

    invoke-static {p0, p1, v0}, Lcom/android/settings_ext/ZonePicker;->a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/Object;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 162
    check-cast p0, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected e(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 184
    invoke-static {p1, p2}, Lcom/android/settings_ext/ZonePicker;->i(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/ZonePicker;->e(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/ZonePicker;->zZ:Landroid/widget/SimpleAdapter;

    .line 174
    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ext/ZonePicker;->e(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ZonePicker;->Aa:Landroid/widget/SimpleAdapter;

    .line 178
    invoke-direct {p0, v2}, Lcom/android/settings_ext/ZonePicker;->N(Z)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/ZonePicker;->setHasOptionsMenu(Z)V

    .line 180
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v0, 0x1

    const v1, 0x7f090199

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    const/4 v0, 0x2

    const v1, 0x7f09019a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 213
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/BaseListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 196
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 197
    invoke-static {p2, v1, v0, v4}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiui/R$dimen;->preference_screen_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 201
    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 203
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 339
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 343
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 344
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/settings_ext/ZonePicker;->Ab:Lcom/android/settings_ext/ht;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/settings_ext/ZonePicker;->Ab:Lcom/android/settings_ext/ht;

    invoke-interface {v1, v0}, Lcom/android/settings_ext/ht;->a(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/ZonePicker;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/ZonePicker;->N(Z)V

    goto :goto_0

    .line 235
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ext/ZonePicker;->N(Z)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    iget-boolean v0, p0, Lcom/android/settings_ext/ZonePicker;->zY:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 219
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
