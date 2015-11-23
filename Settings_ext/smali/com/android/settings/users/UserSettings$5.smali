.class Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic amU:Lcom/android/settings/users/UserSettings;

.field final synthetic amV:I

.field final synthetic amW:Z

.field final synthetic amX:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->amU:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$5;->amV:I

    iput-boolean p3, p0, Lcom/android/settings/users/UserSettings$5;->amW:Z

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$5;->amX:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$5;->amU:Lcom/android/settings/users/UserSettings;

    iget v1, p0, Lcom/android/settings/users/UserSettings$5;->amV:I

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->c(Lcom/android/settings/users/UserSettings;I)V

    .line 529
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings$5;->amW:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$5;->amX:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    :cond_0
    return-void
.end method
