.class Lcom/android/settings_ext/accounts/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic BD:Lcom/android/settings_ext/accounts/AccountSettings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/AccountSettings;I)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ext/accounts/AccountSettings$1;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    iput p2, p0, Lcom/android/settings_ext/accounts/AccountSettings$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountSettings$1;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/AccountSettings;->a(Lcom/android/settings_ext/accounts/AccountSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/accounts/AccountSettings$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 211
    return-void
.end method