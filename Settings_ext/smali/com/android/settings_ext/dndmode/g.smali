.class final Lcom/android/settings_ext/dndmode/g;
.super Landroid/database/ContentObserver;
.source "AlarmContentFragment.java"


# instance fields
.field final synthetic Wt:Lcom/android/settings_ext/dndmode/c;

.field private final Wu:Landroid/net/Uri;

.field private final Wv:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/dndmode/c;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/g;->Wt:Lcom/android/settings_ext/dndmode/c;

    .line 148
    invoke-static {p1}, Lcom/android/settings_ext/dndmode/c;->b(Lcom/android/settings_ext/dndmode/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 144
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wu:Landroid/net/Uri;

    .line 145
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wv:Landroid/net/Uri;

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wv:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wt:Lcom/android/settings_ext/dndmode/c;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/c;->f(Lcom/android/settings_ext/dndmode/c;)V

    .line 166
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wt:Lcom/android/settings_ext/dndmode/c;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/c;->c(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/g;->Wu:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wt:Lcom/android/settings_ext/dndmode/c;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/c;->d(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/g;->Wv:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/g;->Wt:Lcom/android/settings_ext/dndmode/c;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/c;->e(Lcom/android/settings_ext/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    return-void
.end method
