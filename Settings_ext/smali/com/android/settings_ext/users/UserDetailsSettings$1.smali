.class Lcom/android/settings_ext/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic amD:Lcom/android/settings_ext/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserDetailsSettings;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings_ext/users/UserDetailsSettings$1;->amD:Lcom/android/settings_ext/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/users/UserDetailsSettings$1;->amD:Lcom/android/settings_ext/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/UserDetailsSettings;->removeUser()V

    .line 158
    return-void
.end method