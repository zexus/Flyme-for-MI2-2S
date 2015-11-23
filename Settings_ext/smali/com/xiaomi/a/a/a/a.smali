.class public abstract Lcom/xiaomi/a/a/a/a;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# direct methods
.method public static bW(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/xiaomi/a/a/a/a;->bW(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/xiaomi/a/a/a/a;->bW(Landroid/content/Context;)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method
