.class Lcom/android/settings_ext/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# instance fields
.field final synthetic alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$2;->alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment$2;->alJ:Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-static {v0, p2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    .line 139
    return-void
.end method
