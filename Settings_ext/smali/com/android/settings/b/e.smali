.class Lcom/android/settings_ext/b/e;
.super Landroid/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# instance fields
.field final synthetic ads:Lcom/android/settings_ext/b/c;

.field private final gf:Landroid/net/NetworkTemplate;

.field private gr:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/b/c;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    iput-object p1, p0, Lcom/android/settings_ext/b/e;->ads:Lcom/android/settings_ext/b/c;

    .line 123
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p3, p0, Lcom/android/settings_ext/b/e;->gf:Landroid/net/NetworkTemplate;

    .line 126
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/b/e;->setPersistent(Z)V

    .line 128
    iput-boolean v7, p0, Lcom/android/settings_ext/b/e;->gr:Z

    .line 129
    invoke-static {p1}, Lcom/android/settings_ext/b/c;->a(Lcom/android/settings_ext/b/c;)Lcom/android/settings_ext/b/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/b/f;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v7}, Lcom/android/settings_ext/b/e;->setChecked(Z)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/b/e;->setEnabled(Z)V

    .line 140
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ext/b/e;->gr:Z

    .line 141
    return-void

    .line 135
    :cond_0
    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/b/e;->setChecked(Z)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/b/e;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 146
    iget-boolean v0, p0, Lcom/android/settings_ext/b/e;->gr:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/b/e;->ads:Lcom/android/settings_ext/b/c;

    invoke-static {v0}, Lcom/android/settings_ext/b/c;->a(Lcom/android/settings_ext/b/c;)Lcom/android/settings_ext/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/b/e;->gf:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings_ext/b/e;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;Z)V

    .line 149
    :cond_0
    return-void
.end method
