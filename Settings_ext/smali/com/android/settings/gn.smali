.class Lcom/android/settings/gn;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic xh:Lcom/android/settings/gh;


# direct methods
.method constructor <init>(Lcom/android/settings/gh;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/settings/gn;->xh:Lcom/android/settings/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/settings/gn;->xh:Lcom/android/settings/gh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/gh;->b(Lcom/android/settings/gh;Z)V

    .line 790
    return-void
.end method
