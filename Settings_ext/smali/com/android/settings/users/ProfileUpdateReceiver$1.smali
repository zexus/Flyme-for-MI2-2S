.class Lcom/android/settings_ext/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# instance fields
.field final synthetic amp:Lcom/android/settings_ext/users/ProfileUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ext/users/ProfileUpdateReceiver$1;->amp:Lcom/android/settings_ext/users/ProfileUpdateReceiver;

    iput-object p2, p0, Lcom/android/settings_ext/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 43
    iget-object v0, p0, Lcom/android/settings_ext/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/users/ProfileUpdateReceiver;->bq(Landroid/content/Context;)V

    .line 44
    return-void
.end method
